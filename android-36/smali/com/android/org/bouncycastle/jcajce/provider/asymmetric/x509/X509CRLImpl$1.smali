.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$1;
.super Ljava/lang/Object;
.source "X509CRLImpl.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$1;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    .line 173
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$1;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->bcHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 177
    :catch_9
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method
