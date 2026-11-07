.class public interface abstract Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;
.super Ljava/lang/Object;
.source "DSAEncoding.java"


# virtual methods
.method public abstract blacklist decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
