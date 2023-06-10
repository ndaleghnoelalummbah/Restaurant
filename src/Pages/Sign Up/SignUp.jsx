import  * as React from "react";
import { useState } from "react";
import { Formik, Form } from "formik";
import { Link } from "react-router-dom";
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
  const options = [
    { key: "I have a car", value: "I have a car" },
    { key: "I need a car", value: "I need a car" },
  ];
  const [initialValues, setInitialValues] = useState({
    // radioOption: "",
    Name: "",
    Email: "",
    Tel: "",
    Password: "",
    ConfirmPassword: "",
  });
  const [initialValue, setInitialValue] = useState(initialValues);
  const regEX = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  //const regEX = /^(([^<>()\[\]\\.,;:\s@"]+(.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}])|(([a-zA-Z-0-9]+.)+[a-zA-Z]{2,}))$/;
  const validationSchema = Yup.object().shape({
    // radioOption: Yup.string().required("selection required"),
    Name: Yup.string()
      .max(15, "must be atmost 15 characters")
      .matches(/^[A-Za-z]*$/, "please enter a valid name")
      .required("last name is required"),
    Email: Yup.string().email("Invalid email address").matches(regEX, "invalid email").required("Required"),
    Tel: Yup.string()
      .matches(/^((\\+[1-9]{1,4}[ \\-]*)|(\\([0-9]{2,3}\\)[ \\-]*)|([0-9]{2,4})[ \\-]*)*?[0-9]{3,4}?[ \\-]*[0-9]{3,4}?$/, "please enter a valid number")
      .test("len", "must be exactly 9 characters", (val) => val.length === 9)
      .required("required"),
    Password: Yup.string()
      .min(8, "Must be atleast 8 characters")
      .required("Required")
      .matches(/(?=.*[a-z])(?=.*[A-Z])\w+/, "Password ahould contain at least one uppercase and lowercase character")
      .matches(/\d/, "Password should contain at least one number")
      .matches(/[`!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?~]/, "Password should contain at least one special character"),
    ConfirmPassword: Yup.string()
      .oneOf([Yup.ref("Password"), null], "Passwords must match")
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

      Name: values.Name,
      Email: values.Email,
      Tel: values.Tel,
      Password: values.Password,
      ConfirmPassword: values.ConfirmPassword,
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
                <FormikControl control="input" type="text" label="Name:" name="Name" />
                <FormikControl control="input" type="email" label="Email:" name="Email" />
                <FormikControl control="input" type="tel" label="Tel:" name="Tel" />
                <FormikControl control="input" type={passType} label="Password" name="Password" vissible={isVissible} handleVissiblity={handleVissiblity} handleHideVissiblity={handleHideVissiblity} />
                <FormikControl control="input" type={passType} label="ConfirmPassword" name="ConfirmPassword" vissible={isVissible} handleVissiblity={handleVissiblity} handleHideVissiblity={handleHideVissiblity} />

                <button type="submit" disabled={!formik.isValid} className={styles.reservebtn}>
                  Sign Up
                </button>

                <div className={styles.modal} style={{ display: submitted ? "block" : "none" }}>
                  <h3>sucessful input validation</h3>
                  {/* <p>radio option:{initialValue.radioOption}</p> */}
                  <p>Name:{initialValue.Name}</p>
                  <p>Email:{initialValue.Email}</p>
                  <p>Tel:{initialValue.Tel}</p>
                  <p>Password:{initialValue.Password}</p>
                  <p>ConfirmPassword:{initialValue.ConfirmPassword}</p>
                  <hr />
                  <div className={styles.modalBtn}>
                    <button type="reset" className={styles.confirm} onClick={handleConfirm}>
                      <Link to="/">Confirm</Link>
                      
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
