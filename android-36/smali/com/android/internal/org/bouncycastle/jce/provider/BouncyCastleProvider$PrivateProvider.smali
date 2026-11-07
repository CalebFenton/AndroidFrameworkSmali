.class final Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$PrivateProvider;
.super Ljava/security/Provider;
.source "BouncyCastleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivateProvider"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 638
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "Android BC private use only"

    const-string v3, "BCPrivate"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 639
    return-void
.end method
