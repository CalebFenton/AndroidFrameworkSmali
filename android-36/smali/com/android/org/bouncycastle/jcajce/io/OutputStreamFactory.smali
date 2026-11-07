.class public abstract Lcom/android/org/bouncycastle/jcajce/io/OutputStreamFactory;
.super Ljava/lang/Object;
.source "OutputStreamFactory.java"


# direct methods
.method public static blacklist createStream(Ljava/security/Signature;)Ljava/io/OutputStream;
    .registers 2

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/io/SignatureUpdatingOutputStream;-><init>(Ljava/security/Signature;)V

    return-object v0
.end method
