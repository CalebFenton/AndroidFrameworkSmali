.class public Lcom/google/android/mms/pdu/RetrieveConf;
.super Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.source "RetrieveConf.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    #@3
    .line 36
    const/16 v0, 0x84

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setMessageType(I)V

    #@8
    .line 34
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@3
    .line 44
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    #@3
    .line 54
    return-void
.end method


# virtual methods
.method public addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x82

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 73
    return-void
.end method

.method public getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x82

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getContentType()[B
    .locals 2

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x84

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDeliveryReport()I
    .locals 2

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x86

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x89

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMessageClass()[B
    .locals 2

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8a

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMessageId()[B
    .locals 2

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8b

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getReadReport()I
    .locals 2

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x90

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getRetrieveStatus()I
    .locals 2

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x99

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getRetrieveText()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x9a

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getTransactionId()[B
    .locals 2

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setContentType([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x84

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 92
    return-void
.end method

.method public setDeliveryReport(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x86

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 111
    return-void
.end method

.method public setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x89

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 132
    return-void
.end method

.method public setMessageClass([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8a

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 153
    return-void
.end method

.method public setMessageId([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8b

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 172
    return-void
.end method

.method public setReadReport(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x90

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 191
    return-void
.end method

.method public setRetrieveStatus(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x99

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 210
    return-void
.end method

.method public setRetrieveText(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x9a

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 229
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/mms/pdu/RetrieveConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 248
    return-void
.end method
