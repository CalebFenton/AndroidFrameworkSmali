.class public Lcom/android/internal/widget/LockscreenCredential;
.super Ljava/lang/Object;
.source "LockscreenCredential.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCredential:[B

.field private final blacklist mHasInvalidChars:Z

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 372
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential$1;

    invoke-direct {v0}, Lcom/android/internal/widget/LockscreenCredential$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "credential"    # Ljava/lang/CharSequence;

    .line 111
    invoke-static {p2}, Lcom/android/internal/widget/LockscreenCredential;->charsToBytesTruncating(Ljava/lang/CharSequence;)[B

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/widget/LockscreenCredential;->hasInvalidChars(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    .line 112
    return-void
.end method

.method private constructor blacklist <init>(I[BZ)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "credential"    # [B
    .param p3, "hasInvalidChars"    # Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_13

    .line 91
    array-length v0, p2

    if-nez v0, :cond_f

    move v1, v2

    :cond_f
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_1f

    .line 94
    :cond_13
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    if-ne p1, v2, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 105
    :goto_1f
    iput p1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    .line 106
    iput-object p2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    .line 107
    iput-boolean p3, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(I[BZLcom/android/internal/widget/LockscreenCredential-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    return-void
.end method

.method private static blacklist charsToBytesTruncating(Ljava/lang/CharSequence;)[B
    .registers 4
    .param p0, "chars"    # Ljava/lang/CharSequence;

    .line 452
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->newNonMovableByteArray(I)[B

    move-result-object v0

    .line 453
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 454
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 456
    .end local v1    # "i":I
    :cond_19
    return-object v0
.end method

.method private static blacklist copyOfArrayNonMovable([B)[B
    .registers 4
    .param p0, "array"    # [B

    .line 258
    array-length v0, p0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->newNonMovableByteArray(I)[B

    move-result-object v0

    .line 259
    .local v0, "copy":[B
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    return-object v0
.end method

.method public static blacklist createNone()Lcom/android/internal/widget/LockscreenCredential;
    .registers 4

    .line 118
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    new-array v2, v1, [B

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    return-object v0
.end method

.method public static blacklist createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 3
    .param p0, "password"    # Ljava/lang/CharSequence;

    .line 133
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/android/internal/widget/LockscreenCredential;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public static blacklist createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 2
    .param p0, "password"    # Ljava/lang/CharSequence;

    .line 159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 160
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 162
    :cond_b
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Lcom/android/internal/widget/LockscreenCredential;"
        }
    .end annotation

    .line 125
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 126
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    .line 125
    return-object v0
.end method

.method public static blacklist createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 3
    .param p0, "pin"    # Ljava/lang/CharSequence;

    .line 151
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/internal/widget/LockscreenCredential;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public static blacklist createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 2
    .param p0, "pin"    # Ljava/lang/CharSequence;

    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 172
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 174
    :cond_b
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;
    .registers 5
    .param p0, "password"    # [B

    .line 143
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 144
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->copyOfArrayNonMovable([B)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    .line 143
    return-object v0
.end method

.method private blacklist ensureNotZeroized()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Credential is already zeroized"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 180
    return-void
.end method

.method private static blacklist hasInvalidChars(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "chars"    # Ljava/lang/CharSequence;

    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 436
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 437
    .local v1, "c":C
    const/16 v2, 0x20

    if-lt v1, v2, :cond_17

    const/16 v2, 0x7f

    if-le v1, v2, :cond_14

    goto :goto_17

    .line 435
    .end local v1    # "c":C
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    .restart local v1    # "c":C
    :cond_17
    :goto_17
    const/4 v2, 0x1

    return v2

    .line 441
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist legacyPasswordToHash([B[B)Ljava/lang/String;
    .registers 6
    .param p0, "password"    # [B
    .param p1, "salt"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    if-eqz p0, :cond_3d

    array-length v0, p0

    if-eqz v0, :cond_3d

    if-nez p1, :cond_8

    goto :goto_3d

    .line 354
    :cond_8
    :try_start_8
    filled-new-array {p0, p1}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object v0

    .line 355
    .local v0, "saltedPassword":[B
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 356
    .local v1, "sha1":[B
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 358
    .local v2, "md5":[B
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->zeroize([B)V

    .line 359
    filled-new-array {v1, v2}, [[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object v3

    invoke-static {v3}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_33} :catch_34

    return-object v3

    .line 360
    .end local v0    # "saltedPassword":[B
    .end local v1    # "sha1":[B
    .end local v2    # "md5":[B
    :catch_34
    move-exception v0

    .line 361
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 350
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_3d
    :goto_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist passwordToHistoryHash([B[B[B)Ljava/lang/String;
    .registers 6
    .param p0, "passwordToHash"    # [B
    .param p1, "salt"    # [B
    .param p2, "hashFactor"    # [B

    .line 323
    if-eqz p0, :cond_2b

    array-length v0, p0

    if-eqz v0, :cond_2b

    if-eqz p2, :cond_2b

    if-nez p1, :cond_a

    goto :goto_2b

    .line 328
    :cond_a
    :try_start_a
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 329
    .local v0, "sha256":Ljava/security/MessageDigest;
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 330
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 331
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 332
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_21} :catch_22

    return-object v1

    .line 333
    .end local v0    # "sha256":Ljava/security/MessageDigest;
    :catch_22
    move-exception v0

    .line 334
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 325
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist checkAgainstStoredType(I)Z
    .registers 6
    .param p1, "storedCredentialType"    # I

    .line 305
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_16

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :cond_15
    :goto_15
    return v1

    .line 308
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    if-ne v0, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 395
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist duplicate()Lcom/android/internal/widget/LockscreenCredential;
    .registers 5

    .line 239
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    iget v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    .line 240
    iget-object v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v2}, Lcom/android/internal/widget/LockscreenCredential;->copyOfArrayNonMovable([B)[B

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    iget-boolean v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    .line 239
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 410
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 411
    :cond_4
    instance-of v1, p1, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 412
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 413
    .local v1, "other":Lcom/android/internal/widget/LockscreenCredential;
    iget v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    iget v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    if-ne v3, v4, :cond_24

    iget-object v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    iget-object v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-boolean v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    iget-boolean v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0
.end method

.method public whitelist test-api finalize()V
    .registers 1

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 400
    return-void
.end method

.method public blacklist getCredential()[B
    .registers 2

    .line 197
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 187
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 188
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    return v0
.end method

.method public blacklist hasInvalidChars()Z
    .registers 2

    .line 233
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 234
    iget-boolean v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 405
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isNone()Z
    .registers 3

    .line 203
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 204
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isPassword()Z
    .registers 3

    .line 221
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 222
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isPattern()Z
    .registers 3

    .line 209
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 210
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public blacklist isPin()Z
    .registers 3

    .line 215
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 216
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist passwordToHistoryHash([B[B)Ljava/lang/String;
    .registers 4
    .param p1, "salt"    # [B
    .param p2, "hashFactor"    # [B

    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()I
    .registers 2

    .line 227
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 228
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    array-length v0, v0

    return v0
.end method

.method public blacklist validateBasicRequirements()V
    .registers 3

    .line 273
    iget-boolean v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    if-nez v0, :cond_3d

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_46

    :pswitch_c
    goto :goto_3c

    .line 290
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_14

    goto :goto_3c

    .line 291
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password must be at least 4 characters long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_24

    goto :goto_3c

    .line 285
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PIN must be at least 4 digits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_33

    goto :goto_3c

    .line 279
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pattern must be at least 4 dots long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :goto_3c
    return-void

    .line 274
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "credential contains invalid characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_c
        :pswitch_1d
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 367
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 369
    iget-boolean v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 370
    return-void
.end method

.method public blacklist zeroize()V
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_c

    .line 249
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->zeroize([B)V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    .line 252
    :cond_c
    return-void
.end method
