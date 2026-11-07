.class public Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;
.super Ljava/io/FilterInputStream;
.source "MacInputStream.java"


# instance fields
.field protected blacklist mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;Lcom/android/internal/org/bouncycastle/crypto/Mac;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "mac"    # Lcom/android/internal/org/bouncycastle/crypto/Mac;

    .line 22
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;->mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    .line 24
    return-void
.end method


# virtual methods
.method public blacklist getMac()Lcom/android/internal/org/bouncycastle/crypto/Mac;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;->mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 31
    .local v0, "b":I
    if-ltz v0, :cond_e

    .line 33
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;->mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 35
    :cond_e
    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 45
    .local v0, "n":I
    if-ltz v0, :cond_d

    .line 47
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;->mac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 49
    :cond_d
    return v0
.end method
