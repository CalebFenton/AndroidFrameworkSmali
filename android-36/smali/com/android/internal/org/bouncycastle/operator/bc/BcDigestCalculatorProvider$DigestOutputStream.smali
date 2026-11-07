.class Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;
.super Ljava/io/OutputStream;
.source "BcDigestCalculatorProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DigestOutputStream"
.end annotation


# instance fields
.field private blacklist dig:Lcom/android/internal/org/bouncycastle/crypto/Digest;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 2
    .param p1, "dig"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 53
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 55
    return-void
.end method


# virtual methods
.method blacklist getDigest()[B
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 79
    .local v0, "d":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 81
    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 73
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 67
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

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->dig:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 61
    return-void
.end method
