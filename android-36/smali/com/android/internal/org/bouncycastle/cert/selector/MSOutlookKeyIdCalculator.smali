.class Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.super Ljava/lang/Object;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;,
        Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist calculateKeyId(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .registers 6
    .param p0, "info"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 17
    new-instance v0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;-><init>()V

    .line 18
    .local v0, "dig":Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 19
    .local v1, "hash":[B
    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 22
    .local v3, "spkiEnc":[B
    :try_start_e
    const-string v4, "DER"

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_1d

    .line 27
    .end local v3    # "spkiEnc":[B
    .local v4, "spkiEnc":[B
    nop

    .line 30
    array-length v3, v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->update([BII)V

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->doFinal([BI)I

    .line 34
    return-object v1

    .line 24
    .end local v4    # "spkiEnc":[B
    .restart local v3    # "spkiEnc":[B
    :catch_1d
    move-exception v4

    .line 26
    .local v4, "e":Ljava/io/IOException;
    new-array v2, v2, [B

    return-object v2
.end method
