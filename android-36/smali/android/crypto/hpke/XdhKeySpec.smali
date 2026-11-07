.class public final Landroid/crypto/hpke/XdhKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "XdhKeySpec.java"


# direct methods
.method public constructor whitelist test-api <init>([B)V
    .registers 2
    .param p1, "encoded"    # [B

    .line 37
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 57
    :cond_4
    instance-of v1, p1, Ljava/security/spec/EncodedKeySpec;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 58
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/security/spec/EncodedKeySpec;

    .line 59
    .local v1, "that":Ljava/security/spec/EncodedKeySpec;
    invoke-virtual {p0}, Landroid/crypto/hpke/XdhKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 60
    invoke-virtual {p0}, Landroid/crypto/hpke/XdhKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 59
    :goto_2b
    return v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 42
    const-string v0, "raw"

    return-object v0
.end method

.method public whitelist test-api getKey()[B
    .registers 2

    .line 51
    invoke-virtual {p0}, Landroid/crypto/hpke/XdhKeySpec;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 65
    invoke-virtual {p0}, Landroid/crypto/hpke/XdhKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/crypto/hpke/XdhKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
