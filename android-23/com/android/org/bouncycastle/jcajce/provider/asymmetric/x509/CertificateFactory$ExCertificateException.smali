.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;
.super Ljava/security/cert/CertificateException;
.source "CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExCertificateException"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    #@2
    .line 385
    invoke-direct {p0, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@5
    .line 387
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->cause:Ljava/lang/Throwable;

    #@7
    .line 383
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    #@2
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    #@5
    .line 380
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->cause:Ljava/lang/Throwable;

    #@7
    .line 378
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->cause:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method
