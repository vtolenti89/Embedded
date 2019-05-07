import React from 'react';
import './water-container.css';

function WaterContainer(props) {
    console.log(props);
    const waterStyle = {
        height: `${props.waterLevel}%`
    }

    const indicatorStyle = {
        //bottom: `calc(${props.waterLevel}% / 2)`
        bottom: `50%`
    }

    return (
        <div className="water-container">
            {/* <div id="sea" className="sea">
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg">
                    <defs>
                        <pattern id="water" width=".25" height="2" patternContentUnits="objectBoundingBox">
                            <path fill="#20293F" d="M0.25,1H0c0,0,0-0.659,0-0.916c0.083-0.303,0.158,0.334,0.25,0C0.25,0.327,0.25,1,0.25,0.5z" />
                        </pattern>
                    </defs>
                    <rect id="waves" className="water-fill" fill="url(#water)" width="3000" />
                </svg>
            </div> */}
            <div className="water-container__content" style={waterStyle} >
            </div>
            <div className="water-container__indicator" style={indicatorStyle}>
                {props.waterLevel}%
            </div>
        </div>
    )
}

export default WaterContainer;