.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;
.super Ljava/security/cert/CRLException;
.source "X509CRLObject.java"


# instance fields
.field private final blacklist cause:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 169
    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .line 170
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 174
    invoke-direct {p0}, Ljava/security/cert/CRLException;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
