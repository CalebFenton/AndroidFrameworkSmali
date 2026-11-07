.class public Lcom/android/org/bouncycastle/crypto/io/MacInputStream;
.super Ljava/io/FilterInputStream;
.source "MacInputStream.java"


# instance fields
.field protected blacklist mac:Lcom/android/org/bouncycastle/crypto/Mac;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;Lcom/android/org/bouncycastle/crypto/Mac;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    return-void
.end method


# virtual methods
.method public whitelist test-api read()I
    .registers 3

    .line 29
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_e

    .line 33
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    int-to-byte v1, v0

    invoke-interface {p0, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    :cond_e
    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5

    .line 44
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_d

    .line 47
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/io/MacInputStream;->mac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    :cond_d
    return p3
.end method
