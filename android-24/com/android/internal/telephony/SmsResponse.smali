.class public Lcom/android/internal/telephony/SmsResponse;
.super Ljava/lang/Object;
.source "SmsResponse.java"


# instance fields
.field mAckPdu:Ljava/lang/String;

.field mErrorCode:I

.field mMessageRef:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "messageRef"    # I
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput p1, p0, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    #@5
    .line 37
    iput-object p2, p0, Lcom/android/internal/telephony/SmsResponse;->mAckPdu:Ljava/lang/String;

    #@7
    .line 38
    iput p3, p0, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    #@9
    .line 35
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "{ mMessageRef = "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 44
    const-string/jumbo v2, ", mErrorCode = "

    #@15
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 44
    iget v2, p0, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    #@1b
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 45
    const-string/jumbo v2, ", mAckPdu = "

    #@22
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 45
    iget-object v2, p0, Lcom/android/internal/telephony/SmsResponse;->mAckPdu:Ljava/lang/String;

    #@28
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 46
    const-string/jumbo v2, "}"

    #@2f
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 47
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method
