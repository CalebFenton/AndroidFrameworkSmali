.class public Lcom/google/android/mms/pdu/NotificationInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "NotificationInd.java"


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
    .line 36
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    #@3
    .line 37
    const/16 v0, 0x82

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/NotificationInd;->setMessageType(I)V

    #@8
    .line 35
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@3
    .line 45
    return-void
.end method


# virtual methods
.method public getContentClass()I
    .locals 2

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0xba

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getContentLocation()[B
    .locals 2

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x83

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
    .line 223
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x86

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getExpiry()J
    .locals 2

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x88

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

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
    .line 143
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8a

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMessageSize()J
    .locals 2

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8e

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x96

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
    .line 203
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setContentClass(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0xba

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 65
    return-void
.end method

.method public setContentLocation([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x83

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 87
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
    .line 234
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x86

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 233
    return-void
.end method

.method public setExpiry(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x88

    #@4
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    #@7
    .line 109
    return-void
.end method

.method public setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x89

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 131
    return-void
.end method

.method public setMessageClass([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8a

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 153
    return-void
.end method

.method public setMessageSize(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8e

    #@4
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    #@7
    .line 173
    return-void
.end method

.method public setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x96

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 193
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/mms/pdu/NotificationInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 213
    return-void
.end method
