.class interface abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;
.super Ljava/lang/Object;
.source "SignatureCreator.java"


# virtual methods
.method public abstract blacklist createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation
.end method
