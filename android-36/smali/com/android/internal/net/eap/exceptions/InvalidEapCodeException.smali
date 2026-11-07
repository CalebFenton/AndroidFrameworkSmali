.class public Lcom/android/internal/net/eap/exceptions/InvalidEapCodeException;
.super Lcom/android/internal/net/eap/exceptions/EapSilentException;
.source "InvalidEapCodeException.java"


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "code"    # I

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Code included in EapMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/net/eap/exceptions/EapSilentException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
