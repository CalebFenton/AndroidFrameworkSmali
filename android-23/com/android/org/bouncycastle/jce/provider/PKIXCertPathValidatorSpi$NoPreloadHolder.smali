.class Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;
.super Ljava/lang/Object;
.source "PKIXCertPathValidatorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;


# direct methods
.method static synthetic -get0()Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;
    .locals 1

    #@0
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    #@7
    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
