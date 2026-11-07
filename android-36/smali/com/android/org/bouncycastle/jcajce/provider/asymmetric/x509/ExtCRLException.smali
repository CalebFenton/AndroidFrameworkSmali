.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;
.super Ljava/security/cert/CRLException;
.source "ExtCRLException.java"


# instance fields
.field blacklist cause:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/ExtCRLException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
