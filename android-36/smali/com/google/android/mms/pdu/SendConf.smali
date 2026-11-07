.class public Lcom/google/android/mms/pdu/SendConf;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "SendConf.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 36
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendConf;->setMessageType(I)V

    .line 37
    return-void
.end method

.method constructor greylist <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .registers 2
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 47
    return-void
.end method


# virtual methods
.method public greylist getMessageId()[B
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist getResponseStatus()I
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public greylist getTransactionId()[B
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist setMessageId([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 66
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 67
    return-void
.end method

.method public blacklist setResponseStatus(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x92

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 87
    return-void
.end method

.method public blacklist setTransactionId([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 106
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendConf;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 107
    return-void
.end method
