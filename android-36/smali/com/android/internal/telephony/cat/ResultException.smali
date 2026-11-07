.class public Lcom/android/internal/telephony/cat/ResultException;
.super Lcom/android/internal/telephony/cat/CatException;
.source "ResultException.java"


# instance fields
.field private blacklist mAdditionalInfo:I

.field private blacklist mExplanation:Ljava/lang/String;

.field private blacklist mResult:Lcom/android/internal/telephony/cat/ResultCode;


# direct methods
.method public constructor greylist-max-r <init>(Lcom/android/internal/telephony/cat/ResultCode;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatException;-><init>()V

    .line 40
    sget-object v0, Lcom/android/internal/telephony/cat/ResultException$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    .line 58
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    return-void

    .line 49
    :pswitch_18
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For result code, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", additional information must be given!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/ResultCode;I)V
    .registers 3

    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    if-ltz p2, :cond_8

    .line 74
    iput p2, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    return-void

    .line 70
    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Additional info must be greater than zero!"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/ResultCode;ILjava/lang/String;)V
    .registers 4

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;I)V

    .line 79
    iput-object p3, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 63
    iput-object p2, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist additionalInfo()I
    .registers 1

    .line 91
    iget p0, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    return p0
.end method

.method public blacklist explanation()Ljava/lang/String;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist hasAdditionalInfo()Z
    .registers 1

    .line 87
    iget p0, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    if-ltz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist result()Lcom/android/internal/telephony/cat/ResultCode;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " additionalInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " explantion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
