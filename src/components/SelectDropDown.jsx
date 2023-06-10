import React from "react";
import { useState } from "react";
import Select from "react-select";
// import "../style.css";
export default function SelectDropDown(props){

   const [categoryArray, setCategoryArray] = useState(
    [
    {
      id: 1,
      value: "UB-junction",
      text: "UB-junction"
    },
    {
      id: 2,
      value: "Mile-17",
      text: "Mile-17"
    },
    {
      id: 3,
      value: "Sosoliso",
      text: "Sosoliso"
    },
    {
      id: 4,
      value: "Buea-town",
      text: "Buea-town"
    },
  ]
   );

const [selected, setSelected] = useState("");
const handleChange = (e) => {
  setSelected(e);
  props.setSelectedCategory({ id: e.id, name: e.value });
};
  // const [selectedOption, setselectedOption] = useState(null)
  // const filterOptions = (option, inputValue) => {
  //   return option.data.text.toLowerCase().includes(inputValue.toLowerCase());
  // };

  // const handleChange = (e) => {
  //   setselectedOption(e);
  // };


  return (
    <div style={{ width: "100%", marginBottom:"1em"}}>
      <Select
        placeholder="Select branch"
        isClearable={true}
        value={selected}
        options={categoryArray}
        onChange={handleChange}
        getOptionLabel={(e) => (
          <div

          //  style={{display:'flex',alignItems:'center',width:'2em',lineHeight:'2em'}}
          >
            <span >{e.text}</span>
          </div>
        )}
        // filterOption={filterOptions}
      />
      {/* {selected && (
        <div style={{ marginTop: 20, lineHeight: "25px" }}>
          <b>Selected Option:</b>
          {selected.value}
        </div>
      )} */}
    </div>
  );
};

