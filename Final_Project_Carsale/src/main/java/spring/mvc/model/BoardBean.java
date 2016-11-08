package spring.mvc.model;

import java.util.Date;
		
public class BoardBean {
        /** BOARD_NUM. */
        private Integer boardNum;
        /** MEMBER_ID */
        private String memberId;
        /** BOARD_SUBJECT. */
        private String boardSubject;
        /** BOARD_CONTENT. */
        private String boardContent;
        /** BOARD_GOOD. */
        private Integer boardGood;
        /** BOARD_COUNT. */
        private Integer boardCount;
        /** BOARD_REPLY_NUM. */
        private Integer boardReplyNum;
        /** BOARD_FILE01. */
        private String boardFile01;
        /** BOARD_FILE02. */
        private String boardFile02;
        /** BOARD_FILE03. */
        private String boardFile03;
        /** BOARD_FILE04. */
        private String boardFile04;
        /** BOARD_DATE. */
        private Date boardDate;
        public Integer getBoardNum() {
                return boardNum;
        }
        public void setBoardNum(Integer boardNum) {
                this.boardNum = boardNum;
        }
        public String getMemberId() {
                return memberId;
        }
        public void setMemberId(String memberId) {
                this.memberId = memberId;
        }
        public String getBoardSubject() {
                return boardSubject;
        }
        public void setBoardSubject(String boardSubject) {
                this.boardSubject = boardSubject;
        }
        public String getBoardContent() {
                return boardContent;
        }
        public void setBoardContent(String boardContent) {
                this.boardContent = boardContent;
        }
        public Integer getBoardGood() {
                return boardGood;
        }
        public void setBoardGood(Integer boardGood) {
                this.boardGood = boardGood;
        }
        public Integer getBoardCount() {
                return boardCount;
        }
        public void setBoardCount(Integer boardCount) {
                this.boardCount = boardCount;
        }
        public Integer getBoardReplyNum() {
                return boardReplyNum;
        }
        public void setBoardReplyNum(Integer boardReplyNum) {
                this.boardReplyNum = boardReplyNum;
        }
        public String getBoardFile01() {
                return boardFile01;
        }
        public void setBoardFile01(String boardFile01) {
                this.boardFile01 = boardFile01;
        }
        public String getBoardFile02() {
                return boardFile02;
        }
        public void setBoardFile02(String boardFile02) {
                this.boardFile02 = boardFile02;
        }
        public String getBoardFile03() {
                return boardFile03;
        }
        public void setBoardFile03(String boardFile03) {
                this.boardFile03 = boardFile03;
        }
        public String getBoardFile04() {
                return boardFile04;
        }
        public void setBoardFile04(String boardFile04) {
                this.boardFile04 = boardFile04;
        }
        public Date getBoardDate() {
                return boardDate;
        }
        public void setBoardDate(Date boardDate) {
                this.boardDate = boardDate;
        }
}
