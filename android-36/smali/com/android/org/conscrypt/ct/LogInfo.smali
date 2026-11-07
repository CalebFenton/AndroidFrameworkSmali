.class public Lcom/android/org/conscrypt/ct/LogInfo;
.super Ljava/lang/Object;
.source "LogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/LogInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist STATE_PENDING:I = 0x1

.field public static final blacklist STATE_QUALIFIED:I = 0x2

.field public static final blacklist STATE_READONLY:I = 0x4

.field public static final blacklist STATE_REJECTED:I = 0x6

.field public static final blacklist STATE_RETIRED:I = 0x5

.field public static final blacklist STATE_UNKNOWN:I = 0x0

.field public static final blacklist STATE_USABLE:I = 0x3

.field public static final blacklist TYPE_RFC6962:I = 0x1

.field public static final blacklist TYPE_STATIC_CT_API:I = 0x2

.field public static final blacklist TYPE_UNKNOWN:I


# instance fields
.field private final blacklist description:Ljava/lang/String;

.field private final blacklist logId:[B

.field private final blacklist operator:Ljava/lang/String;

.field private final blacklist publicKey:Ljava/security/PublicKey;

.field private final blacklist state:I

.field private final blacklist stateTimestamp:J

.field private final blacklist type:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/android/org/conscrypt/ct/LogInfo$Builder;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->-$$Nest$fgetlogId(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->-$$Nest$fgetpublicKey(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->-$$Nest$fgetoperator(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->-$$Nest$fgetlogId(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->logId:[B

    .line 68
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->-$$Nest$fgetpublicKey(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->publicKey:Ljava/security/PublicKey;

    .line 69
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->-$$Nest$fgetstate(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->state:I

    .line 70
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->-$$Nest$fgetstateTimestamp(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->stateTimestamp:J

    .line 71
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->-$$Nest$fgetdescription(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->description:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->-$$Nest$fgetoperator(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->operator:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/LogInfo$Builder;->-$$Nest$fgettype(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->type:I

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/ct/LogInfo$Builder;Lcom/android/org/conscrypt/ct/LogInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ct/LogInfo;-><init>(Lcom/android/org/conscrypt/ct/LogInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 174
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 175
    return v0

    .line 177
    :cond_4
    instance-of v1, p1, Lcom/android/org/conscrypt/ct/LogInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 178
    return v2

    .line 181
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/org/conscrypt/ct/LogInfo;

    .line 182
    .local v1, "that":Lcom/android/org/conscrypt/ct/LogInfo;
    iget v3, p0, Lcom/android/org/conscrypt/ct/LogInfo;->state:I

    iget v4, v1, Lcom/android/org/conscrypt/ct/LogInfo;->state:I

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Lcom/android/org/conscrypt/ct/LogInfo;->description:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/org/conscrypt/ct/LogInfo;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/org/conscrypt/ct/LogInfo;->operator:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/org/conscrypt/ct/LogInfo;->operator:Ljava/lang/String;

    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-wide v3, p0, Lcom/android/org/conscrypt/ct/LogInfo;->stateTimestamp:J

    iget-wide v5, v1, Lcom/android/org/conscrypt/ct/LogInfo;->stateTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_40

    iget v3, p0, Lcom/android/org/conscrypt/ct/LogInfo;->type:I

    iget v4, v1, Lcom/android/org/conscrypt/ct/LogInfo;->type:I

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Lcom/android/org/conscrypt/ct/LogInfo;->logId:[B

    iget-object v4, v1, Lcom/android/org/conscrypt/ct/LogInfo;->logId:[B

    .line 184
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v2

    .line 182
    :goto_41
    return v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getID()[B
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->logId:[B

    return-object v0
.end method

.method public blacklist getOperator()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public blacklist getState()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->state:I

    return v0
.end method

.method public blacklist getStateAt(J)I
    .registers 5
    .param p1, "when"    # J

    .line 154
    iget-wide v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->stateTimestamp:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 155
    iget v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->state:I

    return v0

    .line 157
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStateTimestamp()J
    .registers 3

    .line 161
    iget-wide v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->stateTimestamp:J

    return-wide v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->type:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 189
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->logId:[B

    .line 190
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/LogInfo;->description:Ljava/lang/String;

    iget v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/org/conscrypt/ct/LogInfo;->stateTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/conscrypt/ct/LogInfo;->operator:Ljava/lang/String;

    iget v0, p0, Lcom/android/org/conscrypt/ct/LogInfo;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 189
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 7
    .param p1, "sct"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "entry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;

    .line 201
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ct/LogInfo;->getID()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_11

    .line 202
    sget-object v0, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v0

    .line 207
    :cond_11
    :try_start_11
    invoke-virtual {p1, p2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Lcom/android/org/conscrypt/ct/CertificateEntry;)[B

    move-result-object v0
    :try_end_15
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_11 .. :try_end_15} :catch_4f

    .line 210
    .local v0, "toVerify":[B
    nop

    .line 214
    :try_start_16
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ct/DigitallySigned;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "algorithm":Ljava/lang/String;
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_22} :catch_4b

    .line 218
    .end local v1    # "algorithm":Ljava/lang/String;
    .local v2, "signature":Ljava/security/Signature;
    nop

    .line 221
    :try_start_23
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/LogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_28
    .catch Ljava/security/InvalidKeyException; {:try_start_23 .. :try_end_28} :catch_47

    .line 224
    nop

    .line 227
    :try_start_29
    invoke-virtual {v2, v0}, Ljava/security/Signature;->update([B)V

    .line 228
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ct/DigitallySigned;->getSignature()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 229
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v1

    .line 231
    :cond_3d
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->VALID:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :try_end_3f
    .catch Ljava/security/SignatureException; {:try_start_29 .. :try_end_3f} :catch_40

    return-object v1

    .line 232
    :catch_40
    move-exception v1

    .line 235
    .local v1, "e":Ljava/security/SignatureException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 222
    .end local v1    # "e":Ljava/security/SignatureException;
    :catch_47
    move-exception v1

    .line 223
    .local v1, "e":Ljava/security/InvalidKeyException;
    sget-object v3, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v3

    .line 216
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    .end local v2    # "signature":Ljava/security/Signature;
    :catch_4b
    move-exception v1

    .line 217
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v2

    .line 208
    .end local v0    # "toVerify":[B
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4f
    move-exception v0

    .line 209
    .local v0, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v1
.end method
