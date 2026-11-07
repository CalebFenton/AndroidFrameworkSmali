.class public Lcom/android/internal/org/bouncycastle/jcajce/io/OutputStreamFactory;
.super Ljava/lang/Object;
.source "OutputStreamFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createStream(Ljava/security/MessageDigest;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "digest"    # Ljava/security/MessageDigest;

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/io/DigestUpdatingOutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/io/DigestUpdatingOutputStream;-><init>(Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static blacklist createStream(Ljava/security/Signature;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "signature"    # Ljava/security/Signature;

    .line 24
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;-><init>(Ljava/security/Signature;)V

    return-object v0
.end method

.method public static blacklist createStream(Ljavax/crypto/Mac;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "mac"    # Ljavax/crypto/Mac;

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
