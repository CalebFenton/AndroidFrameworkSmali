.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;
.super Ljava/lang/Object;
.source "X509CRLImpl.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;

.field final synthetic blacklist val$sigProvider:Ljava/security/Provider;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;Ljava/security/Provider;)V
    .registers 3

    .line 211
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;->val$sigProvider:Ljava/security/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    .line 215
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;->val$sigProvider:Ljava/security/Provider;

    if-eqz p1, :cond_11

    .line 217
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;->val$sigProvider:Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0

    return-object p0

    .line 221
    :cond_11
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method
