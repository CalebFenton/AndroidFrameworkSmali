.class public Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "MultimediaMessagePdu.java"


# instance fields
.field private mMessageBody:Lcom/google/android/mms/pdu/PduBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    #@3
    .line 34
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@3
    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .param p1, "header"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    #@3
    .line 46
    iput-object p2, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google/android/mms/pdu/PduBody;

    #@5
    .line 44
    return-void
.end method


# virtual methods
.method public addTo(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x97

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 110
    return-void
.end method

.method public getBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google/android/mms/pdu/PduBody;

    #@2
    return-object v0
.end method

.method public getDate()J
    .locals 2

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x85

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getPriority()I
    .locals 2

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8f

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x96

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x97

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setBody(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .param p1, "body"    # Lcom/google/android/mms/pdu/PduBody;

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google/android/mms/pdu/PduBody;

    #@2
    .line 72
    return-void
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x85

    #@4
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    #@7
    .line 147
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x8f

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    #@7
    .line 129
    return-void
.end method

.method public setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    #@2
    const/16 v1, 0x96

    #@4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    #@7
    .line 91
    return-void
.end method
