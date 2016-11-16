.class public Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;
.super Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;
.source "BCJcaJceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 28
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getBouncyCastleProvider()Ljava/security/Provider;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    #@7
    .line 26
    return-void
.end method

.method private static getBouncyCastleProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 16
    const-string/jumbo v0, "BC"

    #@3
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 18
    const-string/jumbo v0, "BC"

    #@c
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 22
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    #@13
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    #@16
    return-object v0
.end method
