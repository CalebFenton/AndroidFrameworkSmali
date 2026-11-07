.class public final Landroid/adservices/topics/EncryptedTopic;
.super Ljava/lang/Object;
.source "EncryptedTopic.java"


# instance fields
.field private final blacklist mEncapsulatedKey:[B

.field private final blacklist mEncryptedTopic:[B

.field private final blacklist mKeyIdentifier:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>([BLjava/lang/String;[B)V
    .registers 5
    .param p1, "encryptedTopic"    # [B
    .param p2, "keyIdentifier"    # Ljava/lang/String;
    .param p3, "encapsulatedKey"    # [B

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/adservices/topics/EncryptedTopic;->mEncryptedTopic:[B

    .line 60
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/topics/EncryptedTopic;->mKeyIdentifier:Ljava/lang/String;

    .line 61
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/adservices/topics/EncryptedTopic;->mEncapsulatedKey:[B

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 85
    :cond_4
    instance-of v1, p1, Landroid/adservices/topics/EncryptedTopic;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 86
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/topics/EncryptedTopic;

    .line 87
    .local v1, "encryptedTopic":Landroid/adservices/topics/EncryptedTopic;
    invoke-virtual {p0}, Landroid/adservices/topics/EncryptedTopic;->getEncryptedTopic()[B

    move-result-object v3

    invoke-virtual {v1}, Landroid/adservices/topics/EncryptedTopic;->getEncryptedTopic()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 88
    invoke-virtual {p0}, Landroid/adservices/topics/EncryptedTopic;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/adservices/topics/EncryptedTopic;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 89
    invoke-virtual {p0}, Landroid/adservices/topics/EncryptedTopic;->getEncapsulatedKey()[B

    move-result-object v3

    invoke-virtual {v1}, Landroid/adservices/topics/EncryptedTopic;->getEncapsulatedKey()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v0, v2

    .line 87
    :goto_39
    return v0
.end method

.method public whitelist getEncapsulatedKey()[B
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/adservices/topics/EncryptedTopic;->mEncapsulatedKey:[B

    return-object v0
.end method

.method public whitelist getEncryptedTopic()[B
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/adservices/topics/EncryptedTopic;->mEncryptedTopic:[B

    return-object v0
.end method

.method public whitelist getKeyIdentifier()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/adservices/topics/EncryptedTopic;->mKeyIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 94
    nop

    .line 95
    invoke-virtual {p0}, Landroid/adservices/topics/EncryptedTopic;->getEncryptedTopic()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Landroid/adservices/topics/EncryptedTopic;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Landroid/adservices/topics/EncryptedTopic;->getEncapsulatedKey()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncryptedTopic{mEncryptedTopic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/topics/EncryptedTopic;->mEncryptedTopic:[B

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeyIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/topics/EncryptedTopic;->mKeyIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEncapsulatedKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/topics/EncryptedTopic;->mEncapsulatedKey:[B

    .line 108
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method
