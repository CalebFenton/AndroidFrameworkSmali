.class public final Lcom/android/i18n/timezone/ZoneInfoData;
.super Ljava/lang/Object;
.source "ZoneInfoData.java"


# static fields
.field public static final blacklist ZONEINFO_SERIALIZED_FIELDS:[Ljava/io/ObjectStreamField;


# instance fields
.field private final blacklist mEarliestRawOffset:I

.field private final blacklist mId:Ljava/lang/String;

.field final blacklist mIsDsts:[B

.field final blacklist mOffsets:[I

.field private final blacklist mRawOffset:I

.field final blacklist mTransitions:[J

.field final blacklist mTypes:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "mRawOffset"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "mEarliestRawOffset"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "mTransitions"

    const-class v3, [J

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "mTypes"

    const-class v3, [B

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "mOffsets"

    const-class v4, [I

    invoke-direct {v1, v2, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "mIsDsts"

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/i18n/timezone/ZoneInfoData;->ZONEINFO_SERIALIZED_FIELDS:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/i18n/timezone/ZoneInfoData;)V
    .registers 3
    .param p1, "that"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 172
    iget v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    invoke-direct {p0, p1, v0}, Lcom/android/i18n/timezone/ZoneInfoData;-><init>(Lcom/android/i18n/timezone/ZoneInfoData;I)V

    .line 173
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/i18n/timezone/ZoneInfoData;I)V
    .registers 5
    .param p1, "that"    # Lcom/android/i18n/timezone/ZoneInfoData;
    .param p2, "newRawOffset"    # I

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    .line 180
    iget-object v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mId:Ljava/lang/String;

    .line 181
    iget v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mEarliestRawOffset:I

    iput v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mEarliestRawOffset:I

    .line 182
    iget-object v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    const/4 v1, 0x0

    if-nez v0, :cond_14

    move-object v0, v1

    goto :goto_1c

    :cond_14
    iget-object v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_1c
    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    .line 183
    iget-object v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    if-nez v0, :cond_24

    move-object v0, v1

    goto :goto_2c

    :cond_24
    iget-object v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_2c
    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    .line 184
    iget-object v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    if-nez v0, :cond_34

    move-object v0, v1

    goto :goto_3c

    :cond_34
    iget-object v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_3c
    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    .line 185
    iget-object v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    if-nez v0, :cond_43

    goto :goto_4c

    :cond_43
    iget-object v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    :goto_4c
    iput-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    .line 186
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II[J[B[I[B)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rawOffset"    # I
    .param p3, "earliestRawOffset"    # I
    .param p4, "transitions"    # [J
    .param p5, "types"    # [B
    .param p6, "offsets"    # [I
    .param p7, "isDsts"    # [B

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mId:Ljava/lang/String;

    .line 160
    iput p2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    .line 161
    iput p3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mEarliestRawOffset:I

    .line 162
    iput-object p4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    .line 163
    iput-object p5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    .line 164
    iput-object p6, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    .line 165
    iput-object p7, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    .line 166
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;[J[B[I[B)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transitions"    # [J
    .param p3, "types"    # [B
    .param p4, "gmtOffsets"    # [I
    .param p5, "isDsts"    # [B

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    array-length v0, p4

    const-string v1, "\'"

    if-eqz v0, :cond_90

    .line 355
    iput-object p2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    .line 356
    iput-object p3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    .line 357
    iput-object p5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    .line 358
    iput-object p1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mId:Ljava/lang/String;

    .line 361
    const/4 v0, -0x1

    .line 362
    .local v0, "lastStdTransitionIndex":I
    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_16
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2d

    if-ltz v2, :cond_2d

    .line 363
    iget-object v4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    .line 364
    .local v4, "typeIndex":I
    if-ne v0, v3, :cond_2a

    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_2a

    .line 365
    move v0, v2

    .line 362
    .end local v4    # "typeIndex":I
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 371
    .end local v2    # "i":I
    :cond_2d
    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    array-length v2, v2

    if-nez v2, :cond_36

    .line 375
    const/4 v1, 0x0

    aget v1, p4, v1

    .local v1, "rawOffsetInSeconds":I
    goto :goto_40

    .line 377
    .end local v1    # "rawOffsetInSeconds":I
    :cond_36
    if-eq v0, v3, :cond_73

    .line 382
    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    aget v1, p4, v1

    .line 394
    .restart local v1    # "rawOffsetInSeconds":I
    :goto_40
    const/4 v2, -0x1

    .line 395
    .local v2, "firstStdTypeIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_42
    iget-object v5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    array-length v5, v5

    if-ge v4, v5, :cond_52

    .line 396
    iget-object v5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_4f

    .line 397
    move v2, v4

    .line 398
    goto :goto_52

    .line 395
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 402
    .end local v4    # "i":I
    :cond_52
    :goto_52
    if-eq v2, v3, :cond_57

    .line 403
    aget v3, p4, v2

    goto :goto_58

    :cond_57
    move v3, v1

    .line 407
    .local v3, "earliestRawOffset":I
    :goto_58
    iput-object p4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    .line 408
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5b
    iget-object v5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    array-length v5, v5

    if-ge v4, v5, :cond_6a

    .line 409
    iget-object v5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    aget v6, v5, v4

    sub-int/2addr v6, v1

    aput v6, v5, v4

    .line 408
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 413
    .end local v4    # "i":I
    :cond_6a
    mul-int/lit16 v4, v1, 0x3e8

    iput v4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    .line 414
    mul-int/lit16 v4, v3, 0x3e8

    iput v4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mEarliestRawOffset:I

    .line 415
    return-void

    .line 378
    .end local v1    # "rawOffsetInSeconds":I
    .end local v2    # "firstStdTypeIndex":I
    .end local v3    # "earliestRawOffset":I
    :cond_73
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZoneInfo requires at least one non-DST transition to be provided for each timezone that has at least one transition but could not find one for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    .end local v0    # "lastStdTransitionIndex":I
    :cond_90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZoneInfo requires at least one offset to be provided for each timezone but could not find one for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkTzifVersionAcceptable(Ljava/lang/String;B)V
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "tzh_version"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    int-to-char v0, p1

    .line 342
    .local v0, "tzh_version_char":C
    const/16 v1, 0x32

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x33

    if-ne v0, v1, :cond_a

    goto :goto_3d

    .line 343
    :cond_a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timezone id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has an invalid format version=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_3d
    :goto_3d
    return-void
.end method

.method public static blacklist createFromSerializationFields(Ljava/lang/String;Ljava/io/ObjectInputStream$GetField;)Lcom/android/i18n/timezone/ZoneInfoData;
    .registers 12
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "getField"    # Ljava/io/ObjectInputStream$GetField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    const-string v0, "mRawOffset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    .line 428
    .local v4, "rawOffset":I
    const-string v0, "mEarliestRawOffset"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    .line 429
    .local v5, "earliestRawOffset":I
    const-string v0, "mTransitions"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [J

    .line 430
    .local v6, "transitions":[J
    const-string v0, "mTypes"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [B

    .line 431
    .local v7, "types":[B
    const-string v0, "mOffsets"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [I

    .line 432
    .local v8, "offsets":[I
    const-string v0, "mIsDsts"

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [B

    .line 434
    .local v9, "isDsts":[B
    new-instance v2, Lcom/android/i18n/timezone/ZoneInfoData;

    move-object v3, p0

    .end local p0    # "id":Ljava/lang/String;
    .local v3, "id":Ljava/lang/String;
    invoke-direct/range {v2 .. v9}, Lcom/android/i18n/timezone/ZoneInfoData;-><init>(Ljava/lang/String;II[J[B[I[B)V

    return-object v2
.end method

.method public static blacklist createInstance(Ljava/lang/String;[J[B[I[Z)Lcom/android/i18n/timezone/ZoneInfoData;
    .registers 11
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "transitions"    # [J
    .param p2, "types"    # [B
    .param p3, "offsets"    # [I
    .param p4, "isDsts"    # [Z

    .line 845
    new-instance v0, Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-static {p4}, Lcom/android/i18n/timezone/ZoneInfoData;->toByteArray([Z)[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p0    # "id":Ljava/lang/String;
    .end local p1    # "transitions":[J
    .end local p2    # "types":[B
    .end local p3    # "offsets":[I
    .local v1, "id":Ljava/lang/String;
    .local v2, "transitions":[J
    .local v3, "types":[B
    .local v4, "offsets":[I
    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/timezone/ZoneInfoData;-><init>(Ljava/lang/String;[J[B[I[B)V

    return-object v0
.end method

.method private static blacklist read64BitData(Ljava/lang/String;Lcom/android/i18n/timezone/internal/BufferIterator;)Lcom/android/i18n/timezone/ZoneInfoData;
    .registers 19
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "it"    # Lcom/android/i18n/timezone/internal/BufferIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v7

    .line 261
    .local v7, "tzh_magic":I
    const v0, 0x545a6966

    const-string v2, "Timezone id="

    if-ne v7, v0, :cond_17f

    .line 265
    invoke-virtual {v6}, Lcom/android/i18n/timezone/internal/BufferIterator;->readByte()B

    move-result v8

    .line 266
    .local v8, "tzh_version":B
    invoke-static {v1, v8}, Lcom/android/i18n/timezone/ZoneInfoData;->checkTzifVersionAcceptable(Ljava/lang/String;B)V

    .line 269
    const/16 v0, 0x1b

    invoke-virtual {v6, v0}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 272
    invoke-virtual {v6}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v9

    .line 275
    .local v9, "tzh_timecnt":I
    const/16 v10, 0x7d0

    .line 276
    .local v10, "MAX_TRANSITIONS":I
    if-ltz v9, :cond_15e

    const/16 v0, 0x7d0

    if-gt v9, v0, :cond_15e

    .line 282
    invoke-virtual {v6}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v11

    .line 283
    .local v11, "tzh_typecnt":I
    const/16 v12, 0x100

    .line 284
    .local v12, "MAX_TYPES":I
    const/4 v0, 0x1

    if-lt v11, v0, :cond_13f

    .line 288
    const/16 v2, 0x100

    if-gt v11, v2, :cond_11c

    .line 293
    const/4 v2, 0x4

    invoke-virtual {v6, v2}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 295
    new-array v2, v9, [J

    .line 296
    .local v2, "transitions64":[J
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v4, v3}, Lcom/android/i18n/timezone/internal/BufferIterator;->readLongArray([JII)V

    .line 297
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    if-ge v3, v9, :cond_89

    .line 298
    if-lez v3, :cond_86

    aget-wide v13, v2, v3

    add-int/lit8 v5, v3, -0x1

    aget-wide v15, v2, v5

    cmp-long v5, v13, v15

    if-lez v5, :cond_4f

    goto :goto_86

    .line 299
    :cond_4f
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transition at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not sorted correctly, is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v13, v2, v3

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", previous is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, -0x1

    aget-wide v13, v2, v5

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_86
    :goto_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 305
    .end local v3    # "i":I
    :cond_89
    new-array v3, v9, [B

    .line 306
    .local v3, "types":[B
    array-length v5, v3

    invoke-virtual {v6, v3, v4, v5}, Lcom/android/i18n/timezone/internal/BufferIterator;->readByteArray([BII)V

    .line 307
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_90
    array-length v5, v3

    if-ge v4, v5, :cond_cd

    .line 308
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    .line 309
    .local v5, "typeIndex":I
    if-ge v5, v11, :cond_9c

    .line 307
    .end local v5    # "typeIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .line 310
    .restart local v5    # "typeIndex":I
    :cond_9c
    new-instance v0, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " type at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not < "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    .end local v4    # "i":I
    .end local v5    # "typeIndex":I
    :cond_cd
    new-array v4, v11, [I

    .line 317
    .local v4, "gmtOffsets":[I
    new-array v5, v11, [B

    .line 318
    .local v5, "isDsts":[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_d2
    if-ge v13, v11, :cond_114

    .line 319
    invoke-virtual {v6}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v14

    aput v14, v4, v13

    .line 320
    invoke-virtual {v6}, Lcom/android/i18n/timezone/internal/BufferIterator;->readByte()B

    move-result v14

    .line 321
    .local v14, "isDst":B
    if-eqz v14, :cond_10a

    if-ne v14, v0, :cond_e3

    goto :goto_10a

    .line 322
    :cond_e3
    new-instance v0, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v1, " dst at "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " is not 0 or 1, is "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_10a
    :goto_10a
    aput-byte v14, v5, v13

    .line 332
    invoke-virtual {v6, v0}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 318
    .end local v14    # "isDst":B
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    goto :goto_d2

    .line 334
    .end local v13    # "i":I
    :cond_114
    new-instance v0, Lcom/android/i18n/timezone/ZoneInfoData;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/timezone/ZoneInfoData;-><init>(Ljava/lang/String;[J[B[I[B)V

    return-object v0

    .line 289
    .end local v2    # "transitions64":[J
    .end local v3    # "types":[B
    .end local v4    # "gmtOffsets":[I
    .end local v5    # "isDsts":[B
    :cond_11c
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timezone with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has too many types="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_13f
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZoneInfo requires at least one type to be provided for each timezone but could not find one for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    .end local v11    # "tzh_typecnt":I
    .end local v12    # "MAX_TYPES":I
    :cond_15e
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has an invalid number of transitions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    .end local v8    # "tzh_version":B
    .end local v9    # "tzh_timecnt":I
    .end local v10    # "MAX_TRANSITIONS":I
    :cond_17f
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has an invalid header="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist readTimeZone(Ljava/lang/String;Lcom/android/i18n/timezone/internal/BufferIterator;)Lcom/android/i18n/timezone/ZoneInfoData;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "it"    # Lcom/android/i18n/timezone/internal/BufferIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-static {p0, p1}, Lcom/android/i18n/timezone/ZoneInfoData;->skipOver32BitData(Ljava/lang/String;Lcom/android/i18n/timezone/internal/BufferIterator;)V

    .line 196
    invoke-static {p0, p1}, Lcom/android/i18n/timezone/ZoneInfoData;->read64BitData(Ljava/lang/String;Lcom/android/i18n/timezone/internal/BufferIterator;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    return-object v0
.end method

.method static blacklist roundDownMillisToSeconds(J)J
    .registers 7
    .param p0, "millis"    # J

    .line 526
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, 0x3e8

    if-gez v0, :cond_e

    .line 532
    const-wide/16 v3, 0x3e7

    sub-long v3, p0, v3

    div-long/2addr v3, v1

    return-wide v3

    .line 534
    :cond_e
    div-long v0, p0, v1

    return-wide v0
.end method

.method static blacklist roundUpMillisToSeconds(J)J
    .registers 7
    .param p0, "millis"    # J

    .line 553
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, 0x3e8

    if-lez v0, :cond_d

    .line 559
    const-wide/16 v3, 0x3e7

    add-long/2addr v3, p0

    div-long/2addr v3, v1

    return-wide v3

    .line 561
    :cond_d
    div-long v0, p0, v1

    return-wide v0
.end method

.method private static blacklist skipOver32BitData(Ljava/lang/String;Lcom/android/i18n/timezone/internal/BufferIterator;)V
    .registers 14
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "it"    # Lcom/android/i18n/timezone/internal/BufferIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v0

    .line 208
    .local v0, "tzh_magic":I
    const v1, 0x545a6966

    if-ne v0, v1, :cond_49

    .line 212
    invoke-virtual {p1}, Lcom/android/i18n/timezone/internal/BufferIterator;->readByte()B

    move-result v1

    .line 213
    .local v1, "tzh_version":B
    invoke-static {p0, v1}, Lcom/android/i18n/timezone/ZoneInfoData;->checkTzifVersionAcceptable(Ljava/lang/String;B)V

    .line 216
    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 219
    invoke-virtual {p1}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v2

    .line 220
    .local v2, "tzh_ttisgmtcnt":I
    invoke-virtual {p1}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v3

    .line 221
    .local v3, "tzh_ttisstdcnt":I
    invoke-virtual {p1}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v4

    .line 222
    .local v4, "tzh_leapcnt":I
    invoke-virtual {p1}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v5

    .line 223
    .local v5, "tzh_timecnt":I
    invoke-virtual {p1}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v6

    .line 224
    .local v6, "tzh_typecnt":I
    invoke-virtual {p1}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v7

    .line 227
    .local v7, "tzh_charcnt":I
    const/4 v8, 0x5

    .line 228
    .local v8, "transitionInfoSize":I
    mul-int/lit8 v9, v5, 0x5

    invoke-virtual {p1, v9}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 236
    const/4 v9, 0x6

    .line 237
    .local v9, "ttinfoSize":I
    mul-int/lit8 v10, v6, 0x6

    invoke-virtual {p1, v10}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 240
    invoke-virtual {p1, v7}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 243
    const/16 v10, 0x8

    .line 244
    .local v10, "leapInfoSize":I
    mul-int v11, v4, v10

    invoke-virtual {p1, v11}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 248
    add-int v11, v3, v2

    invoke-virtual {p1, v11}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 249
    return-void

    .line 209
    .end local v1    # "tzh_version":B
    .end local v2    # "tzh_ttisgmtcnt":I
    .end local v3    # "tzh_ttisstdcnt":I
    .end local v4    # "tzh_leapcnt":I
    .end local v5    # "tzh_timecnt":I
    .end local v6    # "tzh_typecnt":I
    .end local v7    # "tzh_charcnt":I
    .end local v8    # "transitionInfoSize":I
    .end local v9    # "ttinfoSize":I
    .end local v10    # "leapInfoSize":I
    :cond_49
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timezone id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has an invalid header="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist toByteArray([Z)[B
    .registers 4
    .param p0, "isDsts"    # [Z

    .line 849
    array-length v0, p0

    new-array v0, v0, [B

    .line 850
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_f

    .line 851
    aget-boolean v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 853
    .end local v1    # "i":I
    :cond_f
    return-object v0
.end method


# virtual methods
.method public blacklist createCopyWithRawOffset(I)Lcom/android/i18n/timezone/ZoneInfoData;
    .registers 3
    .param p1, "newRawOffset"    # I

    .line 811
    new-instance v0, Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-direct {v0, p0, p1}, Lcom/android/i18n/timezone/ZoneInfoData;-><init>(Lcom/android/i18n/timezone/ZoneInfoData;I)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 761
    instance-of v0, p1, Lcom/android/i18n/timezone/ZoneInfoData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 762
    return v1

    .line 764
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/i18n/timezone/ZoneInfoData;

    .line 765
    .local v0, "other":Lcom/android/i18n/timezone/ZoneInfoData;
    invoke-virtual {p0}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, v0}, Lcom/android/i18n/timezone/ZoneInfoData;->hasSameRules(Lcom/android/i18n/timezone/ZoneInfoData;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method blacklist findOffsetIndexForTimeInMilliseconds(J)I
    .registers 5
    .param p1, "millis"    # J

    .line 508
    invoke-static {p1, p2}, Lcom/android/i18n/timezone/ZoneInfoData;->roundDownMillisToSeconds(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/timezone/ZoneInfoData;->findOffsetIndexForTimeInSeconds(J)I

    move-result v0

    return v0
.end method

.method blacklist findOffsetIndexForTimeInSeconds(J)I
    .registers 5
    .param p1, "seconds"    # J

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/timezone/ZoneInfoData;->findTransitionIndex(J)I

    move-result v0

    .line 481
    .local v0, "transition":I
    if-gez v0, :cond_8

    .line 482
    const/4 v1, -0x1

    return v1

    .line 485
    :cond_8
    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public blacklist findTransitionIndex(J)I
    .registers 5
    .param p1, "seconds"    # J

    .line 461
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 462
    .local v0, "transition":I
    if-gez v0, :cond_f

    .line 463
    not-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 464
    if-gez v0, :cond_f

    .line 465
    const/4 v1, -0x1

    return v1

    .line 469
    :cond_f
    return v0
.end method

.method blacklist getEarliestRawOffset()I
    .registers 2

    .line 741
    iget v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mEarliestRawOffset:I

    return v0
.end method

.method public blacklist test-api getID()Ljava/lang/String;
    .registers 2

    .line 801
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLatestDstSavingsMillis(J)Ljava/lang/Integer;
    .registers 11
    .param p1, "whenMillis"    # J

    .line 688
    const/4 v0, -0x1

    .line 689
    .local v0, "lastStdTransitionIndex":I
    const/4 v1, -0x1

    .line 690
    .local v1, "lastDstTransitionIndex":I
    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 691
    .local v2, "i":I
    :goto_7
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v1, v3, :cond_29

    :cond_c
    if-ltz v2, :cond_29

    .line 692
    iget-object v4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    .line 693
    .local v4, "typeIndex":I
    if-ne v0, v3, :cond_1d

    iget-object v5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_1d

    .line 694
    move v0, v2

    .line 696
    :cond_1d
    if-ne v1, v3, :cond_26

    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    aget-byte v3, v3, v4

    if-eqz v3, :cond_26

    .line 697
    move v1, v2

    .line 691
    .end local v4    # "typeIndex":I
    :cond_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 701
    .end local v2    # "i":I
    :cond_29
    if-eq v1, v3, :cond_38

    .line 705
    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    aget-wide v4, v2, v1

    .line 711
    .local v4, "lastDSTTransitionTime":J
    invoke-static {p1, p2}, Lcom/android/i18n/timezone/ZoneInfoData;->roundUpMillisToSeconds(J)J

    move-result-wide v6

    .line 719
    .local v6, "currentUnixTimeSeconds":J
    cmp-long v2, v4, v6

    if-gez v2, :cond_38

    .line 721
    const/4 v1, -0x1

    .line 726
    .end local v4    # "lastDSTTransitionTime":J
    .end local v6    # "currentUnixTimeSeconds":J
    :cond_38
    if-ne v1, v3, :cond_3c

    .line 729
    const/4 v2, 0x0

    .local v2, "dstSavings":Ljava/lang/Integer;
    goto :goto_59

    .line 733
    .end local v2    # "dstSavings":Ljava/lang/Integer;
    :cond_3c
    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    .line 734
    .local v2, "lastGmtOffset":I
    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    iget-object v4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    .line 735
    .local v3, "lastDstOffset":I
    sub-int v4, v3, v2

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, v4

    .line 737
    .end local v3    # "lastDstOffset":I
    .local v2, "dstSavings":Ljava/lang/Integer;
    :goto_59
    return-object v2
.end method

.method public blacklist getOffset(J)I
    .registers 6
    .param p1, "whenMillis"    # J

    .line 636
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/timezone/ZoneInfoData;->findOffsetIndexForTimeInMilliseconds(J)I

    move-result v0

    .line 637
    .local v0, "offsetIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 641
    iget v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mEarliestRawOffset:I

    return v1

    .line 643
    :cond_a
    iget v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    aget v2, v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getOffsetsByUtcTime(J[I)I
    .registers 11
    .param p1, "unixEpochTimeInMillis"    # J
    .param p3, "offsets"    # [I

    .line 581
    invoke-static {p1, p2}, Lcom/android/i18n/timezone/ZoneInfoData;->roundDownMillisToSeconds(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/timezone/ZoneInfoData;->findTransitionIndex(J)I

    move-result v0

    .line 585
    .local v0, "transitionIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 588
    iget v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mEarliestRawOffset:I

    .line 589
    .local v1, "rawOffset":I
    const/4 v2, 0x0

    .line 590
    .local v2, "dstOffset":I
    move v3, v1

    .local v3, "totalOffset":I
    goto :goto_4e

    .line 592
    .end local v1    # "rawOffset":I
    .end local v2    # "dstOffset":I
    .end local v3    # "totalOffset":I
    :cond_10
    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 595
    .local v2, "type":I
    iget v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    iget-object v4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    aget v4, v4, v2

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    .line 596
    .restart local v3    # "totalOffset":I
    iget-object v4, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    aget-byte v4, v4, v2

    if-nez v4, :cond_29

    .line 598
    move v1, v3

    .line 599
    .restart local v1    # "rawOffset":I
    const/4 v4, 0x0

    move v2, v4

    .local v4, "dstOffset":I
    goto :goto_4e

    .line 603
    .end local v1    # "rawOffset":I
    .end local v4    # "dstOffset":I
    :cond_29
    const/4 v4, -0x1

    .line 604
    .local v4, "rawOffset":I
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_45

    .line 605
    iget-object v5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    aget-byte v5, v5, v0

    and-int/lit16 v2, v5, 0xff

    .line 606
    iget-object v5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    aget-byte v5, v5, v2

    if-nez v5, :cond_2a

    .line 607
    iget v5, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    iget-object v6, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    aget v6, v6, v2

    mul-int/lit16 v6, v6, 0x3e8

    add-int v4, v5, v6

    .line 608
    nop

    .line 612
    :cond_45
    if-ne v4, v1, :cond_4a

    .line 613
    iget v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mEarliestRawOffset:I

    .end local v4    # "rawOffset":I
    .restart local v1    # "rawOffset":I
    goto :goto_4b

    .line 612
    .end local v1    # "rawOffset":I
    .restart local v4    # "rawOffset":I
    :cond_4a
    move v1, v4

    .line 617
    .end local v4    # "rawOffset":I
    .restart local v1    # "rawOffset":I
    :goto_4b
    sub-int v4, v3, v1

    move v2, v4

    .line 621
    .local v2, "dstOffset":I
    :goto_4e
    const/4 v4, 0x0

    aput v1, p3, v4

    .line 622
    const/4 v4, 0x1

    aput v2, p3, v4

    .line 624
    return v3
.end method

.method public blacklist getRawOffset()I
    .registers 2

    .line 673
    iget v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    return v0
.end method

.method public blacklist getTransitions()[J
    .registers 2

    .line 825
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_e
    return-object v0
.end method

.method public blacklist hasSameRules(Lcom/android/i18n/timezone/ZoneInfoData;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 751
    iget v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    iget v1, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    iget-object v1, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    .line 753
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    iget-object v1, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    .line 754
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    iget-object v1, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    .line 755
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    iget-object v1, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    .line 756
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 751
    :goto_31
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 770
    const/16 v0, 0x1f

    .line 771
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 772
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 773
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int/2addr v1, v3

    .line 774
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    .line 775
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    add-int/2addr v1, v3

    .line 776
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([J)I

    move-result v3

    add-int/2addr v2, v3

    .line 777
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    .line 778
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist isInDaylightTime(J)Z
    .registers 7
    .param p1, "whenMillis"    # J

    .line 655
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/timezone/ZoneInfoData;->findOffsetIndexForTimeInMilliseconds(J)I

    move-result v0

    .line 656
    .local v0, "offsetIndex":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 661
    return v2

    .line 663
    :cond_9
    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    aget-byte v1, v1, v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    move v2, v3

    :cond_11
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",mRawOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEarliestRawOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mEarliestRawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",transitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToSerializationFields(Ljava/io/ObjectOutputStream$PutField;)V
    .registers 4
    .param p1, "putField"    # Ljava/io/ObjectOutputStream$PutField;

    .line 445
    const-string v0, "mRawOffset"

    iget v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mRawOffset:I

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 446
    const-string v0, "mEarliestRawOffset"

    iget v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mEarliestRawOffset:I

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 447
    const-string v0, "mTransitions"

    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v0, "mTypes"

    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    const-string v0, "mOffsets"

    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    const-string v0, "mIsDsts"

    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    return-void
.end method
