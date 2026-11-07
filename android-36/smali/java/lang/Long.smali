.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/constant/Constable;
.implements Ljava/lang/constant/ConstantDesc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Long$LongCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/constant/Constable;",
        "Ljava/lang/constant/ConstantDesc;"
    }
.end annotation


# static fields
.field public static final whitelist test-api BYTES:I = 0x8

.field public static final whitelist test-api MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final whitelist test-api MIN_VALUE:J = -0x8000000000000000L

.field public static final whitelist test-api SIZE:I = 0x40

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final greylist-max-p value:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    const-string v0, "long"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 1352
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1353
    iput-wide p1, p0, Ljava/lang/Long;->value:J

    .line 1354
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 1375
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1376
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Long;->value:J

    .line 1377
    return-void
.end method

.method public static whitelist test-api bitCount(J)I
    .registers 8
    .param p0, "i"    # J

    .line 1872
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v2

    sub-long/2addr p0, v0

    .line 1873
    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long v2, p0, v0

    const/4 v4, 0x2

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 1874
    .end local p0    # "i":J
    .local v2, "i":J
    const/4 p0, 0x4

    ushr-long p0, v2, p0

    add-long/2addr p0, v2

    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr p0, v0

    .line 1875
    .end local v2    # "i":J
    .restart local p0    # "i":J
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 1876
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 1877
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    .line 1878
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public static whitelist test-api compare(JJ)I
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1664
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public static whitelist test-api compareUnsigned(JJ)I
    .registers 8
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1681
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p0, v0

    add-long/2addr v0, p2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api compress(JJ)J
    .registers 22
    .param p0, "i"    # J
    .param p2, "mask"    # J

    .line 2023
    move-wide/from16 v0, p2

    and-long v2, p0, v0

    .line 2024
    .end local p0    # "i":J
    .local v2, "i":J
    not-long v4, v0

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    .line 2026
    .local v4, "maskCount":J
    const/4 v7, 0x0

    .end local p2    # "mask":J
    .local v0, "mask":J
    .local v7, "j":I
    :goto_8
    const/4 v8, 0x6

    if-ge v7, v8, :cond_28

    .line 2029
    invoke-static {v4, v5}, Ljava/lang/Long;->parallelSuffix(J)J

    move-result-wide v8

    .line 2031
    .local v8, "maskPrefix":J
    and-long v10, v8, v0

    .line 2033
    .local v10, "maskMove":J
    xor-long v12, v0, v10

    shl-int v14, v6, v7

    ushr-long v14, v10, v14

    or-long v0, v12, v14

    .line 2035
    and-long v12, v2, v10

    .line 2037
    .local v12, "t":J
    xor-long v14, v2, v12

    shl-int v16, v6, v7

    ushr-long v16, v12, v16

    or-long v2, v14, v16

    .line 2039
    not-long v14, v8

    and-long/2addr v4, v14

    .line 2026
    .end local v8    # "maskPrefix":J
    .end local v10    # "maskMove":J
    .end local v12    # "t":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2041
    .end local v7    # "j":I
    :cond_28
    return-wide v2
.end method

.method public static whitelist test-api decode(Ljava/lang/String;)Ljava/lang/Long;
    .registers 9
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1285
    const/16 v0, 0xa

    .line 1286
    .local v0, "radix":I
    const/4 v1, 0x0

    .line 1287
    .local v1, "index":I
    const/4 v2, 0x0

    .line 1290
    .local v2, "negative":Z
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 1292
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1294
    .local v3, "firstChar":C
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_17

    .line 1295
    const/4 v2, 0x1

    .line 1296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1297
    :cond_17
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1d

    .line 1298
    add-int/lit8 v1, v1, 0x1

    .line 1301
    :cond_1d
    :goto_1d
    const-string v4, "0x"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "0X"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_50

    .line 1305
    :cond_2e
    const-string v4, "#"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1306
    add-int/lit8 v1, v1, 0x1

    .line 1307
    const/16 v0, 0x10

    goto :goto_54

    .line 1309
    :cond_3b
    const-string v4, "0"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_54

    .line 1310
    add-int/lit8 v1, v1, 0x1

    .line 1311
    const/16 v0, 0x8

    goto :goto_54

    .line 1302
    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x2

    .line 1303
    const/16 v0, 0x10

    .line 1314
    :cond_54
    :goto_54
    const-string v4, "-"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_99

    const-string v5, "+"

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_99

    .line 1318
    :try_start_64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p0, v1, v5, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/CharSequence;III)J

    move-result-wide v4
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6c} :catch_72

    .line 1319
    .local v4, "result":J
    if-eqz v2, :cond_70

    neg-long v6, v4

    goto :goto_71

    :cond_70
    move-wide v6, v4

    .line 1327
    .end local v4    # "result":J
    .local v6, "result":J
    :goto_71
    goto :goto_94

    .line 1320
    .end local v6    # "result":J
    :catch_72
    move-exception v5

    .line 1324
    .local v5, "e":Ljava/lang/NumberFormatException;
    if-eqz v2, :cond_8b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8f

    .line 1325
    :cond_8b
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_8f
    nop

    .line 1326
    .local v4, "constant":Ljava/lang/String;
    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 1328
    .end local v4    # "constant":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "result":J
    :goto_94
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 1315
    .end local v6    # "result":J
    :cond_99
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, "Sign character in wrong position"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1291
    .end local v3    # "firstChar":C
    :cond_a1
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "Zero length string"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static whitelist test-api divideUnsigned(JJ)J
    .registers 12
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .line 1706
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/16 v1, 0x3f

    if-ltz v0, :cond_19

    .line 1707
    const/4 v0, 0x1

    ushr-long v2, p0, v0

    div-long/2addr v2, p2

    shl-long/2addr v2, v0

    .line 1708
    .local v2, "q":J
    mul-long v4, v2, p2

    sub-long v4, p0, v4

    .line 1709
    .local v4, "r":J
    sub-long v6, v4, p2

    not-long v6, v6

    or-long/2addr v6, v4

    ushr-long v0, v6, v1

    add-long/2addr v0, v2

    return-wide v0

    .line 1711
    .end local v2    # "q":J
    .end local v4    # "r":J
    :cond_19
    sub-long v2, p0, p2

    not-long v2, v2

    and-long/2addr v2, p0

    ushr-long v0, v2, v1

    return-wide v0
.end method

.method public static whitelist test-api expand(JJ)J
    .registers 35
    .param p0, "i"    # J
    .param p2, "mask"    # J

    .line 2110
    move-wide/from16 v0, p2

    move-wide/from16 v2, p2

    .line 2112
    .local v2, "originalMask":J
    not-long v4, v0

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    .line 2113
    .local v4, "maskCount":J
    invoke-static {v4, v5}, Ljava/lang/Long;->parallelSuffix(J)J

    move-result-wide v7

    .line 2115
    .local v7, "maskPrefix":J
    and-long v9, v7, v0

    .line 2117
    .local v9, "maskMove1":J
    xor-long v11, v0, v9

    ushr-long v13, v9, v6

    or-long v0, v11, v13

    .line 2118
    .end local p2    # "mask":J
    .local v0, "mask":J
    not-long v11, v7

    and-long/2addr v4, v11

    .line 2120
    invoke-static {v4, v5}, Ljava/lang/Long;->parallelSuffix(J)J

    move-result-wide v7

    .line 2122
    and-long v11, v7, v0

    .line 2124
    .local v11, "maskMove2":J
    xor-long v13, v0, v11

    const/4 v15, 0x2

    ushr-long v16, v11, v15

    or-long v0, v13, v16

    .line 2125
    not-long v13, v7

    and-long/2addr v4, v13

    .line 2127
    invoke-static {v4, v5}, Ljava/lang/Long;->parallelSuffix(J)J

    move-result-wide v7

    .line 2129
    and-long v13, v7, v0

    .line 2131
    .local v13, "maskMove3":J
    xor-long v16, v0, v13

    const/16 v18, 0x4

    ushr-long v19, v13, v18

    or-long v0, v16, v19

    .line 2132
    move-wide/from16 p2, v0

    .end local v0    # "mask":J
    .restart local p2    # "mask":J
    not-long v0, v7

    and-long/2addr v0, v4

    .line 2134
    .end local v4    # "maskCount":J
    .local v0, "maskCount":J
    invoke-static {v0, v1}, Ljava/lang/Long;->parallelSuffix(J)J

    move-result-wide v4

    .line 2136
    .end local v7    # "maskPrefix":J
    .local v4, "maskPrefix":J
    and-long v7, v4, p2

    .line 2138
    .local v7, "maskMove4":J
    xor-long v16, p2, v7

    const/16 v19, 0x8

    ushr-long v20, v7, v19

    or-long v16, v16, v20

    .line 2139
    .end local p2    # "mask":J
    .local v16, "mask":J
    move/from16 v20, v6

    move-wide/from16 p2, v7

    .end local v7    # "maskMove4":J
    .local p2, "maskMove4":J
    not-long v6, v4

    and-long/2addr v0, v6

    .line 2141
    invoke-static {v0, v1}, Ljava/lang/Long;->parallelSuffix(J)J

    move-result-wide v4

    .line 2143
    and-long v6, v4, v16

    .line 2145
    .local v6, "maskMove5":J
    xor-long v21, v16, v6

    const/16 v8, 0x10

    ushr-long v23, v6, v8

    or-long v16, v21, v23

    .line 2146
    move-wide/from16 v21, v9

    move v10, v8

    .end local v9    # "maskMove1":J
    .local v21, "maskMove1":J
    not-long v8, v4

    and-long/2addr v0, v8

    .line 2148
    invoke-static {v0, v1}, Ljava/lang/Long;->parallelSuffix(J)J

    move-result-wide v4

    .line 2150
    and-long v8, v4, v16

    .line 2152
    .local v8, "maskMove6":J
    const/16 v23, 0x20

    shl-long v23, p0, v23

    .line 2153
    .local v23, "t":J
    move-wide/from16 v25, v11

    move v12, v10

    .end local v11    # "maskMove2":J
    .local v25, "maskMove2":J
    not-long v10, v8

    and-long v10, p0, v10

    and-long v27, v23, v8

    or-long v10, v10, v27

    .line 2154
    .end local p0    # "i":J
    .local v10, "i":J
    shl-long v23, v10, v12

    .line 2155
    move-wide/from16 v27, v0

    .end local v0    # "maskCount":J
    .local v27, "maskCount":J
    not-long v0, v6

    and-long/2addr v0, v10

    and-long v29, v23, v6

    or-long v0, v0, v29

    .line 2156
    .end local v10    # "i":J
    .local v0, "i":J
    shl-long v10, v0, v19

    .line 2157
    .end local v23    # "t":J
    .local v10, "t":J
    move-wide/from16 p0, v0

    move-wide/from16 v23, v2

    move-wide/from16 v0, p2

    .end local v2    # "originalMask":J
    .end local p2    # "maskMove4":J
    .local v0, "maskMove4":J
    .local v23, "originalMask":J
    .restart local p0    # "i":J
    not-long v2, v0

    and-long v2, p0, v2

    and-long v29, v10, v0

    or-long v2, v2, v29

    .line 2158
    .end local p0    # "i":J
    .local v2, "i":J
    shl-long v10, v2, v18

    .line 2159
    nop

    .end local v0    # "maskMove4":J
    .restart local p2    # "maskMove4":J
    not-long v0, v13

    and-long/2addr v0, v2

    and-long v18, v10, v13

    or-long v0, v0, v18

    .line 2160
    .end local v2    # "i":J
    .local v0, "i":J
    shl-long v2, v0, v15

    .line 2161
    .end local v10    # "t":J
    .local v2, "t":J
    move-wide/from16 p0, v0

    move-wide/from16 v10, v25

    .end local v0    # "i":J
    .end local v25    # "maskMove2":J
    .local v10, "maskMove2":J
    .restart local p0    # "i":J
    not-long v0, v10

    and-long v0, p0, v0

    and-long v18, v2, v10

    or-long v0, v0, v18

    .line 2162
    .end local p0    # "i":J
    .restart local v0    # "i":J
    shl-long v2, v0, v20

    .line 2163
    move-wide/from16 p0, v0

    move-wide/from16 v18, v2

    move-wide/from16 v0, v21

    .end local v2    # "t":J
    .end local v21    # "maskMove1":J
    .local v0, "maskMove1":J
    .local v18, "t":J
    .restart local p0    # "i":J
    not-long v2, v0

    and-long v2, p0, v2

    and-long v20, v18, v0

    or-long v2, v2, v20

    .line 2166
    .end local p0    # "i":J
    .local v2, "i":J
    and-long v20, v2, v23

    return-wide v20
.end method

.method static blacklist formatUnsignedLong0(JI[BII)V
    .registers 11
    .param p0, "val"    # J
    .param p2, "shift"    # I
    .param p3, "buf"    # [B
    .param p4, "offset"    # I
    .param p5, "len"    # I

    .line 432
    add-int v0, p4, p5

    .line 433
    .local v0, "charPos":I
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    .line 434
    .local v1, "radix":I
    add-int/lit8 v2, v1, -0x1

    .line 436
    .local v2, "mask":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->digits:[C

    long-to-int v4, p0

    and-int/2addr v4, v2

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    .line 437
    ushr-long/2addr p0, p2

    .line 438
    if-gt v0, p4, :cond_6

    .line 439
    return-void
.end method

.method static blacklist getChars(JI[B)I
    .registers 10
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [B

    .line 524
    move v0, p2

    .line 526
    .local v0, "charPos":I
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 527
    .local v1, "negative":Z
    :goto_a
    if-nez v1, :cond_d

    .line 528
    neg-long p0, p0

    .line 532
    :cond_d
    :goto_d
    const-wide/32 v2, -0x80000000

    cmp-long v2, p0, v2

    if-gtz v2, :cond_2d

    .line 533
    const-wide/16 v2, 0x64

    div-long v4, p0, v2

    .line 534
    .local v4, "q":J
    mul-long/2addr v2, v4

    sub-long/2addr v2, p0

    long-to-int v2, v2

    .line 535
    .local v2, "r":I
    move-wide p0, v4

    .line 536
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v3, v3, v2

    aput-byte v3, p3, v0

    .line 537
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v3, v3, v2

    aput-byte v3, p3, v0

    goto :goto_d

    .line 542
    .end local v2    # "r":I
    .end local v4    # "q":J
    :cond_2d
    long-to-int v2, p0

    .line 543
    .local v2, "i2":I
    :goto_2e
    const/16 v3, -0x64

    if-gt v2, v3, :cond_49

    .line 544
    div-int/lit8 v3, v2, 0x64

    .line 545
    .local v3, "q2":I
    mul-int/lit8 v4, v3, 0x64

    sub-int/2addr v4, v2

    .line 546
    .local v4, "r":I
    move v2, v3

    .line 547
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v5, v5, v4

    aput-byte v5, p3, v0

    .line 548
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v5, v5, v4

    aput-byte v5, p3, v0

    goto :goto_2e

    .line 552
    .end local v3    # "q2":I
    .end local v4    # "r":I
    :cond_49
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->DigitOnes:[B

    neg-int v4, v2

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 553
    const/16 v3, -0x9

    if-ge v2, v3, :cond_5f

    .line 554
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->DigitTens:[B

    neg-int v4, v2

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 557
    :cond_5f
    if-eqz v1, :cond_67

    .line 558
    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x2d

    aput-byte v3, p3, v0

    .line 560
    :cond_67
    return v0
.end method

.method static blacklist getChars(JI[C)I
    .registers 10
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    .line 568
    move v0, p2

    .line 570
    .local v0, "charPos":I
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 571
    .local v1, "negative":Z
    :goto_a
    if-nez v1, :cond_d

    .line 572
    neg-long p0, p0

    .line 576
    :cond_d
    :goto_d
    const-wide/32 v2, -0x80000000

    cmp-long v2, p0, v2

    if-gtz v2, :cond_2f

    .line 577
    const-wide/16 v2, 0x64

    div-long v4, p0, v2

    .line 578
    .local v4, "q":J
    mul-long/2addr v2, v4

    sub-long/2addr v2, p0

    long-to-int v2, v2

    .line 579
    .local v2, "r":I
    move-wide p0, v4

    .line 580
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    aput-char v3, p3, v0

    .line 581
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    aput-char v3, p3, v0

    goto :goto_d

    .line 586
    .end local v2    # "r":I
    .end local v4    # "q":J
    :cond_2f
    long-to-int v2, p0

    .line 587
    .local v2, "i2":I
    :goto_30
    const/16 v3, -0x64

    if-gt v2, v3, :cond_4d

    .line 588
    div-int/lit8 v3, v2, 0x64

    .line 589
    .local v3, "q2":I
    mul-int/lit8 v4, v3, 0x64

    sub-int/2addr v4, v2

    .line 590
    .local v4, "r":I
    move v2, v3

    .line 591
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->DigitOnes:[B

    aget-byte v5, v5, v4

    int-to-char v5, v5

    aput-char v5, p3, v0

    .line 592
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/lang/Integer;->DigitTens:[B

    aget-byte v5, v5, v4

    int-to-char v5, v5

    aput-char v5, p3, v0

    goto :goto_30

    .line 596
    .end local v3    # "q2":I
    .end local v4    # "r":I
    :cond_4d
    div-int/lit8 v3, v2, 0xa

    .line 597
    .restart local v3    # "q2":I
    mul-int/lit8 v4, v3, 0xa

    sub-int/2addr v4, v2

    .line 598
    .restart local v4    # "r":I
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    aput-char v5, p3, v0

    .line 601
    if-gez v3, :cond_62

    .line 602
    add-int/lit8 v0, v0, -0x1

    rsub-int/lit8 v5, v3, 0x30

    int-to-char v5, v5

    aput-char v5, p3, v0

    .line 605
    :cond_62
    if-eqz v1, :cond_6a

    .line 606
    add-int/lit8 v0, v0, -0x1

    const/16 v5, 0x2d

    aput-char v5, p3, v0

    .line 608
    :cond_6a
    return v0
.end method

.method public static whitelist test-api getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "nm"    # Ljava/lang/String;

    .line 1524
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 5
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # J

    .line 1569
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 1570
    .local v0, "result":Ljava/lang/Long;
    if-nez v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public static whitelist test-api getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 4
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/Long;

    .line 1618
    const/4 v0, 0x0

    .line 1620
    .local v0, "v":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 1622
    goto :goto_8

    .line 1621
    :catch_7
    move-exception v1

    .line 1623
    :goto_8
    if-eqz v0, :cond_10

    .line 1625
    :try_start_a
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_f

    return-object v1

    .line 1626
    :catch_f
    move-exception v1

    .line 1629
    :cond_10
    return-object p1
.end method

.method public static whitelist test-api hashCode(J)I
    .registers 4
    .param p0, "value"    # J

    .line 1473
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist test-api highestOneBit(J)J
    .registers 5
    .param p0, "i"    # J

    .line 1789
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    ushr-long/2addr v0, v2

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api lowestOneBit(J)J
    .registers 4
    .param p0, "i"    # J

    .line 1807
    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 2234
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 2248
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api numberOfLeadingZeros(J)I
    .registers 5
    .param p0, "i"    # J

    .line 1833
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    .line 1834
    .local v1, "x":I
    if-nez v1, :cond_e

    long-to-int v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_12

    .line 1835
    :cond_e
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    .line 1834
    :goto_12
    return v2
.end method

.method public static whitelist test-api numberOfTrailingZeros(J)I
    .registers 6
    .param p0, "i"    # J

    .line 1854
    long-to-int v0, p0

    .line 1855
    .local v0, "x":I
    if-nez v0, :cond_e

    const/16 v1, 0x20

    ushr-long v2, p0, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_12

    .line 1856
    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 1855
    :goto_12
    return v2
.end method

.method private static blacklist parallelSuffix(J)J
    .registers 6
    .param p0, "maskCount"    # J

    .line 2171
    const/4 v0, 0x1

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    .line 2172
    .local v0, "maskPrefix":J
    const/4 v2, 0x2

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    .line 2173
    const/4 v2, 0x4

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    .line 2174
    const/16 v2, 0x8

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    .line 2175
    const/16 v2, 0x10

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    .line 2176
    const/16 v2, 0x20

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    .line 2177
    return-wide v0
.end method

.method public static whitelist test-api parseLong(Ljava/lang/CharSequence;III)J
    .registers 16
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 783
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 786
    const/4 v0, 0x2

    const-string v1, "radix "

    if-lt p3, v0, :cond_96

    .line 790
    const/16 v0, 0x24

    if-gt p3, v0, :cond_79

    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, "negative":Z
    move v1, p1

    .line 797
    .local v1, "i":I
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 799
    .local v2, "limit":J
    if-ge v1, p2, :cond_71

    .line 800
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 801
    .local v4, "firstChar":C
    const/16 v5, 0x30

    if-ge v4, v5, :cond_38

    .line 802
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2c

    .line 803
    const/4 v0, 0x1

    .line 804
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_30

    .line 805
    :cond_2c
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_33

    .line 809
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 806
    :cond_33
    invoke-static {p0, p1, p2, v1}, Ljava/lang/NumberFormatException;->forCharSequence(Ljava/lang/CharSequence;III)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 811
    :cond_38
    :goto_38
    if-ge v1, p2, :cond_6c

    .line 815
    int-to-long v5, p3

    div-long v5, v2, v5

    .line 816
    .local v5, "multmin":J
    const-wide/16 v7, 0x0

    .line 817
    .local v7, "result":J
    :goto_3f
    if-ge v1, p2, :cond_66

    .line 819
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    .line 820
    .local v9, "digit":I
    if-ltz v9, :cond_61

    cmp-long v10, v7, v5

    if-ltz v10, :cond_61

    .line 824
    int-to-long v10, p3

    mul-long/2addr v7, v10

    .line 825
    int-to-long v10, v9

    add-long/2addr v10, v2

    cmp-long v10, v7, v10

    if-ltz v10, :cond_5c

    .line 829
    add-int/lit8 v1, v1, 0x1

    .line 830
    int-to-long v10, v9

    sub-long/2addr v7, v10

    .line 831
    .end local v9    # "digit":I
    goto :goto_3f

    .line 826
    .restart local v9    # "digit":I
    :cond_5c
    invoke-static {p0, p1, p2, v1}, Ljava/lang/NumberFormatException;->forCharSequence(Ljava/lang/CharSequence;III)Ljava/lang/NumberFormatException;

    move-result-object v10

    throw v10

    .line 821
    :cond_61
    invoke-static {p0, p1, p2, v1}, Ljava/lang/NumberFormatException;->forCharSequence(Ljava/lang/CharSequence;III)Ljava/lang/NumberFormatException;

    move-result-object v10

    throw v10

    .line 832
    .end local v9    # "digit":I
    :cond_66
    if-eqz v0, :cond_6a

    move-wide v9, v7

    goto :goto_6b

    :cond_6a
    neg-long v9, v7

    :goto_6b
    return-wide v9

    .line 812
    .end local v5    # "multmin":J
    .end local v7    # "result":J
    :cond_6c
    invoke-static {p0, p1, p2, v1}, Ljava/lang/NumberFormatException;->forCharSequence(Ljava/lang/CharSequence;III)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 834
    .end local v4    # "firstChar":C
    :cond_71
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 791
    .end local v0    # "negative":Z
    .end local v1    # "i":I
    .end local v2    # "limit":J
    :cond_79
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " greater than Character.MAX_RADIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_96
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " less than Character.MIN_RADIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api parseLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 863
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api parseLong(Ljava/lang/String;I)J
    .registers 15
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 702
    if-eqz p0, :cond_af

    .line 706
    const/4 v0, 0x2

    const-string v1, "radix "

    if-lt p1, v0, :cond_92

    .line 710
    const/16 v0, 0x24

    if-gt p1, v0, :cond_75

    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, "negative":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 717
    .local v2, "len":I
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 719
    .local v3, "limit":J
    if-lez v2, :cond_70

    .line 720
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 721
    .local v5, "firstChar":C
    const/16 v6, 0x30

    if-ge v5, v6, :cond_3d

    .line 722
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_29

    .line 723
    const/4 v0, 0x1

    .line 724
    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_2d

    .line 725
    :cond_29
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_38

    .line 729
    :goto_2d
    const/4 v6, 0x1

    if-eq v2, v6, :cond_33

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 730
    :cond_33
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 726
    :cond_38
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 734
    :cond_3d
    :goto_3d
    int-to-long v6, p1

    div-long v6, v3, v6

    .line 735
    .local v6, "multmin":J
    const-wide/16 v8, 0x0

    .line 736
    .local v8, "result":J
    :goto_42
    if-ge v1, v2, :cond_6a

    .line 738
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "i":I
    .local v10, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 739
    .local v1, "digit":I
    if-ltz v1, :cond_65

    cmp-long v11, v8, v6

    if-ltz v11, :cond_65

    .line 742
    int-to-long v11, p1

    mul-long/2addr v8, v11

    .line 743
    int-to-long v11, v1

    add-long/2addr v11, v3

    cmp-long v11, v8, v11

    if-ltz v11, :cond_60

    .line 746
    int-to-long v11, v1

    sub-long/2addr v8, v11

    .line 747
    .end local v1    # "digit":I
    move v1, v10

    goto :goto_42

    .line 744
    .restart local v1    # "digit":I
    :cond_60
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 740
    :cond_65
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v11

    throw v11

    .line 748
    .end local v10    # "i":I
    .local v1, "i":I
    :cond_6a
    if-eqz v0, :cond_6e

    move-wide v10, v8

    goto :goto_6f

    :cond_6e
    neg-long v10, v8

    :goto_6f
    return-wide v10

    .line 750
    .end local v5    # "firstChar":C
    .end local v6    # "multmin":J
    .end local v8    # "result":J
    :cond_70
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 711
    .end local v0    # "negative":Z
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "limit":J
    :cond_75
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " greater than Character.MAX_RADIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_92
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " less than Character.MIN_RADIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_af
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Cannot parse null string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api parseUnsignedLong(Ljava/lang/CharSequence;III)J
    .registers 16
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1027
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 1030
    move v0, p1

    .local v0, "start":I
    sub-int v1, p2, p1

    .line 1032
    .local v1, "len":I
    if-lez v1, :cond_a5

    .line 1033
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1034
    .local v2, "firstChar":C
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_8f

    .line 1038
    const/16 v3, 0xc

    if-le v1, v3, :cond_88

    const/16 v3, 0xa

    if-ne p3, v3, :cond_24

    const/16 v3, 0x12

    if-gt v1, v3, :cond_24

    goto :goto_88

    .line 1044
    :cond_24
    add-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v0, v3, p3}, Ljava/lang/Long;->parseLong(Ljava/lang/CharSequence;III)J

    move-result-wide v3

    .line 1045
    .local v3, "first":J
    add-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 1046
    .local v5, "second":I
    if-ltz v5, :cond_69

    .line 1050
    int-to-long v6, p3

    mul-long/2addr v6, v3

    int-to-long v8, v5

    add-long/2addr v6, v8

    .line 1063
    .local v6, "result":J
    const/16 v8, 0x39

    ushr-long v8, v3, v8

    long-to-int v8, v8

    mul-int/2addr v8, p3

    .line 1064
    .local v8, "guard":I
    const/16 v9, 0x80

    if-ge v8, v9, :cond_53

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-ltz v9, :cond_52

    const/16 v9, 0x5c

    if-ge v8, v9, :cond_53

    .line 1107
    :cond_52
    return-wide v6

    .line 1104
    :cond_53
    new-instance v9, Ljava/lang/NumberFormatException;

    add-int v10, v0, v1

    .line 1105
    invoke-interface {p0, v0, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 1104
    const-string v11, "String value %s exceeds range of unsigned long."

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1047
    .end local v6    # "result":J
    .end local v8    # "guard":I
    :cond_69
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad digit at end of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v0, v1

    .line 1048
    invoke-interface {p0, v0, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1040
    .end local v3    # "first":J
    .end local v5    # "second":I
    :cond_88
    :goto_88
    add-int v3, v0, v1

    invoke-static {p0, v0, v3, p3}, Ljava/lang/Long;->parseLong(Ljava/lang/CharSequence;III)J

    move-result-wide v3

    return-wide v3

    .line 1035
    :cond_8f
    new-instance v3, Ljava/lang/NumberFormatException;

    add-int v4, v0, v1

    .line 1036
    invoke-interface {p0, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1035
    const-string v5, "Illegal leading minus sign on unsigned string %s."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1110
    .end local v2    # "firstChar":C
    :cond_a5
    const-string v2, ""

    invoke-static {v2, p3}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist test-api parseUnsignedLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1131
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api parseUnsignedLong(Ljava/lang/String;I)J
    .registers 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 911
    if-eqz p0, :cond_8c

    .line 915
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 916
    .local v0, "len":I
    if-lez v0, :cond_87

    .line 917
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 918
    .local v2, "firstChar":C
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_77

    .line 923
    const/16 v3, 0xc

    if-le v0, v3, :cond_72

    const/16 v3, 0xa

    if-ne p1, v3, :cond_1e

    const/16 v3, 0x12

    if-gt v0, v3, :cond_1e

    goto :goto_72

    .line 929
    :cond_1e
    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v1, v3, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/CharSequence;III)J

    move-result-wide v3

    .line 930
    .local v3, "first":J
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 931
    .local v1, "second":I
    if-ltz v1, :cond_59

    .line 934
    int-to-long v5, p1

    mul-long/2addr v5, v3

    int-to-long v7, v1

    add-long/2addr v5, v7

    .line 947
    .local v5, "result":J
    const/16 v7, 0x39

    ushr-long v7, v3, v7

    long-to-int v7, v7

    mul-int/2addr v7, p1

    .line 948
    .local v7, "guard":I
    const/16 v8, 0x80

    if-ge v7, v8, :cond_49

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-ltz v8, :cond_48

    const/16 v8, 0x5c

    if-ge v7, v8, :cond_49

    .line 991
    :cond_48
    return-wide v5

    .line 988
    :cond_49
    new-instance v8, Ljava/lang/NumberFormatException;

    const-string v9, "String value %s exceeds range of unsigned long."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 932
    .end local v5    # "result":J
    .end local v7    # "guard":I
    :cond_59
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad digit at end of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 925
    .end local v1    # "second":I
    .end local v3    # "first":J
    :cond_72
    :goto_72
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    return-wide v3

    .line 919
    :cond_77
    new-instance v1, Ljava/lang/NumberFormatException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 920
    const-string v4, "Illegal leading minus sign on unsigned string %s."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 994
    .end local v2    # "firstChar":C
    :cond_87
    invoke-static {p0, p1}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;I)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1

    .line 912
    .end local v0    # "len":I
    :cond_8c
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Cannot parse null string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api remainderUnsigned(JJ)J
    .registers 12
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .line 1729
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/16 v1, 0x3f

    if-ltz v0, :cond_1a

    .line 1730
    const/4 v0, 0x1

    ushr-long v2, p0, v0

    div-long/2addr v2, p2

    shl-long/2addr v2, v0

    .line 1731
    .local v2, "q":J
    mul-long v4, v2, p2

    sub-long v4, p0, v4

    .line 1743
    .local v4, "r":J
    sub-long v6, v4, p2

    not-long v6, v6

    shr-long v0, v6, v1

    and-long/2addr v0, p2

    sub-long v0, v4, v0

    return-wide v0

    .line 1754
    .end local v2    # "q":J
    .end local v4    # "r":J
    :cond_1a
    sub-long v2, p0, p2

    not-long v2, v2

    and-long/2addr v2, p0

    shr-long v0, v2, v1

    and-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static whitelist test-api reverse(J)J
    .registers 8
    .param p0, "i"    # J

    .line 1942
    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v2, p0, v0

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    or-long p0, v2, v0

    .line 1943
    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long v2, p0, v0

    const/4 v4, 0x2

    shl-long/2addr v2, v4

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    or-long p0, v2, v0

    .line 1944
    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long v2, p0, v0

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    or-long p0, v2, v0

    .line 1946
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api reverseBytes(J)J
    .registers 10
    .param p0, "i"    # J

    .line 2205
    const-wide v0, 0xff00ff00ff00ffL

    and-long v2, p0, v0

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    ushr-long v4, p0, v4

    and-long/2addr v0, v4

    or-long p0, v2, v0

    .line 2206
    const/16 v0, 0x30

    shl-long v1, p0, v0

    const-wide v3, 0xffff0000L

    and-long v5, p0, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    ushr-long v5, p0, v7

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    ushr-long v3, p0, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public static whitelist test-api rotateLeft(JI)J
    .registers 7
    .param p0, "i"    # J
    .param p2, "distance"    # I

    .line 1902
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api rotateRight(JI)J
    .registers 7
    .param p0, "i"    # J
    .param p2, "distance"    # I

    .line 1926
    ushr-long v0, p0, p2

    neg-int v2, p2

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api signum(J)I
    .registers 7
    .param p0, "i"    # J

    .line 2191
    const/16 v0, 0x3f

    shr-long v1, p0, v0

    neg-long v3, p0

    ushr-long/2addr v3, v0

    or-long v0, v1, v3

    long-to-int v0, v0

    return v0
.end method

.method static greylist-max-o stringSize(J)I
    .registers 8
    .param p0, "x"    # J

    .line 624
    const/4 v0, 0x1

    .line 625
    .local v0, "d":I
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_9

    .line 626
    const/4 v0, 0x0

    .line 627
    neg-long p0, p0

    .line 629
    :cond_9
    const-wide/16 v1, -0xa

    .line 630
    .local v1, "p":J
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_c
    const/16 v4, 0x13

    if-ge v3, v4, :cond_1d

    .line 631
    cmp-long v4, p0, v1

    if-lez v4, :cond_17

    .line 632
    add-int v4, v3, v0

    return v4

    .line 633
    :cond_17
    const-wide/16 v4, 0xa

    mul-long/2addr v1, v4

    .line 630
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 635
    .end local v3    # "i":I
    :cond_1d
    add-int/lit8 v3, v0, 0x13

    return v3
.end method

.method public static whitelist test-api sum(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 2220
    add-long v0, p0, p2

    return-wide v0
.end method

.method public static whitelist test-api toBinaryString(J)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # J

    .line 388
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toHexString(J)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # J

    .line 316
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toOctalString(J)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # J

    .line 355
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toString(J)Ljava/lang/String;
    .registers 5
    .param p0, "i"    # J

    .line 467
    invoke-static {p0, p1}, Ljava/lang/Long;->stringSize(J)I

    move-result v0

    .line 472
    .local v0, "size":I
    new-array v1, v0, [B

    .line 473
    .local v1, "buf":[B
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->getChars(JI[B)I

    .line 482
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static whitelist test-api toString(JI)Ljava/lang/String;
    .registers 10
    .param p0, "i"    # J
    .param p2, "radix"    # I

    .line 143
    const/4 v0, 0x2

    if-lt p2, v0, :cond_7

    const/16 v0, 0x24

    if-le p2, v0, :cond_9

    .line 144
    :cond_7
    const/16 p2, 0xa

    .line 145
    :cond_9
    const/16 v0, 0xa

    if-ne p2, v0, :cond_12

    .line 146
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_12
    const/16 v0, 0x41

    new-array v0, v0, [B

    .line 153
    .local v0, "buf":[B
    const/16 v1, 0x40

    .line 154
    .local v1, "charPos":I
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 156
    .local v2, "negative":Z
    :goto_21
    if-nez v2, :cond_24

    .line 157
    neg-long p0, p0

    .line 160
    :cond_24
    :goto_24
    neg-int v3, p2

    int-to-long v3, v3

    cmp-long v3, p0, v3

    if-gtz v3, :cond_3c

    .line 161
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "charPos":I
    .local v3, "charPos":I
    sget-object v4, Ljava/lang/Integer;->digits:[C

    int-to-long v5, p2

    rem-long v5, p0, v5

    neg-long v5, v5

    long-to-int v5, v5

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 162
    int-to-long v4, p2

    div-long/2addr p0, v4

    move v1, v3

    goto :goto_24

    .line 164
    .end local v3    # "charPos":I
    .restart local v1    # "charPos":I
    :cond_3c
    sget-object v3, Ljava/lang/Integer;->digits:[C

    neg-long v4, p0

    long-to-int v4, v4

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 166
    if-eqz v2, :cond_4d

    .line 167
    add-int/lit8 v1, v1, -0x1

    const/16 v3, 0x2d

    aput-byte v3, v0, v1

    .line 174
    :cond_4d
    new-instance v3, Ljava/lang/String;

    rsub-int/lit8 v4, v1, 0x41

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/String;-><init>([BII)V

    return-object v3
.end method

.method private static greylist-max-o toUnsignedBigInteger(J)Ljava/math/BigInteger;
    .registers 7
    .param p0, "i"    # J

    .line 259
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    .line 260
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 262
    :cond_b
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    .line 263
    .local v1, "upper":I
    long-to-int v2, p0

    .line 266
    .local v2, "lower":I
    invoke-static {v1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 266
    return-object v0
.end method

.method public static whitelist test-api toUnsignedString(J)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # J

    .line 501
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUnsignedString(JI)Ljava/lang/String;
    .registers 9
    .param p0, "i"    # J
    .param p2, "radix"    # I

    .line 227
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    .line 228
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :cond_b
    sparse-switch p2, :sswitch_data_54

    .line 249
    invoke-static {p0, p1}, Ljava/lang/Long;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 248
    :sswitch_17
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 247
    :sswitch_1d
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 243
    :sswitch_22
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    .line 244
    .local v0, "quot":J
    const-wide/16 v2, 0xa

    mul-long/2addr v2, v0

    sub-long v2, p0, v2

    .line 245
    .local v2, "rem":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_53

    .line 233
    .end local v0    # "quot":J
    .end local v2    # "rem":J
    :sswitch_44
    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 232
    :sswitch_49
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString0(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 231
    :sswitch_4f
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_53
    return-object v0

    :sswitch_data_54
    .sparse-switch
        0x2 -> :sswitch_4f
        0x4 -> :sswitch_49
        0x8 -> :sswitch_44
        0xa -> :sswitch_22
        0x10 -> :sswitch_1d
        0x20 -> :sswitch_17
    .end sparse-switch
.end method

.method static greylist-max-o toUnsignedString0(JI)Ljava/lang/String;
    .registers 12
    .param p0, "val"    # J
    .param p2, "shift"    # I

    .line 398
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 399
    .local v0, "mag":I
    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v0

    div-int/2addr v1, p2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 405
    .local v8, "chars":I
    new-array v6, v8, [B

    .line 406
    .local v6, "buf":[B
    const/4 v7, 0x0

    move-wide v3, p0

    move v5, p2

    .end local p0    # "val":J
    .end local p2    # "shift":I
    .local v3, "val":J
    .local v5, "shift":I
    invoke-static/range {v3 .. v8}, Ljava/lang/Long;->formatUnsignedLong0(JI[BII)V

    .line 415
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v6}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static whitelist test-api valueOf(J)Ljava/lang/Long;
    .registers 5
    .param p0, "l"    # J

    .line 1234
    const/16 v0, 0x80

    .line 1235
    .local v0, "offset":I
    const-wide/16 v1, -0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_16

    const-wide/16 v1, 0x7f

    cmp-long v1, p0, v1

    if-gtz v1, :cond_16

    .line 1236
    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    long-to-int v2, p0

    add-int/lit16 v2, v2, 0x80

    aget-object v1, v1, v2

    return-object v1

    .line 1238
    :cond_16
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v1
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1188
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1161
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .registers 3

    .line 1385
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public whitelist test-api compareTo(Ljava/lang/Long;)I
    .registers 6
    .param p1, "anotherLong"    # Ljava/lang/Long;

    .line 1646
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p1, Ljava/lang/Long;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
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

    .line 74
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public blacklist describeConstable()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2261
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 1430
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1487
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1488
    iget-wide v2, p0, Ljava/lang/Long;->value:J

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 1490
    :cond_14
    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 1421
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1461
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 1403
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 1412
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    return-wide v0
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Long;
    .registers 2
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;

    .line 2275
    return-object p0
.end method

.method public bridge synthetic blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/Long;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api shortValue()S
    .registers 3

    .line 1394
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1444
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
