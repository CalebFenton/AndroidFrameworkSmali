.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi$PSS;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;
.source "KeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSS"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 105
    const-string v0, "RSASSA-PSS"

    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->-$$Nest$sfgetPSS_ALGID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 106
    return-void
.end method
