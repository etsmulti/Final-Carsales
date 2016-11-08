package spring.mvc.model;

public class CarModelBean {
        /** CARMODEL_NUM. */
        private String carmodelNum;
        /** 새 테이블. */
        private String carCorpNum;
        /** CARMODEL. */
        private String carmodel;
        
        public String getCarmodelNum() {
                return carmodelNum;
        }
        public void setCarmodelNum(String carmodelNum) {
                this.carmodelNum = carmodelNum;
        }
        public String getCarCorpNum() {
                return carCorpNum;
        }
        public void setCarCorpNum(String carCorpNum) {
                this.carCorpNum = carCorpNum;
        }
        public String getCarmodel() {
                return carmodel;
        }
        public void setCarmodel(String carmodel) {
                this.carmodel = carmodel;
        }
        
}
