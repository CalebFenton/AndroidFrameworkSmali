.class public Lcom/google/android/mms/pdu/SendReq;
.super Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.source "SendReq.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SendReq"


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    #@3
    .line 31
    const/16 v1, 0x80

    #@5
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V

    #@8
    .line 32
    const/16 v1, 0x12

    #@a
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    #@d
    .line 35
    const-string/jumbo v1, "application/vnd.wap.multipart.related"

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    #@17
    .line 36
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    #@19
    const-string/jumbo v2, "insert-address-token"

    #@1c
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    #@23
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    #@26
    .line 37
    invoke-direct {p0}, Lcom/google/android/mms/pdu/SendReq;->generateTransactionId()[B

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/SendReq;->setTransactionId([B)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 27
    return-void

    #@2e
    .line 38
    :catch_0
    move-exception v0

    #@2f
    .line 40
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    const-string/jumbo v1, "SendReq"

    #@32
    const-string/jumbo v2, "Unexpected InvalidHeaderValueException."

    #@35
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    #@3a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@3d
    throw v1
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    #@0
    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@3
    .line 77
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    #@3
    .line 87
    return-void
.end method

.method public constructor <init>([BLcom/google/android/mms/pdu/EncodedStringValue;I[B)V
    .locals 1
    .param p1, "contentType"    # [B
    .param p2, "from"    # Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p3, "mmsVersion"    # I
    .param p4, "transactionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;-><init>()V

    #@3
    .line 65
    const/16 v0, 0x80

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/SendReq;->setMessageType(I)V

    #@8
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/SendReq;->setContentType([B)V

    #@b
    .line 67
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    #@e
    .line 68
    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/SendReq;->setMmsVersion(I)V

    #@11
    .line 69
    invoke-virtual {p0, p4}, Lcom/google/android/mms/pdu/SendReq;->setTransactionId([B)V

    #@14
    .line 63
    return-void
.end method

.method private generateTransactionId()[B
    .locals 4

    #@0
    .prologue
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "T"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v2

    #@10
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 47
    .local v0, "transactionId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method


# virtual methods
.method public addBcc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x81

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 106
    return-void
.end method

.method public addCc(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x82

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 135
    return-void
.end method

.method public getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x81

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

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
    .line 155
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

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
    .line 174
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

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
    .line 196
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x88

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getMessageClass()[B
    .locals 2

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

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
    .line 216
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8e

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getReadReport()I
    .locals 2

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x90

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setBcc([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x81

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 116
    return-void
.end method

.method public setCc([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x82

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 145
    return-void
.end method

.method public setContentType([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x84

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 164
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
    .line 184
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x86

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 183
    return-void
.end method

.method public setExpiry(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x88

    #@4
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    #@7
    .line 204
    return-void
.end method

.method public setMessageClass([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8a

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 245
    return-void
.end method

.method public setMessageSize(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8e

    #@4
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    #@7
    .line 224
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
    .line 265
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x90

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 264
    return-void
.end method

.method public setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x97

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 274
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/mms/pdu/SendReq;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x98

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    #@7
    .line 293
    return-void
.end method
