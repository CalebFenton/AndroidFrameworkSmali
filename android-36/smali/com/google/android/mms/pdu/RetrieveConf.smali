.class public Lcom/google/android/mms/pdu/RetrieveConf;
.super Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.source "RetrieveConf.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    .line 39
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setMessageType(I)V

    .line 40
    return-void
.end method

.method constructor blacklist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .registers 2
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 49
    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .registers 3
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 60
    return-void
.end method


# virtual methods
.method public greylist addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 80
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 81
    return-void
.end method

.method public greylist getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getContentType()[B
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getDeliveryReport()I
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageClass()[B
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getMessageId()[B
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getReadReport()I
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getRetrieveStatus()I
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getRetrieveText()Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTransactionId()[B
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist setContentType([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 101
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 102
    return-void
.end method

.method public greylist setDeliveryReport(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 123
    return-void
.end method

.method public greylist setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 145
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 146
    return-void
.end method

.method public greylist setMessageClass([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 168
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 169
    return-void
.end method

.method public greylist setMessageId([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 189
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 190
    return-void
.end method

.method public greylist setReadReport(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 211
    return-void
.end method

.method public greylist setRetrieveStatus(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x99

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 232
    return-void
.end method

.method public greylist setRetrieveText(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 252
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 253
    return-void
.end method

.method public greylist setTransactionId([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 273
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 274
    return-void
.end method
