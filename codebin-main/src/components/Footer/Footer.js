import React from "react";
import { HeartFilled } from "@ant-design/icons";
import "./Footer.css";

const Footer = () => {
    return (
        <div
            className="footer">
            Designed and developed with

            <HeartFilled
                style={
                { color: "red" }
            }/>
            by {"  "}
            <a
                href="https://www.github.com/officiallygod"
                target="_blank"
                rel="noopener noreferrer">
                BMSIT BOIS
            </a>
        </div>
    );
};

export default Footer;
