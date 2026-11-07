.class public Ljava/math/BigInteger;
.super Ljava/lang/Number;
.source "BigInteger.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/math/BigInteger$UnsafeHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BORINGSSL_DIV_OFFSET:I = 0x14

.field private static final blacklist BORINGSSL_DIV_THRESHOLD:I = 0x28

.field static final blacklist BURNIKEL_ZIEGLER_OFFSET:I = 0x28

.field static final blacklist BURNIKEL_ZIEGLER_THRESHOLD:I = 0x50

.field private static final blacklist DEFAULT_PRIME_CERTAINTY:I = 0x64

.field private static final blacklist KARATSUBA_SQUARE_THRESHOLD:I = 0x80

.field private static final blacklist KARATSUBA_THRESHOLD:I = 0x50

.field private static final blacklist LOG_TWO:D

.field static final blacklist LONG_MASK:J = 0xffffffffL

.field private static final blacklist MAX_CONSTANT:I = 0x10

.field private static final blacklist MAX_MAG_LENGTH:I = 0x4000000

.field private static final blacklist MONTGOMERY_INTRINSIC_THRESHOLD:I = 0x200

.field private static final blacklist MULTIPLY_SQUARE_THRESHOLD:I = 0x14

.field private static final blacklist NEGATIVE_ONE:Ljava/math/BigInteger;

.field private static blacklist NUM_ZEROS:I = 0x0

.field public static final whitelist test-api ONE:Ljava/math/BigInteger;

.field private static final blacklist PRIME_SEARCH_BIT_LENGTH_LIMIT:I = 0x1dcd6500

.field private static final blacklist SCHOENHAGE_BASE_CONVERSION_THRESHOLD:I = 0x14

.field private static final blacklist SMALL_PRIME_PRODUCT:Ljava/math/BigInteger;

.field private static final blacklist SMALL_PRIME_THRESHOLD:I = 0x5f

.field public static final whitelist test-api TEN:Ljava/math/BigInteger;

.field private static final blacklist TOOM_COOK_SQUARE_THRESHOLD:I = 0xd8

.field private static final blacklist TOOM_COOK_THRESHOLD:I = 0xf0

.field public static final whitelist test-api TWO:Ljava/math/BigInteger;

.field public static final whitelist test-api ZERO:Ljava/math/BigInteger;

.field private static final blacklist ZEROS:Ljava/lang/String;

.field private static blacklist bitsPerDigit:[J = null

.field static blacklist bnExpModThreshTable:[I = null

.field private static blacklist digitsPerInt:[I = null

.field private static blacklist digitsPerLong:[I = null

.field private static blacklist intRadix:[I = null

.field private static final blacklist logCache:[D

.field private static blacklist longRadix:[Ljava/math/BigInteger; = null

.field private static final blacklist negConst:[Ljava/math/BigInteger;

.field private static final blacklist posConst:[Ljava/math/BigInteger;

.field private static volatile blacklist powerCache:[[Ljava/math/BigInteger; = null

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = -0x730360e056c404e3L


# instance fields
.field private blacklist bitCountPlusOne:I

.field private blacklist bitLengthPlusOne:I

.field private blacklist firstNonzeroIntNumPlusTwo:I

.field private blacklist lowestSetBitPlusTwo:I

.field final blacklist mag:[I

.field final greylist-max-o signum:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 43

    .line 133
    nop

    .line 629
    const/16 v0, 0x25

    new-array v1, v0, [J

    fill-array-data v1, :array_260

    sput-object v1, Ljava/math/BigInteger;->bitsPerDigit:[J

    .line 829
    nop

    .line 830
    const-wide v1, 0x8a5b6470af95L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Ljava/math/BigInteger;->SMALL_PRIME_PRODUCT:Ljava/math/BigInteger;

    .line 1235
    const/16 v1, 0x11

    new-array v2, v1, [Ljava/math/BigInteger;

    sput-object v2, Ljava/math/BigInteger;->posConst:[Ljava/math/BigInteger;

    .line 1236
    new-array v1, v1, [Ljava/math/BigInteger;

    sput-object v1, Ljava/math/BigInteger;->negConst:[Ljava/math/BigInteger;

    .line 1249
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    sput-wide v1, Ljava/math/BigInteger;->LOG_TWO:D

    .line 1260
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_29
    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v1, v2, :cond_49

    .line 1261
    new-array v2, v3, [I

    .line 1262
    .local v2, "magnitude":[I
    aput v1, v2, v4

    .line 1263
    sget-object v4, Ljava/math/BigInteger;->posConst:[Ljava/math/BigInteger;

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v2, v3}, Ljava/math/BigInteger;-><init>([II)V

    aput-object v5, v4, v1

    .line 1264
    sget-object v3, Ljava/math/BigInteger;->negConst:[Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, -0x1

    invoke-direct {v4, v2, v5}, Ljava/math/BigInteger;-><init>([II)V

    aput-object v4, v3, v1

    .line 1260
    .end local v2    # "magnitude":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1272
    .end local v1    # "i":I
    :cond_49
    new-array v1, v0, [[Ljava/math/BigInteger;

    sput-object v1, Ljava/math/BigInteger;->powerCache:[[Ljava/math/BigInteger;

    .line 1273
    new-array v1, v0, [D

    sput-object v1, Ljava/math/BigInteger;->logCache:[D

    .line 1275
    const/4 v1, 0x2

    .restart local v1    # "i":I
    :goto_52
    const/16 v2, 0x24

    if-gt v1, v2, :cond_6f

    .line 1276
    sget-object v2, Ljava/math/BigInteger;->powerCache:[[Ljava/math/BigInteger;

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    filled-new-array {v5}, [Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1277
    sget-object v2, Ljava/math/BigInteger;->logCache:[D

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    aput-wide v5, v2, v1

    .line 1275
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 1286
    .end local v1    # "i":I
    :cond_6f
    new-instance v1, Ljava/math/BigInteger;

    new-array v2, v4, [I

    invoke-direct {v1, v2, v4}, Ljava/math/BigInteger;-><init>([II)V

    sput-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1293
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 1300
    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    .line 1305
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Ljava/math/BigInteger;->NEGATIVE_ONE:Ljava/math/BigInteger;

    .line 1312
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 3033
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_2f8

    sput-object v1, Ljava/math/BigInteger;->bnExpModThreshTable:[I

    .line 4297
    const/16 v1, 0x3f

    sput v1, Ljava/math/BigInteger;->NUM_ZEROS:I

    .line 4300
    const-string v1, "0"

    sget v2, Ljava/math/BigInteger;->NUM_ZEROS:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljava/math/BigInteger;->ZEROS:Ljava/lang/String;

    .line 4714
    new-array v1, v0, [I

    fill-array-data v1, :array_30a

    sput-object v1, Ljava/math/BigInteger;->digitsPerLong:[I

    .line 4718
    nop

    .line 4719
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    const-wide v5, 0x383d9170b85ff80bL    # 8.689291335170485E-38

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 4720
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    const-wide v1, 0x6765c793fa10079dL    # 1.2129899831238297E190

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 4721
    const-wide v1, 0x41c21cb8e1000000L    # 6.0774445E8

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    const-wide v12, 0x3642798750226111L    # 2.5281834095840464E-47

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    .line 4722
    const-wide/high16 v13, 0x1000000000000000L

    move-wide v14, v13

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    const-wide v16, 0x12bf307ae81ffd59L    # 2.2088683600033102E-218

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    .line 4723
    const-wide v17, 0xde0b6b3a7640000L

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    const-wide v18, 0x4d28cb56c33fa539L    # 5.09989019257158E63

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v18

    .line 4724
    const-wide v19, 0x1eca170c00000000L

    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v19

    const-wide v20, 0x780c7372621bd74dL    # 1.8788110924254583E270

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v20

    .line 4725
    const-wide v21, 0x1e39a5057d810000L

    invoke-static/range {v21 .. v22}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    const-wide v22, 0x5b27ac993df97701L    # 1.3128154743542247E131

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v22

    .line 4726
    move-wide/from16 v23, v14

    move-object/from16 v15, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    invoke-static/range {v23 .. v24}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    const-wide v25, 0x27b95e997e21d9f1L

    invoke-static/range {v25 .. v26}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    .line 4727
    const-wide v25, 0x5da0e1e53c5c8000L    # 1.0293480577702333E143

    invoke-static/range {v25 .. v26}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v25

    const-wide v26, 0xb16a458ef403f19L

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    .line 4728
    const-wide v27, 0x16bcc41e90000000L

    invoke-static/range {v27 .. v28}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v27

    const-wide v28, 0x2d04b7fdd9c0ef49L    # 7.946103064799199E-92

    invoke-static/range {v28 .. v29}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v28

    .line 4729
    const-wide v29, 0x5658597bcaa24000L    # 8.935303699533562E107

    invoke-static/range {v29 .. v30}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v29

    const-wide v30, 0x6feb266931a75b7L

    invoke-static/range {v30 .. v31}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v30

    .line 4730
    const-wide v31, 0xc29e98000000000L

    invoke-static/range {v31 .. v32}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v31

    const-wide v32, 0x14adf4b7320334b9L

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    .line 4731
    const-wide v33, 0x226ed36478bfa000L    # 7.899611728294907E-143

    invoke-static/range {v33 .. v34}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v33

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 4732
    const-wide v34, 0x5a3c23e39c000000L    # 4.762173887477006E126

    invoke-static/range {v34 .. v35}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    const-wide v34, 0x4e900abb53e6b71L

    invoke-static/range {v34 .. v35}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v34

    .line 4733
    const-wide v35, 0x7600ec618141000L

    invoke-static/range {v35 .. v36}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v35

    const-wide v36, 0xaee5720ee830681L

    invoke-static/range {v36 .. v37}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v36

    .line 4734
    invoke-static/range {v23 .. v24}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v37

    const-wide v23, 0x172588ad4f5f0981L    # 3.600936225031602E-197

    invoke-static/range {v23 .. v24}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v38

    .line 4735
    const-wide v23, 0x211e44f7d02c1000L

    invoke-static/range {v23 .. v24}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v39

    const-wide v23, 0x2ee56725f06e5c71L    # 8.813822156377469E-83

    invoke-static/range {v23 .. v24}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v40

    .line 4736
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v41

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v5

    const/4 v5, 0x0

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v6

    const/4 v6, 0x0

    move-object/from16 v42, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v42

    filled-new-array/range {v5 .. v41}, [Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Ljava/math/BigInteger;->longRadix:[Ljava/math/BigInteger;

    .line 4741
    new-array v1, v0, [I

    fill-array-data v1, :array_358

    sput-object v1, Ljava/math/BigInteger;->digitsPerInt:[I

    .line 4745
    new-array v0, v0, [I

    fill-array-data v0, :array_3a6

    sput-object v0, Ljava/math/BigInteger;->intRadix:[I

    .line 4839
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "signum"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "magnitude"

    const-class v4, [B

    invoke-direct {v1, v2, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "bitCount"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "bitLength"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "firstNonzeroByteNum"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "lowestSetBit"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Ljava/math/BigInteger;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void

    nop

    :array_260
    .array-data 8
        0x0
        0x0
        0x400
        0x658
        0x800
        0x94a
        0xa58
        0xb3b
        0xc00
        0xcaf
        0xd4a
        0xdd7
        0xe58
        0xece
        0xf3b
        0xfa1
        0x1000
        0x105a
        0x10af
        0x10fe
        0x114a
        0x1192
        0x11d7
        0x1219
        0x1258
        0x1294
        0x12ce
        0x1306
        0x133b
        0x136f
        0x13a1
        0x13d2
        0x1400
        0x142e
        0x145a
        0x1485
        0x14af
    .end array-data

    :array_2f8
    .array-data 4
        0x7
        0x19
        0x51
        0xf1
        0x2a1
        0x701
        0x7fffffff
    .end array-data

    :array_30a
    .array-data 4
        0x0
        0x0
        0x3e
        0x27
        0x1f
        0x1b
        0x18
        0x16
        0x14
        0x13
        0x12
        0x12
        0x11
        0x11
        0x10
        0x10
        0xf
        0xf
        0xf
        0xe
        0xe
        0xe
        0xe
        0xd
        0xd
        0xd
        0xd
        0xd
        0xd
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data

    :array_358
    .array-data 4
        0x0
        0x0
        0x1e
        0x13
        0xf
        0xd
        0xb
        0xb
        0xa
        0x9
        0x9
        0x8
        0x8
        0x8
        0x8
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x5
    .end array-data

    :array_3a6
    .array-data 4
        0x0
        0x0
        0x40000000    # 2.0f
        0x4546b3db
        0x40000000    # 2.0f
        0x48c27395
        0x159fd800
        0x75db9c97
        0x40000000    # 2.0f
        0x17179149
        0x3b9aca00
        0xcc6db61
        0x19a10000
        0x309f1021
        0x57f6c100
        0xa2f1b6f
        0x10000000
        0x18754571
        0x247dbc80
        0x3547667b
        0x4c4b4000
        0x6b5a6e1d
        0x6c20a40
        0x8d2d931
        0xb640000
        0xe8d4a51
        0x1269ae40
        0x17179149
        0x1cb91000
        0x23744899
        0x2b73a840
        0x34e63b41
        0x40000000    # 2.0f
        0x4cfa3cc1    # 1.31196424E8f
        0x5c13d840
        0x6d91b519
        0x39aa400
    .end array-data
.end method

.method public constructor whitelist test-api <init>(IILjava/util/Random;)V
    .registers 6
    .param p1, "bitLength"    # I
    .param p2, "certainty"    # I
    .param p3, "rnd"    # Ljava/util/Random;

    .line 745
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 748
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1c

    .line 750
    const/16 v0, 0x5f

    if-ge p1, v0, :cond_f

    .line 751
    invoke-static {p1, p2, p3}, Ljava/math/BigInteger;->smallPrime(IILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_13

    .line 752
    :cond_f
    invoke-static {p1, p2, p3}, Ljava/math/BigInteger;->largePrime(IILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_13
    nop

    .line 753
    .local v0, "prime":Ljava/math/BigInteger;
    const/4 v1, 0x1

    iput v1, p0, Ljava/math/BigInteger;->signum:I

    .line 754
    iget-object v1, v0, Ljava/math/BigInteger;->mag:[I

    iput-object v1, p0, Ljava/math/BigInteger;->mag:[I

    .line 755
    return-void

    .line 749
    .end local v0    # "prime":Ljava/math/BigInteger;
    :cond_1c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "bitLength < 2"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(ILjava/util/Random;)V
    .registers 7
    .param p1, "numBits"    # I
    .param p2, "rnd"    # Ljava/util/Random;

    .line 691
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 692
    invoke-static {p1, p2}, Ljava/math/BigInteger;->randomBits(ILjava/util/Random;)[B

    move-result-object v0

    .line 696
    .local v0, "magnitude":[B
    const/4 v1, 0x0

    :try_start_8
    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/math/BigInteger;->stripLeadingZeroBytes([BII)[I

    move-result-object v2

    iput-object v2, p0, Ljava/math/BigInteger;->mag:[I

    .line 698
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v2

    if-nez v2, :cond_17

    .line 699
    iput v1, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_1a

    .line 701
    :cond_17
    const/4 v2, 0x1

    iput v2, p0, Ljava/math/BigInteger;->signum:I

    .line 703
    :goto_1a
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v2

    const/high16 v3, 0x4000000

    if-lt v2, v3, :cond_24

    .line 704
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_29

    .line 707
    :cond_24
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 708
    nop

    .line 709
    return-void

    .line 707
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 708
    throw v2
.end method

.method public constructor whitelist test-api <init>(I[B)V
    .registers 5
    .param p1, "signum"    # I
    .param p2, "magnitude"    # [B

    .line 435
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/math/BigInteger;-><init>(I[BII)V

    .line 436
    return-void
.end method

.method public constructor whitelist test-api <init>(I[BII)V
    .registers 7
    .param p1, "signum"    # I
    .param p2, "magnitude"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 395
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 396
    const/4 v0, -0x1

    if-lt p1, v0, :cond_33

    const/4 v0, 0x1

    if-gt p1, v0, :cond_33

    .line 399
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 402
    invoke-static {p2, p3, p4}, Ljava/math/BigInteger;->stripLeadingZeroBytes([BII)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 404
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    if-nez v0, :cond_1c

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_20

    .line 407
    :cond_1c
    if-eqz p1, :cond_2b

    .line 409
    iput p1, p0, Ljava/math/BigInteger;->signum:I

    .line 411
    :goto_20
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_2a

    .line 412
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 414
    :cond_2a
    return-void

    .line 408
    :cond_2b
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "signum-magnitude mismatch"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_33
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Invalid signum value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(I[I)V
    .registers 5
    .param p1, "signum"    # I
    .param p2, "magnitude"    # [I

    .line 445
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 446
    invoke-static {p2}, Ljava/math/BigInteger;->stripLeadingZeroInts([I)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 448
    const/4 v0, -0x1

    if-lt p1, v0, :cond_2f

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2f

    .line 451
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    if-nez v0, :cond_18

    .line 452
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_1c

    .line 454
    :cond_18
    if-eqz p1, :cond_27

    .line 456
    iput p1, p0, Ljava/math/BigInteger;->signum:I

    .line 458
    :goto_1c
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_26

    .line 459
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 461
    :cond_26
    return-void

    .line 455
    :cond_27
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "signum-magnitude mismatch"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_2f
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Invalid signum value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(J)V
    .registers 7
    .param p1, "val"    # J

    .line 1201
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1202
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_f

    .line 1203
    neg-long p1, p1

    .line 1204
    const/4 v0, -0x1

    iput v0, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_11

    .line 1206
    :cond_f
    iput v1, p0, Ljava/math/BigInteger;->signum:I

    .line 1209
    :goto_11
    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    .line 1210
    .local v0, "highWord":I
    const/4 v2, 0x0

    if-nez v0, :cond_23

    .line 1211
    new-array v1, v1, [I

    iput-object v1, p0, Ljava/math/BigInteger;->mag:[I

    .line 1212
    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    long-to-int v3, p1

    aput v3, v1, v2

    goto :goto_31

    .line 1214
    :cond_23
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Ljava/math/BigInteger;->mag:[I

    .line 1215
    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    aput v0, v3, v2

    .line 1216
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    long-to-int v3, p1

    aput v3, v2, v1

    .line 1218
    :goto_31
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .line 675
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 676
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 23
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Number;-><init>()V

    .line 481
    const/4 v3, 0x0

    .line 482
    .local v3, "cursor":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 484
    .local v4, "len":I
    const/4 v5, 0x2

    if-lt v2, v5, :cond_fe

    const/16 v5, 0x24

    if-gt v2, v5, :cond_fe

    .line 486
    const-string v5, "Zero length BigInteger"

    if-eqz v4, :cond_f8

    .line 490
    const/4 v6, 0x1

    .line 491
    .local v6, "sign":I
    const/16 v7, 0x2d

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 492
    .local v7, "index1":I
    const/16 v8, 0x2b

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 493
    .local v8, "index2":I
    const-string v9, "Illegal embedded sign character"

    if-ltz v7, :cond_37

    .line 494
    if-nez v7, :cond_31

    if-gez v8, :cond_31

    .line 497
    const/4 v6, -0x1

    .line 498
    const/4 v3, 0x1

    goto :goto_43

    .line 495
    :cond_31
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 499
    :cond_37
    if-ltz v8, :cond_43

    .line 500
    if-nez v8, :cond_3d

    .line 503
    const/4 v3, 0x1

    goto :goto_43

    .line 501
    :cond_3d
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 505
    :cond_43
    :goto_43
    if-eq v3, v4, :cond_f2

    .line 509
    :goto_45
    if-ge v3, v4, :cond_54

    .line 510
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-nez v5, :cond_54

    .line 511
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 514
    :cond_54
    if-ne v3, v4, :cond_60

    .line 515
    const/4 v5, 0x0

    iput v5, v0, Ljava/math/BigInteger;->signum:I

    .line 516
    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v5, v5, Ljava/math/BigInteger;->mag:[I

    iput-object v5, v0, Ljava/math/BigInteger;->mag:[I

    .line 517
    return-void

    .line 520
    :cond_60
    sub-int v5, v4, v3

    .line 521
    .local v5, "numDigits":I
    iput v6, v0, Ljava/math/BigInteger;->signum:I

    .line 525
    int-to-long v9, v5

    sget-object v11, Ljava/math/BigInteger;->bitsPerDigit:[J

    aget-wide v11, v11, v2

    mul-long/2addr v9, v11

    const/16 v11, 0xa

    ushr-long/2addr v9, v11

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    .line 526
    .local v9, "numBits":J
    const-wide/16 v11, 0x1f

    add-long v13, v9, v11

    const-wide v15, 0x100000000L

    cmp-long v13, v13, v15

    if-ltz v13, :cond_80

    .line 527
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 529
    :cond_80
    add-long/2addr v11, v9

    long-to-int v11, v11

    ushr-int/lit8 v11, v11, 0x5

    .line 530
    .local v11, "numWords":I
    new-array v12, v11, [I

    .line 533
    .local v12, "magnitude":[I
    sget-object v13, Ljava/math/BigInteger;->digitsPerInt:[I

    aget v13, v13, v2

    rem-int v13, v5, v13

    .line 534
    .local v13, "firstGroupLen":I
    if-nez v13, :cond_92

    .line 535
    sget-object v14, Ljava/math/BigInteger;->digitsPerInt:[I

    aget v13, v14, v2

    .line 536
    :cond_92
    add-int v14, v3, v13

    move v15, v14

    .end local v3    # "cursor":I
    .local v15, "cursor":I
    invoke-virtual {v1, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "group":Ljava/lang/String;
    add-int/lit8 v14, v11, -0x1

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v16

    aput v16, v12, v14

    .line 538
    add-int/lit8 v14, v11, -0x1

    aget v14, v12, v14

    move-object/from16 v16, v3

    .end local v3    # "group":Ljava/lang/String;
    .local v16, "group":Ljava/lang/String;
    const-string v3, "Illegal digit"

    if-ltz v14, :cond_ec

    .line 542
    sget-object v14, Ljava/math/BigInteger;->intRadix:[I

    aget v14, v14, v2

    .line 543
    .local v14, "superRadix":I
    const/16 v17, 0x0

    .line 544
    .local v17, "groupVal":I
    :goto_b1
    if-ge v15, v4, :cond_d9

    .line 545
    sget-object v18, Ljava/math/BigInteger;->digitsPerInt:[I

    aget v18, v18, v2

    move/from16 v19, v4

    .end local v4    # "len":I
    .local v19, "len":I
    add-int v4, v15, v18

    move/from16 v18, v4

    .end local v15    # "cursor":I
    .local v18, "cursor":I
    invoke-virtual {v1, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 546
    .end local v16    # "group":Ljava/lang/String;
    .local v4, "group":Ljava/lang/String;
    invoke-static {v4, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 547
    .end local v17    # "groupVal":I
    .local v15, "groupVal":I
    if-ltz v15, :cond_d3

    .line 549
    invoke-static {v12, v14, v15}, Ljava/math/BigInteger;->destructiveMulAdd([III)V

    move-object/from16 v16, v4

    move/from16 v17, v15

    move/from16 v15, v18

    move/from16 v4, v19

    goto :goto_b1

    .line 548
    :cond_d3
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    .end local v18    # "cursor":I
    .end local v19    # "len":I
    .local v4, "len":I
    .local v15, "cursor":I
    .restart local v16    # "group":Ljava/lang/String;
    .restart local v17    # "groupVal":I
    :cond_d9
    move/from16 v19, v4

    .end local v4    # "len":I
    .restart local v19    # "len":I
    invoke-static {v12}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    iput-object v1, v0, Ljava/math/BigInteger;->mag:[I

    .line 553
    iget-object v1, v0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    const/high16 v3, 0x4000000

    if-lt v1, v3, :cond_eb

    .line 554
    invoke-direct {v0}, Ljava/math/BigInteger;->checkRange()V

    .line 556
    :cond_eb
    return-void

    .line 539
    .end local v14    # "superRadix":I
    .end local v17    # "groupVal":I
    .end local v19    # "len":I
    .restart local v4    # "len":I
    :cond_ec
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    .end local v5    # "numDigits":I
    .end local v9    # "numBits":J
    .end local v11    # "numWords":I
    .end local v12    # "magnitude":[I
    .end local v13    # "firstGroupLen":I
    .end local v15    # "cursor":I
    .end local v16    # "group":Ljava/lang/String;
    .local v3, "cursor":I
    :cond_f2
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    .end local v6    # "sign":I
    .end local v7    # "index1":I
    .end local v8    # "index2":I
    :cond_f8
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :cond_fe
    move/from16 v19, v4

    .line 485
    .end local v4    # "len":I
    .restart local v19    # "len":I
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v4, "Radix out of range"

    invoke-direct {v1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>([B)V
    .registers 4
    .param p1, "val"    # [B

    .line 339
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigInteger;-><init>([BII)V

    .line 340
    return-void
.end method

.method private constructor blacklist <init>([BI)V
    .registers 5
    .param p1, "magnitude"    # [B
    .param p2, "signum"    # I

    .line 1149
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1150
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, p2

    :goto_a
    iput v0, p0, Ljava/math/BigInteger;->signum:I

    .line 1151
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/math/BigInteger;->stripLeadingZeroBytes([BII)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 1152
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_1d

    .line 1153
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 1155
    :cond_1d
    return-void
.end method

.method public constructor whitelist test-api <init>([BII)V
    .registers 6
    .param p1, "val"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 309
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 310
    array-length v0, p1

    if-eqz v0, :cond_33

    .line 313
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 315
    aget-byte v0, p1, p2

    if-gez v0, :cond_18

    .line 316
    invoke-static {p1, p2, p3}, Ljava/math/BigInteger;->makePositive([BII)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_28

    .line 319
    :cond_18
    invoke-static {p1, p2, p3}, Ljava/math/BigInteger;->stripLeadingZeroBytes([BII)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 320
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    if-nez v0, :cond_25

    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    const/4 v0, 0x1

    :goto_26
    iput v0, p0, Ljava/math/BigInteger;->signum:I

    .line 322
    :goto_28
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_32

    .line 323
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 325
    :cond_32
    return-void

    .line 311
    :cond_33
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Zero length BigInteger"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([CII)V
    .registers 15
    .param p1, "val"    # [C
    .param p2, "sign"    # I
    .param p3, "len"    # I

    .line 564
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 565
    const/4 v0, 0x0

    .line 568
    .local v0, "cursor":I
    :goto_4
    const/16 v1, 0xa

    if-ge v0, p3, :cond_13

    aget-char v2, p1, v0

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-nez v2, :cond_13

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 571
    :cond_13
    if-ne v0, p3, :cond_1f

    .line 572
    const/4 v1, 0x0

    iput v1, p0, Ljava/math/BigInteger;->signum:I

    .line 573
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v1, v1, Ljava/math/BigInteger;->mag:[I

    iput-object v1, p0, Ljava/math/BigInteger;->mag:[I

    .line 574
    return-void

    .line 577
    :cond_1f
    sub-int v2, p3, v0

    .line 578
    .local v2, "numDigits":I
    iput p2, p0, Ljava/math/BigInteger;->signum:I

    .line 581
    if-ge p3, v1, :cond_27

    .line 582
    const/4 v3, 0x1

    .local v3, "numWords":I
    goto :goto_46

    .line 584
    .end local v3    # "numWords":I
    :cond_27
    int-to-long v3, v2

    sget-object v5, Ljava/math/BigInteger;->bitsPerDigit:[J

    aget-wide v5, v5, v1

    mul-long/2addr v3, v5

    ushr-long/2addr v3, v1

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 585
    .local v3, "numBits":J
    const-wide/16 v5, 0x1f

    add-long v7, v3, v5

    const-wide v9, 0x100000000L

    cmp-long v7, v7, v9

    if-ltz v7, :cond_41

    .line 586
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 588
    :cond_41
    add-long/2addr v5, v3

    long-to-int v5, v5

    ushr-int/lit8 v5, v5, 0x5

    move v3, v5

    .line 590
    .local v3, "numWords":I
    :goto_46
    new-array v4, v3, [I

    .line 593
    .local v4, "magnitude":[I
    sget-object v5, Ljava/math/BigInteger;->digitsPerInt:[I

    aget v5, v5, v1

    rem-int v5, v2, v5

    .line 594
    .local v5, "firstGroupLen":I
    if-nez v5, :cond_54

    .line 595
    sget-object v6, Ljava/math/BigInteger;->digitsPerInt:[I

    aget v5, v6, v1

    .line 596
    :cond_54
    add-int/lit8 v6, v3, -0x1

    add-int v7, v0, v5

    move v8, v7

    .end local v0    # "cursor":I
    .local v8, "cursor":I
    invoke-direct {p0, p1, v0, v7}, Ljava/math/BigInteger;->parseInt([CII)I

    move-result v0

    aput v0, v4, v6

    .line 599
    :goto_5f
    if-ge v8, p3, :cond_74

    .line 600
    sget-object v0, Ljava/math/BigInteger;->digitsPerInt:[I

    aget v0, v0, v1

    add-int/2addr v0, v8

    move v6, v0

    .end local v8    # "cursor":I
    .local v6, "cursor":I
    invoke-direct {p0, p1, v8, v0}, Ljava/math/BigInteger;->parseInt([CII)I

    move-result v0

    .line 601
    .local v0, "groupVal":I
    sget-object v7, Ljava/math/BigInteger;->intRadix:[I

    aget v7, v7, v1

    invoke-static {v4, v7, v0}, Ljava/math/BigInteger;->destructiveMulAdd([III)V

    .line 602
    .end local v0    # "groupVal":I
    move v8, v6

    goto :goto_5f

    .line 603
    .end local v6    # "cursor":I
    .restart local v8    # "cursor":I
    :cond_74
    invoke-static {v4}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 604
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_84

    .line 605
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 607
    :cond_84
    return-void
.end method

.method private constructor blacklist <init>([I)V
    .registers 4
    .param p1, "val"    # [I

    .line 350
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 351
    array-length v0, p1

    if-eqz v0, :cond_2f

    .line 354
    const/4 v0, 0x0

    aget v1, p1, v0

    if-gez v1, :cond_15

    .line 355
    invoke-static {p1}, Ljava/math/BigInteger;->makePositive([I)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_24

    .line 358
    :cond_15
    invoke-static {p1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    iput-object v1, p0, Ljava/math/BigInteger;->mag:[I

    .line 359
    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    if-nez v1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x1

    :goto_22
    iput v0, p0, Ljava/math/BigInteger;->signum:I

    .line 361
    :goto_24
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_2e

    .line 362
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 364
    :cond_2e
    return-void

    .line 352
    :cond_2f
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Zero length BigInteger"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([II)V
    .registers 5
    .param p1, "magnitude"    # [I
    .param p2, "signum"    # I

    .line 1136
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1137
    array-length v0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    move v0, p2

    :goto_9
    iput v0, p0, Ljava/math/BigInteger;->signum:I

    .line 1138
    iput-object p1, p0, Ljava/math/BigInteger;->mag:[I

    .line 1139
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_17

    .line 1140
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 1142
    :cond_17
    return-void
.end method

.method private static blacklist add([IJ)[I
    .registers 17
    .param p0, "x"    # [I
    .param p1, "val"    # J

    .line 1367
    const-wide/16 v0, 0x0

    .line 1368
    .local v0, "sum":J
    array-length v2, p0

    .line 1370
    .local v2, "xIndex":I
    const/16 v3, 0x20

    ushr-long v4, p1, v3

    long-to-int v4, v4

    .line 1371
    .local v4, "highWord":I
    const/4 v5, 0x0

    const-wide v6, 0xffffffffL

    const/4 v8, 0x1

    if-nez v4, :cond_1e

    .line 1372
    new-array v9, v2, [I

    .line 1373
    .local v9, "result":[I
    add-int/lit8 v2, v2, -0x1

    aget v10, p0, v2

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, p1

    .line 1374
    .end local v0    # "sum":J
    .local v6, "sum":J
    long-to-int v0, v6

    aput v0, v9, v2

    goto :goto_4e

    .line 1376
    .end local v6    # "sum":J
    .end local v9    # "result":[I
    .restart local v0    # "sum":J
    :cond_1e
    if-ne v2, v8, :cond_31

    .line 1377
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 1378
    .restart local v9    # "result":[I
    aget v10, p0, v5

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, p1

    .line 1379
    .end local v0    # "sum":J
    .restart local v6    # "sum":J
    long-to-int v0, v6

    aput v0, v9, v8

    .line 1380
    ushr-long v0, v6, v3

    long-to-int v0, v0

    aput v0, v9, v5

    .line 1381
    return-object v9

    .line 1383
    .end local v6    # "sum":J
    .end local v9    # "result":[I
    .restart local v0    # "sum":J
    :cond_31
    new-array v9, v2, [I

    .line 1384
    .restart local v9    # "result":[I
    add-int/lit8 v2, v2, -0x1

    aget v10, p0, v2

    int-to-long v10, v10

    and-long/2addr v10, v6

    and-long v12, p1, v6

    add-long/2addr v10, v12

    .line 1385
    .end local v0    # "sum":J
    .local v10, "sum":J
    long-to-int v0, v10

    aput v0, v9, v2

    .line 1386
    add-int/lit8 v2, v2, -0x1

    aget v0, p0, v2

    int-to-long v0, v0

    and-long/2addr v0, v6

    int-to-long v12, v4

    and-long/2addr v6, v12

    add-long/2addr v0, v6

    ushr-long v6, v10, v3

    add-long/2addr v6, v0

    .line 1387
    .end local v10    # "sum":J
    .restart local v6    # "sum":J
    long-to-int v0, v6

    aput v0, v9, v2

    .line 1391
    :goto_4e
    ushr-long v0, v6, v3

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_58

    move v0, v8

    goto :goto_59

    :cond_58
    move v0, v5

    .line 1392
    .local v0, "carry":Z
    :goto_59
    if-lez v2, :cond_6b

    if-eqz v0, :cond_6b

    .line 1393
    add-int/lit8 v2, v2, -0x1

    aget v1, p0, v2

    add-int/2addr v1, v8

    aput v1, v9, v2

    if-nez v1, :cond_68

    move v1, v8

    goto :goto_69

    :cond_68
    move v1, v5

    :goto_69
    move v0, v1

    goto :goto_59

    .line 1395
    :cond_6b
    :goto_6b
    if-lez v2, :cond_74

    .line 1396
    add-int/lit8 v2, v2, -0x1

    aget v1, p0, v2

    aput v1, v9, v2

    goto :goto_6b

    .line 1398
    :cond_74
    if-eqz v0, :cond_81

    .line 1399
    array-length v1, v9

    add-int/2addr v1, v8

    new-array v1, v1, [I

    .line 1400
    .local v1, "bigger":[I
    array-length v3, v9

    invoke-static {v9, v5, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1401
    aput v8, v1, v5

    .line 1402
    return-object v1

    .line 1404
    .end local v1    # "bigger":[I
    :cond_81
    return-object v9
.end method

.method private static blacklist add([I[I)[I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 1414
    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_7

    .line 1415
    move-object v0, p0

    .line 1416
    .local v0, "tmp":[I
    move-object p0, p1

    .line 1417
    move-object p1, v0

    .line 1420
    .end local v0    # "tmp":[I
    :cond_7
    array-length v0, p0

    .line 1421
    .local v0, "xIndex":I
    array-length v1, p1

    .line 1422
    .local v1, "yIndex":I
    new-array v2, v0, [I

    .line 1423
    .local v2, "result":[I
    const-wide/16 v3, 0x0

    .line 1424
    .local v3, "sum":J
    const/16 v5, 0x20

    const-wide v6, 0xffffffffL

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_27

    .line 1425
    add-int/lit8 v0, v0, -0x1

    aget v10, p0, v0

    int-to-long v10, v10

    and-long/2addr v10, v6

    aget v12, p1, v8

    int-to-long v12, v12

    and-long/2addr v6, v12

    add-long/2addr v10, v6

    .line 1426
    .end local v3    # "sum":J
    .local v10, "sum":J
    long-to-int v3, v10

    aput v3, v2, v0

    goto :goto_3f

    .line 1429
    .end local v10    # "sum":J
    .restart local v3    # "sum":J
    :cond_27
    :goto_27
    if-lez v1, :cond_3e

    .line 1430
    add-int/lit8 v0, v0, -0x1

    aget v10, p0, v0

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-int/lit8 v1, v1, -0x1

    aget v12, p1, v1

    int-to-long v12, v12

    and-long/2addr v12, v6

    add-long/2addr v10, v12

    ushr-long v12, v3, v5

    add-long v3, v10, v12

    .line 1432
    long-to-int v10, v3

    aput v10, v2, v0

    goto :goto_27

    .line 1429
    :cond_3e
    move-wide v10, v3

    .line 1436
    .end local v3    # "sum":J
    .restart local v10    # "sum":J
    :goto_3f
    ushr-long v3, v10, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_49

    move v3, v9

    goto :goto_4a

    :cond_49
    move v3, v8

    .line 1437
    .local v3, "carry":Z
    :goto_4a
    if-lez v0, :cond_5c

    if-eqz v3, :cond_5c

    .line 1438
    add-int/lit8 v0, v0, -0x1

    aget v4, p0, v0

    add-int/2addr v4, v9

    aput v4, v2, v0

    if-nez v4, :cond_59

    move v4, v9

    goto :goto_5a

    :cond_59
    move v4, v8

    :goto_5a
    move v3, v4

    goto :goto_4a

    .line 1441
    :cond_5c
    :goto_5c
    if-lez v0, :cond_65

    .line 1442
    add-int/lit8 v0, v0, -0x1

    aget v4, p0, v0

    aput v4, v2, v0

    goto :goto_5c

    .line 1445
    :cond_65
    if-eqz v3, :cond_72

    .line 1446
    array-length v4, v2

    add-int/2addr v4, v9

    new-array v4, v4, [I

    .line 1447
    .local v4, "bigger":[I
    array-length v5, v2

    invoke-static {v2, v8, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1448
    aput v9, v4, v8

    .line 1449
    return-object v4

    .line 1451
    .end local v4    # "bigger":[I
    :cond_72
    return-object v2
.end method

.method static blacklist addOne([IIII)I
    .registers 12
    .param p0, "a"    # [I
    .param p1, "offset"    # I
    .param p2, "mlen"    # I
    .param p3, "carry"    # I

    .line 3378
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    .line 3379
    .end local p1    # "offset":I
    .local v0, "offset":I
    aget p1, p0, v0

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    int-to-long v6, p3

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 3381
    .local v2, "t":J
    long-to-int p1, v2

    aput p1, p0, v0

    .line 3382
    const/16 p1, 0x20

    ushr-long v4, v2, p1

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const/4 v4, 0x0

    if-nez p1, :cond_20

    .line 3383
    return v4

    .line 3384
    :cond_20
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_33

    .line 3385
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_29

    .line 3386
    return v1

    .line 3388
    :cond_29
    aget p1, p0, v0

    add-int/2addr p1, v1

    aput p1, p0, v0

    .line 3389
    aget p1, p0, v0

    if-eqz p1, :cond_20

    .line 3390
    return v4

    .line 3393
    :cond_33
    return v1
.end method

.method private static blacklist bigEndInts2NewBN([IZ)J
    .registers 6
    .param p0, "beArray"    # [I
    .param p1, "neg"    # Z

    .line 2844
    invoke-static {p0}, Ljava/math/BigInteger;->reverse([I)[I

    move-result-object v0

    .line 2845
    .local v0, "leArray":[I
    invoke-static {}, Llibcore/math/NativeBN;->BN_new()J

    move-result-wide v1

    .line 2846
    .local v1, "resultBN":J
    array-length v3, v0

    invoke-static {v0, v3, p1, v1, v2}, Llibcore/math/NativeBN;->litEndInts2bn([IIZJ)V

    .line 2847
    return-wide v1
.end method

.method private static blacklist bitLength([II)I
    .registers 4
    .param p0, "val"    # [I
    .param p1, "len"    # I

    .line 2774
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2775
    return v0

    .line 2776
    :cond_4
    add-int/lit8 v1, p1, -0x1

    shl-int/lit8 v1, v1, 0x5

    aget v0, p0, v0

    invoke-static {v0}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method static blacklist bitLengthForInt(I)I
    .registers 2
    .param p0, "n"    # I

    .line 2722
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method

.method private blacklist bn2BigEndInts(J)[I
    .registers 4
    .param p1, "bn"    # J

    .line 2851
    invoke-static {p1, p2}, Llibcore/math/NativeBN;->bn2litEndInts(J)[I

    move-result-object v0

    invoke-static {v0}, Ljava/math/BigInteger;->reverse([I)[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist checkRange()V
    .registers 3

    .line 1164
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/high16 v1, 0x4000000

    if-gt v0, v1, :cond_13

    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gez v0, :cond_16

    .line 1165
    :cond_13
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 1167
    :cond_16
    return-void
.end method

.method private static blacklist destructiveMulAdd([III)V
    .registers 22
    .param p0, "x"    # [I
    .param p1, "y"    # I
    .param p2, "z"    # I

    .line 638
    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 639
    .local v2, "ylong":J
    move/from16 v6, p2

    int-to-long v7, v6

    and-long/2addr v7, v4

    .line 640
    .local v7, "zlong":J
    array-length v9, v0

    .line 642
    .local v9, "len":I
    const-wide/16 v10, 0x0

    .line 643
    .local v10, "product":J
    const-wide/16 v12, 0x0

    .line 644
    .local v12, "carry":J
    add-int/lit8 v14, v9, -0x1

    .local v14, "i":I
    :goto_16
    const/16 v15, 0x20

    if-ltz v14, :cond_2e

    .line 645
    move-wide/from16 v16, v4

    aget v4, v0, v14

    int-to-long v4, v4

    and-long v4, v4, v16

    mul-long/2addr v4, v2

    add-long v10, v4, v12

    .line 646
    long-to-int v4, v10

    aput v4, v0, v14

    .line 647
    ushr-long v12, v10, v15

    .line 644
    add-int/lit8 v14, v14, -0x1

    move-wide/from16 v4, v16

    goto :goto_16

    :cond_2e
    move-wide/from16 v16, v4

    .line 651
    .end local v14    # "i":I
    add-int/lit8 v4, v9, -0x1

    aget v4, v0, v4

    int-to-long v4, v4

    and-long v4, v4, v16

    add-long/2addr v4, v7

    .line 652
    .local v4, "sum":J
    add-int/lit8 v14, v9, -0x1

    move/from16 v18, v15

    long-to-int v15, v4

    aput v15, v0, v14

    .line 653
    ushr-long v12, v4, v18

    .line 654
    add-int/lit8 v14, v9, -0x2

    .restart local v14    # "i":I
    :goto_43
    if-ltz v14, :cond_58

    .line 655
    aget v15, v0, v14

    int-to-long v0, v15

    and-long v0, v0, v16

    add-long v4, v0, v12

    .line 656
    long-to-int v0, v4

    aput v0, p0, v14

    .line 657
    ushr-long v12, v4, v18

    .line 654
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_43

    .line 659
    .end local v14    # "i":I
    :cond_58
    return-void
.end method

.method private blacklist divideAndRemainderKnuth(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 10
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2439
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 2440
    .local v0, "result":[Ljava/math/BigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2441
    .local v1, "q":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2442
    .local v2, "a":Ljava/math/MutableBigInteger;
    new-instance v3, Ljava/math/MutableBigInteger;

    iget-object v4, p1, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v3, v4}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2443
    .local v3, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v2, v3, v1}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 2444
    .local v4, "r":Ljava/math/MutableBigInteger;
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    iget v6, p1, Ljava/math/BigInteger;->signum:I

    const/4 v7, 0x1

    if-ne v5, v6, :cond_23

    move v5, v7

    goto :goto_24

    :cond_23
    const/4 v5, -0x1

    :goto_24
    invoke-virtual {v1, v5}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 2445
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    invoke-virtual {v4, v5}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v0, v7

    .line 2446
    return-object v0
.end method

.method private blacklist divideKnuth(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2381
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2382
    .local v0, "q":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v1, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2383
    .local v1, "a":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p1, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2385
    .local v2, "b":Ljava/math/MutableBigInteger;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    .line 2386
    iget v3, p0, Ljava/math/BigInteger;->signum:I

    iget v4, p1, Ljava/math/BigInteger;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method private blacklist exactDivideBy3()Ljava/math/BigInteger;
    .registers 16

    .line 2054
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    .line 2055
    .local v0, "len":I
    new-array v1, v0, [I

    .line 2057
    .local v1, "result":[I
    const-wide/16 v2, 0x0

    .line 2058
    .local v2, "borrow":J
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_9
    if-ltz v4, :cond_3e

    .line 2059
    iget-object v5, p0, Ljava/math/BigInteger;->mag:[I

    aget v5, v5, v4

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 2060
    .local v5, "x":J
    sub-long v9, v5, v2

    .line 2061
    .local v9, "w":J
    cmp-long v11, v2, v5

    if-lez v11, :cond_1f

    .line 2062
    const-wide/16 v2, 0x1

    goto :goto_21

    .line 2064
    :cond_1f
    const-wide/16 v2, 0x0

    .line 2070
    :goto_21
    const-wide v11, 0xaaaaaaabL

    mul-long v13, v9, v11

    and-long/2addr v7, v13

    .line 2071
    .local v7, "q":J
    long-to-int v13, v7

    aput v13, v1, v4

    .line 2075
    const-wide/32 v13, 0x55555556

    cmp-long v13, v7, v13

    if-ltz v13, :cond_3b

    .line 2076
    const-wide/16 v13, 0x1

    add-long/2addr v2, v13

    .line 2077
    cmp-long v11, v7, v11

    if-ltz v11, :cond_3b

    .line 2078
    add-long/2addr v2, v13

    .line 2058
    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 2081
    .end local v4    # "i":I
    .end local v5    # "x":J
    .end local v7    # "q":J
    .end local v9    # "w":J
    :cond_3e
    invoke-static {v1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    .line 2082
    new-instance v4, Ljava/math/BigInteger;

    iget v5, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>([II)V

    return-object v4
.end method

.method private blacklist firstNonzeroIntNum()I
    .registers 5

    .line 4805
    iget v0, p0, Ljava/math/BigInteger;->firstNonzeroIntNumPlusTwo:I

    add-int/lit8 v0, v0, -0x2

    .line 4806
    .local v0, "fn":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1f

    .line 4809
    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    .line 4810
    .local v1, "mlen":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_17

    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    aget v3, v3, v2

    if-nez v3, :cond_17

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 4812
    :cond_17
    sub-int v3, v1, v2

    add-int/lit8 v0, v3, -0x1

    .line 4813
    add-int/lit8 v3, v0, 0x2

    iput v3, p0, Ljava/math/BigInteger;->firstNonzeroIntNumPlusTwo:I

    .line 4815
    .end local v1    # "mlen":I
    .end local v2    # "i":I
    :cond_1f
    return v0
.end method

.method private blacklist getInt(I)I
    .registers 4
    .param p1, "n"    # I

    .line 4785
    if-gez p1, :cond_4

    .line 4786
    const/4 v0, 0x0

    return v0

    .line 4787
    :cond_4
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    if-lt p1, v0, :cond_e

    .line 4788
    invoke-direct {p0}, Ljava/math/BigInteger;->signInt()I

    move-result v0

    return v0

    .line 4790
    :cond_e
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 4792
    .local v0, "magInt":I
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v1, :cond_1e

    move v1, v0

    goto :goto_27

    .line 4793
    :cond_1e
    invoke-direct {p0}, Ljava/math/BigInteger;->firstNonzeroIntNum()I

    move-result v1

    if-gt p1, v1, :cond_26

    neg-int v1, v0

    goto :goto_27

    :cond_26
    not-int v1, v0

    .line 4792
    :goto_27
    return v1
.end method

.method private blacklist getLower(I)Ljava/math/BigInteger;
    .registers 7
    .param p1, "n"    # I

    .line 2090
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    .line 2092
    .local v0, "len":I
    if-gt v0, p1, :cond_a

    .line 2093
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 2096
    :cond_a
    new-array v1, p1, [I

    .line 2097
    .local v1, "lowerInts":[I
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    sub-int v3, v0, p1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2099
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {v1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2
.end method

.method private static blacklist getPrimeSearchLen(I)I
    .registers 3
    .param p0, "bitLength"    # I

    .line 930
    const v0, 0x1dcd6501

    if-gt p0, v0, :cond_a

    .line 933
    div-int/lit8 v0, p0, 0x14

    mul-int/lit8 v0, v0, 0x40

    return v0

    .line 931
    :cond_a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Prime search implementation restriction on bitLength"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getRadixConversionCache(II)Ljava/math/BigInteger;
    .registers 7
    .param p0, "radix"    # I
    .param p1, "exponent"    # I

    .line 4276
    sget-object v0, Ljava/math/BigInteger;->powerCache:[[Ljava/math/BigInteger;

    aget-object v0, v0, p0

    .line 4277
    .local v0, "cacheLine":[Ljava/math/BigInteger;
    array-length v1, v0

    if-ge p1, v1, :cond_a

    .line 4278
    aget-object v1, v0, p1

    return-object v1

    .line 4281
    :cond_a
    array-length v1, v0

    .line 4282
    .local v1, "oldLength":I
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/math/BigInteger;

    .line 4283
    move v2, v1

    .local v2, "i":I
    :goto_15
    if-gt v2, p1, :cond_25

    .line 4284
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4283
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4287
    .end local v2    # "i":I
    :cond_25
    sget-object v2, Ljava/math/BigInteger;->powerCache:[[Ljava/math/BigInteger;

    .line 4288
    .local v2, "pc":[[Ljava/math/BigInteger;
    aget-object v3, v2, p0

    array-length v3, v3

    if-lt p1, v3, :cond_37

    .line 4289
    invoke-virtual {v2}, [[Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [[Ljava/math/BigInteger;

    .line 4290
    aput-object v0, v2, p0

    .line 4291
    sput-object v2, Ljava/math/BigInteger;->powerCache:[[Ljava/math/BigInteger;

    .line 4293
    :cond_37
    aget-object v3, v0, p1

    return-object v3
.end method

.method private blacklist getToomSlice(IIII)Ljava/math/BigInteger;
    .registers 14
    .param p1, "lowerSize"    # I
    .param p2, "upperSize"    # I
    .param p3, "slice"    # I
    .param p4, "fullsize"    # I

    .line 2009
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    .line 2010
    .local v0, "len":I
    sub-int v1, p4, v0

    .line 2012
    .local v1, "offset":I
    const/4 v2, 0x1

    if-nez p3, :cond_e

    .line 2013
    rsub-int/lit8 v3, v1, 0x0

    .line 2014
    .local v3, "start":I
    add-int/lit8 v4, p2, -0x1

    sub-int/2addr v4, v1

    .local v4, "end":I
    goto :goto_16

    .line 2016
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_e
    add-int/lit8 v3, p3, -0x1

    mul-int/2addr v3, p1

    add-int/2addr v3, p2

    sub-int/2addr v3, v1

    .line 2017
    .restart local v3    # "start":I
    add-int v4, v3, p1

    sub-int/2addr v4, v2

    .line 2020
    .restart local v4    # "end":I
    :goto_16
    if-gez v3, :cond_19

    .line 2021
    const/4 v3, 0x0

    .line 2023
    :cond_19
    if-gez v4, :cond_1e

    .line 2024
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v2

    .line 2027
    :cond_1e
    sub-int v5, v4, v3

    add-int/2addr v5, v2

    .line 2029
    .local v5, "sliceSize":I
    if-gtz v5, :cond_26

    .line 2030
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v2

    .line 2035
    :cond_26
    if-nez v3, :cond_2f

    if-lt v5, v0, :cond_2f

    .line 2036
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 2039
    :cond_2f
    new-array v6, v5, [I

    .line 2040
    .local v6, "intSlice":[I
    iget-object v7, p0, Ljava/math/BigInteger;->mag:[I

    const/4 v8, 0x0

    invoke-static {v7, v3, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2042
    new-instance v7, Ljava/math/BigInteger;

    invoke-static {v6}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v7
.end method

.method private blacklist getUpper(I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "n"    # I

    .line 2108
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    .line 2110
    .local v0, "len":I
    if-gt v0, p1, :cond_8

    .line 2111
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 2114
    :cond_8
    sub-int v1, v0, p1

    .line 2115
    .local v1, "upperLen":I
    new-array v2, v1, [I

    .line 2116
    .local v2, "upperInts":[I
    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2118
    new-instance v3, Ljava/math/BigInteger;

    invoke-static {v2}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>([II)V

    return-object v3
.end method

.method private static blacklist implMontgomeryMultiply([I[I[IIJ[I)[I
    .registers 8
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "n"    # [I
    .param p3, "len"    # I
    .param p4, "inv"    # J
    .param p6, "product"    # [I

    .line 3023
    invoke-static {p0, p3, p1, p3, p6}, Ljava/math/BigInteger;->multiplyToLen([II[II[I)[I

    move-result-object p6

    .line 3024
    long-to-int v0, p4

    invoke-static {p6, p2, p3, v0}, Ljava/math/BigInteger;->montReduce([I[III)[I

    move-result-object v0

    return-object v0
.end method

.method private static blacklist implMontgomeryMultiplyChecks([I[I[II[I)V
    .registers 8
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "n"    # [I
    .param p3, "len"    # I
    .param p4, "product"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 2993
    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_48

    .line 2997
    const/4 v0, 0x1

    if-lt p3, v0, :cond_2f

    .line 3001
    array-length v0, p0

    if-gt p3, v0, :cond_16

    array-length v0, p1

    if-gt p3, v0, :cond_16

    array-length v0, p2

    if-gt p3, v0, :cond_16

    if-eqz p4, :cond_15

    array-length v0, p4

    if-gt p3, v0, :cond_16

    .line 3007
    :cond_15
    return-void

    .line 3005
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input array length out of bound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2998
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid input length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2994
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input array length must be even: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist implMontgomerySquare([I[IIJ[I)[I
    .registers 7
    .param p0, "a"    # [I
    .param p1, "n"    # [I
    .param p2, "len"    # I
    .param p3, "inv"    # J
    .param p5, "product"    # [I

    .line 3029
    invoke-static {p0, p2, p5}, Ljava/math/BigInteger;->squareToLen([II[I)[I

    move-result-object p5

    .line 3030
    long-to-int v0, p3

    invoke-static {p5, p1, p2, v0}, Ljava/math/BigInteger;->montReduce([I[III)[I

    move-result-object v0

    return-object v0
.end method

.method private static blacklist implMulAdd([I[IIII)I
    .registers 16
    .param p0, "out"    # [I
    .param p1, "in"    # [I
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "k"    # I

    .line 3360
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 3361
    .local v0, "kLong":J
    const-wide/16 v4, 0x0

    .line 3363
    .local v4, "carry":J
    array-length v6, p0

    sub-int/2addr v6, p2

    add-int/lit8 v6, v6, -0x1

    .line 3364
    .end local p2    # "offset":I
    .local v6, "offset":I
    add-int/lit8 p2, p3, -0x1

    .local p2, "j":I
    :goto_f
    if-ltz p2, :cond_29

    .line 3365
    aget v7, p1, p2

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p0, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v7, v4

    .line 3367
    .local v7, "product":J
    add-int/lit8 v9, v6, -0x1

    .end local v6    # "offset":I
    .local v9, "offset":I
    long-to-int v10, v7

    aput v10, p0, v6

    .line 3368
    const/16 v6, 0x20

    ushr-long v4, v7, v6

    .line 3364
    .end local v7    # "product":J
    add-int/lit8 p2, p2, -0x1

    move v6, v9

    goto :goto_f

    .line 3370
    .end local v9    # "offset":I
    .end local p2    # "j":I
    .restart local v6    # "offset":I
    :cond_29
    long-to-int p2, v4

    return p2
.end method

.method private static blacklist implMulAddCheck([I[IIII)V
    .registers 9
    .param p0, "out"    # [I
    .param p1, "in"    # [I
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "k"    # I

    .line 3341
    array-length v0, p1

    const-string v1, " > "

    if-gt p3, v0, :cond_71

    .line 3344
    if-ltz p2, :cond_58

    .line 3347
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_34

    .line 3350
    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_11

    .line 3353
    return-void

    .line 3351
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input len is out of bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3348
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input offset is out of bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3345
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input offset is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3342
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input length is out of bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist implMultiplyToLen([II[II[I)[I
    .registers 20
    .param p0, "x"    # [I
    .param p1, "xlen"    # I
    .param p2, "y"    # [I
    .param p3, "ylen"    # I
    .param p4, "z"    # [I

    .line 1810
    move-object/from16 v0, p4

    add-int/lit8 v1, p1, -0x1

    .line 1811
    .local v1, "xstart":I
    add-int/lit8 v2, p3, -0x1

    .line 1813
    .local v2, "ystart":I
    if-eqz v0, :cond_d

    array-length v3, v0

    add-int v4, p1, p3

    if-ge v3, v4, :cond_11

    .line 1814
    :cond_d
    add-int v3, p1, p3

    new-array v0, v3, [I

    .line 1816
    .end local p4    # "z":[I
    .local v0, "z":[I
    :cond_11
    const-wide/16 v3, 0x0

    .line 1817
    .local v3, "carry":J
    move v5, v2

    .local v5, "j":I
    add-int/lit8 v6, v2, 0x1

    add-int/2addr v6, v1

    .local v6, "k":I
    :goto_17
    const/16 v7, 0x20

    const-wide v8, 0xffffffffL

    if-ltz v5, :cond_34

    .line 1818
    aget v10, p2, v5

    int-to-long v10, v10

    and-long/2addr v10, v8

    aget v12, p0, v1

    int-to-long v12, v12

    and-long/2addr v8, v12

    mul-long/2addr v10, v8

    add-long/2addr v10, v3

    .line 1820
    .local v10, "product":J
    long-to-int v8, v10

    aput v8, v0, v6

    .line 1821
    ushr-long v3, v10, v7

    .line 1817
    .end local v10    # "product":J
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_17

    .line 1823
    .end local v5    # "j":I
    .end local v6    # "k":I
    :cond_34
    long-to-int v5, v3

    aput v5, v0, v1

    .line 1825
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_39
    if-ltz v5, :cond_62

    .line 1826
    const-wide/16 v3, 0x0

    .line 1827
    move v6, v2

    .local v6, "j":I
    add-int/lit8 v10, v2, 0x1

    add-int/2addr v10, v5

    .local v10, "k":I
    :goto_41
    if-ltz v6, :cond_5c

    .line 1828
    aget v11, p2, v6

    int-to-long v11, v11

    and-long/2addr v11, v8

    aget v13, p0, v5

    int-to-long v13, v13

    and-long/2addr v13, v8

    mul-long/2addr v11, v13

    aget v13, v0, v10

    int-to-long v13, v13

    and-long/2addr v13, v8

    add-long/2addr v11, v13

    add-long/2addr v11, v3

    .line 1831
    .local v11, "product":J
    long-to-int v13, v11

    aput v13, v0, v10

    .line 1832
    ushr-long v3, v11, v7

    .line 1827
    .end local v11    # "product":J
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_41

    .line 1834
    .end local v6    # "j":I
    .end local v10    # "k":I
    :cond_5c
    long-to-int v6, v3

    aput v6, v0, v5

    .line 1825
    add-int/lit8 v5, v5, -0x1

    goto :goto_39

    .line 1836
    .end local v5    # "i":I
    :cond_62
    return-object v0
.end method

.method private static final blacklist implSquareToLen([II[II)[I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "len"    # I
    .param p2, "z"    # [I
    .param p3, "zlen"    # I

    .line 2245
    const/4 v0, 0x0

    .line 2246
    .local v0, "lastProductLowWord":I
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    const/4 v3, 0x1

    if-ge v1, p1, :cond_28

    .line 2247
    aget v4, p0, v1

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 2248
    .local v4, "piece":J
    mul-long v6, v4, v4

    .line 2249
    .local v6, "product":J
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    shl-int/lit8 v9, v0, 0x1f

    const/16 v10, 0x21

    ushr-long v10, v6, v10

    long-to-int v10, v10

    or-int/2addr v9, v10

    aput v9, p2, v2

    .line 2250
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "i":I
    .restart local v2    # "i":I
    ushr-long v9, v6, v3

    long-to-int v3, v9

    aput v3, p2, v8

    .line 2251
    long-to-int v0, v6

    .line 2246
    .end local v4    # "piece":J
    .end local v6    # "product":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2255
    .end local v1    # "j":I
    .end local v2    # "i":I
    :cond_28
    move v1, p1

    .local v1, "i":I
    const/4 v2, 0x1

    .local v2, "offset":I
    :goto_2a
    if-lez v1, :cond_40

    .line 2256
    add-int/lit8 v4, v1, -0x1

    aget v4, p0, v4

    .line 2257
    .local v4, "t":I
    add-int/lit8 v5, v1, -0x1

    invoke-static {p2, p0, v2, v5, v4}, Ljava/math/BigInteger;->mulAdd([I[IIII)I

    move-result v4

    .line 2258
    add-int/lit8 v5, v2, -0x1

    invoke-static {p2, v5, v1, v4}, Ljava/math/BigInteger;->addOne([IIII)I

    .line 2255
    .end local v4    # "t":I
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_2a

    .line 2262
    .end local v1    # "i":I
    .end local v2    # "offset":I
    :cond_40
    invoke-static {p2, p3, v3}, Ljava/math/BigInteger;->primitiveLeftShift([III)V

    .line 2263
    add-int/lit8 v1, p3, -0x1

    aget v2, p2, v1

    add-int/lit8 v4, p1, -0x1

    aget v4, p0, v4

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, p2, v1

    .line 2265
    return-object p2
.end method

.method private static blacklist implSquareToLenChecks([II[II)V
    .registers 10
    .param p0, "x"    # [I
    .param p1, "len"    # I
    .param p2, "z"    # [I
    .param p3, "zlen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 2184
    const-string v0, "invalid input length: "

    const/4 v1, 0x1

    if-lt p1, v1, :cond_90

    .line 2187
    array-length v2, p0

    const-string v3, " > "

    const-string v4, "input length out of bound: "

    if-gt p1, v2, :cond_70

    .line 2191
    mul-int/lit8 v2, p1, 0x2

    array-length v5, p2

    if-gt v2, v5, :cond_4e

    .line 2195
    if-lt p3, v1, :cond_37

    .line 2198
    array-length v0, p2

    if-gt p3, v0, :cond_17

    .line 2202
    return-void

    .line 2199
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2196
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2192
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2188
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2185
    :cond_90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist intArrayCmpToLen([I[II)I
    .registers 10
    .param p0, "arg1"    # [I
    .param p1, "arg2"    # [I
    .param p2, "len"    # I

    .line 3303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1f

    .line 3304
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 3305
    .local v1, "b1":J
    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v3, v5

    .line 3306
    .local v3, "b2":J
    cmp-long v5, v1, v3

    if-gez v5, :cond_16

    .line 3307
    const/4 v5, -0x1

    return v5

    .line 3308
    :cond_16
    cmp-long v5, v1, v3

    if-lez v5, :cond_1c

    .line 3309
    const/4 v5, 0x1

    return v5

    .line 3303
    .end local v1    # "b1":J
    .end local v3    # "b2":J
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3311
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist intLength()I
    .registers 2

    .line 4765
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist jacobiSymbol(ILjava/math/BigInteger;)I
    .registers 9
    .param p0, "p"    # I
    .param p1, "n"    # Ljava/math/BigInteger;

    .line 1008
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1009
    return v0

    .line 1012
    :cond_4
    const/4 v1, 0x1

    .line 1013
    .local v1, "j":I
    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    iget-object v3, p1, Ljava/math/BigInteger;->mag:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v2, v2, v3

    .line 1016
    .local v2, "u":I
    if-gez p0, :cond_1a

    .line 1017
    neg-int p0, p0

    .line 1018
    and-int/lit8 v3, v2, 0x7

    .line 1019
    .local v3, "n8":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_19

    const/4 v5, 0x7

    if-ne v3, v5, :cond_1a

    .line 1020
    :cond_19
    neg-int v1, v1

    .line 1024
    .end local v3    # "n8":I
    :cond_1a
    :goto_1a
    and-int/lit8 v3, p0, 0x3

    if-nez v3, :cond_21

    .line 1025
    shr-int/lit8 p0, p0, 0x2

    goto :goto_1a

    .line 1026
    :cond_21
    and-int/lit8 v3, p0, 0x1

    if-nez v3, :cond_2f

    .line 1027
    shr-int/lit8 p0, p0, 0x1

    .line 1028
    shr-int/lit8 v3, v2, 0x1

    xor-int/2addr v3, v2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2f

    .line 1029
    neg-int v1, v1

    .line 1031
    :cond_2f
    if-ne p0, v4, :cond_32

    .line 1032
    return v1

    .line 1034
    :cond_32
    and-int v3, p0, v2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_39

    .line 1035
    neg-int v1, v1

    .line 1037
    :cond_39
    int-to-long v5, p0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 1040
    :goto_46
    if-eqz v2, :cond_6d

    .line 1041
    :goto_48
    and-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_4f

    .line 1042
    shr-int/lit8 v2, v2, 0x2

    goto :goto_48

    .line 1043
    :cond_4f
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_5d

    .line 1044
    shr-int/lit8 v2, v2, 0x1

    .line 1045
    shr-int/lit8 v3, p0, 0x1

    xor-int/2addr v3, p0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5d

    .line 1046
    neg-int v1, v1

    .line 1048
    :cond_5d
    if-ne v2, v4, :cond_60

    .line 1049
    return v1

    .line 1051
    :cond_60
    nop

    .line 1052
    move v3, v2

    .local v3, "t":I
    move v2, p0

    move p0, v3

    .line 1053
    and-int v5, v2, p0

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6b

    .line 1054
    neg-int v1, v1

    .line 1056
    :cond_6b
    rem-int/2addr v2, p0

    .line 1057
    .end local v3    # "t":I
    goto :goto_46

    .line 1058
    :cond_6d
    return v0
.end method

.method private static blacklist largePrime(IILjava/util/Random;)Ljava/math/BigInteger;
    .registers 10
    .param p0, "bitLength"    # I
    .param p1, "certainty"    # I
    .param p2, "rnd"    # Ljava/util/Random;

    .line 840
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 841
    .local v0, "p":Ljava/math/BigInteger;
    iget-object v1, v0, Ljava/math/BigInteger;->mag:[I

    iget-object v2, v0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    and-int/lit8 v3, v3, -0x2

    aput v3, v1, v2

    .line 844
    invoke-static {p0}, Ljava/math/BigInteger;->getPrimeSearchLen(I)I

    move-result v1

    .line 845
    .local v1, "searchLen":I
    new-instance v2, Ljava/math/BitSieve;

    invoke-direct {v2, v0, v1}, Ljava/math/BitSieve;-><init>(Ljava/math/BigInteger;I)V

    .line 846
    .local v2, "searchSieve":Ljava/math/BitSieve;
    invoke-virtual {v2, v0, p1, p2}, Ljava/math/BitSieve;->retrieve(Ljava/math/BigInteger;ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v3

    .line 848
    .local v3, "candidate":Ljava/math/BigInteger;
    :goto_25
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-eq v4, p0, :cond_2e

    goto :goto_2f

    .line 856
    :cond_2e
    return-object v3

    .line 849
    :cond_2f
    :goto_2f
    mul-int/lit8 v4, v1, 0x2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-eq v4, p0, :cond_4b

    .line 851
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, p0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    add-int/lit8 v5, p0, -0x1

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 852
    :cond_4b
    iget-object v4, v0, Ljava/math/BigInteger;->mag:[I

    iget-object v5, v0, Ljava/math/BigInteger;->mag:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    and-int/lit8 v6, v6, -0x2

    aput v6, v4, v5

    .line 853
    new-instance v4, Ljava/math/BitSieve;

    invoke-direct {v4, v0, v1}, Ljava/math/BitSieve;-><init>(Ljava/math/BigInteger;I)V

    move-object v2, v4

    .line 854
    invoke-virtual {v2, v0, p1, p2}, Ljava/math/BitSieve;->retrieve(Ljava/math/BigInteger;ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_25
.end method

.method private static blacklist leftShift([III)[I
    .registers 9
    .param p0, "a"    # [I
    .param p1, "len"    # I
    .param p2, "n"    # I

    .line 2730
    ushr-int/lit8 v0, p2, 0x5

    .line 2731
    .local v0, "nInts":I
    and-int/lit8 v1, p2, 0x1f

    .line 2732
    .local v1, "nBits":I
    const/4 v2, 0x0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v3

    .line 2735
    .local v3, "bitsInHighWord":I
    rsub-int/lit8 v4, v3, 0x20

    if-gt p2, v4, :cond_13

    .line 2736
    invoke-static {p0, p1, v1}, Ljava/math/BigInteger;->primitiveLeftShift([III)V

    .line 2737
    return-object p0

    .line 2739
    :cond_13
    rsub-int/lit8 v4, v3, 0x20

    if-gt v1, v4, :cond_23

    .line 2740
    add-int v4, v0, p1

    new-array v4, v4, [I

    .line 2741
    .local v4, "result":[I
    invoke-static {p0, v2, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2742
    array-length v2, v4

    invoke-static {v4, v2, v1}, Ljava/math/BigInteger;->primitiveLeftShift([III)V

    .line 2743
    return-object v4

    .line 2745
    .end local v4    # "result":[I
    :cond_23
    add-int v4, v0, p1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    .line 2746
    .restart local v4    # "result":[I
    invoke-static {p0, v2, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2747
    array-length v2, v4

    rsub-int/lit8 v5, v1, 0x20

    invoke-static {v4, v2, v5}, Ljava/math/BigInteger;->primitiveRightShift([III)V

    .line 2748
    return-object v4
.end method

.method private static blacklist lucasLehmerSequence(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 12
    .param p0, "z"    # I
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "n"    # Ljava/math/BigInteger;

    .line 1062
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 1063
    .local v0, "d":Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 1064
    .local v1, "u":Ljava/math/BigInteger;
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 1066
    .local v2, "v":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    .local v3, "i":I
    :goto_f
    if-ltz v3, :cond_7a

    .line 1067
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1069
    .local v4, "u2":Ljava/math/BigInteger;
    invoke-direct {v2}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1070
    .local v5, "v2":Ljava/math/BigInteger;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1071
    invoke-virtual {v5, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1073
    :cond_38
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 1075
    move-object v1, v4

    move-object v2, v5

    .line 1076
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 1077
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1078
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 1079
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1081
    :cond_57
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 1082
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1083
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1084
    invoke-virtual {v5, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1085
    :cond_71
    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 1087
    move-object v1, v4

    move-object v2, v5

    .line 1066
    :cond_77
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 1090
    .end local v3    # "i":I
    .end local v4    # "u2":Ljava/math/BigInteger;
    .end local v5    # "v2":Ljava/math/BigInteger;
    :cond_7a
    return-object v1
.end method

.method private blacklist magSerializedForm()[B
    .registers 11

    .line 4974
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    .line 4976
    .local v0, "len":I
    const/4 v1, 0x0

    if-nez v0, :cond_7

    goto :goto_14

    :cond_7
    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    aget v1, v3, v1

    invoke-static {v1}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 4977
    .local v1, "bitLen":I
    :goto_14
    add-int/lit8 v2, v1, 0x7

    ushr-int/lit8 v2, v2, 0x3

    .line 4978
    .local v2, "byteLen":I
    new-array v3, v2, [B

    .line 4980
    .local v3, "result":[B
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    const/4 v5, 0x4

    .local v5, "bytesCopied":I
    add-int/lit8 v6, v0, -0x1

    .local v6, "intIndex":I
    const/4 v7, 0x0

    .line 4981
    .local v7, "nextInt":I
    :goto_20
    if-ltz v4, :cond_39

    .line 4982
    const/4 v8, 0x4

    if-ne v5, v8, :cond_2f

    .line 4983
    iget-object v8, p0, Ljava/math/BigInteger;->mag:[I

    add-int/lit8 v9, v6, -0x1

    .end local v6    # "intIndex":I
    .local v9, "intIndex":I
    aget v6, v8, v6

    .line 4984
    .end local v7    # "nextInt":I
    .local v6, "nextInt":I
    const/4 v5, 0x1

    move v7, v6

    move v6, v9

    goto :goto_33

    .line 4986
    .end local v9    # "intIndex":I
    .local v6, "intIndex":I
    .restart local v7    # "nextInt":I
    :cond_2f
    ushr-int/lit8 v7, v7, 0x8

    .line 4987
    add-int/lit8 v5, v5, 0x1

    .line 4989
    :goto_33
    int-to-byte v8, v7

    aput-byte v8, v3, v4

    .line 4981
    add-int/lit8 v4, v4, -0x1

    goto :goto_20

    .line 4991
    .end local v4    # "i":I
    .end local v5    # "bytesCopied":I
    .end local v6    # "intIndex":I
    .end local v7    # "nextInt":I
    :cond_39
    return-object v3
.end method

.method private static blacklist makePositive([BII)[I
    .registers 18
    .param p0, "a"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 4631
    add-int v0, p1, p2

    .line 4634
    .local v0, "indexBound":I
    move/from16 v1, p1

    .local v1, "keep":I
    :goto_4
    const/4 v2, -0x1

    if-ge v1, v0, :cond_e

    aget-byte v3, p0, v1

    if-ne v3, v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4640
    :cond_e
    move v3, v1

    .local v3, "k":I
    :goto_f
    if-ge v3, v0, :cond_18

    aget-byte v4, p0, v3

    if-nez v4, :cond_18

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4643
    :cond_18
    const/4 v4, 0x1

    if-ne v3, v0, :cond_1d

    move v5, v4

    goto :goto_1e

    :cond_1d
    const/4 v5, 0x0

    .line 4644
    .local v5, "extraByte":I
    :goto_1e
    sub-int v6, v0, v1

    add-int/2addr v6, v5

    const/4 v7, 0x3

    add-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x2

    .line 4645
    .local v6, "intLength":I
    new-array v8, v6, [I

    .line 4649
    .local v8, "result":[I
    add-int/lit8 v9, v0, -0x1

    .line 4650
    .local v9, "b":I
    add-int/lit8 v10, v6, -0x1

    .local v10, "i":I
    :goto_2b
    if-ltz v10, :cond_65

    .line 4651
    add-int/lit8 v11, v9, -0x1

    .end local v9    # "b":I
    .local v11, "b":I
    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    aput v9, v8, v10

    .line 4652
    sub-int v9, v11, v1

    add-int/2addr v9, v4

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 4653
    .local v9, "numBytesToTransfer":I
    if-gez v9, :cond_3f

    .line 4654
    const/4 v9, 0x0

    .line 4655
    :cond_3f
    const/16 v12, 0x8

    .local v12, "j":I
    :goto_41
    mul-int/lit8 v13, v9, 0x8

    if-gt v12, v13, :cond_55

    .line 4656
    aget v13, v8, v10

    add-int/lit8 v14, v11, -0x1

    .end local v11    # "b":I
    .local v14, "b":I
    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v12

    or-int/2addr v11, v13

    aput v11, v8, v10

    .line 4655
    add-int/lit8 v12, v12, 0x8

    move v11, v14

    goto :goto_41

    .line 4659
    .end local v12    # "j":I
    .end local v14    # "b":I
    .restart local v11    # "b":I
    :cond_55
    rsub-int/lit8 v12, v9, 0x3

    mul-int/lit8 v12, v12, 0x8

    ushr-int v12, v2, v12

    .line 4660
    .local v12, "mask":I
    aget v13, v8, v10

    not-int v13, v13

    and-int/2addr v13, v12

    aput v13, v8, v10

    .line 4650
    .end local v9    # "numBytesToTransfer":I
    .end local v12    # "mask":I
    add-int/lit8 v10, v10, -0x1

    move v9, v11

    goto :goto_2b

    .line 4664
    .end local v10    # "i":I
    .end local v11    # "b":I
    .local v9, "b":I
    :cond_65
    array-length v2, v8

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_67
    if-ltz v2, :cond_80

    .line 4665
    aget v4, v8, v2

    int-to-long v10, v4

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    long-to-int v4, v10

    aput v4, v8, v2

    .line 4666
    aget v4, v8, v2

    if-eqz v4, :cond_7d

    .line 4667
    goto :goto_80

    .line 4664
    :cond_7d
    add-int/lit8 v2, v2, -0x1

    goto :goto_67

    .line 4670
    .end local v2    # "i":I
    :cond_80
    :goto_80
    return-object v8
.end method

.method private static blacklist makePositive([I)[I
    .registers 9
    .param p0, "a"    # [I

    .line 4681
    const/4 v0, 0x0

    .local v0, "keep":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    aget v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4686
    :cond_c
    move v1, v0

    .local v1, "j":I
    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_17

    aget v2, p0, v1

    if-nez v2, :cond_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 4688
    :cond_17
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 4689
    .local v2, "extraInt":I
    :goto_1e
    array-length v4, p0

    sub-int/2addr v4, v0

    add-int/2addr v4, v2

    new-array v4, v4, [I

    .line 4693
    .local v4, "result":[I
    move v5, v0

    .local v5, "i":I
    :goto_24
    array-length v6, p0

    if-ge v5, v6, :cond_32

    .line 4694
    sub-int v6, v5, v0

    add-int/2addr v6, v2

    aget v7, p0, v5

    not-int v7, v7

    aput v7, v4, v6

    .line 4693
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 4697
    .end local v5    # "i":I
    :cond_32
    array-length v5, v4

    sub-int/2addr v5, v3

    .restart local v5    # "i":I
    :goto_34
    aget v6, v4, v5

    add-int/2addr v6, v3

    aput v6, v4, v5

    if-nez v6, :cond_3e

    add-int/lit8 v5, v5, -0x1

    goto :goto_34

    .line 4700
    .end local v5    # "i":I
    :cond_3e
    return-object v4
.end method

.method private static blacklist materialize([II)[I
    .registers 3
    .param p0, "z"    # [I
    .param p1, "len"    # I

    .line 3013
    if-eqz p0, :cond_5

    array-length v0, p0

    if-ge v0, p1, :cond_7

    .line 3014
    :cond_5
    new-array p0, p1, [I

    .line 3015
    :cond_7
    return-object p0
.end method

.method private blacklist mod2(I)Ljava/math/BigInteger;
    .registers 13
    .param p1, "p"    # I

    .line 3429
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p1, :cond_7

    .line 3430
    return-object p0

    .line 3433
    :cond_7
    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    .line 3434
    .local v0, "numInts":I
    new-array v1, v0, [I

    .line 3435
    .local v1, "mag":[I
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3438
    shl-int/lit8 v2, v0, 0x5

    sub-int/2addr v2, p1

    .line 3439
    .local v2, "excessBits":I
    aget v3, v1, v4

    int-to-long v5, v3

    rsub-int/lit8 v3, v2, 0x20

    const-wide/16 v7, 0x1

    shl-long v9, v7, v3

    sub-long/2addr v9, v7

    and-long/2addr v5, v9

    long-to-int v3, v5

    aput v3, v1, v4

    .line 3441
    aget v3, v1, v4

    const/4 v4, 0x1

    if-nez v3, :cond_33

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[I)V

    goto :goto_38

    :cond_33
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v4}, Ljava/math/BigInteger;-><init>([II)V

    :goto_38
    return-object v3
.end method

.method private blacklist modPow2(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "exponent"    # Ljava/math/BigInteger;
    .param p2, "p"    # I

    .line 3404
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 3405
    .local v0, "result":Ljava/math/BigInteger;
    invoke-direct {p0, p2}, Ljava/math/BigInteger;->mod2(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 3406
    .local v1, "baseToPow2":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .line 3408
    .local v2, "expOffset":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 3410
    .local v3, "limit":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3411
    add-int/lit8 v4, p2, -0x1

    if-ge v4, v3, :cond_19

    add-int/lit8 v4, p2, -0x1

    goto :goto_1a

    :cond_19
    move v4, v3

    :goto_1a
    move v3, v4

    .line 3413
    :cond_1b
    :goto_1b
    if-ge v2, v3, :cond_38

    .line 3414
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3415
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v4, p2}, Ljava/math/BigInteger;->mod2(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 3416
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    .line 3417
    if-ge v2, v3, :cond_1b

    .line 3418
    invoke-direct {v1}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v4, p2}, Ljava/math/BigInteger;->mod2(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1b

    .line 3421
    :cond_38
    return-object v0
.end method

.method private static blacklist montReduce([I[III)[I
    .registers 10
    .param p0, "n"    # [I
    .param p1, "mod"    # [I
    .param p2, "mlen"    # I
    .param p3, "inv"    # I

    .line 3277
    const/4 v0, 0x0

    .line 3278
    .local v0, "c":I
    move v1, p2

    .line 3279
    .local v1, "len":I
    const/4 v2, 0x0

    .line 3282
    .local v2, "offset":I
    :cond_3
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    aget v3, p0, v3

    .line 3283
    .local v3, "nEnd":I
    mul-int v4, p3, v3

    invoke-static {p0, p1, v2, p2, v4}, Ljava/math/BigInteger;->mulAdd([I[IIII)I

    move-result v4

    .line 3284
    .local v4, "carry":I
    invoke-static {p0, v2, p2, v4}, Ljava/math/BigInteger;->addOne([IIII)I

    move-result v5

    add-int/2addr v0, v5

    .line 3285
    nop

    .end local v3    # "nEnd":I
    .end local v4    # "carry":I
    add-int/lit8 v2, v2, 0x1

    .line 3286
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_3

    .line 3288
    :goto_1b
    if-lez v0, :cond_23

    .line 3289
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->subN([I[II)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1b

    .line 3291
    :cond_23
    :goto_23
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->intArrayCmpToLen([I[II)I

    move-result v3

    if-ltz v3, :cond_2d

    .line 3292
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->subN([I[II)I

    goto :goto_23

    .line 3294
    :cond_2d
    return-object p0
.end method

.method private static blacklist montgomeryMultiply([I[I[IIJ[I)[I
    .registers 15
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "n"    # [I
    .param p3, "len"    # I
    .param p4, "inv"    # J
    .param p6, "product"    # [I

    .line 2969
    invoke-static {p0, p1, p2, p3, p6}, Ljava/math/BigInteger;->implMontgomeryMultiplyChecks([I[I[II[I)V

    .line 2970
    const/16 v0, 0x200

    if-le p3, v0, :cond_11

    .line 2972
    invoke-static {p0, p3, p1, p3, p6}, Ljava/math/BigInteger;->multiplyToLen([II[II[I)[I

    move-result-object p6

    .line 2973
    long-to-int v0, p4

    invoke-static {p6, p2, p3, v0}, Ljava/math/BigInteger;->montReduce([I[III)[I

    move-result-object v0

    return-object v0

    .line 2975
    :cond_11
    invoke-static {p6, p3}, Ljava/math/BigInteger;->materialize([II)[I

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p0    # "a":[I
    .end local p1    # "b":[I
    .end local p2    # "n":[I
    .end local p3    # "len":I
    .end local p4    # "inv":J
    .local v1, "a":[I
    .local v2, "b":[I
    .local v3, "n":[I
    .local v4, "len":I
    .local v5, "inv":J
    invoke-static/range {v1 .. v7}, Ljava/math/BigInteger;->implMontgomeryMultiply([I[I[IIJ[I)[I

    move-result-object p0

    return-object p0
.end method

.method private static blacklist montgomerySquare([I[IIJ[I)[I
    .registers 13
    .param p0, "a"    # [I
    .param p1, "n"    # [I
    .param p2, "len"    # I
    .param p3, "inv"    # J
    .param p5, "product"    # [I

    .line 2980
    invoke-static {p0, p0, p1, p2, p5}, Ljava/math/BigInteger;->implMontgomeryMultiplyChecks([I[I[II[I)V

    .line 2981
    const/16 v0, 0x200

    if-le p2, v0, :cond_11

    .line 2983
    invoke-static {p0, p2, p5}, Ljava/math/BigInteger;->squareToLen([II[I)[I

    move-result-object p5

    .line 2984
    long-to-int v0, p3

    invoke-static {p5, p1, p2, v0}, Ljava/math/BigInteger;->montReduce([I[III)[I

    move-result-object v0

    return-object v0

    .line 2986
    :cond_11
    invoke-static {p5, p2}, Ljava/math/BigInteger;->materialize([II)[I

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .end local p0    # "a":[I
    .end local p1    # "n":[I
    .end local p2    # "len":I
    .end local p3    # "inv":J
    .local v1, "a":[I
    .local v2, "n":[I
    .local v3, "len":I
    .local v4, "inv":J
    invoke-static/range {v1 .. v6}, Ljava/math/BigInteger;->implMontgomerySquare([I[IIJ[I)[I

    move-result-object p0

    return-object p0
.end method

.method static blacklist mulAdd([I[IIII)I
    .registers 6
    .param p0, "out"    # [I
    .param p1, "in"    # [I
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "k"    # I

    .line 3333
    invoke-static {p0, p1, p2, p3, p4}, Ljava/math/BigInteger;->implMulAddCheck([I[IIII)V

    .line 3334
    invoke-static {p0, p1, p2, p3, p4}, Ljava/math/BigInteger;->implMulAdd([I[IIII)I

    move-result v0

    return v0
.end method

.method private blacklist multiply(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;
    .registers 25
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "isRecursion"    # Z

    .line 1595
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Ljava/math/BigInteger;->signum:I

    if-eqz v0, :cond_b5

    iget v0, v1, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_e

    goto/16 :goto_b5

    .line 1598
    :cond_e
    iget-object v0, v1, Ljava/math/BigInteger;->mag:[I

    array-length v3, v0

    .line 1602
    .local v3, "xlen":I
    const/16 v4, 0x32

    .line 1604
    .local v4, "BORINGSSL_MUL_THRESHOLD":I
    const/16 v0, 0x32

    if-ne v2, v1, :cond_22

    const/16 v5, 0x14

    if-le v3, v5, :cond_22

    if-ge v3, v0, :cond_22

    .line 1606
    invoke-direct {v1}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1609
    :cond_22
    iget-object v5, v2, Ljava/math/BigInteger;->mag:[I

    array-length v5, v5

    .line 1611
    .local v5, "ylen":I
    iget v6, v1, Ljava/math/BigInteger;->signum:I

    iget v7, v2, Ljava/math/BigInteger;->signum:I

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2e

    move v6, v8

    goto :goto_2f

    :cond_2e
    const/4 v6, -0x1

    .line 1612
    .local v6, "resultSign":I
    :goto_2f
    const/4 v7, 0x0

    if-lt v3, v0, :cond_82

    if-ge v5, v0, :cond_35

    goto :goto_82

    .line 1624
    :cond_35
    const-wide/16 v8, 0x0

    .local v8, "xBN":J
    const-wide/16 v10, 0x0

    .local v10, "yBN":J
    const-wide/16 v12, 0x0

    .line 1626
    .local v12, "resultBN":J
    :try_start_3b
    iget-object v0, v1, Ljava/math/BigInteger;->mag:[I

    invoke-static {v0, v7}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v14
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_77

    move-wide/from16 v18, v14

    .line 1627
    .end local v8    # "xBN":J
    .local v18, "xBN":J
    :try_start_43
    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    invoke-static {v0, v7}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v20
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_73

    .line 1628
    .end local v10    # "yBN":J
    .local v20, "yBN":J
    :try_start_49
    invoke-static {}, Llibcore/math/NativeBN;->BN_new()J

    move-result-wide v16
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_6d

    .line 1629
    .end local v12    # "resultBN":J
    .local v16, "resultBN":J
    :try_start_4d
    invoke-static/range {v16 .. v21}, Llibcore/math/NativeBN;->BN_mul(JJJ)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_65

    move-wide/from16 v12, v16

    .line 1630
    .end local v16    # "resultBN":J
    .restart local v12    # "resultBN":J
    :try_start_52
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v1, v12, v13}, Ljava/math/BigInteger;->bn2BigEndInts(J)[I

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/math/BigInteger;-><init>(I[I)V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_6d

    .line 1632
    invoke-static/range {v18 .. v19}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1633
    invoke-static/range {v20 .. v21}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1634
    invoke-static {v12, v13}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1630
    return-object v0

    .line 1632
    .end local v12    # "resultBN":J
    .restart local v16    # "resultBN":J
    :catchall_65
    move-exception v0

    move-wide/from16 v12, v16

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    .end local v16    # "resultBN":J
    .restart local v12    # "resultBN":J
    goto :goto_78

    :catchall_6d
    move-exception v0

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    goto :goto_78

    .end local v20    # "yBN":J
    .restart local v10    # "yBN":J
    :catchall_73
    move-exception v0

    move-wide/from16 v8, v18

    goto :goto_78

    .end local v18    # "xBN":J
    .restart local v8    # "xBN":J
    :catchall_77
    move-exception v0

    :goto_78
    invoke-static {v8, v9}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1633
    invoke-static {v10, v11}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1634
    invoke-static {v12, v13}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1635
    throw v0

    .line 1613
    .end local v8    # "xBN":J
    .end local v10    # "yBN":J
    .end local v12    # "resultBN":J
    :cond_82
    :goto_82
    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    if-ne v0, v8, :cond_92

    .line 1614
    iget-object v0, v1, Ljava/math/BigInteger;->mag:[I

    iget-object v8, v2, Ljava/math/BigInteger;->mag:[I

    aget v7, v8, v7

    invoke-static {v0, v7, v6}, Ljava/math/BigInteger;->multiplyByInt([III)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1616
    :cond_92
    iget-object v0, v1, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    if-ne v0, v8, :cond_a2

    .line 1617
    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    iget-object v8, v1, Ljava/math/BigInteger;->mag:[I

    aget v7, v8, v7

    invoke-static {v0, v7, v6}, Ljava/math/BigInteger;->multiplyByInt([III)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1619
    :cond_a2
    iget-object v0, v1, Ljava/math/BigInteger;->mag:[I

    iget-object v7, v2, Ljava/math/BigInteger;->mag:[I

    const/4 v8, 0x0

    invoke-static {v0, v3, v7, v5, v8}, Ljava/math/BigInteger;->multiplyToLen([II[II[I)[I

    move-result-object v0

    .line 1621
    .local v0, "result":[I
    invoke-static {v0}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v0

    .line 1622
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0, v6}, Ljava/math/BigInteger;-><init>([II)V

    return-object v7

    .line 1596
    .end local v0    # "result":[I
    .end local v3    # "xlen":I
    .end local v4    # "BORINGSSL_MUL_THRESHOLD":I
    .end local v5    # "ylen":I
    .end local v6    # "resultSign":I
    :cond_b5
    :goto_b5
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method private static blacklist multiplyByInt([III)Ljava/math/BigInteger;
    .registers 27
    .param p0, "x"    # [I
    .param p1, "y"    # I
    .param p2, "sign"    # I

    .line 1707
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 1708
    new-instance v2, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/math/BigInteger;->shiftLeft([II)[I

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2

    .line 1710
    :cond_19
    array-length v2, v0

    .line 1728
    .local v2, "xlen":I
    const-wide/16 v4, 0x0

    .line 1729
    .local v4, "carry":J
    move/from16 v6, p1

    int-to-long v7, v6

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    .line 1732
    .local v7, "yl":J
    const/4 v11, 0x0

    aget v12, v0, v11

    int-to-long v12, v12

    and-long/2addr v12, v9

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    mul-long/2addr v12, v7

    .line 1733
    .local v12, "highDigitsBound":J
    const/16 v14, 0x20

    ushr-long v15, v12, v14

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_3a

    move v15, v2

    goto :goto_3c

    :cond_3a
    add-int/lit8 v15, v2, 0x1

    .line 1734
    .local v15, "rlen":I
    :goto_3c
    move-wide/from16 v19, v9

    new-array v9, v15, [I

    .line 1735
    .local v9, "rmag":[I
    add-int/lit8 v10, v15, -0x1

    .line 1736
    .local v10, "rindex":I
    add-int/lit8 v16, v2, -0x1

    .local v16, "i":I
    :goto_44
    if-ltz v16, :cond_65

    .line 1737
    move/from16 v21, v11

    aget v11, v0, v16

    move/from16 v22, v14

    move/from16 v23, v15

    .end local v15    # "rlen":I
    .local v23, "rlen":I
    int-to-long v14, v11

    and-long v14, v14, v19

    mul-long/2addr v14, v7

    add-long/2addr v14, v4

    .line 1738
    .local v14, "product":J
    add-int/lit8 v11, v10, -0x1

    .end local v10    # "rindex":I
    .local v11, "rindex":I
    long-to-int v3, v14

    aput v3, v9, v10

    .line 1739
    ushr-long v4, v14, v22

    .line 1736
    .end local v14    # "product":J
    add-int/lit8 v16, v16, -0x1

    move v10, v11

    move/from16 v11, v21

    move/from16 v14, v22

    move/from16 v15, v23

    const/4 v3, 0x1

    goto :goto_44

    .end local v11    # "rindex":I
    .end local v23    # "rlen":I
    .restart local v10    # "rindex":I
    .restart local v15    # "rlen":I
    :cond_65
    move/from16 v21, v11

    move/from16 v23, v15

    .line 1741
    .end local v15    # "rlen":I
    .end local v16    # "i":I
    .restart local v23    # "rlen":I
    const/4 v3, -0x1

    if-ne v10, v3, :cond_6d

    .line 1742
    goto :goto_7c

    .line 1744
    :cond_6d
    nop

    .line 1745
    cmp-long v3, v4, v17

    if-nez v3, :cond_79

    .line 1747
    array-length v3, v9

    const/4 v11, 0x1

    invoke-static {v9, v11, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v9

    goto :goto_7c

    .line 1749
    :cond_79
    long-to-int v3, v4

    aput v3, v9, v21

    .line 1753
    :goto_7c
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v9, v1}, Ljava/math/BigInteger;-><init>([II)V

    return-object v3
.end method

.method private static blacklist multiplyToLen([II[II[I)[I
    .registers 6
    .param p0, "x"    # [I
    .param p1, "xlen"    # I
    .param p2, "y"    # [I
    .param p3, "ylen"    # I
    .param p4, "z"    # [I

    .line 1803
    invoke-static {p0, p1}, Ljava/math/BigInteger;->multiplyToLenCheck([II)V

    .line 1804
    invoke-static {p2, p3}, Ljava/math/BigInteger;->multiplyToLenCheck([II)V

    .line 1805
    invoke-static {p0, p1, p2, p3, p4}, Ljava/math/BigInteger;->implMultiplyToLen([II[II[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static blacklist multiplyToLenCheck([II)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "length"    # I

    .line 1840
    if-gtz p1, :cond_3

    .line 1841
    return-void

    .line 1844
    :cond_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    array-length v0, p0

    if-gt p1, v0, :cond_a

    .line 1849
    return-void

    .line 1847
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v1, p1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method private blacklist oddModPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 34
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "z"    # Ljava/math/BigInteger;

    .line 3099
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3100
    return-object v0

    .line 3103
    :cond_d
    iget v2, v0, Ljava/math/BigInteger;->signum:I

    if-nez v2, :cond_14

    .line 3104
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v2

    .line 3106
    :cond_14
    iget-object v2, v0, Ljava/math/BigInteger;->mag:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 3107
    .local v2, "base":[I
    iget-object v3, v1, Ljava/math/BigInteger;->mag:[I

    .line 3108
    .local v3, "exp":[I
    move-object/from16 v4, p2

    iget-object v5, v4, Ljava/math/BigInteger;->mag:[I

    .line 3109
    .local v5, "mod":[I
    array-length v6, v5

    .line 3115
    .local v6, "modLen":I
    and-int/lit8 v7, v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_36

    .line 3116
    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [I

    .line 3117
    .local v7, "x":[I
    invoke-static {v5, v8, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3118
    move-object v5, v7

    .line 3119
    add-int/lit8 v6, v6, 0x1

    move-object v11, v5

    move v13, v6

    goto :goto_38

    .line 3115
    .end local v7    # "x":[I
    :cond_36
    move-object v11, v5

    move v13, v6

    .line 3123
    .end local v5    # "mod":[I
    .end local v6    # "modLen":I
    .local v11, "mod":[I
    .local v13, "modLen":I
    :goto_38
    const/4 v5, 0x0

    .line 3124
    .local v5, "wbits":I
    array-length v6, v3

    invoke-static {v3, v6}, Ljava/math/BigInteger;->bitLength([II)I

    move-result v6

    .line 3126
    .local v6, "ebits":I
    const/16 v7, 0x11

    if-ne v6, v7, :cond_49

    aget v7, v3, v8

    const v10, 0x10001

    if-eq v7, v10, :cond_52

    .line 3127
    :cond_49
    :goto_49
    sget-object v7, Ljava/math/BigInteger;->bnExpModThreshTable:[I

    aget v7, v7, v5

    if-le v6, v7, :cond_52

    .line 3128
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 3133
    :cond_52
    shl-int v7, v9, v5

    .line 3136
    .local v7, "tblmask":I
    new-array v10, v7, [[I

    .line 3137
    .local v10, "table":[[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_57
    if-ge v12, v7, :cond_60

    .line 3138
    new-array v14, v13, [I

    aput-object v14, v10, v12

    .line 3137
    add-int/lit8 v12, v12, 0x1

    goto :goto_57

    .line 3142
    .end local v12    # "i":I
    :cond_60
    add-int/lit8 v12, v13, -0x1

    aget v12, v11, v12

    int-to-long v14, v12

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-int/lit8 v12, v13, -0x2

    aget v12, v11, v12

    move/from16 v18, v9

    move-object/from16 v19, v10

    .end local v10    # "table":[[I
    .local v19, "table":[[I
    int-to-long v9, v12

    and-long v9, v9, v16

    const/16 v12, 0x20

    shl-long/2addr v9, v12

    add-long v20, v14, v9

    .line 3143
    .local v20, "n0":J
    invoke-static/range {v20 .. v21}, Ljava/math/MutableBigInteger;->inverseMod64(J)J

    move-result-wide v9

    neg-long v14, v9

    .line 3146
    .local v14, "inv":J
    array-length v9, v2

    shl-int/lit8 v10, v13, 0x5

    invoke-static {v2, v9, v10}, Ljava/math/BigInteger;->leftShift([III)[I

    move-result-object v9

    .line 3148
    .local v9, "a":[I
    new-instance v10, Ljava/math/MutableBigInteger;

    invoke-direct {v10}, Ljava/math/MutableBigInteger;-><init>()V

    .line 3149
    .local v10, "q":Ljava/math/MutableBigInteger;
    new-instance v12, Ljava/math/MutableBigInteger;

    invoke-direct {v12, v9}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 3150
    .local v12, "a2":Ljava/math/MutableBigInteger;
    move/from16 v17, v8

    new-instance v8, Ljava/math/MutableBigInteger;

    invoke-direct {v8, v11}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 3151
    .local v8, "b2":Ljava/math/MutableBigInteger;
    invoke-virtual {v8}, Ljava/math/MutableBigInteger;->normalize()V

    .line 3154
    invoke-virtual {v12, v8, v10}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v22

    .line 3155
    .local v22, "r":Ljava/math/MutableBigInteger;
    invoke-virtual/range {v22 .. v22}, Ljava/math/MutableBigInteger;->toIntArray()[I

    move-result-object v16

    aput-object v16, v19, v17

    .line 3158
    aget-object v0, v19, v17

    array-length v0, v0

    if-ge v0, v13, :cond_c3

    .line 3159
    aget-object v0, v19, v17

    array-length v0, v0

    sub-int v0, v13, v0

    .line 3160
    .local v0, "offset":I
    new-array v1, v13, [I

    .line 3161
    .local v1, "t2":[I
    move-object/from16 v23, v2

    .end local v2    # "base":[I
    .local v23, "base":[I
    aget-object v2, v19, v17

    aget-object v4, v19, v17

    array-length v4, v4

    move/from16 v24, v6

    move/from16 v6, v17

    .end local v6    # "ebits":I
    .local v24, "ebits":I
    invoke-static {v2, v6, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3162
    aput-object v1, v19, v6

    goto :goto_c9

    .line 3158
    .end local v0    # "offset":I
    .end local v1    # "t2":[I
    .end local v23    # "base":[I
    .end local v24    # "ebits":I
    .restart local v2    # "base":[I
    .restart local v6    # "ebits":I
    :cond_c3
    move-object/from16 v23, v2

    move/from16 v24, v6

    move/from16 v6, v17

    .line 3166
    .end local v2    # "base":[I
    .end local v6    # "ebits":I
    .restart local v23    # "base":[I
    .restart local v24    # "ebits":I
    :goto_c9
    move-object v0, v10

    .end local v10    # "q":Ljava/math/MutableBigInteger;
    .local v0, "q":Ljava/math/MutableBigInteger;
    aget-object v10, v19, v6

    move-object v1, v12

    move v12, v13

    move-wide v13, v14

    .end local v14    # "inv":J
    .local v1, "a2":Ljava/math/MutableBigInteger;
    .local v12, "modLen":I
    .local v13, "inv":J
    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Ljava/math/BigInteger;->montgomerySquare([I[IIJ[I)[I

    move-result-object v2

    .line 3169
    .local v2, "b":[I
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    .line 3172
    .local v10, "t":[I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_d9
    if-ge v4, v7, :cond_f1

    .line 3173
    add-int/lit8 v6, v4, -0x1

    aget-object v6, v19, v6

    const/16 v16, 0x0

    move-wide v14, v13

    move v13, v12

    move-object v12, v11

    move-object v11, v6

    .end local v11    # "mod":[I
    .local v12, "mod":[I
    .local v13, "modLen":I
    .restart local v14    # "inv":J
    invoke-static/range {v10 .. v16}, Ljava/math/BigInteger;->montgomeryMultiply([I[I[IIJ[I)[I

    move-result-object v6

    move-object v11, v12

    move v12, v13

    move-wide v13, v14

    .end local v14    # "inv":J
    .restart local v11    # "mod":[I
    .local v12, "modLen":I
    .local v13, "inv":J
    aput-object v6, v19, v4

    .line 3172
    add-int/lit8 v4, v4, 0x1

    goto :goto_d9

    .line 3177
    .end local v4    # "i":I
    :cond_f1
    add-int/lit8 v6, v24, -0x1

    and-int/lit8 v4, v6, 0x1f

    shl-int v4, v18, v4

    .line 3179
    .local v4, "bitpos":I
    const/4 v6, 0x0

    .line 3180
    .local v6, "buf":I
    array-length v15, v3

    .line 3181
    .local v15, "elen":I
    const/16 v16, 0x0

    .line 3182
    .local v16, "eIndex":I
    const/16 v25, 0x0

    move/from16 v30, v25

    move-object/from16 v25, v0

    move/from16 v0, v30

    .local v0, "i":I
    .local v25, "q":Ljava/math/MutableBigInteger;
    :goto_103
    if-gt v0, v5, :cond_121

    .line 3183
    shl-int/lit8 v26, v6, 0x1

    aget v27, v3, v16

    and-int v27, v27, v4

    if-eqz v27, :cond_110

    move/from16 v27, v18

    goto :goto_112

    :cond_110
    const/16 v27, 0x0

    :goto_112
    or-int v6, v26, v27

    .line 3184
    ushr-int/lit8 v4, v4, 0x1

    .line 3185
    if-nez v4, :cond_11e

    .line 3186
    add-int/lit8 v16, v16, 0x1

    .line 3187
    const/high16 v4, -0x80000000

    .line 3188
    add-int/lit8 v15, v15, -0x1

    .line 3182
    :cond_11e
    add-int/lit8 v0, v0, 0x1

    goto :goto_103

    .line 3192
    .end local v0    # "i":I
    :cond_121
    move/from16 v0, v24

    .line 3195
    .local v0, "multpos":I
    move/from16 v26, v0

    .end local v0    # "multpos":I
    .local v26, "multpos":I
    add-int/lit8 v0, v24, -0x1

    .line 3196
    .end local v24    # "ebits":I
    .local v0, "ebits":I
    const/16 v24, 0x1

    .line 3198
    .local v24, "isone":Z
    sub-int v26, v0, v5

    move/from16 v30, v26

    move-object/from16 v26, v1

    move/from16 v1, v30

    .line 3199
    .local v1, "multpos":I
    .local v26, "a2":Ljava/math/MutableBigInteger;
    :goto_131
    and-int/lit8 v27, v6, 0x1

    if-nez v27, :cond_13a

    .line 3200
    ushr-int/lit8 v6, v6, 0x1

    .line 3201
    add-int/lit8 v1, v1, 0x1

    goto :goto_131

    .line 3204
    :cond_13a
    ushr-int/lit8 v27, v6, 0x1

    aget-object v27, v19, v27

    .line 3206
    .local v27, "mult":[I
    const/4 v6, 0x0

    .line 3207
    if-ne v1, v0, :cond_14a

    .line 3208
    const/16 v24, 0x0

    move/from16 v30, v16

    move-object/from16 v16, v9

    move/from16 v9, v30

    goto :goto_150

    .line 3207
    :cond_14a
    move/from16 v30, v16

    move-object/from16 v16, v9

    move/from16 v9, v30

    .line 3212
    .local v9, "eIndex":I
    .local v16, "a":[I
    :goto_150
    add-int/lit8 v0, v0, -0x1

    .line 3214
    shl-int/lit8 v6, v6, 0x1

    .line 3216
    if-eqz v15, :cond_173

    .line 3217
    aget v28, v3, v9

    and-int v28, v28, v4

    if-eqz v28, :cond_15f

    move/from16 v28, v18

    goto :goto_161

    :cond_15f
    const/16 v28, 0x0

    :goto_161
    or-int v6, v6, v28

    .line 3218
    ushr-int/lit8 v4, v4, 0x1

    .line 3219
    if-nez v4, :cond_170

    .line 3220
    add-int/lit8 v9, v9, 0x1

    .line 3221
    const/high16 v4, -0x80000000

    .line 3222
    add-int/lit8 v15, v15, -0x1

    move/from16 v28, v15

    goto :goto_175

    .line 3219
    :cond_170
    move/from16 v28, v15

    goto :goto_175

    .line 3216
    :cond_173
    move/from16 v28, v15

    .line 3227
    .end local v15    # "elen":I
    .local v28, "elen":I
    :goto_175
    and-int v15, v6, v7

    if-eqz v15, :cond_189

    .line 3228
    sub-int v1, v0, v5

    .line 3229
    :goto_17b
    and-int/lit8 v15, v6, 0x1

    if-nez v15, :cond_184

    .line 3230
    ushr-int/lit8 v6, v6, 0x1

    .line 3231
    add-int/lit8 v1, v1, 0x1

    goto :goto_17b

    .line 3233
    :cond_184
    ushr-int/lit8 v15, v6, 0x1

    aget-object v27, v19, v15

    .line 3234
    const/4 v6, 0x0

    .line 3238
    :cond_189
    if-ne v0, v1, :cond_1af

    .line 3239
    if-eqz v24, :cond_19a

    .line 3240
    invoke-virtual/range {v27 .. v27}, [I->clone()Ljava/lang/Object;

    move-result-object v15

    move-object v2, v15

    check-cast v2, [I

    .line 3241
    const/4 v15, 0x0

    move/from16 v24, v15

    move-object/from16 v15, v16

    .end local v24    # "isone":Z
    .local v15, "isone":Z
    goto :goto_1b1

    .line 3243
    .end local v15    # "isone":Z
    .restart local v24    # "isone":Z
    :cond_19a
    move-object v10, v2

    .line 3244
    move-wide v14, v13

    move v13, v12

    move-object v12, v11

    move-object/from16 v11, v27

    .end local v27    # "mult":[I
    .local v11, "mult":[I
    .local v12, "mod":[I
    .local v13, "modLen":I
    .restart local v14    # "inv":J
    invoke-static/range {v10 .. v16}, Ljava/math/BigInteger;->montgomeryMultiply([I[I[IIJ[I)[I

    move-result-object v16

    .line 3245
    move-object v11, v12

    move v12, v13

    move-wide v13, v14

    .end local v14    # "inv":J
    .local v11, "mod":[I
    .local v12, "modLen":I
    .local v13, "inv":J
    .restart local v27    # "mult":[I
    move-object/from16 v10, v16

    move-object/from16 v16, v2

    move-object v2, v10

    move-object/from16 v15, v16

    goto :goto_1b1

    .line 3238
    :cond_1af
    move-object/from16 v15, v16

    .line 3250
    .end local v16    # "a":[I
    .local v15, "a":[I
    :goto_1b1
    if-nez v0, :cond_1d3

    .line 3251
    nop

    .line 3262
    move/from16 v16, v0

    .end local v0    # "ebits":I
    .local v16, "ebits":I
    mul-int/lit8 v0, v12, 0x2

    new-array v0, v0, [I

    .line 3263
    .local v0, "t2":[I
    move/from16 v29, v1

    const/4 v1, 0x0

    .end local v1    # "multpos":I
    .local v29, "multpos":I
    invoke-static {v2, v1, v0, v12, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3265
    long-to-int v1, v13

    invoke-static {v0, v11, v12, v1}, Ljava/math/BigInteger;->montReduce([I[III)[I

    move-result-object v1

    .line 3267
    .end local v2    # "b":[I
    .local v1, "b":[I
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 3269
    new-instance v2, Ljava/math/BigInteger;

    move-object/from16 v17, v1

    move/from16 v1, v18

    .end local v1    # "b":[I
    .local v17, "b":[I
    invoke-direct {v2, v1, v0}, Ljava/math/BigInteger;-><init>(I[I)V

    return-object v2

    .line 3254
    .end local v16    # "ebits":I
    .end local v17    # "b":[I
    .end local v29    # "multpos":I
    .local v0, "ebits":I
    .local v1, "multpos":I
    .restart local v2    # "b":[I
    :cond_1d3
    move/from16 v16, v0

    move/from16 v29, v1

    move/from16 v1, v18

    const/16 v17, 0x0

    .end local v0    # "ebits":I
    .end local v1    # "multpos":I
    .restart local v16    # "ebits":I
    .restart local v29    # "multpos":I
    if-nez v24, :cond_1f2

    .line 3255
    move-object v10, v2

    .line 3256
    invoke-static/range {v10 .. v15}, Ljava/math/BigInteger;->montgomerySquare([I[IIJ[I)[I

    move-result-object v0

    .line 3257
    .end local v15    # "a":[I
    .local v0, "a":[I
    move-object v10, v0

    move-object v0, v2

    move-object v2, v10

    move/from16 v15, v16

    move-object/from16 v16, v0

    move v0, v15

    move/from16 v18, v1

    move/from16 v15, v28

    move/from16 v1, v29

    goto/16 :goto_150

    .line 3254
    .end local v0    # "a":[I
    .restart local v15    # "a":[I
    :cond_1f2
    move/from16 v18, v1

    move/from16 v0, v16

    move/from16 v1, v29

    move-object/from16 v16, v15

    move/from16 v15, v28

    goto/16 :goto_150
.end method

.method private static blacklist padWithZeros(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "numZeros"    # I

    .line 4154
    nop

    :goto_1
    sget v0, Ljava/math/BigInteger;->NUM_ZEROS:I

    if-lt p1, v0, :cond_e

    .line 4155
    sget-object v0, Ljava/math/BigInteger;->ZEROS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4156
    sget v0, Ljava/math/BigInteger;->NUM_ZEROS:I

    sub-int/2addr p1, v0

    goto :goto_1

    .line 4158
    :cond_e
    if-lez p1, :cond_16

    .line 4159
    sget-object v0, Ljava/math/BigInteger;->ZEROS:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4161
    :cond_16
    return-void
.end method

.method private blacklist parseInt([CII)I
    .registers 10
    .param p1, "source"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 613
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "start":I
    .local v0, "start":I
    aget-char p2, p1, p2

    const/16 v1, 0xa

    invoke-static {p2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result p2

    .line 614
    .local p2, "result":I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2b

    .line 617
    move v3, v0

    .local v3, "index":I
    :goto_e
    if-ge v3, p3, :cond_2a

    .line 618
    aget-char v4, p1, v3

    invoke-static {v4, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 619
    .local v4, "nextVal":I
    if-eq v4, v2, :cond_1f

    .line 621
    mul-int/lit8 v5, p2, 0xa

    add-int p2, v5, v4

    .line 617
    .end local v4    # "nextVal":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 620
    .restart local v4    # "nextVal":I
    :cond_1f
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    .end local v3    # "index":I
    .end local v4    # "nextVal":I
    :cond_2a
    return p2

    .line 615
    :cond_2b
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist passesLucasLehmer()Z
    .registers 6

    .line 987
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 990
    .local v0, "thisPlusOne":Ljava/math/BigInteger;
    const/4 v1, 0x5

    .line 991
    .local v1, "d":I
    :goto_7
    invoke-static {v1, p0}, Ljava/math/BigInteger;->jacobiSymbol(ILjava/math/BigInteger;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 993
    if-gez v1, :cond_17

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1a

    :cond_17
    add-int/lit8 v2, v1, 0x2

    neg-int v2, v2

    :goto_1a
    move v1, v2

    goto :goto_7

    .line 997
    :cond_1c
    invoke-static {v1, v0, p0}, Ljava/math/BigInteger;->lucasLehmerSequence(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1000
    .local v2, "u":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private blacklist passesMillerRabin(ILjava/util/Random;)Z
    .registers 11
    .param p1, "iterations"    # I
    .param p2, "rnd"    # Ljava/util/Random;

    .line 1104
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1105
    .local v0, "thisMinusOne":Ljava/math/BigInteger;
    move-object v1, v0

    .line 1106
    .local v1, "m":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    .line 1107
    .local v2, "a":I
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 1110
    if-nez p2, :cond_15

    .line 1111
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p2

    .line 1113
    :cond_15
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, p1, :cond_5e

    .line 1117
    :cond_18
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    invoke-direct {v4, v5, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 1118
    .local v4, "b":Ljava/math/BigInteger;
    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_18

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_18

    .line 1120
    const/4 v5, 0x0

    .line 1121
    .local v5, "j":I
    invoke-virtual {v4, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 1122
    .local v6, "z":Ljava/math/BigInteger;
    :goto_34
    if-nez v5, :cond_3e

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    :cond_3e
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    .line 1123
    if-lez v5, :cond_4e

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_52

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_54

    .line 1124
    :cond_52
    const/4 v7, 0x0

    return v7

    .line 1125
    :cond_54
    sget-object v7, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v6, v7, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_34

    .line 1113
    .end local v4    # "b":Ljava/math/BigInteger;
    .end local v5    # "j":I
    .end local v6    # "z":Ljava/math/BigInteger;
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1128
    .end local v3    # "i":I
    :cond_5e
    const/4 v3, 0x1

    return v3
.end method

.method static blacklist primitiveLeftShift([III)V
    .registers 5
    .param p0, "a"    # [I
    .param p1, "len"    # I
    .param p2, "n"    # I

    .line 2762
    if-eqz p1, :cond_17

    if-nez p2, :cond_5

    goto :goto_17

    .line 2764
    :cond_5
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 2765
    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, p0, v1, p2, v0}, Ljava/math/BigInteger;->shiftLeftImplWorker([I[IIII)V

    .line 2766
    add-int/lit8 v0, p1, -0x1

    aget v1, p0, v0

    shl-int/2addr v1, p2

    aput v1, p0, v0

    .line 2767
    return-void

    .line 2763
    :cond_17
    :goto_17
    return-void
.end method

.method static blacklist primitiveRightShift([III)V
    .registers 6
    .param p0, "a"    # [I
    .param p1, "len"    # I
    .param p2, "n"    # I

    .line 2755
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 2756
    add-int/lit8 v0, p1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, p0, v2, p2, v0}, Ljava/math/BigInteger;->shiftRightImplWorker([I[IIII)V

    .line 2757
    aget v0, p0, v1

    ushr-int/2addr v0, p2

    aput v0, p0, v1

    .line 2758
    return-void
.end method

.method public static whitelist test-api probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "bitLength"    # I
    .param p1, "rnd"    # Ljava/util/Random;

    .line 779
    const/4 v0, 0x2

    if-lt p0, v0, :cond_13

    .line 782
    const/16 v0, 0x5f

    const/16 v1, 0x64

    if-ge p0, v0, :cond_e

    .line 783
    invoke-static {p0, v1, p1}, Ljava/math/BigInteger;->smallPrime(IILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_12

    .line 784
    :cond_e
    invoke-static {p0, v1, p1}, Ljava/math/BigInteger;->largePrime(IILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    .line 782
    :goto_12
    return-object v0

    .line 780
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "bitLength < 2"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist randomBits(ILjava/util/Random;)[B
    .registers 9
    .param p0, "numBits"    # I
    .param p1, "rnd"    # Ljava/util/Random;

    .line 712
    if-ltz p0, :cond_22

    .line 714
    int-to-long v0, p0

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 715
    .local v0, "numBytes":I
    new-array v1, v0, [B

    .line 718
    .local v1, "randomBits":[B
    if-lez v0, :cond_21

    .line 719
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 720
    mul-int/lit8 v2, v0, 0x8

    sub-int/2addr v2, p0

    .line 721
    .local v2, "excessBits":I
    const/4 v3, 0x0

    aget-byte v4, v1, v3

    rsub-int/lit8 v5, v2, 0x8

    const/4 v6, 0x1

    shl-int v5, v6, v5

    sub-int/2addr v5, v6

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 723
    .end local v2    # "excessBits":I
    :cond_21
    return-object v1

    .line 713
    .end local v0    # "numBytes":I
    .end local v1    # "randomBits":[B
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numBits must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4868
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 4874
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const/4 v1, -0x2

    const-string v2, "signum"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 4875
    .local v1, "sign":I
    const/4 v3, -0x1

    if-lt v1, v3, :cond_5c

    const/4 v3, 0x1

    if-le v1, v3, :cond_12

    goto :goto_5c

    .line 4883
    :cond_12
    const/4 v2, 0x0

    const-string v4, "magnitude"

    invoke-virtual {v0, v4, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 4884
    .local v2, "magnitude":[B
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, [B

    .line 4885
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v5}, Ljava/math/BigInteger;->stripLeadingZeroBytes([BII)[I

    move-result-object v5

    .line 4886
    .local v5, "mag":[I
    array-length v7, v5

    if-nez v7, :cond_2d

    move v7, v3

    goto :goto_2e

    :cond_2d
    move v7, v6

    :goto_2e
    if-nez v1, :cond_31

    goto :goto_32

    :cond_31
    move v3, v6

    :goto_32
    if-eq v7, v3, :cond_44

    .line 4887
    const-string v3, "BigInteger: signum-magnitude mismatch"

    .line 4888
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 4889
    const-string v3, "BigInteger: Magnitude not present in stream"

    .line 4890
    :cond_3e
    new-instance v4, Ljava/io/StreamCorruptedException;

    invoke-direct {v4, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4895
    .end local v3    # "message":Ljava/lang/String;
    :cond_44
    array-length v3, v5

    const/high16 v4, 0x4000000

    if-gt v3, v4, :cond_54

    array-length v3, v5

    if-ne v3, v4, :cond_50

    aget v3, v5, v6

    if-ltz v3, :cond_54

    .line 4901
    :cond_50
    invoke-static {p0, v1, v5}, Ljava/math/BigInteger$UnsafeHolder;->putSignAndMag(Ljava/math/BigInteger;I[I)V

    .line 4902
    return-void

    .line 4897
    :cond_54
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "BigInteger: Out of the supported range"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4876
    .end local v2    # "magnitude":[B
    .end local v5    # "mag":[I
    :cond_5c
    :goto_5c
    const-string v3, "BigInteger: Invalid signum value"

    .line 4877
    .restart local v3    # "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 4878
    const-string v3, "BigInteger: Signum not present in stream"

    .line 4879
    :cond_66
    new-instance v2, Ljava/io/StreamCorruptedException;

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private whitelist readObjectNoData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 4910
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialized BigInteger objects need data"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist remainderKnuth(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2477
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2478
    .local v0, "q":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v1, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2479
    .local v1, "a":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p1, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2481
    .local v2, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v1, v2, v0}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v3

    iget v4, p0, Ljava/math/BigInteger;->signum:I

    invoke-virtual {v3, v4}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist reportOverflow()V
    .registers 2

    .line 1170
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger would overflow supported range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist reverse([I)[I
    .registers 5
    .param p0, "arg"    # [I

    .line 2833
    array-length v0, p0

    .line 2834
    .local v0, "len":I
    new-array v1, v0, [I

    .line 2835
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_11

    .line 2836
    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, v1, v2

    .line 2835
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2838
    .end local v2    # "i":I
    :cond_11
    return-object v1
.end method

.method private static blacklist shiftLeft([II)[I
    .registers 13
    .param p0, "mag"    # [I
    .param p1, "n"    # I

    .line 3511
    ushr-int/lit8 v0, p1, 0x5

    .line 3512
    .local v0, "nInts":I
    and-int/lit8 v1, p1, 0x1f

    .line 3513
    .local v1, "nBits":I
    array-length v2, p0

    .line 3514
    .local v2, "magLen":I
    const/4 v3, 0x0

    .line 3516
    .local v3, "newMag":[I
    const/4 v4, 0x0

    if-nez v1, :cond_11

    .line 3517
    add-int v5, v2, v0

    new-array v3, v5, [I

    .line 3518
    invoke-static {p0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_43

    .line 3520
    :cond_11
    const/4 v5, 0x0

    .line 3521
    .local v5, "i":I
    rsub-int/lit8 v6, v1, 0x20

    .line 3522
    .local v6, "nBits2":I
    aget v7, p0, v4

    ushr-int/2addr v7, v6

    .line 3523
    .local v7, "highBits":I
    if-eqz v7, :cond_25

    .line 3524
    add-int v8, v2, v0

    add-int/lit8 v8, v8, 0x1

    new-array v3, v8, [I

    .line 3525
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    aput v7, v3, v5

    move v5, v8

    goto :goto_29

    .line 3527
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_25
    add-int v8, v2, v0

    new-array v3, v8, [I

    .line 3529
    :goto_29
    add-int/lit8 v8, v2, -0x1

    .line 3530
    .local v8, "numIter":I
    add-int/lit8 v9, v8, 0x1

    array-length v10, p0

    invoke-static {v4, v9, v10}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 3531
    add-int v4, v8, v5

    add-int/lit8 v4, v4, 0x1

    array-length v9, v3

    invoke-static {v5, v4, v9}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 3532
    invoke-static {v3, p0, v5, v1, v8}, Ljava/math/BigInteger;->shiftLeftImplWorker([I[IIII)V

    .line 3533
    add-int v4, v8, v5

    aget v9, p0, v8

    shl-int/2addr v9, v1

    aput v9, v3, v4

    .line 3535
    .end local v5    # "i":I
    .end local v6    # "nBits2":I
    .end local v7    # "highBits":I
    .end local v8    # "numIter":I
    :goto_43
    return-object v3
.end method

.method private static blacklist shiftLeftImplWorker([I[IIII)V
    .registers 10
    .param p0, "newArr"    # [I
    .param p1, "oldArr"    # [I
    .param p2, "newIdx"    # I
    .param p3, "shiftCount"    # I
    .param p4, "numIter"    # I

    .line 3539
    rsub-int/lit8 v0, p3, 0x20

    .line 3540
    .local v0, "shiftCountRight":I
    const/4 v1, 0x0

    .line 3541
    .local v1, "oldIdx":I
    :goto_3
    if-ge v1, p4, :cond_15

    .line 3542
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "newIdx":I
    .local v2, "newIdx":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "oldIdx":I
    .local v3, "oldIdx":I
    aget v1, p1, v1

    shl-int/2addr v1, p3

    aget v4, p1, v3

    ushr-int/2addr v4, v0

    or-int/2addr v1, v4

    aput v1, p0, p2

    move p2, v2

    move v1, v3

    goto :goto_3

    .line 3544
    .end local v2    # "newIdx":I
    .end local v3    # "oldIdx":I
    .restart local v1    # "oldIdx":I
    .restart local p2    # "newIdx":I
    :cond_15
    return-void
.end method

.method private blacklist shiftRightImpl(I)Ljava/math/BigInteger;
    .registers 13
    .param p1, "n"    # I

    .line 3579
    ushr-int/lit8 v0, p1, 0x5

    .line 3580
    .local v0, "nInts":I
    and-int/lit8 v1, p1, 0x1f

    .line 3581
    .local v1, "nBits":I
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v2

    .line 3582
    .local v2, "magLen":I
    const/4 v3, 0x0

    .line 3585
    .local v3, "newMag":[I
    const/4 v4, 0x1

    if-lt v0, v2, :cond_17

    .line 3586
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v5, :cond_12

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_16

    :cond_12
    sget-object v5, Ljava/math/BigInteger;->negConst:[Ljava/math/BigInteger;

    aget-object v4, v5, v4

    :goto_16
    return-object v4

    .line 3588
    :cond_17
    const/4 v5, 0x0

    if-nez v1, :cond_23

    .line 3589
    sub-int v6, v2, v0

    .line 3590
    .local v6, "newMagLen":I
    iget-object v7, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 3591
    .end local v6    # "newMagLen":I
    goto :goto_50

    .line 3592
    :cond_23
    const/4 v6, 0x0

    .line 3593
    .local v6, "i":I
    iget-object v7, p0, Ljava/math/BigInteger;->mag:[I

    aget v7, v7, v5

    ushr-int/2addr v7, v1

    .line 3594
    .local v7, "highBits":I
    if-eqz v7, :cond_35

    .line 3595
    sub-int v8, v2, v0

    new-array v3, v8, [I

    .line 3596
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aput v7, v3, v6

    move v6, v8

    goto :goto_3a

    .line 3598
    .end local v8    # "i":I
    .restart local v6    # "i":I
    :cond_35
    sub-int v8, v2, v0

    sub-int/2addr v8, v4

    new-array v3, v8, [I

    .line 3600
    :goto_3a
    sub-int v8, v2, v0

    sub-int/2addr v8, v4

    .line 3601
    .local v8, "numIter":I
    add-int/lit8 v9, v8, 0x1

    iget-object v10, p0, Ljava/math/BigInteger;->mag:[I

    array-length v10, v10

    invoke-static {v5, v9, v10}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 3602
    add-int v9, v8, v6

    array-length v10, v3

    invoke-static {v6, v9, v10}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 3603
    iget-object v9, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {v3, v9, v6, v1, v8}, Ljava/math/BigInteger;->shiftRightImplWorker([I[IIII)V

    .line 3606
    .end local v6    # "i":I
    .end local v7    # "highBits":I
    .end local v8    # "numIter":I
    :goto_50
    iget v6, p0, Ljava/math/BigInteger;->signum:I

    if-gez v6, :cond_83

    .line 3608
    const/4 v6, 0x0

    .line 3609
    .local v6, "onesLost":Z
    add-int/lit8 v7, v2, -0x1

    .local v7, "i":I
    sub-int v8, v2, v0

    .local v8, "j":I
    :goto_59
    if-lt v7, v8, :cond_6a

    if-nez v6, :cond_6a

    .line 3610
    iget-object v9, p0, Ljava/math/BigInteger;->mag:[I

    aget v9, v9, v7

    if-eqz v9, :cond_65

    move v9, v4

    goto :goto_66

    :cond_65
    move v9, v5

    :goto_66
    move v6, v9

    .line 3609
    add-int/lit8 v7, v7, -0x1

    goto :goto_59

    .line 3611
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_6a
    if-nez v6, :cond_7d

    if-eqz v1, :cond_7d

    .line 3612
    iget-object v7, p0, Ljava/math/BigInteger;->mag:[I

    sub-int v8, v2, v0

    sub-int/2addr v8, v4

    aget v7, v7, v8

    rsub-int/lit8 v8, v1, 0x20

    shl-int/2addr v7, v8

    if-eqz v7, :cond_7b

    goto :goto_7c

    :cond_7b
    move v4, v5

    :goto_7c
    move v6, v4

    .line 3614
    :cond_7d
    if-eqz v6, :cond_83

    .line 3615
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->javaIncrement([I)[I

    move-result-object v3

    .line 3618
    .end local v6    # "onesLost":Z
    :cond_83
    new-instance v4, Ljava/math/BigInteger;

    iget v5, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v4, v3, v5}, Ljava/math/BigInteger;-><init>([II)V

    return-object v4
.end method

.method private static blacklist shiftRightImplWorker([I[IIII)V
    .registers 11
    .param p0, "newArr"    # [I
    .param p1, "oldArr"    # [I
    .param p2, "newIdx"    # I
    .param p3, "shiftCount"    # I
    .param p4, "numIter"    # I

    .line 3622
    rsub-int/lit8 v0, p3, 0x20

    .line 3623
    .local v0, "shiftCountLeft":I
    move v1, p4

    .line 3624
    .local v1, "idx":I
    if-nez p2, :cond_8

    add-int/lit8 v2, p4, -0x1

    goto :goto_9

    :cond_8
    move v2, p4

    .line 3625
    .local v2, "nidx":I
    :goto_9
    if-lt v2, p2, :cond_1b

    .line 3626
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "nidx":I
    .local v3, "nidx":I
    add-int/lit8 v4, v1, -0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    aget v1, p1, v1

    ushr-int/2addr v1, p3

    aget v5, p1, v4

    shl-int/2addr v5, v0

    or-int/2addr v1, v5

    aput v1, p0, v2

    move v2, v3

    move v1, v4

    goto :goto_9

    .line 3628
    .end local v3    # "nidx":I
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    .restart local v2    # "nidx":I
    :cond_1b
    return-void
.end method

.method private blacklist signBit()I
    .registers 2

    .line 4770
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist signInt()I
    .registers 2

    .line 4775
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-gez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist smallPrime(IILjava/util/Random;)Ljava/math/BigInteger;
    .registers 15
    .param p0, "bitLength"    # I
    .param p1, "certainty"    # I
    .param p2, "rnd"    # Ljava/util/Random;

    .line 795
    add-int/lit8 v0, p0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    .line 796
    .local v0, "magLen":I
    new-array v1, v0, [I

    .line 797
    .local v1, "temp":[I
    add-int/lit8 v2, p0, 0x1f

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 798
    .local v2, "highBit":I
    shl-int/lit8 v4, v2, 0x1

    sub-int/2addr v4, v3

    .line 802
    .local v4, "highMask":I
    :cond_10
    :goto_10
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    if-ge v5, v0, :cond_1c

    .line 803
    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v6

    aput v6, v1, v5

    .line 802
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 804
    .end local v5    # "i":I
    :cond_1c
    const/4 v5, 0x0

    aget v6, v1, v5

    and-int/2addr v6, v4

    or-int/2addr v6, v2

    aput v6, v1, v5

    .line 805
    const/4 v5, 0x2

    if-le p0, v5, :cond_2d

    .line 806
    add-int/lit8 v5, v0, -0x1

    aget v6, v1, v5

    or-int/2addr v6, v3

    aput v6, v1, v5

    .line 808
    :cond_2d
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1, v3}, Ljava/math/BigInteger;-><init>([II)V

    .line 811
    .local v5, "p":Ljava/math/BigInteger;
    const/4 v6, 0x6

    if-le p0, v6, :cond_a3

    .line 812
    sget-object v6, Ljava/math/BigInteger;->SMALL_PRIME_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 813
    .local v6, "r":J
    const-wide/16 v8, 0x3

    rem-long v8, v6, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x5

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x7

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0xb

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0xd

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x11

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x13

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x17

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x1d

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x1f

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x25

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x29

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-nez v8, :cond_a3

    .line 816
    goto/16 :goto_10

    .line 820
    .end local v6    # "r":J
    :cond_a3
    const/4 v6, 0x4

    if-ge p0, v6, :cond_a7

    .line 821
    return-object v5

    .line 824
    :cond_a7
    invoke-virtual {v5, p1, p2}, Ljava/math/BigInteger;->primeToCertainty(ILjava/util/Random;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 825
    return-object v5

    .line 826
    .end local v5    # "p":Ljava/math/BigInteger;
    :cond_ae
    goto/16 :goto_10
.end method

.method private blacklist smallToString(ILjava/lang/StringBuilder;I)V
    .registers 21
    .param p1, "radix"    # I
    .param p2, "buf"    # Ljava/lang/StringBuilder;
    .param p3, "digits"    # I

    .line 4173
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 4175
    iget v3, v0, Ljava/math/BigInteger;->signum:I

    if-nez v3, :cond_e

    .line 4176
    invoke-static/range {p2 .. p3}, Ljava/math/BigInteger;->padWithZeros(Ljava/lang/StringBuilder;I)V

    .line 4177
    return-void

    .line 4181
    :cond_e
    iget-object v3, v0, Ljava/math/BigInteger;->mag:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0x7

    .line 4182
    .local v3, "maxNumDigitGroups":I
    new-array v4, v3, [J

    .line 4185
    .local v4, "digitGroups":[J
    move-object/from16 v5, p0

    .line 4186
    .local v5, "tmp":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 4187
    .local v6, "numGroups":I
    :goto_1c
    iget v7, v5, Ljava/math/BigInteger;->signum:I

    if-eqz v7, :cond_58

    .line 4188
    sget-object v7, Ljava/math/BigInteger;->longRadix:[Ljava/math/BigInteger;

    aget-object v7, v7, v1

    .line 4190
    .local v7, "d":Ljava/math/BigInteger;
    new-instance v8, Ljava/math/MutableBigInteger;

    invoke-direct {v8}, Ljava/math/MutableBigInteger;-><init>()V

    .line 4191
    .local v8, "q":Ljava/math/MutableBigInteger;
    new-instance v9, Ljava/math/MutableBigInteger;

    iget-object v10, v5, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v9, v10}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4192
    .local v9, "a":Ljava/math/MutableBigInteger;
    new-instance v10, Ljava/math/MutableBigInteger;

    iget-object v11, v7, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v10, v11}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4193
    .local v10, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v9, v10, v8}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v11

    .line 4194
    .local v11, "r":Ljava/math/MutableBigInteger;
    iget v12, v5, Ljava/math/BigInteger;->signum:I

    iget v13, v7, Ljava/math/BigInteger;->signum:I

    mul-int/2addr v12, v13

    invoke-virtual {v8, v12}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 4195
    .local v12, "q2":Ljava/math/BigInteger;
    iget v13, v5, Ljava/math/BigInteger;->signum:I

    iget v14, v7, Ljava/math/BigInteger;->signum:I

    mul-int/2addr v13, v14

    invoke-virtual {v11, v13}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v13

    .line 4197
    .local v13, "r2":Ljava/math/BigInteger;
    add-int/lit8 v14, v6, 0x1

    .end local v6    # "numGroups":I
    .local v14, "numGroups":I
    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    aput-wide v15, v4, v6

    .line 4198
    move-object v5, v12

    .line 4199
    .end local v7    # "d":Ljava/math/BigInteger;
    .end local v8    # "q":Ljava/math/MutableBigInteger;
    .end local v9    # "a":Ljava/math/MutableBigInteger;
    .end local v10    # "b":Ljava/math/MutableBigInteger;
    .end local v11    # "r":Ljava/math/MutableBigInteger;
    .end local v12    # "q2":Ljava/math/BigInteger;
    .end local v13    # "r2":Ljava/math/BigInteger;
    move v6, v14

    goto :goto_1c

    .line 4202
    .end local v14    # "numGroups":I
    .restart local v6    # "numGroups":I
    :cond_58
    add-int/lit8 v7, v6, -0x1

    aget-wide v7, v4, v7

    invoke-static {v7, v8, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v7

    .line 4205
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v6, -0x1

    sget-object v10, Ljava/math/BigInteger;->digitsPerLong:[I

    aget v10, v10, v1

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    sub-int v8, p3, v8

    invoke-static {v2, v8}, Ljava/math/BigInteger;->padWithZeros(Ljava/lang/StringBuilder;I)V

    .line 4209
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4212
    add-int/lit8 v8, v6, -0x2

    .local v8, "i":I
    :goto_76
    if-ltz v8, :cond_95

    .line 4214
    aget-wide v9, v4, v8

    invoke-static {v9, v10, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v7

    .line 4215
    sget-object v9, Ljava/math/BigInteger;->digitsPerLong:[I

    aget v9, v9, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    .line 4216
    .local v9, "numLeadingZeros":I
    if-eqz v9, :cond_8f

    .line 4217
    sget-object v10, Ljava/math/BigInteger;->ZEROS:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4219
    :cond_8f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4212
    .end local v9    # "numLeadingZeros":I
    add-int/lit8 v8, v8, -0x1

    goto :goto_76

    .line 4221
    .end local v8    # "i":I
    :cond_95
    return-void
.end method

.method private blacklist square()Ljava/math/BigInteger;
    .registers 2

    .line 2129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private blacklist square(Z)Ljava/math/BigInteger;
    .registers 7
    .param p1, "isRecursion"    # Z

    .line 2140
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_7

    .line 2141
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 2143
    :cond_7
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    .line 2145
    .local v0, "len":I
    const/16 v1, 0x80

    if-ge v0, v1, :cond_20

    .line 2146
    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljava/math/BigInteger;->squareToLen([II[I)[I

    move-result-object v1

    .line 2147
    .local v1, "z":[I
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {v1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2

    .line 2149
    .end local v1    # "z":[I
    :cond_20
    const/16 v1, 0xd8

    if-ge v0, v1, :cond_29

    .line 2150
    invoke-direct {p0}, Ljava/math/BigInteger;->squareKaratsuba()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 2155
    :cond_29
    if-nez p1, :cond_3f

    .line 2156
    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->bitLength([II)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x40000000

    cmp-long v1, v1, v3

    if-lez v1, :cond_3f

    .line 2157
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 2161
    :cond_3f
    invoke-direct {p0}, Ljava/math/BigInteger;->squareToomCook3()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method private blacklist squareKaratsuba()Ljava/math/BigInteger;
    .registers 9

    .line 2276
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 2278
    .local v0, "half":I
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->getLower(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 2279
    .local v1, "xl":Ljava/math/BigInteger;
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->getUpper(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 2281
    .local v2, "xh":Ljava/math/BigInteger;
    invoke-direct {v2}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v3

    .line 2282
    .local v3, "xhs":Ljava/math/BigInteger;
    invoke-direct {v1}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v4

    .line 2285
    .local v4, "xls":Ljava/math/BigInteger;
    mul-int/lit8 v5, v0, 0x20

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v6}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    mul-int/lit8 v6, v0, 0x20

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    return-object v5
.end method

.method private static final blacklist squareToLen([II[I)[I
    .registers 5
    .param p0, "x"    # [I
    .param p1, "len"    # I
    .param p2, "z"    # [I

    .line 2171
    shl-int/lit8 v0, p1, 0x1

    .line 2172
    .local v0, "zlen":I
    if-eqz p2, :cond_7

    array-length v1, p2

    if-ge v1, v0, :cond_9

    .line 2173
    :cond_7
    new-array p2, v0, [I

    .line 2176
    :cond_9
    invoke-static {p0, p1, p2, v0}, Ljava/math/BigInteger;->implSquareToLenChecks([II[II)V

    .line 2177
    invoke-static {p0, p1, p2, v0}, Ljava/math/BigInteger;->implSquareToLen([II[II)[I

    move-result-object v1

    return-object v1
.end method

.method private blacklist squareToomCook3()Ljava/math/BigInteger;
    .registers 18

    .line 2296
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    .line 2299
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 2302
    .local v2, "k":I
    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    .line 2307
    .local v3, "r":I
    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v4

    .line 2308
    .local v4, "a2":Ljava/math/BigInteger;
    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v5, v1}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v6

    .line 2309
    .local v6, "a1":Ljava/math/BigInteger;
    const/4 v7, 0x2

    invoke-direct {v0, v2, v3, v7, v1}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v7

    .line 2312
    .local v7, "a0":Ljava/math/BigInteger;
    invoke-direct {v7, v5}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v8

    .line 2313
    .local v8, "v0":Ljava/math/BigInteger;
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2314
    .local v9, "da1":Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v10, v5}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v10

    .line 2315
    .local v10, "vm1":Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2316
    invoke-direct {v9, v5}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v11

    .line 2317
    .local v11, "v1":Ljava/math/BigInteger;
    invoke-direct {v4, v5}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v12

    .line 2318
    .local v12, "vinf":Ljava/math/BigInteger;
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v13, v5}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v13

    .line 2326
    .local v13, "v2":Ljava/math/BigInteger;
    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-direct {v14}, Ljava/math/BigInteger;->exactDivideBy3()Ljava/math/BigInteger;

    move-result-object v14

    .line 2327
    .local v14, "t2":Ljava/math/BigInteger;
    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v15

    .line 2328
    .local v15, "tm1":Ljava/math/BigInteger;
    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 2329
    .local v5, "t1":Ljava/math/BigInteger;
    invoke-virtual {v14, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move/from16 v16, v1

    const/4 v1, 0x1

    .end local v1    # "len":I
    .local v16, "len":I
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 2330
    .end local v14    # "t2":Ljava/math/BigInteger;
    .local v0, "t2":Ljava/math/BigInteger;
    invoke-virtual {v5, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 2331
    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 2332
    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 2335
    .end local v15    # "tm1":Ljava/math/BigInteger;
    .local v1, "tm1":Ljava/math/BigInteger;
    mul-int/lit8 v14, v2, 0x20

    .line 2337
    .local v14, "ss":I
    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    return-object v15
.end method

.method private static blacklist stripLeadingZeroBytes([BII)[I
    .registers 15
    .param p0, "a"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 4604
    add-int v0, p1, p2

    .line 4608
    .local v0, "indexBound":I
    move v1, p1

    .local v1, "keep":I
    :goto_3
    if-ge v1, v0, :cond_c

    aget-byte v2, p0, v1

    if-nez v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4612
    :cond_c
    sub-int v2, v0, v1

    const/4 v3, 0x3

    add-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x2

    .line 4613
    .local v2, "intLength":I
    new-array v4, v2, [I

    .line 4614
    .local v4, "result":[I
    add-int/lit8 v5, v0, -0x1

    .line 4615
    .local v5, "b":I
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_18
    if-ltz v6, :cond_44

    .line 4616
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "b":I
    .local v7, "b":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v6

    .line 4617
    sub-int v5, v7, v1

    add-int/lit8 v5, v5, 0x1

    .line 4618
    .local v5, "bytesRemaining":I
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 4619
    .local v8, "bytesToTransfer":I
    const/16 v9, 0x8

    .local v9, "j":I
    :goto_2c
    shl-int/lit8 v10, v8, 0x3

    if-gt v9, v10, :cond_40

    .line 4620
    aget v10, v4, v6

    add-int/lit8 v11, v7, -0x1

    .end local v7    # "b":I
    .local v11, "b":I
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v9

    or-int/2addr v7, v10

    aput v7, v4, v6

    .line 4619
    add-int/lit8 v9, v9, 0x8

    move v7, v11

    goto :goto_2c

    .line 4615
    .end local v5    # "bytesRemaining":I
    .end local v8    # "bytesToTransfer":I
    .end local v9    # "j":I
    .end local v11    # "b":I
    .restart local v7    # "b":I
    :cond_40
    add-int/lit8 v6, v6, -0x1

    move v5, v7

    goto :goto_18

    .line 4622
    .end local v6    # "i":I
    .end local v7    # "b":I
    .local v5, "b":I
    :cond_44
    return-object v4
.end method

.method private static blacklist stripLeadingZeroInts([I)[I
    .registers 4
    .param p0, "val"    # [I

    .line 4577
    array-length v0, p0

    .line 4581
    .local v0, "vlen":I
    const/4 v1, 0x0

    .local v1, "keep":I
    :goto_2
    if-ge v1, v0, :cond_b

    aget v2, p0, v1

    if-nez v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4583
    :cond_b
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    return-object v2
.end method

.method private static blacklist subN([I[II)I
    .registers 12
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "len"    # I

    .line 3318
    const-wide/16 v0, 0x0

    .line 3320
    .local v0, "sum":J
    :goto_2
    add-int/lit8 p2, p2, -0x1

    const/16 v2, 0x20

    if-ltz p2, :cond_1e

    .line 3321
    aget v3, p0, p2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, p2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    shr-long v5, v0, v2

    add-long v0, v3, v5

    .line 3323
    long-to-int v2, v0

    aput v2, p0, p2

    goto :goto_2

    .line 3326
    :cond_1e
    shr-long v2, v0, v2

    long-to-int v2, v2

    return v2
.end method

.method private static blacklist subtract(J[I)[I
    .registers 16
    .param p0, "val"    # J
    .param p2, "little"    # [I

    .line 1455
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    .line 1456
    .local v1, "highWord":I
    const-wide v2, 0xffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1a

    .line 1457
    new-array v0, v4, [I

    .line 1458
    .local v0, "result":[I
    aget v4, p2, v5

    int-to-long v6, v4

    and-long/2addr v2, v6

    sub-long v2, p0, v2

    long-to-int v2, v2

    aput v2, v0, v5

    .line 1459
    return-object v0

    .line 1461
    .end local v0    # "result":[I
    :cond_1a
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 1462
    .local v6, "result":[I
    array-length v7, p2

    if-ne v7, v4, :cond_3f

    .line 1463
    long-to-int v7, p0

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p2, v5

    int-to-long v9, v9

    and-long/2addr v2, v9

    sub-long/2addr v7, v2

    .line 1464
    .local v7, "difference":J
    long-to-int v2, v7

    aput v2, v6, v4

    .line 1466
    shr-long v2, v7, v0

    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-eqz v0, :cond_34

    goto :goto_35

    :cond_34
    move v4, v5

    .line 1467
    .local v4, "borrow":Z
    :goto_35
    if-eqz v4, :cond_3c

    .line 1468
    add-int/lit8 v0, v1, -0x1

    aput v0, v6, v5

    goto :goto_3e

    .line 1470
    :cond_3c
    aput v1, v6, v5

    .line 1472
    :goto_3e
    return-object v6

    .line 1474
    .end local v4    # "borrow":Z
    .end local v7    # "difference":J
    :cond_3f
    long-to-int v7, p0

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p2, v4

    int-to-long v9, v9

    and-long/2addr v9, v2

    sub-long/2addr v7, v9

    .line 1475
    .restart local v7    # "difference":J
    long-to-int v9, v7

    aput v9, v6, v4

    .line 1476
    int-to-long v9, v1

    and-long/2addr v9, v2

    aget v4, p2, v5

    int-to-long v11, v4

    and-long/2addr v2, v11

    sub-long/2addr v9, v2

    shr-long v2, v7, v0

    add-long/2addr v9, v2

    .line 1477
    .end local v7    # "difference":J
    .local v9, "difference":J
    long-to-int v0, v9

    aput v0, v6, v5

    .line 1478
    return-object v6
.end method

.method private static blacklist subtract([IJ)[I
    .registers 16
    .param p0, "big"    # [I
    .param p1, "val"    # J

    .line 1491
    const/16 v0, 0x20

    ushr-long v1, p1, v0

    long-to-int v1, v1

    .line 1492
    .local v1, "highWord":I
    array-length v2, p0

    .line 1493
    .local v2, "bigIndex":I
    new-array v3, v2, [I

    .line 1494
    .local v3, "result":[I
    const-wide/16 v4, 0x0

    .line 1496
    .local v4, "difference":J
    const-wide v6, 0xffffffffL

    const/4 v8, -0x1

    if-nez v1, :cond_1c

    .line 1497
    add-int/2addr v2, v8

    aget v9, p0, v2

    int-to-long v9, v9

    and-long/2addr v6, v9

    sub-long/2addr v6, p1

    .line 1498
    .end local v4    # "difference":J
    .local v6, "difference":J
    long-to-int v4, v6

    aput v4, v3, v2

    goto :goto_35

    .line 1500
    .end local v6    # "difference":J
    .restart local v4    # "difference":J
    :cond_1c
    add-int/2addr v2, v8

    aget v9, p0, v2

    int-to-long v9, v9

    and-long/2addr v9, v6

    and-long v11, p1, v6

    sub-long/2addr v9, v11

    .line 1501
    .end local v4    # "difference":J
    .local v9, "difference":J
    long-to-int v4, v9

    aput v4, v3, v2

    .line 1502
    add-int/2addr v2, v8

    aget v4, p0, v2

    int-to-long v4, v4

    and-long/2addr v4, v6

    int-to-long v11, v1

    and-long/2addr v6, v11

    sub-long/2addr v4, v6

    shr-long v6, v9, v0

    add-long/2addr v6, v4

    .line 1503
    .end local v9    # "difference":J
    .restart local v6    # "difference":J
    long-to-int v4, v6

    aput v4, v3, v2

    .line 1507
    :goto_35
    shr-long v4, v6, v0

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_41

    move v0, v5

    goto :goto_42

    :cond_41
    move v0, v4

    .line 1508
    .local v0, "borrow":Z
    :goto_42
    if-lez v2, :cond_54

    if-eqz v0, :cond_54

    .line 1509
    add-int/lit8 v2, v2, -0x1

    aget v9, p0, v2

    sub-int/2addr v9, v5

    aput v9, v3, v2

    if-ne v9, v8, :cond_51

    move v9, v5

    goto :goto_52

    :cond_51
    move v9, v4

    :goto_52
    move v0, v9

    goto :goto_42

    .line 1512
    :cond_54
    :goto_54
    if-lez v2, :cond_5d

    .line 1513
    add-int/lit8 v2, v2, -0x1

    aget v4, p0, v2

    aput v4, v3, v2

    goto :goto_54

    .line 1515
    :cond_5d
    return-object v3
.end method

.method private static blacklist subtract([I[I)[I
    .registers 14
    .param p0, "big"    # [I
    .param p1, "little"    # [I

    .line 1548
    array-length v0, p0

    .line 1549
    .local v0, "bigIndex":I
    new-array v1, v0, [I

    .line 1550
    .local v1, "result":[I
    array-length v2, p1

    .line 1551
    .local v2, "littleIndex":I
    const-wide/16 v3, 0x0

    .line 1554
    .local v3, "difference":J
    :goto_6
    const/16 v5, 0x20

    if-lez v2, :cond_24

    .line 1555
    add-int/lit8 v0, v0, -0x1

    aget v6, p0, v0

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-int/lit8 v2, v2, -0x1

    aget v10, p1, v2

    int-to-long v10, v10

    and-long/2addr v8, v10

    sub-long/2addr v6, v8

    shr-long v8, v3, v5

    add-long v3, v6, v8

    .line 1558
    long-to-int v5, v3

    aput v5, v1, v0

    goto :goto_6

    .line 1562
    :cond_24
    shr-long v5, v3, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_30

    move v5, v7

    goto :goto_31

    :cond_30
    move v5, v6

    .line 1563
    .local v5, "borrow":Z
    :goto_31
    if-lez v0, :cond_44

    if-eqz v5, :cond_44

    .line 1564
    add-int/lit8 v0, v0, -0x1

    aget v8, p0, v0

    sub-int/2addr v8, v7

    aput v8, v1, v0

    const/4 v9, -0x1

    if-ne v8, v9, :cond_41

    move v8, v7

    goto :goto_42

    :cond_41
    move v8, v6

    :goto_42
    move v5, v8

    goto :goto_31

    .line 1567
    :cond_44
    :goto_44
    if-lez v0, :cond_4d

    .line 1568
    add-int/lit8 v0, v0, -0x1

    aget v6, p0, v0

    aput v6, v1, v0

    goto :goto_44

    .line 1570
    :cond_4d
    return-object v1
.end method

.method private static blacklist toString(Ljava/math/BigInteger;Ljava/lang/StringBuilder;II)V
    .registers 12
    .param p0, "u"    # Ljava/math/BigInteger;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "radix"    # I
    .param p3, "digits"    # I

    .line 4239
    nop

    .line 4245
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_c

    .line 4246
    invoke-direct {p0, p2, p1, p3}, Ljava/math/BigInteger;->smallToString(ILjava/lang/StringBuilder;I)V

    .line 4247
    return-void

    .line 4253
    :cond_c
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 4254
    .local v0, "b":I
    int-to-double v1, v0

    sget-wide v3, Ljava/math/BigInteger;->LOG_TWO:D

    mul-double/2addr v1, v3

    sget-object v3, Ljava/math/BigInteger;->logCache:[D

    aget-wide v3, v3, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    sget-wide v3, Ljava/math/BigInteger;->LOG_TWO:D

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 4257
    .local v1, "n":I
    invoke-static {p2, v1}, Ljava/math/BigInteger;->getRadixConversionCache(II)Ljava/math/BigInteger;

    move-result-object v2

    .line 4259
    .local v2, "v":Ljava/math/BigInteger;
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    .line 4261
    .local v3, "results":[Ljava/math/BigInteger;
    const/4 v4, 0x1

    shl-int v5, v4, v1

    .line 4264
    .local v5, "expectedDigits":I
    const/4 v6, 0x0

    aget-object v6, v3, v6

    sub-int v7, p3, v5

    invoke-static {v6, p1, p2, v7}, Ljava/math/BigInteger;->toString(Ljava/math/BigInteger;Ljava/lang/StringBuilder;II)V

    .line 4265
    aget-object v4, v3, v4

    invoke-static {v4, p1, p2, v5}, Ljava/math/BigInteger;->toString(Ljava/math/BigInteger;Ljava/lang/StringBuilder;II)V

    .line 4266
    return-void
.end method

.method private static blacklist trustedStripLeadingZeroInts([I)[I
    .registers 4
    .param p0, "val"    # [I

    .line 4591
    array-length v0, p0

    .line 4595
    .local v0, "vlen":I
    const/4 v1, 0x0

    .local v1, "keep":I
    :goto_2
    if-ge v1, v0, :cond_b

    aget v2, p0, v1

    if-nez v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4597
    :cond_b
    if-nez v1, :cond_f

    move-object v2, p0

    goto :goto_13

    :cond_f
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    :goto_13
    return-object v2
.end method

.method public static whitelist test-api valueOf(J)Ljava/math/BigInteger;
    .registers 6
    .param p0, "val"    # J

    .line 1188
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_9

    .line 1189
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 1190
    :cond_9
    cmp-long v2, p0, v0

    if-lez v2, :cond_19

    const-wide/16 v2, 0x10

    cmp-long v2, p0, v2

    if-gtz v2, :cond_19

    .line 1191
    sget-object v0, Ljava/math/BigInteger;->posConst:[Ljava/math/BigInteger;

    long-to-int v1, p0

    aget-object v0, v0, v1

    return-object v0

    .line 1192
    :cond_19
    cmp-long v0, p0, v0

    if-gez v0, :cond_2a

    const-wide/16 v0, -0x10

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2a

    .line 1193
    sget-object v0, Ljava/math/BigInteger;->negConst:[Ljava/math/BigInteger;

    neg-long v1, p0

    long-to-int v1, v1

    aget-object v0, v0, v1

    return-object v0

    .line 1195
    :cond_2a
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0, p1}, Ljava/math/BigInteger;-><init>(J)V

    return-object v0
.end method

.method private static blacklist valueOf([I)Ljava/math/BigInteger;
    .registers 3
    .param p0, "val"    # [I

    .line 1226
    const/4 v0, 0x0

    aget v0, p0, v0

    if-lez v0, :cond_c

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>([II)V

    goto :goto_11

    :cond_c
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([I)V

    :goto_11
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4952
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 4953
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "signum"

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 4954
    const-string v1, "magnitude"

    invoke-direct {p0}, Ljava/math/BigInteger;->magSerializedForm()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4967
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 4968
    return-void
.end method


# virtual methods
.method public whitelist test-api abs()Ljava/math/BigInteger;
    .registers 2

    .line 2786
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v0, :cond_6

    move-object v0, p0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method blacklist add(J)Ljava/math/BigInteger;
    .registers 7
    .param p1, "val"    # J

    .line 1345
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1346
    return-object p0

    .line 1347
    :cond_7
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_10

    .line 1348
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1349
    :cond_10
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    move-result v0

    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-ne v0, v1, :cond_2a

    .line 1350
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljava/math/BigInteger;->add([IJ)[I

    move-result-object v1

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 1351
    :cond_2a
    invoke-virtual {p0, p1, p2}, Ljava/math/BigInteger;->compareMagnitude(J)I

    move-result v0

    .line 1352
    .local v0, "cmp":I
    if-nez v0, :cond_33

    .line 1353
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 1354
    :cond_33
    if-lez v0, :cond_40

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljava/math/BigInteger;->subtract([IJ)[I

    move-result-object v1

    goto :goto_4a

    :cond_40
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2, v3}, Ljava/math/BigInteger;->subtract(J[I)[I

    move-result-object v1

    .line 1355
    .local v1, "resultMag":[I
    :goto_4a
    invoke-static {v1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    .line 1356
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->signum:I

    if-ne v0, v3, :cond_56

    const/4 v3, 0x1

    goto :goto_57

    :cond_56
    const/4 v3, -0x1

    :goto_57
    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2
.end method

.method public whitelist test-api add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 1323
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_5

    .line 1324
    return-object p0

    .line 1325
    :cond_5
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_a

    .line 1326
    return-object p1

    .line 1327
    :cond_a
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-ne v0, v1, :cond_20

    .line 1328
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->add([I[I)[I

    move-result-object v1

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 1330
    :cond_20
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v0

    .line 1331
    .local v0, "cmp":I
    if-nez v0, :cond_29

    .line 1332
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 1333
    :cond_29
    if-lez v0, :cond_34

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->subtract([I[I)[I

    move-result-object v1

    goto :goto_3c

    .line 1334
    :cond_34
    iget-object v1, p1, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->subtract([I[I)[I

    move-result-object v1

    :goto_3c
    nop

    .line 1335
    .local v1, "resultMag":[I
    invoke-static {v1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    .line 1337
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->signum:I

    if-ne v0, v3, :cond_49

    const/4 v3, 0x1

    goto :goto_4a

    :cond_49
    const/4 v3, -0x1

    :goto_4a
    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2
.end method

.method public whitelist test-api and(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3652
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v0

    invoke-direct {p1}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    .line 3653
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 3654
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 3655
    invoke-direct {p1, v3}, Ljava/math/BigInteger;->getInt(I)I

    move-result v3

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 3653
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3657
    .end local v1    # "i":I
    :cond_28
    invoke-static {v0}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api andNot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3720
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v0

    invoke-direct {p1}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    .line 3721
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_29

    .line 3722
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 3723
    invoke-direct {p1, v3}, Ljava/math/BigInteger;->getInt(I)I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 3721
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3725
    .end local v1    # "i":I
    :cond_29
    invoke-static {v0}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api bitCount()I
    .registers 5

    .line 3891
    iget v0, p0, Ljava/math/BigInteger;->bitCountPlusOne:I

    add-int/lit8 v0, v0, -0x1

    .line 3892
    .local v0, "bc":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3f

    .line 3893
    const/4 v0, 0x0

    .line 3895
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    .line 3896
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 3895
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3897
    .end local v1    # "i":I
    :cond_1a
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-gez v1, :cond_3b

    .line 3899
    const/4 v1, 0x0

    .line 3900
    .local v1, "magTrailingZeroCount":I
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_24
    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    aget v3, v3, v2

    if-nez v3, :cond_2f

    .line 3901
    add-int/lit8 v1, v1, 0x20

    .line 3900
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    .line 3902
    :cond_2f
    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 3903
    add-int/lit8 v3, v1, -0x1

    add-int/2addr v0, v3

    .line 3905
    .end local v1    # "magTrailingZeroCount":I
    .end local v2    # "j":I
    :cond_3b
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/math/BigInteger;->bitCountPlusOne:I

    .line 3907
    :cond_3f
    return v0
.end method

.method public whitelist test-api bitLength()I
    .registers 10

    .line 3857
    iget v0, p0, Ljava/math/BigInteger;->bitLengthPlusOne:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3858
    .local v0, "n":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4c

    .line 3859
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    .line 3860
    .local v2, "m":[I
    array-length v3, v2

    .line 3861
    .local v3, "len":I
    if-nez v3, :cond_e

    .line 3862
    const/4 v0, 0x0

    goto :goto_48

    .line 3865
    :cond_e
    add-int/lit8 v4, v3, -0x1

    shl-int/lit8 v4, v4, 0x5

    iget-object v5, p0, Ljava/math/BigInteger;->mag:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 3866
    .local v4, "magBitLength":I
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    if-gez v5, :cond_47

    .line 3868
    iget-object v5, p0, Ljava/math/BigInteger;->mag:[I

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    if-ne v5, v1, :cond_2c

    move v5, v1

    goto :goto_2d

    :cond_2c
    move v5, v6

    .line 3869
    .local v5, "pow2":Z
    :goto_2d
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2e
    if-ge v7, v3, :cond_3f

    if-eqz v5, :cond_3f

    .line 3870
    iget-object v8, p0, Ljava/math/BigInteger;->mag:[I

    aget v8, v8, v7

    if-nez v8, :cond_3a

    move v8, v1

    goto :goto_3b

    :cond_3a
    move v8, v6

    :goto_3b
    move v5, v8

    .line 3869
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 3872
    .end local v7    # "i":I
    :cond_3f
    if-eqz v5, :cond_44

    add-int/lit8 v1, v4, -0x1

    goto :goto_45

    :cond_44
    move v1, v4

    .line 3873
    .end local v0    # "n":I
    .end local v5    # "pow2":Z
    .local v1, "n":I
    :goto_45
    move v0, v1

    goto :goto_48

    .line 3874
    .end local v1    # "n":I
    .restart local v0    # "n":I
    :cond_47
    move v0, v4

    .line 3877
    .end local v4    # "magBitLength":I
    :goto_48
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/math/BigInteger;->bitLengthPlusOne:I

    .line 3879
    .end local v2    # "m":[I
    .end local v3    # "len":I
    :cond_4c
    return v0
.end method

.method public whitelist test-api byteValueExact()B
    .registers 3

    .line 5066
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1f

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1f

    .line 5067
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 5068
    .local v0, "value":I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_1f

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1f

    .line 5069
    invoke-virtual {p0}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    return v1

    .line 5071
    .end local v0    # "value":I
    :cond_1f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of byte range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api clearBit(I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "n"    # I

    .line 3779
    if-ltz p1, :cond_35

    .line 3782
    ushr-int/lit8 v0, p1, 0x5

    .line 3783
    .local v0, "intNum":I
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    ushr-int/lit8 v2, v2, 0x5

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 3785
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v4, v1

    if-ge v2, v4, :cond_24

    .line 3786
    array-length v4, v1

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v5

    aput v5, v1, v4

    .line 3785
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 3788
    .end local v2    # "i":I
    :cond_24
    array-length v2, v1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    aget v4, v1, v2

    and-int/lit8 v5, p1, 0x1f

    shl-int/2addr v3, v5

    not-int v3, v3

    and-int/2addr v3, v4

    aput v3, v1, v2

    .line 3790
    invoke-static {v1}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 3780
    .end local v0    # "intNum":I
    .end local v1    # "result":[I
    :cond_35
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative bit address"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist compareMagnitude(J)I
    .registers 19
    .param p1, "val"    # J

    .line 3995
    move-wide/from16 v0, p1

    .line 3996
    move-object/from16 v2, p0

    iget-object v3, v2, Ljava/math/BigInteger;->mag:[I

    .line 3997
    .local v3, "m1":[I
    array-length v4, v3

    .line 3998
    .local v4, "len":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v4, v5, :cond_c

    .line 3999
    return v6

    .line 4001
    :cond_c
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gez v7, :cond_13

    .line 4002
    neg-long v0, v0

    .line 4004
    .end local p1    # "val":J
    .local v0, "val":J
    :cond_13
    const/16 v7, 0x20

    ushr-long v7, v0, v7

    long-to-int v7, v7

    .line 4005
    .local v7, "highWord":I
    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide v10, 0xffffffffL

    if-nez v7, :cond_3c

    .line 4006
    if-ge v4, v6, :cond_24

    .line 4007
    return v9

    .line 4008
    :cond_24
    if-le v4, v6, :cond_27

    .line 4009
    return v6

    .line 4010
    :cond_27
    aget v5, v3, v8

    .line 4011
    .local v5, "a":I
    long-to-int v12, v0

    .line 4012
    .local v12, "b":I
    if-eq v5, v12, :cond_3b

    .line 4013
    int-to-long v13, v5

    and-long/2addr v13, v10

    move v15, v6

    move/from16 p1, v7

    .end local v7    # "highWord":I
    .local p1, "highWord":I
    int-to-long v6, v12

    and-long/2addr v6, v10

    cmp-long v6, v13, v6

    if-gez v6, :cond_39

    move v6, v9

    goto :goto_3a

    :cond_39
    move v6, v15

    :goto_3a
    return v6

    .line 4015
    .end local p1    # "highWord":I
    .restart local v7    # "highWord":I
    :cond_3b
    return v8

    .line 4017
    .end local v5    # "a":I
    .end local v12    # "b":I
    :cond_3c
    move v15, v6

    move/from16 p1, v7

    .end local v7    # "highWord":I
    .restart local p1    # "highWord":I
    if-ge v4, v5, :cond_42

    .line 4018
    return v9

    .line 4019
    :cond_42
    aget v5, v3, v8

    .line 4020
    .restart local v5    # "a":I
    move/from16 v6, p1

    .line 4021
    .local v6, "b":I
    if-eq v5, v6, :cond_52

    .line 4022
    int-to-long v7, v5

    and-long/2addr v7, v10

    int-to-long v12, v6

    and-long/2addr v10, v12

    cmp-long v7, v7, v10

    if-gez v7, :cond_51

    move v15, v9

    :cond_51
    return v15

    .line 4024
    :cond_52
    aget v5, v3, v15

    .line 4025
    long-to-int v6, v0

    .line 4026
    if-eq v5, v6, :cond_61

    .line 4027
    int-to-long v7, v5

    and-long/2addr v7, v10

    int-to-long v12, v6

    and-long/2addr v10, v12

    cmp-long v7, v7, v10

    if-gez v7, :cond_60

    move v15, v9

    :cond_60
    return v15

    .line 4029
    :cond_61
    return v8
.end method

.method final blacklist compareMagnitude(Ljava/math/BigInteger;)I
    .registers 16
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3973
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 3974
    .local v0, "m1":[I
    array-length v1, v0

    .line 3975
    .local v1, "len1":I
    move-object v2, p1

    iget-object v3, v2, Ljava/math/BigInteger;->mag:[I

    .line 3976
    .local v3, "m2":[I
    array-length v4, v3

    .line 3977
    .local v4, "len2":I
    const/4 v5, -0x1

    if-ge v1, v4, :cond_b

    .line 3978
    return v5

    .line 3979
    :cond_b
    const/4 v6, 0x1

    if-le v1, v4, :cond_f

    .line 3980
    return v6

    .line 3981
    :cond_f
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_10
    if-ge v7, v1, :cond_2e

    .line 3982
    aget v8, v0, v7

    .line 3983
    .local v8, "a":I
    aget v9, v3, v7

    .line 3984
    .local v9, "b":I
    if-eq v8, v9, :cond_29

    .line 3985
    int-to-long v10, v8

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    int-to-long v5, v9

    and-long/2addr v5, v12

    cmp-long v5, v10, v5

    if-gez v5, :cond_27

    const/4 v5, -0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x1

    :goto_28
    return v5

    .line 3981
    .end local v8    # "a":I
    .end local v9    # "b":I
    :cond_29
    add-int/lit8 v7, v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    goto :goto_10

    .line 3987
    .end local v7    # "i":I
    :cond_2e
    const/4 v5, 0x0

    return v5
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

    .line 133
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/math/BigInteger;)I
    .registers 4
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3954
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    iget v1, p1, Ljava/math/BigInteger;->signum:I

    if-ne v0, v1, :cond_17

    .line 3955
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    packed-switch v0, :pswitch_data_22

    .line 3958
    :pswitch_b
    const/4 v0, 0x0

    goto :goto_16

    .line 3956
    :pswitch_d
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_16

    .line 3957
    :pswitch_12
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v0

    .line 3955
    :goto_16
    return v0

    .line 3961
    :cond_17
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    iget v1, p1, Ljava/math/BigInteger;->signum:I

    if-le v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, -0x1

    :goto_20
    return v0

    nop

    :pswitch_data_22
    .packed-switch -0x1
        :pswitch_12
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public whitelist test-api divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2359
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_1b

    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    iget-object v1, p1, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    sub-int/2addr v0, v1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_13

    goto :goto_1b

    .line 2366
    :cond_13
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 2361
    :cond_1b
    :goto_1b
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->divideKnuth(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 25
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2406
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/16 v3, 0x28

    if-lt v0, v3, :cond_9a

    iget-object v0, v1, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/16 v3, 0x14

    if-lt v0, v3, :cond_9a

    iget-object v0, v1, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    iget-object v4, v2, Ljava/math/BigInteger;->mag:[I

    array-length v4, v4

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_1d

    goto/16 :goto_9a

    .line 2414
    :cond_1d
    iget v0, v1, Ljava/math/BigInteger;->signum:I

    iget v3, v2, Ljava/math/BigInteger;->signum:I

    if-ne v0, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, -0x1

    :goto_26
    move v3, v0

    .line 2415
    .local v3, "quotSign":I
    const-wide/16 v4, 0x0

    .local v4, "xBN":J
    const-wide/16 v6, 0x0

    .local v6, "yBN":J
    const-wide/16 v8, 0x0

    .local v8, "quotBN":J
    const-wide/16 v10, 0x0

    .line 2417
    .local v10, "remBN":J
    :try_start_2f
    iget-object v0, v1, Ljava/math/BigInteger;->mag:[I

    const/4 v12, 0x0

    invoke-static {v0, v12}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v13
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_8c

    move-wide/from16 v19, v13

    .line 2418
    .end local v4    # "xBN":J
    .local v19, "xBN":J
    :try_start_38
    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    invoke-static {v0, v12}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v21
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_88

    .line 2419
    .end local v6    # "yBN":J
    .local v21, "yBN":J
    :try_start_3e
    invoke-static {}, Llibcore/math/NativeBN;->BN_new()J

    move-result-wide v15
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_82

    .line 2420
    .end local v8    # "quotBN":J
    .local v15, "quotBN":J
    :try_start_42
    invoke-static {}, Llibcore/math/NativeBN;->BN_new()J

    move-result-wide v17
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_7b

    .line 2421
    .end local v10    # "remBN":J
    .local v17, "remBN":J
    :try_start_46
    invoke-static/range {v15 .. v22}, Llibcore/math/NativeBN;->BN_div(JJJJ)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_72

    move-wide v8, v15

    move-wide/from16 v10, v17

    .line 2422
    .end local v15    # "quotBN":J
    .end local v17    # "remBN":J
    .restart local v8    # "quotBN":J
    .restart local v10    # "remBN":J
    :try_start_4c
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v1, v8, v9}, Ljava/math/BigInteger;->bn2BigEndInts(J)[I

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/math/BigInteger;-><init>(I[I)V

    .line 2424
    .local v0, "quotient":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    iget v5, v1, Ljava/math/BigInteger;->signum:I

    invoke-direct {v1, v10, v11}, Ljava/math/BigInteger;->bn2BigEndInts(J)[I

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(I[I)V

    .line 2425
    .local v4, "remainder":Ljava/math/BigInteger;
    filled-new-array {v0, v4}, [Ljava/math/BigInteger;

    move-result-object v5
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_82

    .line 2426
    .local v5, "result":[Ljava/math/BigInteger;
    nop

    .line 2428
    invoke-static/range {v19 .. v20}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2429
    invoke-static/range {v21 .. v22}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2430
    invoke-static {v8, v9}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2431
    invoke-static {v10, v11}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2426
    return-object v5

    .line 2428
    .end local v0    # "quotient":Ljava/math/BigInteger;
    .end local v4    # "remainder":Ljava/math/BigInteger;
    .end local v5    # "result":[Ljava/math/BigInteger;
    .end local v8    # "quotBN":J
    .end local v10    # "remBN":J
    .restart local v15    # "quotBN":J
    .restart local v17    # "remBN":J
    :catchall_72
    move-exception v0

    move-wide v8, v15

    move-wide/from16 v10, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    .end local v15    # "quotBN":J
    .end local v17    # "remBN":J
    .restart local v8    # "quotBN":J
    .restart local v10    # "remBN":J
    goto :goto_8d

    .end local v8    # "quotBN":J
    .restart local v15    # "quotBN":J
    :catchall_7b
    move-exception v0

    move-wide v8, v15

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    .end local v15    # "quotBN":J
    .restart local v8    # "quotBN":J
    goto :goto_8d

    :catchall_82
    move-exception v0

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    goto :goto_8d

    .end local v21    # "yBN":J
    .restart local v6    # "yBN":J
    :catchall_88
    move-exception v0

    move-wide/from16 v4, v19

    goto :goto_8d

    .end local v19    # "xBN":J
    .local v4, "xBN":J
    :catchall_8c
    move-exception v0

    :goto_8d
    invoke-static {v4, v5}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2429
    invoke-static {v6, v7}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2430
    invoke-static {v8, v9}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2431
    invoke-static {v10, v11}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2432
    throw v0

    .line 2409
    .end local v3    # "quotSign":I
    .end local v4    # "xBN":J
    .end local v6    # "yBN":J
    .end local v8    # "quotBN":J
    .end local v10    # "remBN":J
    :cond_9a
    :goto_9a
    invoke-direct/range {p0 .. p1}, Ljava/math/BigInteger;->divideAndRemainderKnuth(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 22

    .line 4497
    move-object/from16 v0, p0

    iget v1, v0, Ljava/math/BigInteger;->signum:I

    if-nez v1, :cond_9

    .line 4498
    const-wide/16 v1, 0x0

    return-wide v1

    .line 4501
    :cond_9
    iget-object v1, v0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x5

    iget-object v3, v0, Ljava/math/BigInteger;->mag:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    .line 4504
    .local v1, "exponent":I
    const/16 v3, 0x3f

    if-ge v1, v3, :cond_25

    .line 4505
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    return-wide v2

    .line 4506
    :cond_25
    const/16 v3, 0x3ff

    if-le v1, v3, :cond_33

    .line 4507
    iget v2, v0, Ljava/math/BigInteger;->signum:I

    if-lez v2, :cond_30

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_32

    :cond_30
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_32
    return-wide v2

    .line 4520
    :cond_33
    add-int/lit8 v3, v1, -0x35

    .line 4526
    .local v3, "shift":I
    and-int/lit8 v5, v3, 0x1f

    .line 4527
    .local v5, "nBits":I
    rsub-int/lit8 v6, v5, 0x20

    .line 4531
    .local v6, "nBits2":I
    if-nez v5, :cond_44

    .line 4532
    iget-object v7, v0, Ljava/math/BigInteger;->mag:[I

    aget v7, v7, v4

    .line 4533
    .local v7, "highBits":I
    iget-object v8, v0, Ljava/math/BigInteger;->mag:[I

    aget v8, v8, v2

    .local v8, "lowBits":I
    goto :goto_64

    .line 4535
    .end local v7    # "highBits":I
    .end local v8    # "lowBits":I
    :cond_44
    iget-object v7, v0, Ljava/math/BigInteger;->mag:[I

    aget v7, v7, v4

    ushr-int/2addr v7, v5

    .line 4536
    .restart local v7    # "highBits":I
    iget-object v8, v0, Ljava/math/BigInteger;->mag:[I

    aget v8, v8, v4

    shl-int/2addr v8, v6

    iget-object v9, v0, Ljava/math/BigInteger;->mag:[I

    aget v9, v9, v2

    ushr-int/2addr v9, v5

    or-int/2addr v8, v9

    .line 4537
    .restart local v8    # "lowBits":I
    if-nez v7, :cond_64

    .line 4538
    move v7, v8

    .line 4539
    iget-object v9, v0, Ljava/math/BigInteger;->mag:[I

    aget v9, v9, v2

    shl-int/2addr v9, v6

    iget-object v10, v0, Ljava/math/BigInteger;->mag:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    ushr-int/2addr v10, v5

    or-int v8, v9, v10

    .line 4543
    :cond_64
    :goto_64
    int-to-long v9, v7

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    const/16 v13, 0x20

    shl-long/2addr v9, v13

    int-to-long v13, v8

    and-long/2addr v11, v13

    or-long/2addr v9, v11

    .line 4546
    .local v9, "twiceSignifFloor":J
    shr-long v11, v9, v2

    .line 4547
    .local v11, "signifFloor":J
    const-wide v13, 0xfffffffffffffL

    and-long/2addr v11, v13

    .line 4556
    const-wide/16 v13, 0x1

    and-long v15, v9, v13

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_94

    and-long v15, v11, v13

    cmp-long v15, v15, v17

    if-nez v15, :cond_93

    .line 4557
    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v15

    if-ge v15, v3, :cond_94

    :cond_93
    goto :goto_95

    :cond_94
    move v2, v4

    .line 4558
    .local v2, "increment":Z
    :goto_95
    if-eqz v2, :cond_99

    add-long/2addr v13, v11

    goto :goto_9a

    :cond_99
    move-wide v13, v11

    .line 4559
    .local v13, "signifRounded":J
    :goto_9a
    add-int/lit16 v4, v1, 0x3ff

    move v15, v1

    move/from16 v16, v2

    .end local v1    # "exponent":I
    .end local v2    # "increment":Z
    .local v15, "exponent":I
    .local v16, "increment":Z
    int-to-long v1, v4

    const/16 v4, 0x34

    shl-long/2addr v1, v4

    .line 4561
    .local v1, "bits":J
    add-long/2addr v1, v13

    .line 4569
    iget v4, v0, Ljava/math/BigInteger;->signum:I

    move-wide/from16 v17, v1

    .end local v1    # "bits":J
    .local v17, "bits":J
    int-to-long v0, v4

    const-wide/high16 v19, -0x8000000000000000L

    and-long v0, v0, v19

    or-long v0, v17, v0

    .line 4570
    .end local v17    # "bits":J
    .local v0, "bits":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    return-wide v17
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "x"    # Ljava/lang/Object;

    .line 4042
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 4043
    return v0

    .line 4045
    :cond_4
    instance-of v1, p1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    move-object v1, p1

    check-cast v1, Ljava/math/BigInteger;

    .line 4048
    .local v1, "xInt":Ljava/math/BigInteger;
    iget v3, v1, Ljava/math/BigInteger;->signum:I

    iget v4, p0, Ljava/math/BigInteger;->signum:I

    if-eq v3, v4, :cond_13

    .line 4049
    return v2

    .line 4051
    :cond_13
    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    .line 4052
    .local v3, "m":[I
    array-length v4, v3

    .line 4053
    .local v4, "len":I
    iget-object v5, v1, Ljava/math/BigInteger;->mag:[I

    .line 4054
    .local v5, "xm":[I
    array-length v6, v5

    if-eq v4, v6, :cond_1c

    .line 4055
    return v2

    .line 4057
    :cond_1c
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1d
    if-ge v6, v4, :cond_29

    .line 4058
    aget v7, v5, v6

    aget v8, v3, v6

    if-eq v7, v8, :cond_26

    .line 4059
    return v2

    .line 4057
    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 4061
    .end local v6    # "i":I
    :cond_29
    return v0

    .line 4046
    .end local v1    # "xInt":Ljava/math/BigInteger;
    .end local v3    # "m":[I
    .end local v4    # "len":I
    .end local v5    # "xm":[I
    :cond_2a
    return v2
.end method

.method public whitelist test-api flipBit(I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "n"    # I

    .line 3803
    if-ltz p1, :cond_31

    .line 3806
    ushr-int/lit8 v0, p1, 0x5

    .line 3807
    .local v0, "intNum":I
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 3809
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_21

    .line 3810
    array-length v3, v1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v4

    aput v4, v1, v3

    .line 3809
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3812
    .end local v2    # "i":I
    :cond_21
    array-length v2, v1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    aget v3, v1, v2

    and-int/lit8 v5, p1, 0x1f

    shl-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v1, v2

    .line 3814
    invoke-static {v1}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 3804
    .end local v0    # "intNum":I
    .end local v1    # "result":[I
    :cond_31
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative bit address"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api floatValue()F
    .registers 12

    .line 4412
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_6

    .line 4413
    const/4 v0, 0x0

    return v0

    .line 4416
    :cond_6
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x5

    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 4419
    .local v0, "exponent":I
    const/16 v2, 0x3f

    if-ge v0, v2, :cond_22

    .line 4420
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    return v1

    .line 4421
    :cond_22
    const/16 v2, 0x7f

    if-le v0, v2, :cond_30

    .line 4422
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-lez v1, :cond_2d

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_2f

    :cond_2d
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_2f
    return v1

    .line 4435
    :cond_30
    add-int/lit8 v2, v0, -0x18

    .line 4441
    .local v2, "shift":I
    and-int/lit8 v4, v2, 0x1f

    .line 4442
    .local v4, "nBits":I
    rsub-int/lit8 v5, v4, 0x20

    .line 4444
    .local v5, "nBits2":I
    if-nez v4, :cond_3d

    .line 4445
    iget-object v6, p0, Ljava/math/BigInteger;->mag:[I

    aget v6, v6, v3

    .local v6, "twiceSignifFloor":I
    goto :goto_50

    .line 4447
    .end local v6    # "twiceSignifFloor":I
    :cond_3d
    iget-object v6, p0, Ljava/math/BigInteger;->mag:[I

    aget v6, v6, v3

    ushr-int/2addr v6, v4

    .line 4448
    .restart local v6    # "twiceSignifFloor":I
    if-nez v6, :cond_50

    .line 4449
    iget-object v7, p0, Ljava/math/BigInteger;->mag:[I

    aget v7, v7, v3

    shl-int/2addr v7, v5

    iget-object v8, p0, Ljava/math/BigInteger;->mag:[I

    aget v8, v8, v1

    ushr-int/2addr v8, v4

    or-int v6, v7, v8

    .line 4453
    :cond_50
    :goto_50
    shr-int/lit8 v7, v6, 0x1

    .line 4454
    .local v7, "signifFloor":I
    const v8, 0x7fffff

    and-int/2addr v7, v8

    .line 4463
    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_69

    and-int/lit8 v8, v7, 0x1

    if-nez v8, :cond_68

    .line 4464
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v8

    if-ge v8, v2, :cond_69

    :cond_68
    goto :goto_6a

    :cond_69
    move v1, v3

    .line 4465
    .local v1, "increment":Z
    :goto_6a
    if-eqz v1, :cond_6f

    add-int/lit8 v3, v7, 0x1

    goto :goto_70

    :cond_6f
    move v3, v7

    .line 4466
    .local v3, "signifRounded":I
    :goto_70
    add-int/lit8 v8, v0, 0x7f

    shl-int/lit8 v8, v8, 0x17

    .line 4468
    .local v8, "bits":I
    add-int/2addr v8, v3

    .line 4476
    iget v9, p0, Ljava/math/BigInteger;->signum:I

    const/high16 v10, -0x80000000

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    .line 4477
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    return v9
.end method

.method public whitelist test-api gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2705
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_9

    .line 2706
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 2707
    :cond_9
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_12

    .line 2708
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 2710
    :cond_12
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 2711
    .local v0, "a":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 2713
    .local v1, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, v1}, Ljava/math/MutableBigInteger;->hybridGCD(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v2

    .line 2715
    .local v2, "result":Ljava/math/MutableBigInteger;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api getLowestSetBit()I
    .registers 6

    .line 3826
    iget v0, p0, Ljava/math/BigInteger;->lowestSetBitPlusTwo:I

    add-int/lit8 v0, v0, -0x2

    .line 3827
    .local v0, "lsb":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_26

    .line 3828
    const/4 v0, 0x0

    .line 3829
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-nez v1, :cond_f

    .line 3830
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 3834
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-direct {p0, v1}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    move v3, v2

    .local v3, "b":I
    if-nez v2, :cond_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3836
    :cond_1a
    shl-int/lit8 v2, v1, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 3838
    .end local v1    # "i":I
    .end local v3    # "b":I
    :goto_22
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljava/math/BigInteger;->lowestSetBitPlusTwo:I

    .line 3840
    :cond_26
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 4095
    const/4 v0, 0x0

    .line 4097
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    .line 4098
    mul-int/lit8 v2, v0, 0x1f

    int-to-long v2, v2

    iget-object v4, p0, Ljava/math/BigInteger;->mag:[I

    aget v4, v4, v1

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 4097
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4100
    .end local v1    # "i":I
    :cond_1a
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 4366
    const/4 v0, 0x0

    .line 4367
    .local v0, "result":I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/math/BigInteger;->getInt(I)I

    move-result v0

    .line 4368
    return v0
.end method

.method public whitelist test-api intValueExact()I
    .registers 3

    .line 5026
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_13

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_13

    .line 5027
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 5029
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isProbablePrime(I)Z
    .registers 5
    .param p1, "certainty"    # I

    .line 3927
    const/4 v0, 0x1

    if-gtz p1, :cond_4

    .line 3928
    return v0

    .line 3929
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    .line 3930
    .local v1, "w":Ljava/math/BigInteger;
    sget-object v2, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3931
    return v0

    .line 3932
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_27

    .line 3935
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Ljava/math/BigInteger;->primeToCertainty(ILjava/util/Random;)Z

    move-result v0

    return v0

    .line 3933
    :cond_27
    :goto_27
    return v0
.end method

.method blacklist javaIncrement([I)[I
    .registers 6
    .param p1, "val"    # [I

    .line 3631
    const/4 v0, 0x0

    .line 3632
    .local v0, "lastSum":I
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_11

    if-nez v0, :cond_11

    .line 3633
    aget v3, p1, v1

    add-int/2addr v3, v2

    aput v3, p1, v1

    move v0, v3

    .line 3632
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 3634
    .end local v1    # "i":I
    :cond_11
    if-nez v0, :cond_1a

    .line 3635
    array-length v1, p1

    add-int/2addr v1, v2

    new-array p1, v1, [I

    .line 3636
    const/4 v1, 0x0

    aput v2, p1, v1

    .line 3638
    :cond_1a
    return-object p1
.end method

.method public whitelist test-api longValue()J
    .registers 10

    .line 4388
    const-wide/16 v0, 0x0

    .line 4390
    .local v0, "result":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_19

    .line 4391
    const/16 v3, 0x20

    shl-long v3, v0, v3

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-long v0, v3, v5

    .line 4390
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 4392
    .end local v2    # "i":I
    :cond_19
    return-wide v0
.end method

.method public whitelist test-api longValueExact()J
    .registers 3

    .line 5007
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_13

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_13

    .line 5008
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 5010
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of long range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api max(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 4083
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    return-object v0
.end method

.method public whitelist test-api min(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 4072
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    return-object v0
.end method

.method public whitelist test-api mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p1, "m"    # Ljava/math/BigInteger;

    .line 2821
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    if-lez v0, :cond_13

    .line 2824
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 2825
    .local v0, "result":Ljava/math/BigInteger;
    iget v1, v0, Ljava/math/BigInteger;->signum:I

    if-ltz v1, :cond_e

    move-object v1, v0

    goto :goto_12

    :cond_e
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_12
    return-object v1

    .line 2822
    .end local v0    # "result":Ljava/math/BigInteger;
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .param p1, "m"    # Ljava/math/BigInteger;

    .line 3454
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 3457
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3458
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 3461
    :cond_10
    move-object v0, p0

    .line 3462
    .local v0, "modVal":Ljava/math/BigInteger;
    iget v2, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v2, :cond_1b

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1f

    .line 3463
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 3465
    :cond_1f
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3466
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object v1

    .line 3468
    :cond_2a
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, v0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 3469
    .local v2, "a":Ljava/math/MutableBigInteger;
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 3471
    .local v3, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v2, v3}, Ljava/math/MutableBigInteger;->mutableModInverse(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 3472
    .local v4, "result":Ljava/math/MutableBigInteger;
    invoke-virtual {v4, v1}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 3455
    .end local v0    # "modVal":Ljava/math/BigInteger;
    .end local v2    # "a":Ljava/math/MutableBigInteger;
    .end local v3    # "b":Ljava/math/MutableBigInteger;
    .end local v4    # "result":Ljava/math/MutableBigInteger;
    :cond_3d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 30
    .param p1, "exponent"    # Ljava/math/BigInteger;
    .param p2, "m"    # Ljava/math/BigInteger;

    .line 2871
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget v3, v2, Ljava/math/BigInteger;->signum:I

    if-lez v3, :cond_1b7

    .line 2875
    iget v3, v0, Ljava/math/BigInteger;->signum:I

    if-nez v3, :cond_1c

    .line 2876
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_1b

    :cond_19
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    :goto_1b
    return-object v3

    .line 2878
    :cond_1c
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2879
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_31

    :cond_2f
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    :goto_31
    return-object v3

    .line 2881
    :cond_32
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget v3, v0, Ljava/math/BigInteger;->signum:I

    if-ltz v3, :cond_41

    .line 2882
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v3

    .line 2884
    :cond_41
    sget-object v3, Ljava/math/BigInteger;->negConst:[Ljava/math/BigInteger;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_61

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-nez v3, :cond_61

    .line 2885
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_60

    :cond_5e
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    :goto_60
    return-object v3

    .line 2888
    :cond_61
    iget v3, v0, Ljava/math/BigInteger;->signum:I

    if-gez v3, :cond_67

    move v3, v4

    goto :goto_68

    :cond_67
    move v3, v5

    :goto_68
    move v6, v3

    .local v6, "invertResult":Z
    if-eqz v3, :cond_71

    .line 2889
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    move-object v3, v0

    .end local p1    # "exponent":Ljava/math/BigInteger;
    .local v0, "exponent":Ljava/math/BigInteger;
    goto :goto_72

    .line 2888
    .end local v0    # "exponent":Ljava/math/BigInteger;
    .restart local p1    # "exponent":Ljava/math/BigInteger;
    :cond_71
    move-object v3, v0

    .line 2891
    .end local p1    # "exponent":Ljava/math/BigInteger;
    .local v3, "exponent":Ljava/math/BigInteger;
    :goto_72
    iget v0, v1, Ljava/math/BigInteger;->signum:I

    if-ltz v0, :cond_7f

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_7d

    goto :goto_7f

    .line 2892
    :cond_7d
    move-object v0, v1

    goto :goto_83

    :cond_7f
    :goto_7f
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_83
    move-object v7, v0

    .line 2896
    .local v7, "base":Ljava/math/BigInteger;
    const/4 v8, 0x3

    .line 2897
    .local v8, "BORINGSSL_MOD_EXP_THRESHOLD":I
    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v9, 0x3

    if-lt v0, v9, :cond_102

    .line 2898
    const-wide/16 v9, 0x0

    .local v9, "baseBN":J
    const-wide/16 v11, 0x0

    .local v11, "expBN":J
    const-wide/16 v13, 0x0

    .local v13, "modBN":J
    const-wide/16 v15, 0x0

    .line 2900
    .local v15, "resultBN":J
    :try_start_93
    iget-object v0, v7, Ljava/math/BigInteger;->mag:[I

    invoke-static {v0, v5}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v17
    :try_end_99
    .catchall {:try_start_93 .. :try_end_99} :catchall_f4

    move-wide/from16 v21, v17

    .line 2901
    .end local v9    # "baseBN":J
    .local v21, "baseBN":J
    :try_start_9b
    iget-object v0, v3, Ljava/math/BigInteger;->mag:[I

    invoke-static {v0, v5}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v23
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_f0

    .line 2902
    .end local v11    # "expBN":J
    .local v23, "expBN":J
    :try_start_a1
    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    invoke-static {v0, v5}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v25
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_ea

    .line 2903
    .end local v13    # "modBN":J
    .local v25, "modBN":J
    :try_start_a7
    invoke-static {}, Llibcore/math/NativeBN;->BN_new()J

    move-result-wide v19
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_e2

    .line 2904
    .end local v15    # "resultBN":J
    .local v19, "resultBN":J
    :try_start_ab
    invoke-static/range {v19 .. v26}, Llibcore/math/NativeBN;->BN_mod_exp(JJJJ)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_d7

    move-wide/from16 v9, v19

    .line 2905
    .end local v19    # "resultBN":J
    .local v9, "resultBN":J
    :try_start_b0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v1, v9, v10}, Ljava/math/BigInteger;->bn2BigEndInts(J)[I

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>(I[I)V

    .line 2907
    .local v0, "result":Ljava/math/BigInteger;
    if-eqz v6, :cond_c0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4
    :try_end_bf
    .catchall {:try_start_b0 .. :try_end_bf} :catchall_ce

    goto :goto_c1

    :cond_c0
    move-object v4, v0

    .line 2909
    :goto_c1
    invoke-static/range {v21 .. v22}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2910
    invoke-static/range {v23 .. v24}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2911
    invoke-static/range {v25 .. v26}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2912
    invoke-static {v9, v10}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2907
    return-object v4

    .line 2909
    .end local v0    # "result":Ljava/math/BigInteger;
    :catchall_ce
    move-exception v0

    move-wide v15, v9

    move-wide/from16 v9, v21

    move-wide/from16 v11, v23

    move-wide/from16 v13, v25

    goto :goto_f5

    .end local v9    # "resultBN":J
    .restart local v19    # "resultBN":J
    :catchall_d7
    move-exception v0

    move-wide/from16 v9, v19

    move-wide v15, v9

    move-wide/from16 v9, v21

    move-wide/from16 v11, v23

    move-wide/from16 v13, v25

    .end local v19    # "resultBN":J
    .restart local v9    # "resultBN":J
    goto :goto_f5

    .end local v9    # "resultBN":J
    .restart local v15    # "resultBN":J
    :catchall_e2
    move-exception v0

    move-wide/from16 v9, v21

    move-wide/from16 v11, v23

    move-wide/from16 v13, v25

    goto :goto_f5

    .end local v25    # "modBN":J
    .restart local v13    # "modBN":J
    :catchall_ea
    move-exception v0

    move-wide/from16 v9, v21

    move-wide/from16 v11, v23

    goto :goto_f5

    .end local v23    # "expBN":J
    .restart local v11    # "expBN":J
    :catchall_f0
    move-exception v0

    move-wide/from16 v9, v21

    goto :goto_f5

    .end local v21    # "baseBN":J
    .local v9, "baseBN":J
    :catchall_f4
    move-exception v0

    :goto_f5
    invoke-static {v9, v10}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2910
    invoke-static {v11, v12}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2911
    invoke-static {v13, v14}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2912
    invoke-static/range {v15 .. v16}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2913
    throw v0

    .line 2916
    .end local v9    # "baseBN":J
    .end local v11    # "expBN":J
    .end local v13    # "modBN":J
    .end local v15    # "resultBN":J
    :cond_102
    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 2917
    invoke-direct {v7, v3, v2}, Ljava/math/BigInteger;->oddModPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .restart local v0    # "result":Ljava/math/BigInteger;
    goto/16 :goto_1ae

    .line 2926
    .end local v0    # "result":Ljava/math/BigInteger;
    :cond_10e
    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    .line 2928
    .local v0, "p":I
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 2929
    .local v4, "m1":Ljava/math/BigInteger;
    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 2932
    .local v5, "m2":Ljava/math/BigInteger;
    iget v9, v1, Ljava/math/BigInteger;->signum:I

    if-ltz v9, :cond_129

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-ltz v9, :cond_127

    goto :goto_129

    .line 2933
    :cond_127
    move-object v9, v1

    goto :goto_12d

    :cond_129
    :goto_129
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2936
    .local v9, "base2":Ljava/math/BigInteger;
    :goto_12d
    sget-object v10, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_138

    sget-object v10, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_13c

    .line 2937
    :cond_138
    invoke-direct {v9, v3, v4}, Ljava/math/BigInteger;->oddModPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    :goto_13c
    nop

    .line 2940
    .local v10, "a1":Ljava/math/BigInteger;
    invoke-direct {v7, v3, v0}, Ljava/math/BigInteger;->modPow2(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v11

    .line 2943
    .local v11, "a2":Ljava/math/BigInteger;
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 2944
    .local v12, "y1":Ljava/math/BigInteger;
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 2946
    .local v13, "y2":Ljava/math/BigInteger;
    iget-object v14, v2, Ljava/math/BigInteger;->mag:[I

    array-length v14, v14

    const/high16 v15, 0x2000000

    if-ge v14, v15, :cond_16a

    .line 2947
    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object v0, v14

    .local v14, "result":Ljava/math/BigInteger;
    goto :goto_1ae

    .line 2949
    .end local v14    # "result":Ljava/math/BigInteger;
    :cond_16a
    new-instance v14, Ljava/math/MutableBigInteger;

    invoke-direct {v14}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2950
    .local v14, "t1":Ljava/math/MutableBigInteger;
    new-instance v15, Ljava/math/MutableBigInteger;

    move/from16 p1, v0

    .end local v0    # "p":I
    .local p1, "p":I
    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, v12}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v15, v0, v14}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2951
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2952
    .local v0, "t2":Ljava/math/MutableBigInteger;
    new-instance v15, Ljava/math/MutableBigInteger;

    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, v13}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v15, v1, v0}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2953
    invoke-virtual {v14, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2954
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2955
    .local v1, "q":Ljava/math/MutableBigInteger;
    new-instance v15, Ljava/math/MutableBigInteger;

    invoke-direct {v15, v2}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v14, v15, v1}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/MutableBigInteger;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v15

    move-object v0, v15

    .line 2959
    .end local v1    # "q":Ljava/math/MutableBigInteger;
    .end local v4    # "m1":Ljava/math/BigInteger;
    .end local v5    # "m2":Ljava/math/BigInteger;
    .end local v9    # "base2":Ljava/math/BigInteger;
    .end local v10    # "a1":Ljava/math/BigInteger;
    .end local v11    # "a2":Ljava/math/BigInteger;
    .end local v12    # "y1":Ljava/math/BigInteger;
    .end local v13    # "y2":Ljava/math/BigInteger;
    .end local v14    # "t1":Ljava/math/MutableBigInteger;
    .end local p1    # "p":I
    .local v0, "result":Ljava/math/BigInteger;
    :goto_1ae
    if-eqz v6, :cond_1b5

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1b6

    :cond_1b5
    move-object v1, v0

    :goto_1b6
    return-object v1

    .line 2872
    .end local v0    # "result":Ljava/math/BigInteger;
    .end local v3    # "exponent":Ljava/math/BigInteger;
    .end local v6    # "invertResult":Z
    .end local v7    # "base":Ljava/math/BigInteger;
    .end local v8    # "BORINGSSL_MOD_EXP_THRESHOLD":I
    .local p1, "exponent":Ljava/math/BigInteger;
    :cond_1b7
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v3, "BigInteger: modulus not positive"

    invoke-direct {v1, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist multiply(J)Ljava/math/BigInteger;
    .registers 30
    .param p1, "v"    # J

    .line 1761
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_be

    iget v5, v0, Ljava/math/BigInteger;->signum:I

    if-nez v5, :cond_10

    goto/16 :goto_be

    .line 1763
    :cond_10
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v1, v5

    if-nez v5, :cond_1f

    .line 1764
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3

    .line 1765
    :cond_1f
    cmp-long v5, v1, v3

    if-lez v5, :cond_26

    iget v5, v0, Ljava/math/BigInteger;->signum:I

    goto :goto_29

    :cond_26
    iget v5, v0, Ljava/math/BigInteger;->signum:I

    neg-int v5, v5

    .line 1766
    .local v5, "rsign":I
    :goto_29
    cmp-long v6, v1, v3

    if-gez v6, :cond_2e

    .line 1767
    neg-long v1, v1

    .line 1768
    .end local p1    # "v":J
    .local v1, "v":J
    :cond_2e
    const/16 v6, 0x20

    ushr-long v7, v1, v6

    .line 1769
    .local v7, "dh":J
    const-wide v9, 0xffffffffL

    and-long v11, v1, v9

    .line 1771
    .local v11, "dl":J
    iget-object v13, v0, Ljava/math/BigInteger;->mag:[I

    array-length v13, v13

    .line 1772
    .local v13, "xlen":I
    iget-object v14, v0, Ljava/math/BigInteger;->mag:[I

    .line 1773
    .local v14, "value":[I
    cmp-long v15, v7, v3

    if-nez v15, :cond_45

    add-int/lit8 v15, v13, 0x1

    goto :goto_47

    :cond_45
    add-int/lit8 v15, v13, 0x2

    :goto_47
    new-array v15, v15, [I

    .line 1774
    .local v15, "rmag":[I
    const-wide/16 v16, 0x0

    .line 1775
    .local v16, "carry":J
    move-wide/from16 v18, v3

    array-length v3, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 1776
    .local v3, "rstart":I
    add-int/lit8 v20, v13, -0x1

    move/from16 p1, v6

    move-wide/from16 v25, v16

    move-wide/from16 v16, v7

    move-wide/from16 v6, v25

    .end local v7    # "dh":J
    .local v6, "carry":J
    .local v16, "dh":J
    .local v20, "i":I
    :goto_5a
    if-ltz v20, :cond_73

    .line 1777
    aget v8, v14, v20

    move-wide/from16 v21, v9

    int-to-long v9, v8

    and-long v8, v9, v21

    mul-long/2addr v8, v11

    add-long/2addr v8, v6

    .line 1778
    .local v8, "product":J
    add-int/lit8 v10, v3, -0x1

    .end local v3    # "rstart":I
    .local v10, "rstart":I
    long-to-int v4, v8

    aput v4, v15, v3

    .line 1779
    ushr-long v6, v8, p1

    .line 1776
    .end local v8    # "product":J
    add-int/lit8 v20, v20, -0x1

    move v3, v10

    move-wide/from16 v9, v21

    const/4 v4, 0x1

    goto :goto_5a

    .end local v10    # "rstart":I
    .restart local v3    # "rstart":I
    :cond_73
    move-wide/from16 v21, v9

    .line 1781
    .end local v20    # "i":I
    long-to-int v4, v6

    aput v4, v15, v3

    .line 1782
    cmp-long v4, v16, v18

    if-eqz v4, :cond_ac

    .line 1783
    const-wide/16 v6, 0x0

    .line 1784
    array-length v4, v15

    add-int/lit8 v4, v4, -0x2

    .line 1785
    .end local v3    # "rstart":I
    .local v4, "rstart":I
    add-int/lit8 v3, v13, -0x1

    .local v3, "i":I
    :goto_83
    if-ltz v3, :cond_a4

    .line 1786
    aget v8, v14, v3

    int-to-long v8, v8

    and-long v8, v8, v21

    mul-long v8, v8, v16

    aget v10, v15, v4

    move-wide/from16 v23, v1

    .end local v1    # "v":J
    .local v23, "v":J
    int-to-long v0, v10

    and-long v0, v0, v21

    add-long/2addr v8, v0

    add-long/2addr v8, v6

    .line 1788
    .restart local v8    # "product":J
    add-int/lit8 v0, v4, -0x1

    .end local v4    # "rstart":I
    .local v0, "rstart":I
    long-to-int v1, v8

    aput v1, v15, v4

    .line 1789
    ushr-long v6, v8, p1

    .line 1785
    .end local v8    # "product":J
    add-int/lit8 v3, v3, -0x1

    move v4, v0

    move-wide/from16 v1, v23

    move-object/from16 v0, p0

    goto :goto_83

    .end local v0    # "rstart":I
    .end local v23    # "v":J
    .restart local v1    # "v":J
    .restart local v4    # "rstart":I
    :cond_a4
    move-wide/from16 v23, v1

    .line 1791
    .end local v1    # "v":J
    .end local v3    # "i":I
    .restart local v23    # "v":J
    const/4 v0, 0x0

    long-to-int v1, v6

    aput v1, v15, v0

    move v3, v4

    goto :goto_ae

    .line 1782
    .end local v4    # "rstart":I
    .end local v23    # "v":J
    .restart local v1    # "v":J
    .local v3, "rstart":I
    :cond_ac
    move-wide/from16 v23, v1

    .line 1793
    .end local v1    # "v":J
    .restart local v23    # "v":J
    :goto_ae
    cmp-long v0, v6, v18

    if-nez v0, :cond_b8

    .line 1794
    array-length v0, v15

    const/4 v1, 0x1

    invoke-static {v15, v1, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v15

    .line 1795
    :cond_b8
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v15, v5}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 1762
    .end local v3    # "rstart":I
    .end local v5    # "rsign":I
    .end local v6    # "carry":J
    .end local v11    # "dl":J
    .end local v13    # "xlen":I
    .end local v14    # "value":[I
    .end local v15    # "rmag":[I
    .end local v16    # "dh":J
    .end local v23    # "v":J
    .restart local p1    # "v":J
    :cond_be
    :goto_be
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 1583
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api negate()Ljava/math/BigInteger;
    .registers 4

    .line 2795
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0
.end method

.method public whitelist test-api nextProbablePrime()Ljava/math/BigInteger;
    .registers 10

    .line 872
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v0, :cond_f0

    .line 876
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-eqz v0, :cond_ed

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_ed

    .line 879
    :cond_12
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 882
    .local v0, "result":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x5f

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-ge v1, v2, :cond_c1

    .line 885
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 886
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 890
    :cond_30
    :goto_30
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_aa

    .line 891
    sget-object v1, Ljava/math/BigInteger;->SMALL_PRIME_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    .line 892
    .local v1, "r":J
    const-wide/16 v5, 0x3

    rem-long v5, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0x5

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0x7

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0xb

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0xd

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0x11

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0x13

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0x17

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0x1d

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0x1f

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0x25

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a3

    const-wide/16 v5, 0x29

    rem-long v5, v1, v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_aa

    .line 895
    :cond_a3
    sget-object v5, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 896
    goto :goto_30

    .line 901
    .end local v1    # "r":J
    :cond_aa
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_b2

    .line 902
    return-object v0

    .line 905
    :cond_b2
    invoke-virtual {v0, v4, v3}, Ljava/math/BigInteger;->primeToCertainty(ILjava/util/Random;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 906
    return-object v0

    .line 908
    :cond_b9
    sget-object v1, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto/16 :goto_30

    .line 913
    :cond_c1
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 914
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 917
    :cond_cd
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v1}, Ljava/math/BigInteger;->getPrimeSearchLen(I)I

    move-result v1

    .line 920
    .local v1, "searchLen":I
    :goto_d5
    new-instance v2, Ljava/math/BitSieve;

    invoke-direct {v2, v0, v1}, Ljava/math/BitSieve;-><init>(Ljava/math/BigInteger;I)V

    .line 921
    .local v2, "searchSieve":Ljava/math/BitSieve;
    invoke-virtual {v2, v0, v4, v3}, Ljava/math/BitSieve;->retrieve(Ljava/math/BigInteger;ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v5

    .line 923
    .local v5, "candidate":Ljava/math/BigInteger;
    if-eqz v5, :cond_e1

    .line 924
    return-object v5

    .line 925
    :cond_e1
    mul-int/lit8 v6, v1, 0x2

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 926
    .end local v2    # "searchSieve":Ljava/math/BitSieve;
    .end local v5    # "candidate":Ljava/math/BigInteger;
    goto :goto_d5

    .line 877
    .end local v0    # "result":Ljava/math/BigInteger;
    .end local v1    # "searchLen":I
    :cond_ed
    :goto_ed
    sget-object v0, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    return-object v0

    .line 873
    :cond_f0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api not()Ljava/math/BigInteger;
    .registers 4

    .line 3702
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v0

    new-array v0, v0, [I

    .line 3703
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 3704
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    not-int v2, v2

    aput v2, v0, v1

    .line 3703
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3706
    .end local v1    # "i":I
    :cond_18
    invoke-static {v0}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api or(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3669
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v0

    invoke-direct {p1}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    .line 3670
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 3671
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 3672
    invoke-direct {p1, v3}, Ljava/math/BigInteger;->getInt(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 3670
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3674
    .end local v1    # "i":I
    :cond_28
    invoke-static {v0}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api pow(I)Ljava/math/BigInteger;
    .registers 23
    .param p1, "exponent"    # I

    .line 2534
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_111

    .line 2537
    iget v2, v0, Ljava/math/BigInteger;->signum:I

    if-nez v2, :cond_11

    .line 2538
    if-nez v1, :cond_f

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_10

    :cond_f
    move-object v2, v0

    :goto_10
    return-object v2

    .line 2541
    :cond_11
    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    .line 2547
    .local v2, "partToSquare":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v3

    .line 2548
    .local v3, "powersOfTwo":I
    int-to-long v4, v3

    int-to-long v6, v1

    mul-long/2addr v4, v6

    .line 2549
    .local v4, "bitsToShiftLong":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_26

    .line 2550
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 2552
    :cond_26
    long-to-int v6, v4

    .line 2557
    .local v6, "bitsToShift":I
    const/4 v7, 0x1

    if-lez v3, :cond_4a

    .line 2558
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 2559
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    .line 2560
    .local v8, "remainingBits":I
    if-ne v8, v7, :cond_5e

    .line 2561
    iget v9, v0, Ljava/math/BigInteger;->signum:I

    if-gez v9, :cond_43

    and-int/lit8 v9, v1, 0x1

    if-ne v9, v7, :cond_43

    .line 2562
    sget-object v7, Ljava/math/BigInteger;->NEGATIVE_ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    return-object v7

    .line 2564
    :cond_43
    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    return-object v7

    .line 2568
    .end local v8    # "remainingBits":I
    :cond_4a
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    .line 2569
    .restart local v8    # "remainingBits":I
    if-ne v8, v7, :cond_5e

    .line 2570
    iget v9, v0, Ljava/math/BigInteger;->signum:I

    if-gez v9, :cond_5b

    and-int/lit8 v9, v1, 0x1

    if-ne v9, v7, :cond_5b

    .line 2571
    sget-object v7, Ljava/math/BigInteger;->NEGATIVE_ONE:Ljava/math/BigInteger;

    return-object v7

    .line 2573
    :cond_5b
    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object v7

    .line 2581
    :cond_5e
    int-to-long v9, v8

    int-to-long v11, v1

    mul-long/2addr v9, v11

    .line 2585
    .local v9, "scaleFactor":J
    iget-object v11, v2, Ljava/math/BigInteger;->mag:[I

    array-length v11, v11

    if-ne v11, v7, :cond_ca

    const-wide/16 v11, 0x3e

    cmp-long v13, v9, v11

    if-gtz v13, :cond_ca

    .line 2587
    iget v13, v0, Ljava/math/BigInteger;->signum:I

    if-gez v13, :cond_76

    and-int/lit8 v13, v1, 0x1

    if-ne v13, v7, :cond_76

    const/4 v13, -0x1

    goto :goto_77

    :cond_76
    move v13, v7

    .line 2588
    .local v13, "newSign":I
    :goto_77
    const-wide/16 v14, 0x1

    .line 2589
    .local v14, "result":J
    move-wide/from16 v16, v11

    iget-object v11, v2, Ljava/math/BigInteger;->mag:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    int-to-long v11, v11

    const-wide v18, 0xffffffffL

    and-long v11, v11, v18

    .line 2591
    .local v11, "baseToPow2":J
    move/from16 v18, p1

    .line 2594
    .local v18, "workingExponent":I
    :goto_8a
    if-eqz v18, :cond_a0

    .line 2595
    move-object/from16 v19, v2

    .end local v2    # "partToSquare":Ljava/math/BigInteger;
    .local v19, "partToSquare":Ljava/math/BigInteger;
    and-int/lit8 v2, v18, 0x1

    if-ne v2, v7, :cond_93

    .line 2596
    mul-long/2addr v14, v11

    .line 2599
    :cond_93
    ushr-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    if-eqz v2, :cond_9d

    .line 2600
    mul-long/2addr v11, v11

    move-object/from16 v2, v19

    goto :goto_8a

    .line 2599
    :cond_9d
    move-object/from16 v2, v19

    goto :goto_8a

    .line 2605
    .end local v19    # "partToSquare":Ljava/math/BigInteger;
    .restart local v2    # "partToSquare":Ljava/math/BigInteger;
    :cond_a0
    move-object/from16 v19, v2

    .end local v2    # "partToSquare":Ljava/math/BigInteger;
    .restart local v19    # "partToSquare":Ljava/math/BigInteger;
    if-lez v3, :cond_c3

    .line 2606
    move/from16 v20, v3

    .end local v3    # "powersOfTwo":I
    .local v20, "powersOfTwo":I
    int-to-long v2, v6

    add-long/2addr v2, v9

    cmp-long v2, v2, v16

    if-gtz v2, :cond_b8

    .line 2607
    shl-long v2, v14, v6

    move-wide/from16 v16, v2

    int-to-long v2, v13

    mul-long v2, v2, v16

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 2609
    :cond_b8
    int-to-long v2, v13

    mul-long/2addr v2, v14

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 2612
    .end local v20    # "powersOfTwo":I
    .restart local v3    # "powersOfTwo":I
    :cond_c3
    int-to-long v2, v13

    mul-long/2addr v2, v14

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 2585
    .end local v11    # "baseToPow2":J
    .end local v13    # "newSign":I
    .end local v14    # "result":J
    .end local v18    # "workingExponent":I
    .end local v19    # "partToSquare":Ljava/math/BigInteger;
    .restart local v2    # "partToSquare":Ljava/math/BigInteger;
    :cond_ca
    move-object/from16 v19, v2

    move/from16 v20, v3

    .line 2615
    .end local v2    # "partToSquare":Ljava/math/BigInteger;
    .end local v3    # "powersOfTwo":I
    .restart local v19    # "partToSquare":Ljava/math/BigInteger;
    .restart local v20    # "powersOfTwo":I
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    int-to-long v2, v2

    int-to-long v11, v1

    mul-long/2addr v2, v11

    const-wide/16 v11, 0x20

    div-long/2addr v2, v11

    const-wide/32 v11, 0x4000000

    cmp-long v2, v2, v11

    if-lez v2, :cond_e2

    .line 2616
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 2622
    :cond_e2
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 2624
    .local v2, "answer":Ljava/math/BigInteger;
    move/from16 v3, p1

    move v11, v3

    move-object/from16 v3, v19

    .line 2626
    .end local v19    # "partToSquare":Ljava/math/BigInteger;
    .local v3, "partToSquare":Ljava/math/BigInteger;
    .local v11, "workingExponent":I
    :cond_e9
    :goto_e9
    if-eqz v11, :cond_fd

    .line 2627
    and-int/lit8 v12, v11, 0x1

    if-ne v12, v7, :cond_f3

    .line 2628
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 2631
    :cond_f3
    ushr-int/lit8 v12, v11, 0x1

    move v11, v12

    if-eqz v12, :cond_e9

    .line 2632
    invoke-direct {v3}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_e9

    .line 2637
    :cond_fd
    if-lez v20, :cond_103

    .line 2638
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 2641
    :cond_103
    iget v12, v0, Ljava/math/BigInteger;->signum:I

    if-gez v12, :cond_110

    and-int/lit8 v12, v1, 0x1

    if-ne v12, v7, :cond_110

    .line 2642
    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    return-object v7

    .line 2644
    :cond_110
    return-object v2

    .line 2535
    .end local v2    # "answer":Ljava/math/BigInteger;
    .end local v3    # "partToSquare":Ljava/math/BigInteger;
    .end local v4    # "bitsToShiftLong":J
    .end local v6    # "bitsToShift":I
    .end local v8    # "remainingBits":I
    .end local v9    # "scaleFactor":J
    .end local v11    # "workingExponent":I
    .end local v20    # "powersOfTwo":I
    :cond_111
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Negative exponent"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist primeToCertainty(ILjava/util/Random;)Z
    .registers 8
    .param p1, "certainty"    # I
    .param p2, "random"    # Ljava/util/Random;

    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, "rounds":I
    const v1, 0x7ffffffe

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 957
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 958
    .local v3, "sizeInBits":I
    const/16 v4, 0x64

    if-ge v3, v4, :cond_20

    .line 959
    const/16 v0, 0x32

    .line 960
    if-ge v1, v0, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    move v2, v0

    .line 961
    .end local v0    # "rounds":I
    .local v2, "rounds":I
    :goto_1b
    invoke-direct {p0, v2, p2}, Ljava/math/BigInteger;->passesMillerRabin(ILjava/util/Random;)Z

    move-result v0

    return v0

    .line 964
    .end local v2    # "rounds":I
    .restart local v0    # "rounds":I
    :cond_20
    const/16 v4, 0x100

    if-ge v3, v4, :cond_27

    .line 965
    const/16 v0, 0x1b

    goto :goto_3c

    .line 966
    :cond_27
    const/16 v4, 0x200

    if-ge v3, v4, :cond_2e

    .line 967
    const/16 v0, 0xf

    goto :goto_3c

    .line 968
    :cond_2e
    const/16 v4, 0x300

    if-ge v3, v4, :cond_35

    .line 969
    const/16 v0, 0x8

    goto :goto_3c

    .line 970
    :cond_35
    const/16 v4, 0x400

    if-ge v3, v4, :cond_3b

    .line 971
    const/4 v0, 0x4

    goto :goto_3c

    .line 973
    :cond_3b
    const/4 v0, 0x2

    .line 975
    :goto_3c
    if-ge v1, v0, :cond_40

    move v4, v1

    goto :goto_41

    :cond_40
    move v4, v0

    .line 977
    .end local v0    # "rounds":I
    .local v4, "rounds":I
    :goto_41
    invoke-direct {p0, v4, p2}, Ljava/math/BigInteger;->passesMillerRabin(ILjava/util/Random;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-direct {p0}, Ljava/math/BigInteger;->passesLucasLehmer()Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    return v2
.end method

.method public whitelist test-api remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2463
    iget-object v0, p1, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    array-length v2, v2

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_11

    goto :goto_19

    .line 2470
    :cond_11
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 2465
    :cond_19
    :goto_19
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->remainderKnuth(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setBit(I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "n"    # I

    .line 3755
    if-ltz p1, :cond_31

    .line 3758
    ushr-int/lit8 v0, p1, 0x5

    .line 3759
    .local v0, "intNum":I
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 3761
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_21

    .line 3762
    array-length v3, v1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v4

    aput v4, v1, v3

    .line 3761
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3764
    .end local v2    # "i":I
    :cond_21
    array-length v2, v1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    aget v3, v1, v2

    and-int/lit8 v5, p1, 0x1f

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 3766
    invoke-static {v1}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 3756
    .end local v0    # "intNum":I
    .end local v1    # "result":[I
    :cond_31
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative bit address"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api shiftLeft(I)Ljava/math/BigInteger;
    .registers 5
    .param p1, "n"    # I

    .line 3488
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_7

    .line 3489
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 3490
    :cond_7
    if-lez p1, :cond_17

    .line 3491
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, p1}, Ljava/math/BigInteger;->shiftLeft([II)[I

    move-result-object v1

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 3492
    :cond_17
    if-nez p1, :cond_1a

    .line 3493
    return-object p0

    .line 3497
    :cond_1a
    neg-int v0, p1

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->shiftRightImpl(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api shiftRight(I)Ljava/math/BigInteger;
    .registers 5
    .param p1, "n"    # I

    .line 3557
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_7

    .line 3558
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 3559
    :cond_7
    if-lez p1, :cond_e

    .line 3560
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->shiftRightImpl(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 3561
    :cond_e
    if-nez p1, :cond_11

    .line 3562
    return-object p0

    .line 3566
    :cond_11
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    neg-int v2, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->shiftLeft([II)[I

    move-result-object v1

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0
.end method

.method public whitelist test-api shortValueExact()S
    .registers 3

    .line 5045
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1f

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1f

    .line 5046
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 5047
    .local v0, "value":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_1f

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1f

    .line 5048
    invoke-virtual {p0}, Ljava/math/BigInteger;->shortValue()S

    move-result v1

    return v1

    .line 5050
    .end local v0    # "value":I
    :cond_1f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of short range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api signum()I
    .registers 2

    .line 2805
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    return v0
.end method

.method public whitelist test-api sqrt()Ljava/math/BigInteger;
    .registers 3

    .line 2667
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v0, :cond_14

    .line 2671
    new-instance v0, Ljava/math/MutableBigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>([I)V

    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->sqrt()Ljava/math/MutableBigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 2668
    :cond_14
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative BigInteger"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api sqrtAndRemainder()[Ljava/math/BigInteger;
    .registers 4

    .line 2690
    invoke-virtual {p0}, Ljava/math/BigInteger;->sqrt()Ljava/math/BigInteger;

    move-result-object v0

    .line 2691
    .local v0, "s":Ljava/math/BigInteger;
    invoke-direct {v0}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 2692
    .local v1, "r":Ljava/math/BigInteger;
    nop

    .line 2693
    filled-new-array {v0, v1}, [Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 1525
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_5

    .line 1526
    return-object p0

    .line 1527
    :cond_5
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_e

    .line 1528
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1529
    :cond_e
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-eq v0, v1, :cond_24

    .line 1530
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->add([I[I)[I

    move-result-object v1

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 1532
    :cond_24
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v0

    .line 1533
    .local v0, "cmp":I
    if-nez v0, :cond_2d

    .line 1534
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 1535
    :cond_2d
    if-lez v0, :cond_38

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->subtract([I[I)[I

    move-result-object v1

    goto :goto_40

    .line 1536
    :cond_38
    iget-object v1, p1, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->subtract([I[I)[I

    move-result-object v1

    :goto_40
    nop

    .line 1537
    .local v1, "resultMag":[I
    invoke-static {v1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    .line 1538
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->signum:I

    if-ne v0, v3, :cond_4d

    const/4 v3, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v3, -0x1

    :goto_4e
    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2
.end method

.method public whitelist test-api testBit(I)Z
    .registers 5
    .param p1, "n"    # I

    .line 3740
    if-ltz p1, :cond_13

    .line 3743
    ushr-int/lit8 v0, p1, 0x5

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->getInt(I)I

    move-result v0

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2

    .line 3741
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative bit address"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toByteArray()[B
    .registers 8

    .line 4333
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    .line 4334
    .local v0, "byteLen":I
    new-array v1, v0, [B

    .line 4336
    .local v1, "byteArray":[B
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    const/4 v3, 0x4

    .local v3, "bytesCopied":I
    const/4 v4, 0x0

    .local v4, "nextInt":I
    const/4 v5, 0x0

    .local v5, "intIndex":I
    :goto_f
    if-ltz v2, :cond_27

    .line 4337
    const/4 v6, 0x4

    if-ne v3, v6, :cond_1d

    .line 4338
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "intIndex":I
    .local v6, "intIndex":I
    invoke-direct {p0, v5}, Ljava/math/BigInteger;->getInt(I)I

    move-result v4

    .line 4339
    const/4 v3, 0x1

    move v5, v6

    goto :goto_21

    .line 4341
    .end local v6    # "intIndex":I
    .restart local v5    # "intIndex":I
    :cond_1d
    ushr-int/lit8 v4, v4, 0x8

    .line 4342
    add-int/lit8 v3, v3, 0x1

    .line 4344
    :goto_21
    int-to-byte v6, v4

    aput-byte v6, v1, v2

    .line 4336
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 4346
    .end local v2    # "i":I
    .end local v3    # "bytesCopied":I
    .end local v4    # "nextInt":I
    .end local v5    # "intIndex":I
    :cond_27
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 4315
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString(I)Ljava/lang/String;
    .registers 8
    .param p1, "radix"    # I

    .line 4121
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_7

    .line 4122
    const-string v0, "0"

    return-object v0

    .line 4123
    :cond_7
    const/4 v0, 0x2

    if-lt p1, v0, :cond_e

    const/16 v0, 0x24

    if-le p1, v0, :cond_10

    .line 4124
    :cond_e
    const/16 p1, 0xa

    .line 4126
    :cond_10
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 4131
    .local v0, "abs":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 4132
    .local v1, "b":I
    int-to-double v2, v1

    sget-wide v4, Ljava/math/BigInteger;->LOG_TWO:D

    mul-double/2addr v2, v4

    sget-object v4, Ljava/math/BigInteger;->logCache:[D

    aget-wide v4, v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 4133
    iget v3, p0, Ljava/math/BigInteger;->signum:I

    const/4 v4, 0x0

    if-gez v3, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    move v3, v4

    :goto_31
    add-int/2addr v2, v3

    .line 4134
    .local v2, "numChars":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4136
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    if-gez v5, :cond_40

    .line 4137
    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4141
    :cond_40
    invoke-static {v0, v3, p1, v4}, Ljava/math/BigInteger;->toString(Ljava/math/BigInteger;Ljava/lang/StringBuilder;II)V

    .line 4143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public whitelist test-api xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3686
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v0

    invoke-direct {p1}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    .line 3687
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 3688
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 3689
    invoke-direct {p1, v3}, Ljava/math/BigInteger;->getInt(I)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 3687
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3691
    .end local v1    # "i":I
    :cond_28
    invoke-static {v0}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method
