.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;
.super Ljava/security/cert/CRLException;
.source "X509CRLObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X509CRLException"
.end annotation


# instance fields
.field private final blacklist cause:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 169
    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .line 170
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;->cause:Ljava/lang/Throwable;

    .line 171
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 174
    invoke-direct {p0}, Ljava/security/cert/CRLException;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;->cause:Ljava/lang/Throwable;

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLObject$X509CRLException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
