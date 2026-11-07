.class final Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider$PrivateProvider;
.super Ljava/security/Provider;
.source "BouncyCastleProvider.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 639
    const-string v2, "Android BC private use only"

    const-string v3, "BCPrivate"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method
