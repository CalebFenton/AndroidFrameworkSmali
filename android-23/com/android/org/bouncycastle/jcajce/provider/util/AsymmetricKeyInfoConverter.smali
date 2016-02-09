.class public interface abstract Lcom/android/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
.super Ljava/lang/Object;
.source "AsymmetricKeyInfoConverter.java"


# virtual methods
.method public abstract generatePrivate(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generatePublic(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
