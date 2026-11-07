.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DH;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 359
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    const/4 v1, 0x0

    const-string v2, "ECDH"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/BasicAgreement;Lcom/android/internal/org/bouncycastle/crypto/DerivationFunction;)V

    .line 360
    return-void
.end method
