.class public final Ljava/util/UUID;
.super Ljava/lang/Object;
.source "UUID.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/UUID$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist ENABLE_STRICT_VALIDATION:J = 0xfae3935L

.field private static final blacklist NIBBLES:[B

.field private static final whitelist serialVersionUID:J = -0x4366fc0867927ad1L


# instance fields
.field private final greylist-max-r leastSigBits:J

.field private final greylist-max-r mostSigBits:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 77
    nop

    .line 190
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 191
    .local v0, "ns":[B
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 192
    const/16 v1, 0x30

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 193
    const/16 v1, 0x31

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 194
    const/16 v1, 0x32

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 195
    const/16 v1, 0x33

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 196
    const/16 v1, 0x34

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    .line 197
    const/16 v1, 0x35

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 198
    const/16 v1, 0x36

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 199
    const/16 v1, 0x37

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    .line 200
    const/16 v1, 0x38

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    .line 201
    const/16 v1, 0x39

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    .line 202
    const/16 v1, 0x41

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 203
    const/16 v1, 0x42

    const/16 v3, 0xb

    aput-byte v3, v0, v1

    .line 204
    const/16 v1, 0x43

    const/16 v4, 0xc

    aput-byte v4, v0, v1

    .line 205
    const/16 v1, 0x44

    const/16 v5, 0xd

    aput-byte v5, v0, v1

    .line 206
    const/16 v1, 0x45

    const/16 v6, 0xe

    aput-byte v6, v0, v1

    .line 207
    const/16 v1, 0x46

    const/16 v7, 0xf

    aput-byte v7, v0, v1

    .line 208
    const/16 v1, 0x61

    aput-byte v2, v0, v1

    .line 209
    const/16 v1, 0x62

    aput-byte v3, v0, v1

    .line 210
    const/16 v1, 0x63

    aput-byte v4, v0, v1

    .line 211
    const/16 v1, 0x64

    aput-byte v5, v0, v1

    .line 212
    const/16 v1, 0x65

    aput-byte v6, v0, v1

    .line 213
    const/16 v1, 0x66

    aput-byte v7, v0, v1

    .line 214
    sput-object v0, Ljava/util/UUID;->NIBBLES:[B

    .line 215
    .end local v0    # "ns":[B
    return-void
.end method

.method public constructor whitelist test-api <init>(JJ)V
    .registers 5
    .param p1, "mostSigBits"    # J
    .param p3, "leastSigBits"    # J

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-wide p1, p0, Ljava/util/UUID;->mostSigBits:J

    .line 141
    iput-wide p3, p0, Ljava/util/UUID;->leastSigBits:J

    .line 142
    return-void
.end method

.method private constructor greylist-max-o <init>([B)V
    .registers 12
    .param p1, "data"    # [B

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-wide/16 v0, 0x0

    .line 117
    .local v0, "msb":J
    const-wide/16 v2, 0x0

    .line 118
    .local v2, "lsb":J
    nop

    .line 119
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    const/16 v5, 0x8

    if-ge v4, v5, :cond_19

    .line 120
    shl-long v5, v0, v5

    aget-byte v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v0, v5, v7

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 121
    .end local v4    # "i":I
    :cond_19
    const/16 v4, 0x8

    .restart local v4    # "i":I
    :goto_1b
    const/16 v6, 0x10

    if-ge v4, v6, :cond_2b

    .line 122
    shl-long v6, v2, v5

    aget-byte v8, p1, v4

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long v2, v6, v8

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 123
    .end local v4    # "i":I
    :cond_2b
    iput-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    .line 124
    iput-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    .line 125
    return-void
.end method

.method private static greylist-max-o digits(JI)Ljava/lang/String;
    .registers 8
    .param p0, "val"    # J
    .param p2, "digits"    # I

    .line 531
    mul-int/lit8 v0, p2, 0x4

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    .line 532
    .local v3, "hi":J
    sub-long v0, v3, v1

    and-long/2addr v0, p0

    or-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api fromString(Ljava/lang/String;)Ljava/util/UUID;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 257
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_17

    .line 258
    const-wide/32 v0, 0xfae3935

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_17

    .line 262
    :cond_12
    invoke-static {p0}, Ljava/util/UUID;->fromStringCurrentJava(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0

    .line 259
    :cond_17
    :goto_17
    invoke-static {p0}, Ljava/util/UUID;->fromStringJava8(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist fromString1(Ljava/lang/String;)Ljava/util/UUID;
    .registers 18
    .param p0, "name"    # Ljava/lang/String;

    .line 297
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 298
    .local v1, "len":I
    const/16 v2, 0x24

    if-gt v1, v2, :cond_84

    .line 302
    const/16 v2, 0x2d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 303
    .local v4, "dash1":I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 304
    .local v5, "dash2":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 305
    .local v6, "dash3":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 306
    .local v7, "dash4":I
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 314
    .local v2, "dash5":I
    if-ltz v7, :cond_6b

    if-gez v2, :cond_6b

    .line 318
    const/16 v8, 0x10

    invoke-static {v0, v3, v4, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/CharSequence;III)J

    move-result-wide v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    .line 319
    .local v9, "mostSigBits":J
    shl-long/2addr v9, v8

    .line 320
    add-int/lit8 v3, v4, 0x1

    invoke-static {v0, v3, v5, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/CharSequence;III)J

    move-result-wide v11

    const-wide/32 v13, 0xffff

    and-long/2addr v11, v13

    or-long/2addr v9, v11

    .line 321
    shl-long/2addr v9, v8

    .line 322
    add-int/lit8 v3, v5, 0x1

    invoke-static {v0, v3, v6, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/CharSequence;III)J

    move-result-wide v11

    and-long/2addr v11, v13

    or-long/2addr v9, v11

    .line 323
    add-int/lit8 v3, v6, 0x1

    invoke-static {v0, v3, v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/CharSequence;III)J

    move-result-wide v11

    and-long/2addr v11, v13

    .line 324
    .local v11, "leastSigBits":J
    const/16 v3, 0x30

    shl-long/2addr v11, v3

    .line 325
    add-int/lit8 v3, v7, 0x1

    invoke-static {v0, v3, v1, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/CharSequence;III)J

    move-result-wide v13

    const-wide v15, 0xffffffffffffL

    and-long/2addr v13, v15

    or-long/2addr v11, v13

    .line 327
    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v9, v10, v11, v12}, Ljava/util/UUID;-><init>(JJ)V

    return-object v3

    .line 315
    .end local v9    # "mostSigBits":J
    .end local v11    # "leastSigBits":J
    :cond_6b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid UUID string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    .end local v2    # "dash5":I
    .end local v4    # "dash1":I
    .end local v5    # "dash2":I
    .end local v6    # "dash3":I
    .end local v7    # "dash4":I
    :cond_84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "UUID string too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist fromStringCurrentJava(Ljava/lang/String;)Ljava/util/UUID;
    .registers 32
    .param p0, "name"    # Ljava/lang/String;

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_ad

    .line 273
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 274
    .local v1, "ch1":C
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 275
    .local v2, "ch2":C
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 276
    .local v3, "ch3":C
    const/16 v4, 0x17

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 277
    .local v4, "ch4":C
    const/16 v5, 0x2d

    if-ne v1, v5, :cond_a5

    if-ne v2, v5, :cond_a5

    if-ne v3, v5, :cond_a5

    if-ne v4, v5, :cond_a5

    .line 278
    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/util/UUID;->parse4Nibbles(Ljava/lang/String;I)J

    move-result-wide v5

    .line 279
    .local v5, "msb1":J
    const/4 v7, 0x4

    invoke-static {v0, v7}, Ljava/util/UUID;->parse4Nibbles(Ljava/lang/String;I)J

    move-result-wide v7

    .line 280
    .local v7, "msb2":J
    const/16 v9, 0x9

    invoke-static {v0, v9}, Ljava/util/UUID;->parse4Nibbles(Ljava/lang/String;I)J

    move-result-wide v9

    .line 281
    .local v9, "msb3":J
    const/16 v11, 0xe

    invoke-static {v0, v11}, Ljava/util/UUID;->parse4Nibbles(Ljava/lang/String;I)J

    move-result-wide v11

    .line 282
    .local v11, "msb4":J
    const/16 v13, 0x13

    invoke-static {v0, v13}, Ljava/util/UUID;->parse4Nibbles(Ljava/lang/String;I)J

    move-result-wide v13

    .line 283
    .local v13, "lsb1":J
    const/16 v15, 0x18

    invoke-static {v0, v15}, Ljava/util/UUID;->parse4Nibbles(Ljava/lang/String;I)J

    move-result-wide v15

    .line 284
    .local v15, "lsb2":J
    move/from16 v17, v1

    .end local v1    # "ch1":C
    .local v17, "ch1":C
    const/16 v1, 0x1c

    invoke-static {v0, v1}, Ljava/util/UUID;->parse4Nibbles(Ljava/lang/String;I)J

    move-result-wide v18

    .line 285
    .local v18, "lsb3":J
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/UUID;->parse4Nibbles(Ljava/lang/String;I)J

    move-result-wide v20

    .line 286
    .local v20, "lsb4":J
    or-long v22, v5, v7

    or-long v22, v22, v9

    or-long v22, v22, v11

    or-long v22, v22, v13

    or-long v22, v22, v15

    or-long v22, v22, v18

    or-long v22, v22, v20

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-ltz v22, :cond_9c

    .line 287
    move/from16 v22, v1

    new-instance v1, Ljava/util/UUID;

    const/16 v23, 0x30

    shl-long v24, v5, v23

    shl-long v26, v7, v22

    or-long v24, v24, v26

    const/16 v26, 0x10

    shl-long v27, v9, v26

    or-long v24, v24, v27

    move/from16 v27, v2

    move/from16 v28, v3

    .end local v2    # "ch2":C
    .end local v3    # "ch3":C
    .local v27, "ch2":C
    .local v28, "ch3":C
    or-long v2, v24, v11

    shl-long v23, v13, v23

    shl-long v29, v15, v22

    or-long v22, v23, v29

    shl-long v24, v18, v26

    or-long v22, v22, v24

    move/from16 v24, v4

    move-wide/from16 v25, v5

    .end local v4    # "ch4":C
    .end local v5    # "msb1":J
    .local v24, "ch4":C
    .local v25, "msb1":J
    or-long v4, v22, v20

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1

    .line 286
    .end local v24    # "ch4":C
    .end local v25    # "msb1":J
    .end local v27    # "ch2":C
    .end local v28    # "ch3":C
    .restart local v2    # "ch2":C
    .restart local v3    # "ch3":C
    .restart local v4    # "ch4":C
    .restart local v5    # "msb1":J
    :cond_9c
    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v24, v4

    move-wide/from16 v25, v5

    .end local v2    # "ch2":C
    .end local v3    # "ch3":C
    .end local v4    # "ch4":C
    .end local v5    # "msb1":J
    .restart local v24    # "ch4":C
    .restart local v25    # "msb1":J
    .restart local v27    # "ch2":C
    .restart local v28    # "ch3":C
    goto :goto_ad

    .line 277
    .end local v7    # "msb2":J
    .end local v9    # "msb3":J
    .end local v11    # "msb4":J
    .end local v13    # "lsb1":J
    .end local v15    # "lsb2":J
    .end local v17    # "ch1":C
    .end local v18    # "lsb3":J
    .end local v20    # "lsb4":J
    .end local v24    # "ch4":C
    .end local v25    # "msb1":J
    .end local v27    # "ch2":C
    .end local v28    # "ch3":C
    .restart local v1    # "ch1":C
    .restart local v2    # "ch2":C
    .restart local v3    # "ch3":C
    .restart local v4    # "ch4":C
    :cond_a5
    move/from16 v17, v1

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v24, v4

    .line 293
    .end local v1    # "ch1":C
    .end local v2    # "ch2":C
    .end local v3    # "ch3":C
    .end local v4    # "ch4":C
    :cond_ad
    :goto_ad
    invoke-static {v0}, Ljava/util/UUID;->fromString1(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist fromStringJava8(Ljava/lang/String;)Ljava/util/UUID;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    .line 335
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "components":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6e

    .line 338
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_27

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 341
    .end local v1    # "i":I
    :cond_27
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 342
    .local v1, "mostSigBits":J
    const/16 v3, 0x10

    shl-long/2addr v1, v3

    .line 343
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    or-long/2addr v1, v4

    .line 344
    shl-long/2addr v1, v3

    .line 345
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 347
    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 348
    .local v3, "leastSigBits":J
    const/16 v5, 0x30

    shl-long/2addr v3, v5

    .line 349
    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    or-long/2addr v3, v5

    .line 351
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v5

    .line 337
    .end local v1    # "mostSigBits":J
    .end local v3    # "leastSigBits":J
    :cond_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid UUID string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api nameUUIDFromBytes([B)Ljava/util/UUID;
    .registers 5
    .param p0, "name"    # [B

    .line 176
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_30

    .line 179
    .local v0, "md":Ljava/security/MessageDigest;
    nop

    .line 180
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 181
    .local v1, "md5Bytes":[B
    const/4 v2, 0x6

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 182
    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 183
    const/16 v2, 0x8

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 184
    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 185
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v1}, Ljava/util/UUID;-><init>([B)V

    return-object v2

    .line 177
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "md5Bytes":[B
    :catch_30
    move-exception v0

    .line 178
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "MD5 not supported"

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist parse4Nibbles(Ljava/lang/String;I)J
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 218
    sget-object v0, Ljava/util/UUID;->NIBBLES:[B

    .line 219
    .local v0, "ns":[B
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 220
    .local v1, "ch1":C
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 221
    .local v2, "ch2":C
    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 222
    .local v3, "ch3":C
    add-int/lit8 v4, p1, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 223
    .local v4, "ch4":C
    or-int v5, v1, v2

    or-int/2addr v5, v3

    or-int/2addr v5, v4

    const/16 v6, 0xff

    if-le v5, v6, :cond_23

    .line 224
    const-wide/16 v5, -0x1

    goto :goto_35

    :cond_23
    aget-byte v5, v0, v1

    shl-int/lit8 v5, v5, 0xc

    aget-byte v6, v0, v2

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    aget-byte v6, v0, v3

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    aget-byte v6, v0, v4

    or-int/2addr v5, v6

    int-to-long v5, v5

    .line 223
    :goto_35
    return-wide v5
.end method

.method public static whitelist test-api randomUUID()Ljava/util/UUID;
    .registers 4

    .line 153
    sget-object v0, Ljava/util/UUID$Holder;->numberGenerator:Ljava/security/SecureRandom;

    .line 155
    .local v0, "ng":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 156
    .local v1, "randomBytes":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 157
    const/4 v2, 0x6

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 158
    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 159
    const/16 v2, 0x8

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 160
    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 161
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v1}, Ljava/util/UUID;-><init>([B)V

    return-object v2
.end method


# virtual methods
.method public whitelist test-api clockSequence()I
    .registers 5

    .line 461
    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 465
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide/high16 v2, 0x3fff000000000000L    # 1.9375

    and-long/2addr v0, v2

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 462
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a time-based UUID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 77
    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/util/UUID;)I
    .registers 9
    .param p1, "val"    # Ljava/util/UUID;

    .line 587
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v2, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gez v0, :cond_a

    goto :goto_29

    .line 588
    :cond_a
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v4, p1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_15

    move v1, v2

    goto :goto_29

    .line 589
    :cond_15
    iget-wide v3, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v5, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1e

    goto :goto_29

    .line 590
    :cond_1e
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v3, p1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_28

    move v1, v2

    goto :goto_29

    .line 591
    :cond_28
    const/4 v1, 0x0

    .line 587
    :goto_29
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 560
    const/4 v0, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/UUID;

    if-eq v1, v2, :cond_c

    goto :goto_21

    .line 562
    :cond_c
    move-object v1, p1

    check-cast v1, Ljava/util/UUID;

    .line 563
    .local v1, "id":Ljava/util/UUID;
    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v4, v1, Ljava/util/UUID;->mostSigBits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_20

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v4, v1, Ljava/util/UUID;->leastSigBits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0

    .line 561
    .end local v1    # "id":Ljava/util/UUID;
    :cond_21
    :goto_21
    return v0
.end method

.method public whitelist test-api getLeastSignificantBits()J
    .registers 3

    .line 362
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    return-wide v0
.end method

.method public whitelist test-api getMostSignificantBits()J
    .registers 3

    .line 371
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 542
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    xor-long/2addr v0, v2

    .line 543
    .local v0, "hilo":J
    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v3, v0

    xor-int/2addr v2, v3

    return v2
.end method

.method public whitelist test-api node()J
    .registers 5

    .line 485
    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 489
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    return-wide v0

    .line 486
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a time-based UUID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api timestamp()J
    .registers 7

    .line 435
    invoke-virtual {p0}, Ljava/util/UUID;->version()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 439
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    const-wide/16 v2, 0xfff

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 436
    :cond_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a time-based UUID"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    .line 523
    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/util/UUID;->mostSigBits:J

    .line 524
    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v5, 0x30

    shr-long/2addr v2, v5

    .line 525
    invoke-static {v2, v3, v4}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/util/UUID;->leastSigBits:J

    .line 526
    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Ljava/util/UUID;->digits(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    return-object v0
.end method

.method public whitelist test-api variant()I
    .registers 7

    .line 414
    iget-wide v0, p0, Ljava/util/UUID;->leastSigBits:J

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v4, 0x3e

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x40

    sub-long/2addr v4, v2

    long-to-int v2, v4

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Ljava/util/UUID;->leastSigBits:J

    const/16 v4, 0x3f

    shr-long/2addr v2, v4

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api version()I
    .registers 5

    .line 390
    iget-wide v0, p0, Ljava/util/UUID;->mostSigBits:J

    const/16 v2, 0xc

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
