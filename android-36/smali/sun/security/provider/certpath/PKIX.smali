.class Lsun/security/provider/certpath/PKIX;
.super Ljava/lang/Object;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/PKIX$ValidatorParams;,
        Lsun/security/provider/certpath/PKIX$BuilderParams;,
        Lsun/security/provider/certpath/PKIX$CertStoreComparator;,
        Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
    }
.end annotation


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdebug()Lsun/security/util/Debug;
    .registers 1

    sget-object v0, Lsun/security/provider/certpath/PKIX;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PKIX;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkBuilderParams(Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$BuilderParams;
    .registers 3
    .param p0, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 64
    instance-of v0, p0, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_d

    .line 68
    new-instance v0, Lsun/security/provider/certpath/PKIX$BuilderParams;

    move-object v1, p0

    check-cast v1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, v1}, Lsun/security/provider/certpath/PKIX$BuilderParams;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    return-object v0

    .line 65
    :cond_d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "inappropriate params, must be an instance of PKIXBuilderParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkParams(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .registers 4
    .param p0, "cp"    # Ljava/security/cert/CertPath;
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 54
    instance-of v0, p1, Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_d

    .line 58
    new-instance v0, Lsun/security/provider/certpath/PKIX$ValidatorParams;

    move-object v1, p1

    check-cast v1, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, p0, v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    return-object v0

    .line 55
    :cond_d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "inappropriate params, must be an instance of PKIXParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z
    .registers 2
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    .line 47
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 48
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 47
    :goto_10
    return v0
.end method
