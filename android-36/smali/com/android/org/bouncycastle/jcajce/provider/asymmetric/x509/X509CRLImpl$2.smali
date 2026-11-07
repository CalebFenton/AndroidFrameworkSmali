.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;
.super Ljava/lang/Object;
.source "X509CRLImpl.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;


# instance fields
.field final synthetic blacklist val$sigProvider:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;Ljava/lang/String;)V
    .registers 3

    .line 188
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;->val$sigProvider:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;->val$sigProvider:Ljava/lang/String;

    if-eqz p0, :cond_9

    .line 194
    invoke-static {p1, p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0

    .line 198
    :cond_9
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method
