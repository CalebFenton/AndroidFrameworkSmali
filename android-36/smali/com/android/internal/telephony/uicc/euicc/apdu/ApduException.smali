.class public Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;
.super Ljava/lang/Exception;
.source "ApduException.java"


# instance fields
.field private final blacklist mApduStatus:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->mApduStatus:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->mApduStatus:I

    return-void
.end method


# virtual methods
.method public blacklist getApduStatus()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->mApduStatus:I

    return p0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (apduStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->getStatusHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStatusHex()Ljava/lang/String;
    .registers 1

    .line 56
    iget p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->mApduStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
