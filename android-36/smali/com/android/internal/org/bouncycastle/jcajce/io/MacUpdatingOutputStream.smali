.class Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;
.super Ljava/io/OutputStream;
.source "MacUpdatingOutputStream.java"


# instance fields
.field private blacklist mac:Ljavax/crypto/Mac;


# direct methods
.method constructor blacklist <init>(Ljavax/crypto/Mac;)V
    .registers 2
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 15
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;->mac:Ljavax/crypto/Mac;

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;->mac:Ljavax/crypto/Mac;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 35
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 29
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    .line 23
    return-void
.end method
