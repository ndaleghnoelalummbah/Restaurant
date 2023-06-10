import * as React from "react";
import { useState } from "react";
import { Formik, Form } from "formik";
import { Link } from "react-router-dom";
import axios from "axios";
// import { useNavigate } from "react-router-dom";
import * as Yup from "yup";
import styles from "./SignUp.module.css";
import SideMenu from "../../components/SideMenu/SideMenu";
import FormikControl from "../../components/FormikControl/FormikControl";
// import FormikRenderProps from "../../components/FormikRenderProps/FormikRenderProps";

export default function SignUp() {
  //   return (
  //     <>
  //     <SideMenu />
  //       <div className={styles.main}>
  //         <FormikRenderProps />
  //       </div>
  //     </>
  //   );
  // }
  // const navigate = useNavigate();

  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [isConfirm, setIsConfirm] = useState(false);
  const [nedEdit, setNeedEdit] = useState(false);
  const [passType, setPassType] = useState("password");
  const [isVissible, setIsVissible] = useState(false);

  const [initialValues, setInitialValues] = useState({
    // radioOption: "",
    cname: "",
    email: "",
    tel: "",
    passwd: "",
    cpasswd: "",
  });
  const [initialValue, setInitialValue] = useState(initialValues);
  const regEX = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  //const regEX = /^(([^<>()\[\]\\.,;:\s@"]+(.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}])|(([a-zA-Z-0-9]+.)+[a-zA-Z]{2,}))$/;
  const validationSchema = Yup.object().shape({
    // radioOption: Yup.string().required("selection required"),
    cname: Yup.string()
      .max(15, "must be atmost 15 characters")
      .matches(/^[A-Za-z]*$/, "please enter a valid name")
      .required("last name is required"),
    email: Yup.string().email("Invalid email address").matches(regEX, "invalid email").required("Required"),
    tel: Yup.string()
      .matches(/^((\\+[1-9]{1,4}[ \\-]*)|(\\([0-9]{2,3}\\)[ \\-]*)|([0-9]{2,4})[ \\-]*)*?[0-9]{3,4}?[ \\-]*[0-9]{3,4}?$/, "please enter a valid number")
      .test("len", "must be exactly 9 characters", (val) => val.length === 9)
      .required("required"),
    passwd: Yup.string()
      .min(8, "Must be atleast 8 characters")
      .required("Required")
      .matches(/(?=.*[a-z])(?=.*[A-Z])\w+/, "Password ahould contain at least one uppercase and lowercase character")
      .matches(/\d/, "Password should contain at least one number")
      .matches(/[`!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?~]/, "Password should contain at least one special character"),
    cpasswd: Yup.string()
      .oneOf([Yup.ref("passwd"), null], "Passwords must match")
      .required("Confirm password is required"),
  });

  const handleConfirm = (onSubmitProps) => {
    setSubmitted(false);
    alert("Thank you for signing up!");
    onSubmitProps.resetForm();
    //  navigate("/Login");
  };
  const handleEdit = () => {
    setSubmitted(false);
  };

  const onSubmit = (values, onSubmitProps) => {
    setInitialValue({
      // radioOption: values.radioOption,

      cname: values.cname,
      email: values.email,
      tel: values.tel,
      passwd: values.passwd,
      cpasswd: values.cpasswd,
    });

    axios
      .post("https://localhost/Chosen_APIs/register.php", initialValue)
      .then((response) => {
        console.log(response.status, response.data);
        setSubmitted(true);
      })
      .catch((error) => {
        console.log("Error:", error);
      })
      .finally(() => {
        setSubmitting(false);
      });

    // onSubmitProps.setSubmitting(true);
    console.log("form data", values);
    console.log("form input", initialValue);
    //onSubmitProps.setSubmitting(false);
    // alert(JSON.stringify(values, null, 8));
    setSubmitted(true);
    //  onSubmitProps.resetForm();
  };

  const handleVissiblity = () => {
    setPassType("text");
    setIsVissible((prev) => !prev);
  };
  const handleHideVissiblity = () => {
    setPassType("password");
    setIsVissible((prev) => !prev);
  };
  console.log(initialValue.radioOption);
  return (
    <>
      <SideMenu />
      <div className={styles.main}>
        <div className={styles.baseForm}>
          <Formik initialValues={initialValues} onSubmit={onSubmit} validationSchema={validationSchema}>
            {(formik) => (
              <Form>
                <FormikControl control="input" type="text" label="Name:" name="cname" />
                <FormikControl control="input" type="email" label="Email:" name="email" />
                <FormikControl control="input" type="tel" label="Tel:" name="tel" />
                <FormikControl control="input" type={passType} label="Password" name="passwd" vissible={isVissible} handleVissiblity={handleVissiblity} handleHideVissiblity={handleHideVissiblity} />
                <FormikControl control="input" type={passType} label="Confirm Password" name="cpasswd" vissible={isVissible} handleVissiblity={handleVissiblity} handleHideVissiblity={handleHideVissiblity} />

                <button type="submit" disabled={!formik.isValid} className={styles.reservebtn}>
                  Sign Up
                </button>

                <div className={styles.modal} style={{ display: submitted ? "block" : "none" }}>
                  <h3>sucessful input validation</h3>
                  {/* <p>radio option:{initialValue.radioOption}</p> */}
                  <p>Name:{initialValue.cname}</p>
                  <p>Email:{initialValue.email}</p>
                  <p>Tel:{initialValue.tel}</p>
                  <p>Password:{initialValue.passwd}</p>
                  <p>ConfirmPassword:{initialValue.cpasswd}</p>
                  <hr />
                  <div className={styles.modalBtn}>
                    <button type="reset" className={styles.confirm} onClick={handleConfirm}>
                      {/* <Link to="/">Confirm</Link> */}
                      Confirm
                    </button>
                    <button className={styles.close} type="button" onClick={handleEdit}>
                      Edit
                    </button>
                  </div>
                </div>
              </Form>
            )}
          </Formik>
        </div>
      </div>
    </>
  );
}
