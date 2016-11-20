.class Lsun/security/provider/certpath/PKIX;
.super Ljava/lang/Object;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/PKIX$BuilderParams;,
        Lsun/security/provider/certpath/PKIX$CertStoreComparator;,
        Lsun/security/provider/certpath/PKIX$CertStoreTypeException;,
        Lsun/security/provider/certpath/PKIX$ValidatorParams;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .locals 1

    #@0
    sget-object v0, Lsun/security/provider/certpath/PKIX;->debug:Lsun/security/util/Debug;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/PKIX;->debug:Lsun/security/util/Debug;

    #@9
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static checkBuilderParams(Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$BuilderParams;
    .locals 2
    .param p0, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    instance-of v0, p0, Ljava/security/cert/PKIXBuilderParameters;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 66
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@6
    const-string/jumbo v1, "inappropriate params, must be an instance of PKIXBuilderParameters"

    #@9
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 69
    :cond_0
    new-instance v0, Lsun/security/provider/certpath/PKIX$BuilderParams;

    #@f
    check-cast p0, Ljava/security/cert/PKIXBuilderParameters;

    #@11
    .end local p0    # "params":Ljava/security/cert/CertPathParameters;
    invoke-direct {v0, p0}, Lsun/security/provider/certpath/PKIX$BuilderParams;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    #@14
    return-object v0
.end method

.method static checkParams(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .locals 2
    .param p0, "cp"    # Ljava/security/cert/CertPath;
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    instance-of v0, p1, Ljava/security/cert/PKIXParameters;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 56
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@6
    const-string/jumbo v1, "inappropriate params, must be an instance of PKIXParameters"

    #@9
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 59
    :cond_0
    new-instance v0, Lsun/security/provider/certpath/PKIX$ValidatorParams;

    #@f
    check-cast p1, Ljava/security/cert/PKIXParameters;

    #@11
    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    invoke-direct {v0, p0, p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    #@14
    return-object v0
.end method

.method static isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z
    .locals 2
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 48
    instance-of v1, p0, Ljava/security/interfaces/DSAPublicKey;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 49
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    #@7
    .end local p0    # "publicKey":Ljava/security/PublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    #@a
    move-result-object v1

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 48
    :cond_0
    return v0
.end method
