.class public Ljava/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/math/BigDecimal$LongOverflow;,
        Ljava/math/BigDecimal$StringBuilderHelper;,
        Ljava/math/BigDecimal$UnsafeHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static volatile blacklist BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger; = null

.field private static final blacklist BIG_TEN_POWERS_TABLE_INITLEN:I

.field private static final blacklist BIG_TEN_POWERS_TABLE_MAX:I

.field private static final blacklist DIV_NUM_BASE:J = 0x100000000L

.field private static final blacklist DOUBLE_10_POW:[D

.field private static final blacklist FLOAT_10_POW:[F

.field private static final blacklist HALF_LONG_MAX_VALUE:J = 0x3fffffffffffffffL

.field private static final blacklist HALF_LONG_MIN_VALUE:J = -0x4000000000000000L

.field static final blacklist INFLATED:J = -0x8000000000000000L

.field private static final blacklist INFLATED_BIGINT:Ljava/math/BigInteger;

.field private static final blacklist LONGLONG_TEN_POWERS_TABLE:[[J

.field private static final blacklist LONG_TEN_POWERS_TABLE:[J

.field private static final blacklist MAX_COMPACT_DIGITS:I = 0x12

.field public static final whitelist test-api ONE:Ljava/math/BigDecimal;

.field private static final blacklist ONE_HALF:Ljava/math/BigDecimal;

.field private static final blacklist ONE_TENTH:Ljava/math/BigDecimal;

.field public static final whitelist test-api ROUND_CEILING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation
.end field

.field public static final whitelist test-api ROUND_DOWN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation
.end field

.field public static final whitelist test-api ROUND_FLOOR:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation
.end field

.field public static final whitelist test-api ROUND_HALF_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation
.end field

.field public static final whitelist test-api ROUND_HALF_EVEN:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation
.end field

.field public static final whitelist test-api ROUND_HALF_UP:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation
.end field

.field public static final whitelist test-api ROUND_UNNECESSARY:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation
.end field

.field public static final whitelist test-api ROUND_UP:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation
.end field

.field public static final whitelist test-api TEN:Ljava/math/BigDecimal;

.field private static final blacklist THRESHOLDS_TABLE:[J

.field public static final whitelist test-api ZERO:Ljava/math/BigDecimal;

.field private static final greylist-max-o ZERO_SCALED_BY:[Ljava/math/BigDecimal;

.field private static final blacklist ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

.field private static final whitelist serialVersionUID:J = 0x54c71557f981284fL

.field private static final blacklist threadLocalStringBuilderHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/math/BigDecimal$StringBuilderHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient blacklist intCompact:J

.field private final greylist-max-o intVal:Ljava/math/BigInteger;

.field private transient greylist-max-o precision:I

.field private final greylist-max-o scale:I

.field private transient blacklist stringCache:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$minflated(Ljava/math/BigDecimal;)Ljava/math/BigInteger;
    .registers 1

    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcompactValFor(Ljava/math/BigInteger;)J
    .registers 3

    invoke-static {p0}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 23

    .line 306
    nop

    .line 347
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    .line 365
    new-instance v0, Ljava/math/BigDecimal$1;

    invoke-direct {v0}, Ljava/math/BigDecimal$1;-><init>()V

    sput-object v0, Ljava/math/BigDecimal;->threadLocalStringBuilderHelper:Ljava/lang/ThreadLocal;

    .line 373
    new-instance v1, Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v2, Ljava/math/BigDecimal;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v4, 0x1

    invoke-direct/range {v2 .. v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v3, Ljava/math/BigDecimal;

    sget-object v4, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v5, 0x2

    invoke-direct/range {v3 .. v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v4, Ljava/math/BigDecimal;

    .line 377
    const-wide/16 v5, 0x3

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v6, 0x3

    invoke-direct/range {v4 .. v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v5, Ljava/math/BigDecimal;

    .line 378
    const-wide/16 v6, 0x4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v7, 0x4

    invoke-direct/range {v5 .. v10}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v6, Ljava/math/BigDecimal;

    .line 379
    const-wide/16 v7, 0x5

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v8, 0x5

    invoke-direct/range {v6 .. v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v7, Ljava/math/BigDecimal;

    .line 380
    const-wide/16 v8, 0x6

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v9, 0x6

    invoke-direct/range {v7 .. v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v8, Ljava/math/BigDecimal;

    .line 381
    const-wide/16 v9, 0x7

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-wide/16 v10, 0x7

    invoke-direct/range {v8 .. v13}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v9, Ljava/math/BigDecimal;

    .line 382
    const-wide/16 v10, 0x8

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-wide/16 v11, 0x8

    invoke-direct/range {v9 .. v14}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v10, Ljava/math/BigDecimal;

    .line 383
    const-wide/16 v11, 0x9

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide/16 v12, 0x9

    invoke-direct/range {v10 .. v15}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v11, Ljava/math/BigDecimal;

    sget-object v12, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    const/4 v15, 0x0

    const/16 v16, 0x2

    const-wide/16 v13, 0xa

    invoke-direct/range {v11 .. v16}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    filled-new-array/range {v1 .. v11}, [Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    .line 388
    sget-object v0, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    new-instance v3, Ljava/math/BigDecimal;

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-wide/16 v5, 0x0

    invoke-direct/range {v3 .. v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v4, Ljava/math/BigDecimal;

    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v6, 0x0

    invoke-direct/range {v4 .. v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v5, Ljava/math/BigDecimal;

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v9, 0x3

    const/4 v10, 0x1

    const-wide/16 v7, 0x0

    invoke-direct/range {v5 .. v10}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v6, Ljava/math/BigDecimal;

    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v10, 0x4

    const/4 v11, 0x1

    const-wide/16 v8, 0x0

    invoke-direct/range {v6 .. v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v7, Ljava/math/BigDecimal;

    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v11, 0x5

    const/4 v12, 0x1

    const-wide/16 v9, 0x0

    invoke-direct/range {v7 .. v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v8, Ljava/math/BigDecimal;

    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v12, 0x6

    const/4 v13, 0x1

    const-wide/16 v10, 0x0

    invoke-direct/range {v8 .. v13}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v9, Ljava/math/BigDecimal;

    sget-object v10, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v13, 0x7

    const/4 v14, 0x1

    const-wide/16 v11, 0x0

    invoke-direct/range {v9 .. v14}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v10, Ljava/math/BigDecimal;

    sget-object v11, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v14, 0x8

    const/4 v15, 0x1

    const-wide/16 v12, 0x0

    invoke-direct/range {v10 .. v15}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v11, Ljava/math/BigDecimal;

    sget-object v12, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v15, 0x9

    const/16 v16, 0x1

    const-wide/16 v13, 0x0

    invoke-direct/range {v11 .. v16}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v12, Ljava/math/BigDecimal;

    sget-object v13, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v16, 0xa

    const/16 v17, 0x1

    const-wide/16 v14, 0x0

    invoke-direct/range {v12 .. v17}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v13, Ljava/math/BigDecimal;

    sget-object v14, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v17, 0xb

    const/16 v18, 0x1

    const-wide/16 v15, 0x0

    invoke-direct/range {v13 .. v18}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v14, Ljava/math/BigDecimal;

    sget-object v15, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v18, 0xc

    const/16 v19, 0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v14 .. v19}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v16, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v19, 0xd

    const/16 v20, 0x1

    const-wide/16 v17, 0x0

    invoke-direct/range {v15 .. v20}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v16, Ljava/math/BigDecimal;

    sget-object v17, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v20, 0xe

    const/16 v21, 0x1

    const-wide/16 v18, 0x0

    invoke-direct/range {v16 .. v21}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    new-instance v17, Ljava/math/BigDecimal;

    sget-object v18, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v21, 0xf

    const/16 v22, 0x1

    const-wide/16 v19, 0x0

    invoke-direct/range {v17 .. v22}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    filled-new-array/range {v2 .. v17}, [Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    .line 417
    sget-object v0, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    aget-object v0, v0, v1

    sput-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 425
    sget-object v0, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 433
    sget-object v0, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    sput-object v0, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    .line 439
    const-wide/16 v0, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal;->ONE_TENTH:Ljava/math/BigDecimal;

    .line 444
    const-wide/16 v0, 0x5

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal;->ONE_HALF:Ljava/math/BigDecimal;

    .line 3845
    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_312

    sput-object v0, Ljava/math/BigDecimal;->DOUBLE_10_POW:[D

    .line 3856
    const/16 v0, 0xb

    new-array v0, v0, [F

    fill-array-data v0, :array_372

    sput-object v0, Ljava/math/BigDecimal;->FLOAT_10_POW:[F

    .line 4142
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_38c

    sput-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    .line 4164
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4166
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4167
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4168
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4169
    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 4170
    const-wide/32 v1, 0x186a0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 4171
    const-wide/32 v1, 0xf4240

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 4172
    const-wide/32 v1, 0x989680

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 4173
    const-wide/32 v1, 0x5f5e100

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 4174
    const-wide/32 v1, 0x3b9aca00

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 4175
    const-wide v1, 0x2540be400L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 4176
    const-wide v1, 0x174876e800L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 4177
    const-wide v1, 0xe8d4a51000L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 4178
    const-wide v1, 0x9184e72a000L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 4179
    const-wide v1, 0x5af3107a4000L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 4180
    const-wide v1, 0x38d7ea4c68000L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 4181
    const-wide v1, 0x2386f26fc10000L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 4182
    const-wide v1, 0x16345785d8a0000L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 4183
    const-wide v1, 0xde0b6b3a7640000L

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    .line 4186
    sget-object v0, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    array-length v0, v0

    sput v0, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE_INITLEN:I

    .line 4188
    sget v0, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE_INITLEN:I

    mul-int/lit8 v0, v0, 0x10

    sput v0, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE_MAX:I

    .line 4191
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_3dc

    sput-object v0, Ljava/math/BigDecimal;->THRESHOLDS_TABLE:[J

    .line 5710
    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_42c

    new-array v2, v0, [J

    fill-array-data v2, :array_438

    new-array v3, v0, [J

    fill-array-data v3, :array_444

    new-array v4, v0, [J

    fill-array-data v4, :array_450

    new-array v5, v0, [J

    fill-array-data v5, :array_45c

    new-array v6, v0, [J

    fill-array-data v6, :array_468

    new-array v7, v0, [J

    fill-array-data v7, :array_474

    new-array v8, v0, [J

    fill-array-data v8, :array_480

    new-array v9, v0, [J

    fill-array-data v9, :array_48c

    new-array v10, v0, [J

    fill-array-data v10, :array_498

    new-array v11, v0, [J

    fill-array-data v11, :array_4a4

    new-array v12, v0, [J

    fill-array-data v12, :array_4b0

    new-array v13, v0, [J

    fill-array-data v13, :array_4bc

    new-array v14, v0, [J

    fill-array-data v14, :array_4c8

    new-array v15, v0, [J

    fill-array-data v15, :array_4d4

    new-array v0, v0, [J

    fill-array-data v0, :array_4e0

    move-object/from16 v16, v0

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_4ec

    move-object/from16 v17, v0

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_4f8

    move-object/from16 v18, v0

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_504

    move-object/from16 v19, v0

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_510

    move-object/from16 v20, v0

    filled-new-array/range {v1 .. v20}, [[J

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal;->LONGLONG_TEN_POWERS_TABLE:[[J

    return-void

    :array_312
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    :array_372
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    :array_38c
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_3dc
    .array-data 8
        0x7fffffffffffffffL
        0xcccccccccccccccL
        0x147ae147ae147aeL
        0x20c49ba5e353f7L
        0x346dc5d638865L
        0x53e2d6238da3L
        0x8637bd05af6L
        0xd6bf94d5e5L
        0x15798ee230L
        0x225c17d04L
        0x36f9bfb3
        0x57f5ff8
        0x8cbccc
        0xe12e1
        0x16849
        0x2407
        0x39a
        0x5c
        0x9
    .end array-data

    :array_42c
    .array-data 8
        0x0
        -0x7538dcfb76180000L    # -9.630676049668687E-257
    .end array-data

    :array_438
    .array-data 8
        0x5
        0x6bc75e2d63100000L
    .end array-data

    :array_444
    .array-data 8
        0x36
        0x35c9adc5dea00000L    # 1.3726678355276356E-49
    .end array-data

    :array_450
    .array-data 8
        0x21e
        0x19e0c9bab2400000L    # 4.938689790935458E-184
    .end array-data

    :array_45c
    .array-data 8
        0x152d
        0x2c7e14af6800000L
    .end array-data

    :array_468
    .array-data 8
        0xd3c2
        0x1bcecceda1000000L
    .end array-data

    :array_474
    .array-data 8
        0x84595
        0x161401484a000000L
    .end array-data

    :array_480
    .array-data 8
        0x52b7d2
        -0x2337f32d1c000000L    # -8.950035900659082E138
    .end array-data

    :array_48c
    .array-data 8
        0x33b2e3c
        -0x602f7fc318000000L    # -1.922961773682622E-155
    .end array-data

    :array_498
    .array-data 8
        0x204fce5e
        0x3e25026110000000L    # 2.4458036707031283E-9
    .end array-data

    :array_4a4
    .array-data 8
        0x1431e0faeL
        0x6d7217caa0000000L    # 1.5967094556710666E219
    .end array-data

    :array_4b0
    .array-data 8
        0xc9f2c9cd0L
        0x4674edea40000000L    # 2.6531110215779044E31
    .end array-data

    :array_4bc
    .array-data 8
        0x7e37be2022L
        -0x3f6eb4d980000000L    # -1106.78759765625
    .end array-data

    :array_4c8
    .array-data 8
        0x4ee2d6d415bL
        -0x7a53107f00000000L
    .end array-data

    :array_4d4
    .array-data 8
        0x314dc6448d93L
        0x38c15b0a00000000L
    .end array-data

    :array_4e0
    .array-data 8
        0x1ed09bead87c0L
        0x378d8e6400000000L    # 4.241108625317677E-41
    .end array-data

    :array_4ec
    .array-data 8
        0x13426172c74d82L
        0x2b878fe800000000L    # 5.3862443665208984E-99
    .end array-data

    :array_4f8
    .array-data 8
        0xc097ce7bc90715L
        -0x4cb460f000000000L    # -1.342875060065033E-61
    .end array-data

    :array_504
    .array-data 8
        0x785ee10d5da46d9L
        0xf436a000000000L
    .end array-data

    :array_510
    .array-data 8
        0x4b3b4ca85a86c47aL    # 2.614767250156754E54
        0x98a224000000000L
    .end array-data
.end method

.method public constructor whitelist test-api <init>(D)V
    .registers 4
    .param p1, "val"    # D

    .line 973
    sget-object v0, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {p0, p1, p2, v0}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 974
    return-void
.end method

.method public constructor whitelist test-api <init>(DLjava/math/MathContext;)V
    .registers 26
    .param p1, "val"    # D
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 992
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0}, Ljava/lang/Number;-><init>()V

    .line 993
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_115

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_115

    .line 997
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 998
    .local v2, "valBits":J
    const/16 v4, 0x3f

    shr-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-nez v4, :cond_24

    move v4, v5

    goto :goto_25

    :cond_24
    const/4 v4, -0x1

    .line 999
    .local v4, "sign":I
    :goto_25
    const/16 v8, 0x34

    shr-long v8, v2, v8

    const-wide/16 v10, 0x7ff

    and-long/2addr v8, v10

    long-to-int v8, v8

    .line 1000
    .local v8, "exponent":I
    const-wide v9, 0xfffffffffffffL

    if-nez v8, :cond_37

    .line 1001
    and-long/2addr v9, v2

    shl-long/2addr v9, v5

    goto :goto_3b

    .line 1002
    :cond_37
    and-long/2addr v9, v2

    const-wide/high16 v11, 0x10000000000000L

    or-long/2addr v9, v11

    :goto_3b
    nop

    .line 1003
    .local v9, "significand":J
    add-int/lit16 v8, v8, -0x433

    .line 1010
    cmp-long v11, v9, v6

    if-nez v11, :cond_4e

    .line 1011
    sget-object v11, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v11, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1012
    const/4 v11, 0x0

    iput v11, v0, Ljava/math/BigDecimal;->scale:I

    .line 1013
    iput-wide v6, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 1014
    iput v5, v0, Ljava/math/BigDecimal;->precision:I

    .line 1015
    return-void

    .line 1018
    :cond_4e
    :goto_4e
    const-wide/16 v11, 0x1

    and-long/2addr v11, v9

    cmp-long v11, v11, v6

    if-nez v11, :cond_59

    .line 1019
    shr-long/2addr v9, v5

    .line 1020
    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 1022
    :cond_59
    const/4 v5, 0x0

    .line 1025
    .local v5, "scl":I
    int-to-long v6, v4

    mul-long/2addr v6, v9

    .line 1026
    .local v6, "compactVal":J
    const-wide/high16 v11, -0x8000000000000000L

    if-nez v8, :cond_69

    .line 1027
    cmp-long v13, v6, v11

    if-nez v13, :cond_67

    sget-object v13, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_68

    :cond_67
    const/4 v13, 0x0

    .local v13, "rb":Ljava/math/BigInteger;
    :goto_68
    goto :goto_8a

    .line 1029
    .end local v13    # "rb":Ljava/math/BigInteger;
    :cond_69
    if-gez v8, :cond_7c

    .line 1030
    const-wide/16 v13, 0x5

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    neg-int v14, v8

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 1031
    .restart local v13    # "rb":Ljava/math/BigInteger;
    neg-int v5, v8

    goto :goto_86

    .line 1033
    .end local v13    # "rb":Ljava/math/BigInteger;
    :cond_7c
    sget-object v13, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 1035
    .restart local v13    # "rb":Ljava/math/BigInteger;
    :goto_86
    invoke-static {v13}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v6

    .line 1037
    :goto_8a
    const/4 v14, 0x0

    .line 1038
    .local v14, "prec":I
    iget v15, v1, Ljava/math/MathContext;->precision:I

    .line 1039
    .local v15, "mcp":I
    if-lez v15, :cond_106

    .line 1040
    move-wide/from16 v16, v11

    iget-object v11, v1, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v11, v11, Ljava/math/RoundingMode;->oldMode:I

    .line 1042
    .local v11, "mode":I
    cmp-long v12, v6, v16

    if-nez v12, :cond_c8

    .line 1043
    invoke-static {v13}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v12

    .line 1044
    .end local v14    # "prec":I
    .local v12, "prec":I
    sub-int v14, v12, v15

    .line 1045
    .local v14, "drop":I
    :goto_9f
    if-lez v14, :cond_c4

    .line 1046
    move-wide/from16 v18, v2

    .end local v2    # "valBits":J
    .local v18, "valBits":J
    int-to-long v2, v5

    move-wide/from16 v20, v2

    int-to-long v2, v14

    sub-long v2, v20, v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    .line 1047
    invoke-static {v13, v14, v11}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object v13

    .line 1048
    invoke-static {v13}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v6

    .line 1049
    cmp-long v2, v6, v16

    if-eqz v2, :cond_bb

    .line 1050
    move v14, v12

    goto :goto_ca

    .line 1052
    :cond_bb
    invoke-static {v13}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v12

    .line 1053
    sub-int v14, v12, v15

    move-wide/from16 v2, v18

    goto :goto_9f

    .line 1045
    .end local v18    # "valBits":J
    .restart local v2    # "valBits":J
    :cond_c4
    move-wide/from16 v18, v2

    .end local v2    # "valBits":J
    .restart local v18    # "valBits":J
    move v14, v12

    goto :goto_ca

    .line 1042
    .end local v12    # "prec":I
    .end local v18    # "valBits":J
    .restart local v2    # "valBits":J
    .local v14, "prec":I
    :cond_c8
    move-wide/from16 v18, v2

    .line 1056
    .end local v2    # "valBits":J
    .restart local v18    # "valBits":J
    :goto_ca
    cmp-long v2, v6, v16

    if-eqz v2, :cond_101

    .line 1057
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v2

    .line 1058
    .end local v14    # "prec":I
    .local v2, "prec":I
    sub-int v3, v2, v15

    move v14, v2

    .line 1059
    .end local v2    # "prec":I
    .local v3, "drop":I
    .restart local v14    # "prec":I
    :goto_d5
    if-lez v3, :cond_fa

    .line 1060
    move v2, v8

    move-wide/from16 v16, v9

    .end local v8    # "exponent":I
    .end local v9    # "significand":J
    .local v2, "exponent":I
    .local v16, "significand":J
    int-to-long v8, v5

    move v10, v4

    move v12, v5

    .end local v4    # "sign":I
    .end local v5    # "scl":I
    .local v10, "sign":I
    .local v12, "scl":I
    int-to-long v4, v3

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    .line 1061
    .end local v12    # "scl":I
    .restart local v5    # "scl":I
    sget-object v4, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v8, v4, v3

    iget-object v4, v1, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v4, v4, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v6

    .line 1062
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v14

    .line 1063
    sub-int v3, v14, v15

    move v8, v2

    move v4, v10

    move-wide/from16 v9, v16

    goto :goto_d5

    .line 1065
    .end local v2    # "exponent":I
    .end local v10    # "sign":I
    .end local v16    # "significand":J
    .restart local v4    # "sign":I
    .restart local v8    # "exponent":I
    .restart local v9    # "significand":J
    :cond_fa
    move v12, v5

    move v2, v8

    move-wide/from16 v16, v9

    move v10, v4

    .end local v4    # "sign":I
    .end local v5    # "scl":I
    .end local v8    # "exponent":I
    .end local v9    # "significand":J
    .restart local v2    # "exponent":I
    .restart local v10    # "sign":I
    .restart local v12    # "scl":I
    .restart local v16    # "significand":J
    const/4 v13, 0x0

    goto :goto_10c

    .line 1056
    .end local v2    # "exponent":I
    .end local v3    # "drop":I
    .end local v10    # "sign":I
    .end local v12    # "scl":I
    .end local v16    # "significand":J
    .restart local v4    # "sign":I
    .restart local v5    # "scl":I
    .restart local v8    # "exponent":I
    .restart local v9    # "significand":J
    :cond_101
    move v2, v8

    move-wide/from16 v16, v9

    move v10, v4

    .end local v4    # "sign":I
    .end local v8    # "exponent":I
    .end local v9    # "significand":J
    .restart local v2    # "exponent":I
    .restart local v10    # "sign":I
    .restart local v16    # "significand":J
    goto :goto_10c

    .line 1039
    .end local v10    # "sign":I
    .end local v11    # "mode":I
    .end local v16    # "significand":J
    .end local v18    # "valBits":J
    .local v2, "valBits":J
    .restart local v4    # "sign":I
    .restart local v8    # "exponent":I
    .restart local v9    # "significand":J
    :cond_106
    move-wide/from16 v18, v2

    move v2, v8

    move-wide/from16 v16, v9

    move v10, v4

    .line 1068
    .end local v4    # "sign":I
    .end local v8    # "exponent":I
    .end local v9    # "significand":J
    .local v2, "exponent":I
    .restart local v10    # "sign":I
    .restart local v16    # "significand":J
    .restart local v18    # "valBits":J
    :goto_10c
    iput-object v13, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1069
    iput-wide v6, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 1070
    iput v5, v0, Ljava/math/BigDecimal;->scale:I

    .line 1071
    iput v14, v0, Ljava/math/BigDecimal;->precision:I

    .line 1072
    return-void

    .line 994
    .end local v2    # "exponent":I
    .end local v5    # "scl":I
    .end local v6    # "compactVal":J
    .end local v10    # "sign":I
    .end local v13    # "rb":Ljava/math/BigInteger;
    .end local v14    # "prec":I
    .end local v15    # "mcp":I
    .end local v16    # "significand":J
    .end local v18    # "valBits":J
    :cond_115
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Infinite or NaN"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "val"    # I

    .line 1186
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1187
    int-to-long v0, p1

    iput-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1188
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigDecimal;->scale:I

    .line 1189
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1190
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/math/MathContext;)V
    .registers 13
    .param p1, "val"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1201
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1202
    iget v0, p2, Ljava/math/MathContext;->precision:I

    .line 1203
    .local v0, "mcp":I
    int-to-long v1, p1

    .line 1204
    .local v1, "compactVal":J
    const/4 v3, 0x0

    .line 1205
    .local v3, "scl":I
    const/4 v4, 0x0

    .line 1206
    .local v4, "prec":I
    if-lez v0, :cond_2c

    .line 1207
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v4

    .line 1208
    sub-int v5, v4, v0

    .line 1209
    .local v5, "drop":I
    :goto_10
    if-lez v5, :cond_2c

    .line 1210
    int-to-long v6, v3

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 1211
    sget-object v6, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v6, v6, v5

    iget-object v8, p2, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v8, v8, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v1, v2, v6, v7, v8}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v1

    .line 1212
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v4

    .line 1213
    sub-int v5, v4, v0

    goto :goto_10

    .line 1216
    .end local v5    # "drop":I
    :cond_2c
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1217
    iput-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1218
    iput v3, p0, Ljava/math/BigDecimal;->scale:I

    .line 1219
    iput v4, p0, Ljava/math/BigDecimal;->precision:I

    .line 1220
    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 5
    .param p1, "val"    # J

    .line 1229
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1230
    iput-wide p1, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1231
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    sget-object v0, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1232
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigDecimal;->scale:I

    .line 1233
    return-void
.end method

.method public constructor whitelist test-api <init>(JLjava/math/MathContext;)V
    .registers 16
    .param p1, "val"    # J
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 1244
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1245
    iget v0, p3, Ljava/math/MathContext;->precision:I

    .line 1246
    .local v0, "mcp":I
    iget-object v1, p3, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v1, v1, Ljava/math/RoundingMode;->oldMode:I

    .line 1247
    .local v1, "mode":I
    const/4 v2, 0x0

    .line 1248
    .local v2, "prec":I
    const/4 v3, 0x0

    .line 1249
    .local v3, "scl":I
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-nez v6, :cond_14

    sget-object v6, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_15

    :cond_14
    const/4 v6, 0x0

    .line 1250
    .local v6, "rb":Ljava/math/BigInteger;
    :goto_15
    if-lez v0, :cond_63

    .line 1251
    cmp-long v7, p1, v4

    if-nez v7, :cond_3c

    .line 1252
    const/16 v2, 0x13

    .line 1253
    sub-int v7, v2, v0

    .line 1254
    .local v7, "drop":I
    :goto_1f
    if-lez v7, :cond_3c

    .line 1255
    int-to-long v8, v3

    int-to-long v10, v7

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 1256
    invoke-static {v6, v7, v1}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object v6

    .line 1257
    invoke-static {v6}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide p1

    .line 1258
    cmp-long v8, p1, v4

    if-eqz v8, :cond_35

    .line 1259
    goto :goto_3c

    .line 1261
    :cond_35
    invoke-static {v6}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v2

    .line 1262
    sub-int v7, v2, v0

    goto :goto_1f

    .line 1265
    .end local v7    # "drop":I
    :cond_3c
    :goto_3c
    cmp-long v4, p1, v4

    if-eqz v4, :cond_63

    .line 1266
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v2

    .line 1267
    sub-int v4, v2, v0

    .line 1268
    .local v4, "drop":I
    :goto_46
    if-lez v4, :cond_62

    .line 1269
    int-to-long v7, v3

    int-to-long v9, v4

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 1270
    sget-object v5, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v7, v5, v4

    iget-object v5, p3, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v5, v5, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {p1, p2, v7, v8, v5}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide p1

    .line 1271
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v2

    .line 1272
    sub-int v4, v2, v0

    goto :goto_46

    .line 1274
    :cond_62
    const/4 v6, 0x0

    .line 1277
    .end local v4    # "drop":I
    :cond_63
    iput-object v6, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1278
    iput-wide p1, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1279
    iput v3, p0, Ljava/math/BigDecimal;->scale:I

    .line 1280
    iput v2, p0, Ljava/math/BigDecimal;->precision:I

    .line 1281
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "val"    # Ljava/lang/String;

    .line 909
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 910
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .registers 6
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 925
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    .line 926
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 1090
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1091
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigDecimal;->scale:I

    .line 1092
    invoke-static {p1}, Ljava/math/BigDecimal;->toStrictBigInteger(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1093
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1094
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;I)V
    .registers 5
    .param p1, "unscaledVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    .line 1119
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1121
    invoke-static {p1}, Ljava/math/BigDecimal;->toStrictBigInteger(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1122
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1123
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 1124
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .registers 16
    .param p1, "unscaledVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 1139
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1140
    invoke-static {p1}, Ljava/math/BigDecimal;->toStrictBigInteger(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1141
    invoke-static {p1}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v0

    .line 1142
    .local v0, "compactVal":J
    iget v2, p3, Ljava/math/MathContext;->precision:I

    .line 1143
    .local v2, "mcp":I
    const/4 v3, 0x0

    .line 1144
    .local v3, "prec":I
    if-lez v2, :cond_60

    .line 1145
    iget-object v4, p3, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v4, v4, Ljava/math/RoundingMode;->oldMode:I

    .line 1146
    .local v4, "mode":I
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v0, v5

    if-nez v7, :cond_3d

    .line 1147
    invoke-static {p1}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v3

    .line 1148
    sub-int v7, v3, v2

    .line 1149
    .local v7, "drop":I
    :goto_20
    if-lez v7, :cond_3d

    .line 1150
    int-to-long v8, p2

    int-to-long v10, v7

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result p2

    .line 1151
    invoke-static {p1, v7, v4}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object p1

    .line 1152
    invoke-static {p1}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v0

    .line 1153
    cmp-long v8, v0, v5

    if-eqz v8, :cond_36

    .line 1154
    goto :goto_3d

    .line 1156
    :cond_36
    invoke-static {p1}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v3

    .line 1157
    sub-int v7, v3, v2

    goto :goto_20

    .line 1160
    .end local v7    # "drop":I
    :cond_3d
    :goto_3d
    cmp-long v5, v0, v5

    if-eqz v5, :cond_60

    .line 1161
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v3

    .line 1162
    sub-int v5, v3, v2

    .line 1163
    .local v5, "drop":I
    :goto_47
    if-lez v5, :cond_5f

    .line 1164
    int-to-long v6, p2

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result p2

    .line 1165
    sget-object v6, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v6, v6, v5

    invoke-static {v0, v1, v6, v7, v4}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v0

    .line 1166
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v3

    .line 1167
    sub-int v5, v3, v2

    goto :goto_47

    .line 1169
    :cond_5f
    const/4 p1, 0x0

    .line 1172
    .end local v4    # "mode":I
    .end local v5    # "drop":I
    :cond_60
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1173
    iput-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1174
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 1175
    iput v3, p0, Ljava/math/BigDecimal;->precision:I

    .line 1176
    return-void
.end method

.method constructor blacklist <init>(Ljava/math/BigInteger;JII)V
    .registers 6
    .param p1, "intVal"    # Ljava/math/BigInteger;
    .param p2, "val"    # J
    .param p4, "scale"    # I
    .param p5, "prec"    # I

    .line 453
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 454
    iput p4, p0, Ljava/math/BigDecimal;->scale:I

    .line 455
    iput p5, p0, Ljava/math/BigDecimal;->precision:I

    .line 456
    iput-wide p2, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 457
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 458
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .registers 5
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1107
    invoke-static {p1}, Ljava/math/BigDecimal;->toStrictBigInteger(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    .line 1108
    return-void
.end method

.method public constructor whitelist test-api <init>([C)V
    .registers 4
    .param p1, "in"    # [C

    .line 782
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 783
    return-void
.end method

.method public constructor whitelist test-api <init>([CII)V
    .registers 5
    .param p1, "in"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 480
    sget-object v0, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    .line 481
    return-void
.end method

.method public constructor whitelist test-api <init>([CIILjava/math/MathContext;)V
    .registers 39
    .param p1, "in"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "mc"    # Ljava/math/MathContext;

    .line 504
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct {v1}, Ljava/lang/Number;-><init>()V

    .line 507
    :try_start_d
    array-length v0, v2

    invoke-static {v3, v4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_11} :catch_3e6

    .line 511
    nop

    .line 519
    const/4 v6, 0x0

    .line 520
    .local v6, "prec":I
    const/4 v7, 0x0

    .line 521
    .local v7, "scl":I
    const-wide/16 v8, 0x0

    .line 522
    .local v8, "rs":J
    const/4 v10, 0x0

    .line 527
    .local v10, "rb":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .line 528
    .local v0, "isneg":Z
    :try_start_18
    aget-char v11, v2, v3

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_24

    .line 529
    const/4 v0, 0x1

    .line 530
    add-int/lit8 v3, v3, 0x1

    .line 531
    .end local p2    # "offset":I
    .local v3, "offset":I
    add-int/lit8 v4, v4, -0x1

    .end local p3    # "len":I
    .local v4, "len":I
    goto :goto_2e

    .line 532
    .end local v3    # "offset":I
    .end local v4    # "len":I
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    :cond_24
    aget-char v11, v2, v3
    :try_end_26
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_18 .. :try_end_26} :catch_3d4
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_18 .. :try_end_26} :catch_3d4

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_2e

    .line 533
    add-int/lit8 v3, v3, 0x1

    .line 534
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v4, -0x1

    .line 538
    .end local p3    # "len":I
    .restart local v4    # "len":I
    :cond_2e
    :goto_2e
    const/4 v11, 0x0

    .line 539
    .local v11, "dot":Z
    const-wide/16 v12, 0x0

    .line 541
    .local v12, "exp":J
    const/16 v14, 0x12

    if-gt v4, v14, :cond_37

    const/4 v14, 0x1

    goto :goto_38

    :cond_37
    const/4 v14, 0x0

    .line 544
    .local v14, "isCompact":Z
    :goto_38
    const/16 v16, 0x0

    .line 545
    .local v16, "idx":I
    const-string v15, "Exponent overflow."

    move/from16 p3, v0

    .end local v0    # "isneg":Z
    .local p3, "isneg":Z
    const-string v0, "Character array contains more than one decimal point."

    move/from16 v18, v3

    .end local v3    # "offset":I
    .local v18, "offset":I
    const-string v3, "No digits found."

    move/from16 v23, v6

    .end local v6    # "prec":I
    .local v23, "prec":I
    const/16 v6, 0x30

    const-wide/16 v24, 0x0

    if-eqz v14, :cond_202

    move-wide/from16 v26, v8

    move/from16 v8, v23

    move v9, v7

    move v7, v4

    move/from16 v4, v18

    .line 548
    .end local v18    # "offset":I
    .end local v23    # "prec":I
    .local v4, "offset":I
    .local v7, "len":I
    .local v8, "prec":I
    .local v9, "scl":I
    .local v26, "rs":J
    :goto_54
    if-lez v7, :cond_17b

    .line 549
    :try_start_56
    aget-char v18, v2, v4
    :try_end_58
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_56 .. :try_end_58} :catch_16d
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_56 .. :try_end_58} :catch_16d

    move/from16 v23, v18

    .line 550
    .local v23, "c":C
    const-wide/16 v28, 0xa

    move-object/from16 v30, v10

    move/from16 v10, v23

    .end local v23    # "c":C
    .local v10, "c":C
    .local v30, "rb":Ljava/math/BigInteger;
    if-ne v10, v6, :cond_8b

    .line 551
    if-nez v8, :cond_68

    .line 552
    const/4 v8, 0x1

    move/from16 v18, v7

    goto :goto_77

    .line 553
    :cond_68
    move/from16 v18, v7

    move-wide/from16 v6, v26

    .end local v7    # "len":I
    .end local v26    # "rs":J
    .local v6, "rs":J
    .local v18, "len":I
    cmp-long v23, v6, v24

    if-eqz v23, :cond_75

    .line 554
    mul-long v26, v6, v28

    .line 555
    .end local v6    # "rs":J
    .restart local v26    # "rs":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 553
    .end local v26    # "rs":J
    .restart local v6    # "rs":J
    :cond_75
    move-wide/from16 v26, v6

    .line 557
    .end local v6    # "rs":J
    .restart local v26    # "rs":J
    :goto_77
    if-eqz v11, :cond_83

    .line 558
    add-int/lit8 v9, v9, 0x1

    move/from16 v31, v14

    move-wide/from16 v6, v26

    move-wide/from16 v26, v12

    goto/16 :goto_10e

    .line 557
    :cond_83
    move/from16 v31, v14

    move-wide/from16 v6, v26

    move-wide/from16 v26, v12

    goto/16 :goto_10e

    .line 559
    .end local v18    # "len":I
    .restart local v7    # "len":I
    :cond_8b
    move/from16 v18, v7

    move-wide/from16 v6, v26

    .end local v7    # "len":I
    .end local v26    # "rs":J
    .restart local v6    # "rs":J
    .restart local v18    # "len":I
    move/from16 v23, v11

    .end local v11    # "dot":Z
    .local v23, "dot":Z
    const/16 v11, 0x31

    if-lt v10, v11, :cond_b7

    const/16 v11, 0x39

    if-gt v10, v11, :cond_b7

    .line 560
    add-int/lit8 v11, v10, -0x30

    .line 561
    .local v11, "digit":I
    move-wide/from16 v26, v12

    const/4 v12, 0x1

    .end local v12    # "exp":J
    .local v26, "exp":J
    if-ne v8, v12, :cond_a4

    cmp-long v12, v6, v24

    if-eqz v12, :cond_a6

    .line 562
    :cond_a4
    add-int/lit8 v8, v8, 0x1

    .line 563
    :cond_a6
    mul-long v12, v6, v28

    move-wide/from16 v28, v12

    int-to-long v12, v11

    add-long v12, v28, v12

    .line 564
    .end local v6    # "rs":J
    .local v12, "rs":J
    if-eqz v23, :cond_b1

    .line 565
    add-int/lit8 v9, v9, 0x1

    .line 566
    .end local v11    # "digit":I
    :cond_b1
    move-wide v6, v12

    move/from16 v31, v14

    move/from16 v11, v23

    goto :goto_10e

    .line 559
    .end local v26    # "exp":J
    .restart local v6    # "rs":J
    .local v12, "exp":J
    :cond_b7
    move-wide/from16 v26, v12

    .line 566
    .end local v12    # "exp":J
    .restart local v26    # "exp":J
    const/16 v11, 0x2e

    if-ne v10, v11, :cond_d6

    .line 568
    if-nez v23, :cond_c3

    .line 571
    const/4 v11, 0x1

    move/from16 v31, v14

    .end local v23    # "dot":Z
    .local v11, "dot":Z
    goto :goto_10e

    .line 569
    .end local v11    # "dot":Z
    .restart local v23    # "dot":Z
    :cond_c3
    :try_start_c3
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v4    # "offset":I
    .end local v6    # "rs":J
    .end local v8    # "prec":I
    .end local v9    # "scl":I
    .end local v18    # "len":I
    .end local v30    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v3
    :try_end_c9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c3 .. :try_end_c9} :catch_c9
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_c3 .. :try_end_c9} :catch_c9

    .line 700
    .end local v10    # "c":C
    .end local v14    # "isCompact":Z
    .end local v16    # "idx":I
    .end local v23    # "dot":Z
    .end local v26    # "exp":J
    .end local p3    # "isneg":Z
    .restart local v4    # "offset":I
    .restart local v6    # "rs":J
    .restart local v8    # "prec":I
    .restart local v9    # "scl":I
    .restart local v18    # "len":I
    .restart local v30    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :catch_c9
    move-exception v0

    move/from16 v12, v18

    move-object/from16 v10, v30

    move-wide/from16 v32, v6

    move v6, v8

    move v7, v9

    move-wide/from16 v8, v32

    goto/16 :goto_3dd

    .line 572
    .restart local v10    # "c":C
    .restart local v14    # "isCompact":Z
    .restart local v16    # "idx":I
    .restart local v23    # "dot":Z
    .restart local v26    # "exp":J
    .restart local p3    # "isneg":Z
    :cond_d6
    :try_start_d6
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11
    :try_end_da
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d6 .. :try_end_da} :catch_160
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_d6 .. :try_end_da} :catch_160

    if-eqz v11, :cond_121

    .line 573
    const/16 v11, 0xa

    :try_start_de
    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    .line 574
    .local v12, "digit":I
    if-nez v12, :cond_f8

    .line 575
    if-nez v8, :cond_ea

    .line 576
    const/4 v8, 0x1

    move/from16 v31, v14

    goto :goto_108

    .line 577
    :cond_ea
    cmp-long v11, v6, v24

    if-eqz v11, :cond_f5

    .line 578
    mul-long v6, v6, v28

    .line 579
    add-int/lit8 v8, v8, 0x1

    move/from16 v31, v14

    goto :goto_108

    .line 577
    :cond_f5
    move/from16 v31, v14

    goto :goto_108

    .line 582
    :cond_f8
    const/4 v11, 0x1

    if-ne v8, v11, :cond_ff

    cmp-long v11, v6, v24

    if-eqz v11, :cond_101

    .line 583
    :cond_ff
    add-int/lit8 v8, v8, 0x1

    .line 584
    :cond_101
    mul-long v28, v28, v6

    move/from16 v31, v14

    .end local v14    # "isCompact":Z
    .local v31, "isCompact":Z
    int-to-long v13, v12

    add-long v6, v28, v13

    .line 586
    :goto_108
    if-eqz v23, :cond_10c

    .line 587
    add-int/lit8 v9, v9, 0x1

    .line 588
    .end local v12    # "digit":I
    :cond_10c
    move/from16 v11, v23

    .line 548
    .end local v23    # "dot":Z
    .restart local v11    # "dot":Z
    :goto_10e
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v12, v18, -0x1

    move-wide/from16 v32, v6

    move v7, v12

    move-wide/from16 v12, v26

    move-wide/from16 v26, v32

    move-object/from16 v10, v30

    move/from16 v14, v31

    const/16 v6, 0x30

    .end local v18    # "len":I
    .local v12, "len":I
    goto/16 :goto_54

    .line 588
    .end local v11    # "dot":Z
    .end local v12    # "len":I
    .end local v31    # "isCompact":Z
    .restart local v14    # "isCompact":Z
    .restart local v18    # "len":I
    .restart local v23    # "dot":Z
    :cond_121
    move/from16 v31, v14

    .end local v14    # "isCompact":Z
    .restart local v31    # "isCompact":Z
    const/16 v0, 0x65

    if-eq v10, v0, :cond_14b

    const/16 v0, 0x45

    if-ne v10, v0, :cond_12c

    goto :goto_14b

    .line 595
    :cond_12c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Character "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " is neither a decimal digit number, decimal point, nor \"e\" notation exponential mark."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v4    # "offset":I
    .end local v6    # "rs":J
    .end local v8    # "prec":I
    .end local v9    # "scl":I
    .end local v18    # "len":I
    .end local v30    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v0
    :try_end_14b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_de .. :try_end_14b} :catch_c9
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_de .. :try_end_14b} :catch_c9

    .line 589
    .restart local v4    # "offset":I
    .restart local v6    # "rs":J
    .restart local v8    # "prec":I
    .restart local v9    # "scl":I
    .restart local v18    # "len":I
    .restart local v30    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :cond_14b
    :goto_14b
    move/from16 v12, v18

    .end local v18    # "len":I
    .restart local v12    # "len":I
    :try_start_14d
    invoke-static {v2, v4, v12}, Ljava/math/BigDecimal;->parseExp([CII)J

    move-result-wide v13

    .line 591
    .end local v26    # "exp":J
    .local v13, "exp":J
    long-to-int v0, v13

    move/from16 v17, v10

    .end local v10    # "c":C
    .local v17, "c":C
    int-to-long v10, v0

    cmp-long v0, v10, v13

    if-nez v0, :cond_15a

    goto :goto_18a

    .line 592
    :cond_15a
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v4    # "offset":I
    .end local v6    # "rs":J
    .end local v8    # "prec":I
    .end local v9    # "scl":I
    .end local v12    # "len":I
    .end local v30    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v0

    .line 700
    .end local v13    # "exp":J
    .end local v16    # "idx":I
    .end local v17    # "c":C
    .end local v23    # "dot":Z
    .end local v31    # "isCompact":Z
    .end local p3    # "isneg":Z
    .restart local v4    # "offset":I
    .restart local v6    # "rs":J
    .restart local v8    # "prec":I
    .restart local v9    # "scl":I
    .restart local v18    # "len":I
    .restart local v30    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :catch_160
    move-exception v0

    move/from16 v12, v18

    move-object/from16 v10, v30

    move-wide/from16 v32, v6

    move v6, v8

    move v7, v9

    move-wide/from16 v8, v32

    .end local v18    # "len":I
    .restart local v12    # "len":I
    goto/16 :goto_3dd

    .end local v6    # "rs":J
    .end local v12    # "len":I
    .end local v30    # "rb":Ljava/math/BigInteger;
    .restart local v7    # "len":I
    .local v10, "rb":Ljava/math/BigInteger;
    .local v26, "rs":J
    :catch_16d
    move-exception v0

    move v12, v7

    move-object/from16 v30, v10

    move-wide/from16 v6, v26

    move-wide/from16 v32, v6

    move v6, v8

    move v7, v9

    move-wide/from16 v8, v32

    .end local v7    # "len":I
    .end local v10    # "rb":Ljava/math/BigInteger;
    .end local v26    # "rs":J
    .restart local v6    # "rs":J
    .restart local v12    # "len":I
    .restart local v30    # "rb":Ljava/math/BigInteger;
    goto/16 :goto_3dd

    .line 548
    .end local v6    # "rs":J
    .end local v30    # "rb":Ljava/math/BigInteger;
    .restart local v7    # "len":I
    .restart local v10    # "rb":Ljava/math/BigInteger;
    .restart local v11    # "dot":Z
    .local v12, "exp":J
    .restart local v14    # "isCompact":Z
    .restart local v16    # "idx":I
    .restart local v26    # "rs":J
    .restart local p3    # "isneg":Z
    :cond_17b
    move-wide/from16 v32, v12

    move v12, v7

    move-wide/from16 v6, v26

    move-wide/from16 v26, v32

    move-object/from16 v30, v10

    move/from16 v23, v11

    move/from16 v31, v14

    .end local v7    # "len":I
    .end local v10    # "rb":Ljava/math/BigInteger;
    .end local v11    # "dot":Z
    .end local v14    # "isCompact":Z
    .restart local v6    # "rs":J
    .local v12, "len":I
    .restart local v23    # "dot":Z
    .local v26, "exp":J
    .restart local v30    # "rb":Ljava/math/BigInteger;
    .restart local v31    # "isCompact":Z
    move-wide/from16 v13, v26

    .line 600
    .end local v26    # "exp":J
    .restart local v13    # "exp":J
    :goto_18a
    if-eqz v8, :cond_1f1

    .line 603
    cmp-long v0, v13, v24

    if-eqz v0, :cond_195

    .line 604
    invoke-direct {v1, v9, v13, v14}, Ljava/math/BigDecimal;->adjustScale(IJ)I

    move-result v0
    :try_end_194
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_14d .. :try_end_194} :catch_1f7
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_14d .. :try_end_194} :catch_1f7

    move v9, v0

    .line 606
    :cond_195
    if-eqz p3, :cond_19b

    neg-long v10, v6

    move-wide/from16 v26, v10

    goto :goto_19d

    :cond_19b
    move-wide/from16 v26, v6

    .line 607
    .end local v6    # "rs":J
    .local v26, "rs":J
    :goto_19d
    :try_start_19d
    iget v0, v5, Ljava/math/MathContext;->precision:I
    :try_end_19f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19d .. :try_end_19f} :catch_1e8
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_19d .. :try_end_19f} :catch_1e8

    .line 608
    .local v0, "mcp":I
    sub-int v3, v8, v0

    .line 610
    .local v3, "drop":I
    if-lez v0, :cond_1e1

    if-lez v3, :cond_1e1

    move v6, v8

    move v7, v9

    move-wide/from16 v8, v26

    .line 611
    .end local v9    # "scl":I
    .end local v26    # "rs":J
    .local v6, "prec":I
    .local v7, "scl":I
    .local v8, "rs":J
    :goto_1a9
    if-lez v3, :cond_1d9

    .line 612
    int-to-long v10, v7

    move/from16 p2, v6

    move v15, v7

    .end local v6    # "prec":I
    .end local v7    # "scl":I
    .local v15, "scl":I
    .local p2, "prec":I
    int-to-long v6, v3

    sub-long/2addr v10, v6

    :try_start_1b1
    invoke-static {v10, v11}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6
    :try_end_1b5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1b1 .. :try_end_1b5} :catch_1d1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1b1 .. :try_end_1b5} :catch_1d1

    move v7, v6

    .line 613
    .end local v15    # "scl":I
    .restart local v7    # "scl":I
    :try_start_1b6
    sget-object v6, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v10, v6, v3

    iget-object v6, v5, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v6, v6, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v8, v9, v10, v11, v6}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v10

    move-wide v8, v10

    .line 614
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v6
    :try_end_1c7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1b6 .. :try_end_1c7} :catch_1ca
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1b6 .. :try_end_1c7} :catch_1ca

    .line 615
    .end local p2    # "prec":I
    .restart local v6    # "prec":I
    sub-int v3, v6, v0

    goto :goto_1a9

    .line 700
    .end local v0    # "mcp":I
    .end local v3    # "drop":I
    .end local v6    # "prec":I
    .end local v13    # "exp":J
    .end local v16    # "idx":I
    .end local v23    # "dot":Z
    .end local v31    # "isCompact":Z
    .end local p3    # "isneg":Z
    .restart local p2    # "prec":I
    :catch_1ca
    move-exception v0

    move/from16 v6, p2

    move-object/from16 v10, v30

    goto/16 :goto_3dd

    .end local v7    # "scl":I
    .restart local v15    # "scl":I
    :catch_1d1
    move-exception v0

    move/from16 v6, p2

    move v7, v15

    move-object/from16 v10, v30

    goto/16 :goto_3dd

    .line 611
    .end local v15    # "scl":I
    .end local p2    # "prec":I
    .restart local v0    # "mcp":I
    .restart local v3    # "drop":I
    .restart local v6    # "prec":I
    .restart local v7    # "scl":I
    .restart local v13    # "exp":J
    .restart local v16    # "idx":I
    .restart local v23    # "dot":Z
    .restart local v31    # "isCompact":Z
    .restart local p3    # "isneg":Z
    :cond_1d9
    move/from16 p2, v6

    move v15, v7

    .end local v6    # "prec":I
    .end local v7    # "scl":I
    .restart local v15    # "scl":I
    .restart local p2    # "prec":I
    move-wide/from16 v26, v8

    move v9, v15

    move/from16 v8, p2

    .line 618
    .end local v0    # "mcp":I
    .end local v3    # "drop":I
    .end local v15    # "scl":I
    .end local p2    # "prec":I
    .local v8, "prec":I
    .restart local v9    # "scl":I
    .restart local v26    # "rs":J
    :cond_1e1
    move v7, v12

    move-wide/from16 v13, v26

    move-object/from16 v10, v30

    goto/16 :goto_390

    .line 700
    .end local v13    # "exp":J
    .end local v16    # "idx":I
    .end local v23    # "dot":Z
    .end local v31    # "isCompact":Z
    .end local p3    # "isneg":Z
    :catch_1e8
    move-exception v0

    move v6, v8

    move v7, v9

    move-wide/from16 v8, v26

    move-object/from16 v10, v30

    goto/16 :goto_3dd

    .line 601
    .end local v26    # "rs":J
    .local v6, "rs":J
    .restart local v13    # "exp":J
    .restart local v16    # "idx":I
    .restart local v23    # "dot":Z
    .restart local v31    # "isCompact":Z
    .restart local p3    # "isneg":Z
    :cond_1f1
    :try_start_1f1
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v4    # "offset":I
    .end local v6    # "rs":J
    .end local v8    # "prec":I
    .end local v9    # "scl":I
    .end local v12    # "len":I
    .end local v30    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v0
    :try_end_1f7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f1 .. :try_end_1f7} :catch_1f7
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1f1 .. :try_end_1f7} :catch_1f7

    .line 700
    .end local v13    # "exp":J
    .end local v16    # "idx":I
    .end local v23    # "dot":Z
    .end local v31    # "isCompact":Z
    .end local p3    # "isneg":Z
    .restart local v4    # "offset":I
    .restart local v6    # "rs":J
    .restart local v8    # "prec":I
    .restart local v9    # "scl":I
    .restart local v12    # "len":I
    .restart local v30    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :catch_1f7
    move-exception v0

    move-object/from16 v10, v30

    move-wide/from16 v32, v6

    move v6, v8

    move v7, v9

    move-wide/from16 v8, v32

    goto/16 :goto_3dd

    .line 619
    .end local v6    # "rs":J
    .end local v9    # "scl":I
    .end local v30    # "rb":Ljava/math/BigInteger;
    .local v4, "len":I
    .restart local v7    # "scl":I
    .local v8, "rs":J
    .restart local v10    # "rb":Ljava/math/BigInteger;
    .restart local v11    # "dot":Z
    .local v12, "exp":J
    .restart local v14    # "isCompact":Z
    .restart local v16    # "idx":I
    .local v18, "offset":I
    .local v23, "prec":I
    .restart local p3    # "isneg":Z
    :cond_202
    move-object/from16 v30, v10

    move-wide/from16 v26, v12

    move/from16 v31, v14

    .end local v10    # "rb":Ljava/math/BigInteger;
    .end local v12    # "exp":J
    .end local v14    # "isCompact":Z
    .local v26, "exp":J
    .restart local v30    # "rb":Ljava/math/BigInteger;
    .restart local v31    # "isCompact":Z
    :try_start_208
    new-array v6, v4, [C
    :try_end_20a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_208 .. :try_end_20a} :catch_3c9
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_208 .. :try_end_20a} :catch_3c9

    move v12, v11

    move/from16 v10, v23

    move v11, v7

    move v7, v4

    move/from16 v4, v18

    .line 620
    .end local v18    # "offset":I
    .end local v23    # "prec":I
    .local v4, "offset":I
    .local v6, "coeff":[C
    .local v7, "len":I
    .local v10, "prec":I
    .local v11, "scl":I
    .local v12, "dot":Z
    :goto_211
    if-lez v7, :cond_2b3

    .line 621
    :try_start_213
    aget-char v13, v2, v4

    .line 623
    .local v13, "c":C
    const/16 v14, 0x30

    if-lt v13, v14, :cond_21e

    const/16 v14, 0x39

    if-le v13, v14, :cond_226

    goto :goto_220

    :cond_21e
    const/16 v14, 0x39

    :goto_220
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18
    :try_end_224
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_213 .. :try_end_224} :catch_2a6
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_213 .. :try_end_224} :catch_2a6

    if-eqz v18, :cond_265

    .line 626
    :cond_226
    const/16 v14, 0x30

    if-eq v13, v14, :cond_24a

    const/16 v14, 0xa

    :try_start_22c
    invoke-static {v13, v14}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    if-nez v18, :cond_234

    const/4 v14, 0x1

    goto :goto_24b

    .line 635
    :cond_234
    const/4 v14, 0x1

    if-ne v10, v14, :cond_239

    if-eqz v16, :cond_23b

    .line 636
    :cond_239
    add-int/lit8 v10, v10, 0x1

    .line 637
    :cond_23b
    add-int/lit8 v18, v16, 0x1

    .end local v16    # "idx":I
    .local v18, "idx":I
    aput-char v13, v6, v16

    move/from16 v16, v18

    goto :goto_25b

    .line 700
    .end local v6    # "coeff":[C
    .end local v12    # "dot":Z
    .end local v13    # "c":C
    .end local v18    # "idx":I
    .end local v26    # "exp":J
    .end local v31    # "isCompact":Z
    .end local p3    # "isneg":Z
    :catch_242
    move-exception v0

    move v12, v7

    move v6, v10

    move v7, v11

    move-object/from16 v10, v30

    goto/16 :goto_3dd

    .line 626
    .restart local v6    # "coeff":[C
    .restart local v12    # "dot":Z
    .restart local v13    # "c":C
    .restart local v16    # "idx":I
    .restart local v26    # "exp":J
    .restart local v31    # "isCompact":Z
    .restart local p3    # "isneg":Z
    :cond_24a
    const/4 v14, 0x1

    .line 627
    :goto_24b
    if-nez v10, :cond_251

    .line 628
    aput-char v13, v6, v16

    .line 629
    const/4 v10, 0x1

    goto :goto_25b

    .line 630
    :cond_251
    if-eqz v16, :cond_25b

    .line 631
    add-int/lit8 v18, v16, 0x1

    .end local v16    # "idx":I
    .restart local v18    # "idx":I
    aput-char v13, v6, v16

    .line 632
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v18

    .line 639
    .end local v18    # "idx":I
    .restart local v16    # "idx":I
    :cond_25b
    :goto_25b
    if-eqz v12, :cond_262

    .line 640
    add-int/lit8 v11, v11, 0x1

    const/16 v14, 0x2e

    goto :goto_26e

    .line 639
    :cond_262
    const/16 v14, 0x2e

    goto :goto_26e

    .line 644
    :cond_265
    const/4 v14, 0x1

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_279

    .line 646
    if-nez v12, :cond_273

    .line 649
    const/4 v12, 0x1

    .line 650
    nop

    .line 620
    :goto_26e
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_211

    .line 647
    :cond_273
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v4    # "offset":I
    .end local v7    # "len":I
    .end local v8    # "rs":J
    .end local v10    # "prec":I
    .end local v11    # "scl":I
    .end local v30    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v3

    .line 653
    .restart local v4    # "offset":I
    .restart local v7    # "len":I
    .restart local v8    # "rs":J
    .restart local v10    # "prec":I
    .restart local v11    # "scl":I
    .restart local v30    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :cond_279
    const/16 v0, 0x65

    if-eq v13, v0, :cond_28a

    const/16 v0, 0x45

    if-ne v13, v0, :cond_282

    goto :goto_28a

    .line 654
    :cond_282
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v3, "Character array is missing \"e\" notation exponential mark."

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v4    # "offset":I
    .end local v7    # "len":I
    .end local v8    # "rs":J
    .end local v10    # "prec":I
    .end local v11    # "scl":I
    .end local v30    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v0
    :try_end_28a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_22c .. :try_end_28a} :catch_242
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_22c .. :try_end_28a} :catch_242

    .line 656
    .restart local v4    # "offset":I
    .restart local v7    # "len":I
    .restart local v8    # "rs":J
    .restart local v10    # "prec":I
    .restart local v11    # "scl":I
    .restart local v30    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :cond_28a
    :goto_28a
    :try_start_28a
    invoke-static {v2, v4, v7}, Ljava/math/BigDecimal;->parseExp([CII)J

    move-result-wide v17
    :try_end_28e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_28a .. :try_end_28e} :catch_2a6
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_28a .. :try_end_28e} :catch_2a6

    move-wide/from16 v19, v17

    .line 658
    .end local v26    # "exp":J
    .local v19, "exp":J
    move-wide/from16 v21, v8

    move v9, v7

    move-wide/from16 v7, v19

    .end local v8    # "rs":J
    .end local v19    # "exp":J
    .local v7, "exp":J
    .local v9, "len":I
    .local v21, "rs":J
    long-to-int v0, v7

    move-wide/from16 v17, v7

    .end local v7    # "exp":J
    .local v17, "exp":J
    int-to-long v7, v0

    cmp-long v0, v7, v17

    if-nez v0, :cond_2a0

    move-wide/from16 v7, v17

    goto :goto_2b8

    .line 659
    :cond_2a0
    :try_start_2a0
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v4    # "offset":I
    .end local v9    # "len":I
    .end local v10    # "prec":I
    .end local v11    # "scl":I
    .end local v21    # "rs":J
    .end local v30    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v0

    .line 700
    .end local v6    # "coeff":[C
    .end local v12    # "dot":Z
    .end local v13    # "c":C
    .end local v16    # "idx":I
    .end local v17    # "exp":J
    .end local v31    # "isCompact":Z
    .end local p3    # "isneg":Z
    .restart local v4    # "offset":I
    .local v7, "len":I
    .restart local v8    # "rs":J
    .restart local v10    # "prec":I
    .restart local v11    # "scl":I
    .restart local v30    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :catch_2a6
    move-exception v0

    move-wide/from16 v21, v8

    move v9, v7

    move v12, v9

    move v6, v10

    move v7, v11

    move-wide/from16 v8, v21

    move-object/from16 v10, v30

    .end local v7    # "len":I
    .end local v8    # "rs":J
    .restart local v9    # "len":I
    .restart local v21    # "rs":J
    goto/16 :goto_3dd

    .line 620
    .end local v9    # "len":I
    .end local v21    # "rs":J
    .restart local v6    # "coeff":[C
    .restart local v7    # "len":I
    .restart local v8    # "rs":J
    .restart local v12    # "dot":Z
    .restart local v16    # "idx":I
    .restart local v26    # "exp":J
    .restart local v31    # "isCompact":Z
    .restart local p3    # "isneg":Z
    :cond_2b3
    move-wide/from16 v21, v8

    move v9, v7

    .end local v7    # "len":I
    .end local v8    # "rs":J
    .restart local v9    # "len":I
    .restart local v21    # "rs":J
    move-wide/from16 v7, v26

    .line 663
    .end local v26    # "exp":J
    .local v7, "exp":J
    :goto_2b8
    if-eqz v10, :cond_3b5

    .line 666
    cmp-long v0, v7, v24

    if-eqz v0, :cond_2ce

    .line 667
    invoke-direct {v1, v11, v7, v8}, Ljava/math/BigDecimal;->adjustScale(IJ)I

    move-result v0
    :try_end_2c2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2a0 .. :try_end_2c2} :catch_2c4
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2a0 .. :try_end_2c2} :catch_2c4

    move v11, v0

    .end local v11    # "scl":I
    .local v0, "scl":I
    goto :goto_2ce

    .line 700
    .end local v0    # "scl":I
    .end local v6    # "coeff":[C
    .end local v7    # "exp":J
    .end local v12    # "dot":Z
    .end local v16    # "idx":I
    .end local v31    # "isCompact":Z
    .end local p3    # "isneg":Z
    .restart local v11    # "scl":I
    :catch_2c4
    move-exception v0

    move v12, v9

    move v6, v10

    move v7, v11

    move-wide/from16 v8, v21

    move-object/from16 v10, v30

    goto/16 :goto_3dd

    .line 670
    .restart local v6    # "coeff":[C
    .restart local v7    # "exp":J
    .restart local v12    # "dot":Z
    .restart local v16    # "idx":I
    .restart local v31    # "isCompact":Z
    .restart local p3    # "isneg":Z
    :cond_2ce
    :goto_2ce
    :try_start_2ce
    new-instance v0, Ljava/math/BigInteger;

    if-eqz p3, :cond_2d4

    const/4 v15, -0x1

    goto :goto_2d5

    :cond_2d4
    const/4 v15, 0x1

    :goto_2d5
    invoke-direct {v0, v6, v15, v10}, Ljava/math/BigInteger;-><init>([CII)V
    :try_end_2d8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2ce .. :try_end_2d8} :catch_3ab
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2ce .. :try_end_2d8} :catch_3ab

    move-object v3, v0

    .line 671
    .end local v30    # "rb":Ljava/math/BigInteger;
    .local v3, "rb":Ljava/math/BigInteger;
    :try_start_2d9
    invoke-static {v3}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v13
    :try_end_2dd
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2d9 .. :try_end_2dd} :catch_3a2
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2d9 .. :try_end_2dd} :catch_3a2

    .line 672
    .end local v21    # "rs":J
    .local v13, "rs":J
    :try_start_2dd
    iget v0, v5, Ljava/math/MathContext;->precision:I
    :try_end_2df
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2dd .. :try_end_2df} :catch_39a
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2dd .. :try_end_2df} :catch_39a

    .line 673
    .local v0, "mcp":I
    if-lez v0, :cond_387

    if-le v10, v0, :cond_387

    .line 674
    const-wide/high16 v17, -0x8000000000000000L

    cmp-long v15, v13, v17

    if-nez v15, :cond_334

    .line 675
    sub-int v15, v10, v0

    .line 676
    .local v15, "drop":I
    :goto_2eb
    if-lez v15, :cond_32b

    .line 677
    move-object/from16 p2, v6

    move-wide/from16 v19, v7

    .end local v6    # "coeff":[C
    .end local v7    # "exp":J
    .restart local v19    # "exp":J
    .local p2, "coeff":[C
    int-to-long v6, v11

    move-wide/from16 v21, v6

    int-to-long v6, v15

    sub-long v6, v21, v6

    :try_start_2f7
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    move v11, v6

    .line 678
    iget-object v6, v5, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v6, v6, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v3, v15, v6}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object v6

    move-object v3, v6

    .line 679
    invoke-static {v3}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v6

    move-wide v13, v6

    .line 680
    cmp-long v6, v13, v17

    if-eqz v6, :cond_317

    .line 681
    invoke-static {v13, v14}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v6

    .line 682
    .end local v10    # "prec":I
    .local v6, "prec":I
    move-object v10, v3

    move v8, v6

    move-wide/from16 v26, v13

    goto :goto_33c

    .line 684
    .end local v6    # "prec":I
    .restart local v10    # "prec":I
    :cond_317
    invoke-static {v3}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v6
    :try_end_31b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2f7 .. :try_end_31b} :catch_323
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2f7 .. :try_end_31b} :catch_323

    move v10, v6

    .line 685
    sub-int v15, v10, v0

    move-object/from16 v6, p2

    move-wide/from16 v7, v19

    goto :goto_2eb

    .line 700
    .end local v0    # "mcp":I
    .end local v12    # "dot":Z
    .end local v15    # "drop":I
    .end local v16    # "idx":I
    .end local v19    # "exp":J
    .end local v31    # "isCompact":Z
    .end local p2    # "coeff":[C
    .end local p3    # "isneg":Z
    :catch_323
    move-exception v0

    move v12, v9

    move v6, v10

    move v7, v11

    move-wide v8, v13

    move-object v10, v3

    goto/16 :goto_3dd

    .line 676
    .restart local v0    # "mcp":I
    .local v6, "coeff":[C
    .restart local v7    # "exp":J
    .restart local v12    # "dot":Z
    .restart local v15    # "drop":I
    .restart local v16    # "idx":I
    .restart local v31    # "isCompact":Z
    .restart local p3    # "isneg":Z
    :cond_32b
    move-object/from16 p2, v6

    move-wide/from16 v19, v7

    .end local v6    # "coeff":[C
    .end local v7    # "exp":J
    .restart local v19    # "exp":J
    .restart local p2    # "coeff":[C
    move v8, v10

    move-wide/from16 v26, v13

    move-object v10, v3

    goto :goto_33c

    .line 674
    .end local v15    # "drop":I
    .end local v19    # "exp":J
    .end local p2    # "coeff":[C
    .restart local v6    # "coeff":[C
    .restart local v7    # "exp":J
    :cond_334
    move-object/from16 p2, v6

    move-wide/from16 v19, v7

    .end local v6    # "coeff":[C
    .end local v7    # "exp":J
    .restart local v19    # "exp":J
    .restart local p2    # "coeff":[C
    move v8, v10

    move-wide/from16 v26, v13

    move-object v10, v3

    .line 688
    .end local v3    # "rb":Ljava/math/BigInteger;
    .end local v13    # "rs":J
    .local v8, "prec":I
    .local v10, "rb":Ljava/math/BigInteger;
    .local v26, "rs":J
    :goto_33c
    cmp-long v3, v26, v17

    if-eqz v3, :cond_381

    .line 689
    sub-int v3, v8, v0

    move v6, v8

    move v7, v11

    move-wide/from16 v13, v26

    .line 690
    .end local v8    # "prec":I
    .end local v11    # "scl":I
    .end local v26    # "rs":J
    .local v3, "drop":I
    .local v6, "prec":I
    .local v7, "scl":I
    .restart local v13    # "rs":J
    :goto_346
    if-lez v3, :cond_377

    .line 691
    move v15, v9

    .end local v9    # "len":I
    .local v15, "len":I
    int-to-long v8, v7

    move v11, v6

    move/from16 v17, v7

    .end local v6    # "prec":I
    .end local v7    # "scl":I
    .local v11, "prec":I
    .local v17, "scl":I
    int-to-long v6, v3

    sub-long/2addr v8, v6

    :try_start_34f
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6
    :try_end_353
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_34f .. :try_end_353} :catch_36f
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_34f .. :try_end_353} :catch_36f

    move v7, v6

    .line 692
    .end local v17    # "scl":I
    .restart local v7    # "scl":I
    :try_start_354
    sget-object v6, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v8, v6, v3

    iget-object v6, v5, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v6, v6, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v13, v14, v8, v9, v6}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v8

    move-wide v13, v8

    .line 693
    invoke-static {v13, v14}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v6
    :try_end_365
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_354 .. :try_end_365} :catch_369
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_354 .. :try_end_365} :catch_369

    .line 694
    .end local v11    # "prec":I
    .restart local v6    # "prec":I
    sub-int v3, v6, v0

    move v9, v15

    goto :goto_346

    .line 700
    .end local v0    # "mcp":I
    .end local v3    # "drop":I
    .end local v6    # "prec":I
    .end local v12    # "dot":Z
    .end local v16    # "idx":I
    .end local v19    # "exp":J
    .end local v31    # "isCompact":Z
    .end local p2    # "coeff":[C
    .end local p3    # "isneg":Z
    .restart local v11    # "prec":I
    :catch_369
    move-exception v0

    move v6, v11

    move-wide v8, v13

    move v12, v15

    goto/16 :goto_3dd

    .end local v7    # "scl":I
    .restart local v17    # "scl":I
    :catch_36f
    move-exception v0

    move v6, v11

    move-wide v8, v13

    move v12, v15

    move/from16 v7, v17

    goto/16 :goto_3dd

    .line 696
    .end local v11    # "prec":I
    .end local v15    # "len":I
    .end local v17    # "scl":I
    .restart local v0    # "mcp":I
    .restart local v3    # "drop":I
    .restart local v6    # "prec":I
    .restart local v7    # "scl":I
    .restart local v9    # "len":I
    .restart local v12    # "dot":Z
    .restart local v16    # "idx":I
    .restart local v19    # "exp":J
    .restart local v31    # "isCompact":Z
    .restart local p2    # "coeff":[C
    .restart local p3    # "isneg":Z
    :cond_377
    move v11, v6

    move/from16 v17, v7

    move v15, v9

    .end local v6    # "prec":I
    .end local v7    # "scl":I
    .end local v9    # "len":I
    .restart local v11    # "prec":I
    .restart local v15    # "len":I
    .restart local v17    # "scl":I
    const/4 v10, 0x0

    move v8, v11

    move v7, v15

    move/from16 v9, v17

    goto :goto_390

    .line 688
    .end local v3    # "drop":I
    .end local v13    # "rs":J
    .end local v15    # "len":I
    .end local v17    # "scl":I
    .restart local v8    # "prec":I
    .restart local v9    # "len":I
    .local v11, "scl":I
    .restart local v26    # "rs":J
    :cond_381
    move v15, v9

    .end local v9    # "len":I
    .restart local v15    # "len":I
    move v9, v11

    move v7, v15

    move-wide/from16 v13, v26

    goto :goto_390

    .line 673
    .end local v8    # "prec":I
    .end local v15    # "len":I
    .end local v19    # "exp":J
    .end local v26    # "rs":J
    .end local p2    # "coeff":[C
    .local v3, "rb":Ljava/math/BigInteger;
    .local v6, "coeff":[C
    .local v7, "exp":J
    .restart local v9    # "len":I
    .local v10, "prec":I
    .restart local v13    # "rs":J
    :cond_387
    move-object/from16 p2, v6

    move-wide/from16 v19, v7

    move v15, v9

    .line 704
    .end local v0    # "mcp":I
    .end local v6    # "coeff":[C
    .end local v7    # "exp":J
    .end local v9    # "len":I
    .end local v12    # "dot":Z
    .end local v16    # "idx":I
    .end local v31    # "isCompact":Z
    .end local p3    # "isneg":Z
    .restart local v15    # "len":I
    move v8, v10

    move v9, v11

    move v7, v15

    move-object v10, v3

    .end local v3    # "rb":Ljava/math/BigInteger;
    .end local v11    # "scl":I
    .end local v15    # "len":I
    .local v7, "len":I
    .restart local v8    # "prec":I
    .local v9, "scl":I
    .local v10, "rb":Ljava/math/BigInteger;
    :goto_390
    nop

    .line 705
    iput v9, v1, Ljava/math/BigDecimal;->scale:I

    .line 706
    iput v8, v1, Ljava/math/BigDecimal;->precision:I

    .line 707
    iput-wide v13, v1, Ljava/math/BigDecimal;->intCompact:J

    .line 708
    iput-object v10, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 709
    return-void

    .line 700
    .end local v7    # "len":I
    .end local v8    # "prec":I
    .restart local v3    # "rb":Ljava/math/BigInteger;
    .local v9, "len":I
    .local v10, "prec":I
    .restart local v11    # "scl":I
    :catch_39a
    move-exception v0

    move v15, v9

    move v6, v10

    move v7, v11

    move-wide v8, v13

    move v12, v15

    move-object v10, v3

    .end local v9    # "len":I
    .restart local v15    # "len":I
    goto :goto_3dd

    .end local v13    # "rs":J
    .end local v15    # "len":I
    .restart local v9    # "len":I
    .restart local v21    # "rs":J
    :catch_3a2
    move-exception v0

    move v15, v9

    move v6, v10

    move v7, v11

    move v12, v15

    move-wide/from16 v8, v21

    move-object v10, v3

    .end local v9    # "len":I
    .restart local v15    # "len":I
    goto :goto_3dd

    .end local v3    # "rb":Ljava/math/BigInteger;
    .end local v15    # "len":I
    .restart local v9    # "len":I
    .restart local v30    # "rb":Ljava/math/BigInteger;
    :catch_3ab
    move-exception v0

    move v15, v9

    move v6, v10

    move v7, v11

    move v12, v15

    move-wide/from16 v8, v21

    move-object/from16 v10, v30

    .end local v9    # "len":I
    .restart local v15    # "len":I
    goto :goto_3dd

    .line 664
    .end local v15    # "len":I
    .restart local v6    # "coeff":[C
    .local v7, "exp":J
    .restart local v9    # "len":I
    .restart local v12    # "dot":Z
    .restart local v16    # "idx":I
    .restart local v31    # "isCompact":Z
    .restart local p3    # "isneg":Z
    :cond_3b5
    move-object/from16 p2, v6

    move-wide/from16 v19, v7

    move v15, v9

    .end local v6    # "coeff":[C
    .end local v7    # "exp":J
    .end local v9    # "len":I
    .restart local v15    # "len":I
    .restart local v19    # "exp":J
    .restart local p2    # "coeff":[C
    :try_start_3ba
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .end local v4    # "offset":I
    .end local v10    # "prec":I
    .end local v11    # "scl":I
    .end local v15    # "len":I
    .end local v21    # "rs":J
    .end local v30    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v0
    :try_end_3c0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3ba .. :try_end_3c0} :catch_3c0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3ba .. :try_end_3c0} :catch_3c0

    .line 700
    .end local v12    # "dot":Z
    .end local v16    # "idx":I
    .end local v19    # "exp":J
    .end local v31    # "isCompact":Z
    .end local p2    # "coeff":[C
    .end local p3    # "isneg":Z
    .restart local v4    # "offset":I
    .restart local v10    # "prec":I
    .restart local v11    # "scl":I
    .restart local v15    # "len":I
    .restart local v21    # "rs":J
    .restart local v30    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :catch_3c0
    move-exception v0

    move v6, v10

    move v7, v11

    move v12, v15

    move-wide/from16 v8, v21

    move-object/from16 v10, v30

    goto :goto_3dd

    .end local v10    # "prec":I
    .end local v11    # "scl":I
    .end local v15    # "len":I
    .end local v21    # "rs":J
    .local v4, "len":I
    .local v7, "scl":I
    .local v8, "rs":J
    .local v18, "offset":I
    .restart local v23    # "prec":I
    :catch_3c9
    move-exception v0

    move-wide/from16 v21, v8

    move v12, v4

    move/from16 v4, v18

    move/from16 v6, v23

    move-object/from16 v10, v30

    .end local v8    # "rs":J
    .restart local v21    # "rs":J
    goto :goto_3dd

    .end local v4    # "len":I
    .end local v18    # "offset":I
    .end local v21    # "rs":J
    .end local v23    # "prec":I
    .end local v30    # "rb":Ljava/math/BigInteger;
    .local v6, "prec":I
    .restart local v8    # "rs":J
    .local v10, "rb":Ljava/math/BigInteger;
    .local p2, "offset":I
    .local p3, "len":I
    :catch_3d4
    move-exception v0

    move/from16 v23, v6

    move-wide/from16 v21, v8

    move-object/from16 v30, v10

    move v12, v4

    move v4, v3

    .line 701
    .end local p2    # "offset":I
    .end local p3    # "len":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .local v4, "offset":I
    .local v12, "len":I
    :goto_3dd
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3}, Ljava/lang/NumberFormatException;-><init>()V

    .line 702
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v3, v0}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 703
    throw v3

    .line 508
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "offset":I
    .end local v6    # "prec":I
    .end local v7    # "scl":I
    .end local v8    # "rs":J
    .end local v10    # "rb":Ljava/math/BigInteger;
    .end local v12    # "len":I
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    :catch_3e6
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/NumberFormatException;

    const-string v7, "Bad offset or len arguments for char[] input."

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public constructor whitelist test-api <init>([CLjava/math/MathContext;)V
    .registers 5
    .param p1, "in"    # [C
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 804
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    .line 805
    return-void
.end method

.method private static blacklist add(JJ)J
    .registers 10
    .param p0, "xs"    # J
    .param p2, "ys"    # J

    .line 5002
    add-long v0, p0, p2

    .line 5005
    .local v0, "sum":J
    xor-long v2, v0, p0

    xor-long v4, v0, p2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 5006
    return-wide v0

    .line 5008
    :cond_e
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method private static blacklist add(JIJI)Ljava/math/BigDecimal;
    .registers 25
    .param p0, "xs"    # J
    .param p2, "scale1"    # I
    .param p3, "ys"    # J
    .param p5, "scale2"    # I

    .line 5019
    move-wide/from16 v0, p0

    move/from16 v6, p2

    move-wide/from16 v8, p3

    move/from16 v14, p5

    int-to-long v2, v6

    int-to-long v4, v14

    sub-long/2addr v2, v4

    .line 5020
    .local v2, "sdiff":J
    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_16

    .line 5021
    invoke-static {v0, v1, v8, v9, v6}, Ljava/math/BigDecimal;->add(JJI)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4

    .line 5022
    :cond_16
    cmp-long v7, v2, v4

    const/4 v10, 0x0

    if-gez v7, :cond_51

    .line 5023
    move-wide v15, v4

    neg-long v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v4

    .line 5024
    .local v4, "raise":I
    const-wide/high16 v17, -0x8000000000000000L

    invoke-static {v0, v1, v4}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v12

    .line 5025
    .local v12, "scaledX":J
    cmp-long v5, v12, v17

    if-eqz v5, :cond_30

    .line 5026
    invoke-static {v12, v13, v8, v9, v14}, Ljava/math/BigDecimal;->add(JJI)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 5028
    :cond_30
    invoke-static {v0, v1, v4}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/math/BigInteger;->add(J)Ljava/math/BigInteger;

    move-result-object v11

    .line 5029
    .local v11, "bigsum":Ljava/math/BigInteger;
    xor-long v17, v0, v8

    cmp-long v5, v17, v15

    if-ltz v5, :cond_4a

    .line 5030
    new-instance v10, Ljava/math/BigDecimal;

    move-wide v15, v12

    .end local v12    # "scaledX":J
    .local v15, "scaledX":J
    const-wide/high16 v12, -0x8000000000000000L

    move-wide/from16 v16, v15

    .end local v15    # "scaledX":J
    .local v16, "scaledX":J
    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    goto :goto_50

    .line 5031
    .end local v16    # "scaledX":J
    .restart local v12    # "scaledX":J
    :cond_4a
    move-wide/from16 v16, v12

    .end local v12    # "scaledX":J
    .restart local v16    # "scaledX":J
    invoke-static {v11, v14, v10}, Ljava/math/BigDecimal;->valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;

    move-result-object v10

    .line 5029
    :goto_50
    return-object v10

    .line 5034
    .end local v4    # "raise":I
    .end local v11    # "bigsum":Ljava/math/BigInteger;
    .end local v16    # "scaledX":J
    :cond_51
    move-wide v15, v4

    const-wide/high16 v17, -0x8000000000000000L

    invoke-static {v8, v9, v2, v3}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v11

    .line 5035
    .local v11, "raise":I
    invoke-static {v8, v9, v11}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v12

    .line 5036
    .local v12, "scaledY":J
    cmp-long v4, v12, v17

    if-eqz v4, :cond_65

    .line 5037
    invoke-static {v0, v1, v12, v13, v6}, Ljava/math/BigDecimal;->add(JJI)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4

    .line 5039
    :cond_65
    invoke-static {v8, v9, v11}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/math/BigInteger;->add(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 5040
    .local v4, "bigsum":Ljava/math/BigInteger;
    xor-long v17, v0, v8

    cmp-long v5, v17, v15

    if-ltz v5, :cond_7e

    .line 5041
    move-wide v15, v2

    .end local v2    # "sdiff":J
    .local v15, "sdiff":J
    new-instance v2, Ljava/math/BigDecimal;

    move-object v3, v4

    .end local v4    # "bigsum":Ljava/math/BigInteger;
    .local v3, "bigsum":Ljava/math/BigInteger;
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    goto :goto_84

    .line 5042
    .end local v3    # "bigsum":Ljava/math/BigInteger;
    .end local v15    # "sdiff":J
    .restart local v2    # "sdiff":J
    .restart local v4    # "bigsum":Ljava/math/BigInteger;
    :cond_7e
    move-wide v15, v2

    move-object v3, v4

    .end local v2    # "sdiff":J
    .end local v4    # "bigsum":Ljava/math/BigInteger;
    .restart local v3    # "bigsum":Ljava/math/BigInteger;
    .restart local v15    # "sdiff":J
    invoke-static {v3, v6, v10}, Ljava/math/BigDecimal;->valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 5040
    :goto_84
    return-object v2
.end method

.method private static blacklist add(JILjava/math/BigInteger;I)Ljava/math/BigDecimal;
    .registers 21
    .param p0, "xs"    # J
    .param p2, "scale1"    # I
    .param p3, "snd"    # Ljava/math/BigInteger;
    .param p4, "scale2"    # I

    .line 5048
    move-wide/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p2

    .line 5049
    .local v3, "rscale":I
    int-to-long v4, v3

    move/from16 v6, p4

    int-to-long v7, v6

    sub-long/2addr v4, v7

    .line 5050
    .local v4, "sdiff":J
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v7

    iget v8, v2, Ljava/math/BigInteger;->signum:I

    const/4 v9, 0x0

    if-ne v7, v8, :cond_16

    const/4 v7, 0x1

    goto :goto_17

    :cond_16
    move v7, v9

    .line 5052
    .local v7, "sameSigns":Z
    :goto_17
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-gez v8, :cond_3e

    .line 5053
    neg-long v10, v4

    invoke-static {v0, v1, v10, v11}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v8

    .line 5054
    .local v8, "raise":I
    move/from16 v3, p4

    .line 5055
    invoke-static {v0, v1, v8}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v10

    .line 5056
    .local v10, "scaledX":J
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, v10, v12

    if-nez v12, :cond_37

    .line 5057
    invoke-static {v0, v1, v8}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .local v12, "sum":Ljava/math/BigInteger;
    goto :goto_3b

    .line 5059
    .end local v12    # "sum":Ljava/math/BigInteger;
    :cond_37
    invoke-virtual {v2, v10, v11}, Ljava/math/BigInteger;->add(J)Ljava/math/BigInteger;

    move-result-object v12

    .line 5061
    .end local v8    # "raise":I
    .end local v10    # "scaledX":J
    .restart local v12    # "sum":Ljava/math/BigInteger;
    :goto_3b
    move v14, v3

    move-object v11, v12

    goto :goto_4c

    .line 5062
    .end local v12    # "sum":Ljava/math/BigInteger;
    :cond_3e
    invoke-static {v2, v4, v5}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v8

    .line 5063
    .restart local v8    # "raise":I
    invoke-static {v2, v8}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 5064
    .end local p3    # "snd":Ljava/math/BigInteger;
    .local v2, "snd":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, v1}, Ljava/math/BigInteger;->add(J)Ljava/math/BigInteger;

    move-result-object v12

    move v14, v3

    move-object v11, v12

    .line 5066
    .end local v3    # "rscale":I
    .end local v8    # "raise":I
    .local v11, "sum":Ljava/math/BigInteger;
    .local v14, "rscale":I
    :goto_4c
    if-eqz v7, :cond_57

    .line 5067
    new-instance v10, Ljava/math/BigDecimal;

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    goto :goto_5b

    .line 5068
    :cond_57
    invoke-static {v11, v14, v9}, Ljava/math/BigDecimal;->valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;

    move-result-object v10

    .line 5066
    :goto_5b
    return-object v10
.end method

.method private static blacklist add(JJI)Ljava/math/BigDecimal;
    .registers 9
    .param p0, "xs"    # J
    .param p2, "ys"    # J
    .param p4, "scale"    # I

    .line 5012
    invoke-static {p0, p1, p2, p3}, Ljava/math/BigDecimal;->add(JJ)J

    move-result-wide v0

    .line 5013
    .local v0, "sum":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 5014
    invoke-static {v0, v1, p4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 5015
    :cond_f
    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/math/BigInteger;->add(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3, p4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v2
.end method

.method private static blacklist add(Ljava/math/BigInteger;ILjava/math/BigInteger;I)Ljava/math/BigDecimal;
    .registers 13
    .param p0, "fst"    # Ljava/math/BigInteger;
    .param p1, "scale1"    # I
    .param p2, "snd"    # Ljava/math/BigInteger;
    .param p3, "scale2"    # I

    .line 5072
    move v0, p1

    .line 5073
    .local v0, "rscale":I
    int-to-long v1, v0

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 5074
    .local v1, "sdiff":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_24

    .line 5075
    cmp-long v3, v1, v3

    if-gez v3, :cond_1a

    .line 5076
    neg-long v3, v1

    invoke-static {p0, v3, v4}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v3

    .line 5077
    .local v3, "raise":I
    move v0, p3

    .line 5078
    invoke-static {p0, v3}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    .line 5079
    .end local v3    # "raise":I
    move v7, v0

    goto :goto_25

    .line 5080
    :cond_1a
    invoke-static {p2, v1, v2}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v3

    .line 5081
    .restart local v3    # "raise":I
    invoke-static {p2, v3}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p2

    move v7, v0

    goto :goto_25

    .line 5074
    .end local v3    # "raise":I
    :cond_24
    move v7, v0

    .line 5084
    .end local v0    # "rscale":I
    .local v7, "rscale":I
    :goto_25
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 5085
    .local v4, "sum":Ljava/math/BigInteger;
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    iget v3, p2, Ljava/math/BigInteger;->signum:I

    if-ne v0, v3, :cond_38

    .line 5086
    new-instance v3, Ljava/math/BigDecimal;

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    goto :goto_3d

    .line 5087
    :cond_38
    const/4 v0, 0x0

    invoke-static {v4, v7, v0}, Ljava/math/BigDecimal;->valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;

    move-result-object v3

    .line 5085
    :goto_3d
    return-object v3
.end method

.method private blacklist adjustScale(IJ)I
    .registers 8
    .param p1, "scl"    # I
    .param p2, "exp"    # J

    .line 712
    int-to-long v0, p1

    sub-long/2addr v0, p2

    .line 713
    .local v0, "adjustedScale":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    .line 715
    long-to-int p1, v0

    .line 716
    return p1

    .line 714
    :cond_12
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Scale out of range."

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist audit()Ljava/math/BigDecimal;
    .registers 8

    .line 4500
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    const-string v1, "precision mismatch"

    const-string v2, "audit"

    if-nez v0, :cond_33

    .line 4501
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-eqz v0, :cond_28

    .line 4506
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v0, :cond_84

    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v3}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v3

    if-ne v0, v3, :cond_1f

    goto :goto_84

    .line 4507
    :cond_1f
    invoke-static {v2, p0}, Ljava/math/BigDecimal;->print(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 4508
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4502
    :cond_28
    invoke-static {v2, p0}, Ljava/math/BigDecimal;->print(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 4503
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "null intVal"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4511
    :cond_33
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-eqz v0, :cond_6c

    .line 4512
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    .line 4513
    .local v3, "val":J
    iget-wide v5, p0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_44

    goto :goto_6c

    .line 4514
    :cond_44
    invoke-static {v2, p0}, Ljava/math/BigDecimal;->print(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 4515
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state, intCompact="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t intVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4520
    .end local v3    # "val":J
    :cond_6c
    :goto_6c
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v0, :cond_84

    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    iget-wide v3, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v3

    if-ne v0, v3, :cond_7b

    goto :goto_84

    .line 4521
    :cond_7b
    invoke-static {v2, p0}, Ljava/math/BigDecimal;->print(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 4522
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4525
    :cond_84
    :goto_84
    return-object p0
.end method

.method private static blacklist bigDigitLength(Ljava/math/BigInteger;)I
    .registers 5
    .param p0, "b"    # Ljava/math/BigInteger;

    .line 4406
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_6

    .line 4407
    const/4 v0, 0x1

    return v0

    .line 4408
    :cond_6
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x268826a1

    mul-long/2addr v0, v2

    const/16 v2, 0x1f

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    .line 4409
    .local v0, "r":I
    invoke-static {v0}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_22

    move v1, v0

    goto :goto_24

    :cond_22
    add-int/lit8 v1, v0, 0x1

    :goto_24
    return v1
.end method

.method private blacklist bigMultiplyPowerTen(I)Ljava/math/BigInteger;
    .registers 6
    .param p1, "n"    # I

    .line 4237
    if-gtz p1, :cond_7

    .line 4238
    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 4240
    :cond_7
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 4241
    invoke-static {p1}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 4243
    :cond_1a
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist bigMultiplyPowerTen(JI)Ljava/math/BigInteger;
    .registers 4
    .param p0, "value"    # J
    .param p2, "n"    # I

    .line 5091
    if-gtz p2, :cond_7

    .line 5092
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 5093
    :cond_7
    invoke-static {p2}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 4
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "n"    # I

    .line 5097
    if-gtz p1, :cond_3

    .line 5098
    return-object p0

    .line 5099
    :cond_3
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v0, v0

    if-ge p1, v0, :cond_11

    .line 5100
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v0, v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 5102
    :cond_11
    invoke-static {p1}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist bigTenToThe(I)Ljava/math/BigInteger;
    .registers 3
    .param p0, "n"    # I

    .line 4095
    if-gez p0, :cond_5

    .line 4096
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 4098
    :cond_5
    sget v0, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE_MAX:I

    if-ge p0, v0, :cond_16

    .line 4099
    sget-object v0, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    .line 4100
    .local v0, "pows":[Ljava/math/BigInteger;
    array-length v1, v0

    if-ge p0, v1, :cond_11

    .line 4101
    aget-object v1, v0, p0

    return-object v1

    .line 4103
    :cond_11
    invoke-static {p0}, Ljava/math/BigDecimal;->expandBigIntegerTenPowers(I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 4106
    .end local v0    # "pows":[Ljava/math/BigInteger;
    :cond_16
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private blacklist checkScale(J)I
    .registers 8
    .param p1, "val"    # J

    .line 4424
    long-to-int v0, p1

    .line 4425
    .local v0, "asInt":I
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_34

    .line 4426
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-lez v1, :cond_11

    const v1, 0x7fffffff

    goto :goto_13

    :cond_11
    const/high16 v1, -0x80000000

    :goto_13
    move v0, v1

    .line 4428
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_34

    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    move-object v2, v1

    .local v2, "b":Ljava/math/BigInteger;
    if-eqz v1, :cond_27

    .line 4429
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_34

    .line 4430
    :cond_27
    new-instance v1, Ljava/lang/ArithmeticException;

    if-lez v0, :cond_2e

    const-string v3, "Underflow"

    goto :goto_30

    :cond_2e
    const-string v3, "Overflow"

    :goto_30
    invoke-direct {v1, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4432
    .end local v2    # "b":Ljava/math/BigInteger;
    :cond_34
    return v0
.end method

.method private static blacklist checkScale(JJ)I
    .registers 7
    .param p0, "intCompact"    # J
    .param p2, "val"    # J

    .line 4538
    long-to-int v0, p2

    .line 4539
    .local v0, "asInt":I
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-eqz v1, :cond_27

    .line 4540
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p2, v1

    if-lez v1, :cond_11

    const v1, 0x7fffffff

    goto :goto_13

    :cond_11
    const/high16 v1, -0x80000000

    :goto_13
    move v0, v1

    .line 4541
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_27

    .line 4542
    new-instance v1, Ljava/lang/ArithmeticException;

    if-lez v0, :cond_21

    const-string v2, "Underflow"

    goto :goto_23

    :cond_21
    const-string v2, "Overflow"

    :goto_23
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4544
    :cond_27
    return v0
.end method

.method private static blacklist checkScale(Ljava/math/BigInteger;J)I
    .registers 6
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "val"    # J

    .line 4548
    long-to-int v0, p1

    .line 4549
    .local v0, "asInt":I
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_27

    .line 4550
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-lez v1, :cond_11

    const v1, 0x7fffffff

    goto :goto_13

    :cond_11
    const/high16 v1, -0x80000000

    :goto_13
    move v0, v1

    .line 4551
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_27

    .line 4552
    new-instance v1, Ljava/lang/ArithmeticException;

    if-lez v0, :cond_21

    const-string v2, "Underflow"

    goto :goto_23

    :cond_21
    const-string v2, "Overflow"

    :goto_23
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4554
    :cond_27
    return v0
.end method

.method private static blacklist checkScaleNonZero(J)I
    .registers 5
    .param p0, "val"    # J

    .line 4530
    long-to-int v0, p0

    .line 4531
    .local v0, "asInt":I
    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-eqz v1, :cond_13

    .line 4532
    new-instance v1, Ljava/lang/ArithmeticException;

    if-lez v0, :cond_d

    const-string v2, "Underflow"

    goto :goto_f

    :cond_d
    const-string v2, "Overflow"

    :goto_f
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4534
    :cond_13
    return v0
.end method

.method private static blacklist commonNeedIncrement(IIIZ)Z
    .registers 7
    .param p0, "roundingMode"    # I
    .param p1, "qsign"    # I
    .param p2, "cmpFracHalf"    # I
    .param p3, "oddQuot"    # Z

    .line 4735
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_40

    .line 4752
    :pswitch_5
    goto :goto_18

    .line 4737
    :pswitch_6
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4749
    :pswitch_e
    if-gez p1, :cond_11

    move v0, v1

    :cond_11
    return v0

    .line 4746
    :pswitch_12
    if-lez p1, :cond_15

    move v0, v1

    :cond_15
    return v0

    .line 4743
    :pswitch_16
    return v0

    .line 4740
    :pswitch_17
    return v1

    .line 4755
    :goto_18
    if-gez p2, :cond_1b

    .line 4756
    return v0

    .line 4757
    :cond_1b
    if-lez p2, :cond_1e

    .line 4758
    return v1

    .line 4760
    :cond_1e
    nop

    .line 4762
    packed-switch p0, :pswitch_data_54

    .line 4767
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected rounding mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4765
    :pswitch_3b
    move v0, p3

    goto :goto_3f

    .line 4763
    :pswitch_3d
    goto :goto_3f

    .line 4764
    :pswitch_3e
    move v0, v1

    .line 4762
    :goto_3f
    return v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x4
        :pswitch_3e
        :pswitch_3d
        :pswitch_3b
    .end packed-switch
.end method

.method private static blacklist compactValFor(Ljava/math/BigInteger;)J
    .registers 9
    .param p0, "b"    # Ljava/math/BigInteger;

    .line 4441
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 4442
    .local v0, "m":[I
    array-length v1, v0

    .line 4443
    .local v1, "len":I
    if-nez v1, :cond_8

    .line 4444
    const-wide/16 v2, 0x0

    return-wide v2

    .line 4445
    :cond_8
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 4446
    .local v2, "d":I
    const/4 v3, 0x2

    if-gt v1, v3, :cond_32

    if-ne v1, v3, :cond_13

    if-gez v2, :cond_13

    goto :goto_32

    .line 4449
    :cond_13
    const-wide v4, 0xffffffffL

    if-ne v1, v3, :cond_26

    .line 4450
    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-long v6, v3

    and-long v3, v6, v4

    int-to-long v5, v2

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    goto :goto_29

    .line 4451
    :cond_26
    int-to-long v6, v2

    and-long v3, v6, v4

    :goto_29
    nop

    .line 4452
    .local v3, "u":J
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    if-gez v5, :cond_30

    neg-long v5, v3

    goto :goto_31

    :cond_30
    move-wide v5, v3

    :goto_31
    return-wide v5

    .line 4447
    .end local v3    # "u":J
    :cond_32
    :goto_32
    const-wide/high16 v3, -0x8000000000000000L

    return-wide v3
.end method

.method private blacklist compareMagnitude(Ljava/math/BigDecimal;)I
    .registers 23
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 3154
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Ljava/math/BigDecimal;->intCompact:J

    .line 3155
    .local v2, "ys":J
    iget-wide v4, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 3156
    .local v4, "xs":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_16

    .line 3157
    cmp-long v6, v2, v6

    if-nez v6, :cond_14

    const/4 v9, 0x0

    goto :goto_15

    :cond_14
    const/4 v9, -0x1

    :goto_15
    return v9

    .line 3158
    :cond_16
    cmp-long v8, v2, v6

    const/4 v10, 0x1

    if-nez v8, :cond_1c

    .line 3159
    return v10

    .line 3161
    :cond_1c
    iget v8, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v11, v8

    iget v8, v1, Ljava/math/BigDecimal;->scale:I

    int-to-long v13, v8

    sub-long/2addr v11, v13

    .line 3162
    .local v11, "sdiff":J
    cmp-long v8, v11, v6

    if-eqz v8, :cond_9a

    .line 3164
    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    move-wide v15, v6

    int-to-long v6, v8

    iget v8, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v18, v10

    const/16 v17, -0x1

    int-to-long v9, v8

    sub-long/2addr v6, v9

    .line 3165
    .local v6, "xae":J
    invoke-virtual {v1}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    int-to-long v8, v8

    iget v10, v1, Ljava/math/BigDecimal;->scale:I

    const-wide/high16 v19, -0x8000000000000000L

    int-to-long v13, v10

    sub-long/2addr v8, v13

    .line 3166
    .local v8, "yae":J
    cmp-long v10, v6, v8

    if-gez v10, :cond_45

    .line 3167
    return v17

    .line 3168
    :cond_45
    cmp-long v10, v6, v8

    if-lez v10, :cond_4a

    .line 3169
    return v18

    .line 3170
    :cond_4a
    cmp-long v10, v11, v15

    if-gez v10, :cond_75

    .line 3172
    const-wide/32 v13, -0x80000000

    cmp-long v10, v11, v13

    if-lez v10, :cond_a0

    cmp-long v10, v4, v19

    if-eqz v10, :cond_64

    neg-long v13, v11

    long-to-int v10, v13

    .line 3174
    invoke-static {v4, v5, v10}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v13

    move-wide v4, v13

    cmp-long v10, v13, v19

    if-nez v10, :cond_a0

    :cond_64
    cmp-long v10, v2, v19

    if-nez v10, :cond_a0

    .line 3176
    neg-long v13, v11

    long-to-int v10, v13

    invoke-direct {v0, v10}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 3177
    .local v10, "rb":Ljava/math/BigInteger;
    iget-object v13, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v10, v13}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v13

    return v13

    .line 3181
    .end local v10    # "rb":Ljava/math/BigInteger;
    :cond_75
    const-wide/32 v13, 0x7fffffff

    cmp-long v10, v11, v13

    if-gtz v10, :cond_a0

    cmp-long v10, v2, v19

    if-eqz v10, :cond_8a

    long-to-int v10, v11

    .line 3183
    invoke-static {v2, v3, v10}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v13

    move-wide v2, v13

    cmp-long v10, v13, v19

    if-nez v10, :cond_a0

    :cond_8a
    cmp-long v10, v4, v19

    if-nez v10, :cond_a0

    .line 3185
    long-to-int v10, v11

    invoke-direct {v1, v10}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 3186
    .restart local v10    # "rb":Ljava/math/BigInteger;
    iget-object v13, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v13

    return v13

    .line 3162
    .end local v6    # "xae":J
    .end local v8    # "yae":J
    .end local v10    # "rb":Ljava/math/BigInteger;
    :cond_9a
    move/from16 v18, v10

    const/16 v17, -0x1

    const-wide/high16 v19, -0x8000000000000000L

    .line 3190
    :cond_a0
    cmp-long v6, v4, v19

    if-eqz v6, :cond_b0

    .line 3191
    cmp-long v6, v2, v19

    if-eqz v6, :cond_ad

    invoke-static {v4, v5, v2, v3}, Ljava/math/BigDecimal;->longCompareMagnitude(JJ)I

    move-result v9

    goto :goto_af

    :cond_ad
    move/from16 v9, v17

    :goto_af
    return v9

    .line 3192
    :cond_b0
    cmp-long v6, v2, v19

    if-eqz v6, :cond_b5

    .line 3193
    return v18

    .line 3195
    :cond_b5
    iget-object v6, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v7, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v6

    return v6
.end method

.method private static blacklist compareMagnitudeNormalized(JIJI)I
    .registers 10
    .param p0, "xs"    # J
    .param p2, "xscale"    # I
    .param p3, "ys"    # J
    .param p5, "yscale"    # I

    .line 5567
    sub-int v0, p2, p5

    .line 5568
    .local v0, "sdiff":I
    if-eqz v0, :cond_10

    .line 5569
    if-gez v0, :cond_c

    .line 5570
    neg-int v1, v0

    invoke-static {p0, p1, v1}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide p0

    goto :goto_10

    .line 5572
    :cond_c
    invoke-static {p3, p4, v0}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide p3

    .line 5575
    :cond_10
    :goto_10
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p0, v1

    if-eqz v3, :cond_21

    .line 5576
    cmp-long v1, p3, v1

    if-eqz v1, :cond_1f

    invoke-static {p0, p1, p3, p4}, Ljava/math/BigDecimal;->longCompareMagnitude(JJ)I

    move-result v1

    goto :goto_20

    :cond_1f
    const/4 v1, -0x1

    :goto_20
    return v1

    .line 5578
    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist compareMagnitudeNormalized(JILjava/math/BigInteger;I)I
    .registers 11
    .param p0, "xs"    # J
    .param p2, "xscale"    # I
    .param p3, "ys"    # Ljava/math/BigInteger;
    .param p4, "yscale"    # I

    .line 5584
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 5585
    return v1

    .line 5586
    :cond_8
    sub-int v0, p2, p4

    .line 5587
    .local v0, "sdiff":I
    if-gez v0, :cond_21

    .line 5588
    neg-int v2, v0

    invoke-static {p0, p1, v2}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    .line 5589
    neg-int v1, v0

    invoke-static {p0, p1, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v1

    return v1

    .line 5592
    :cond_21
    return v1
.end method

.method private static blacklist compareMagnitudeNormalized(Ljava/math/BigInteger;ILjava/math/BigInteger;I)I
    .registers 6
    .param p0, "xs"    # Ljava/math/BigInteger;
    .param p1, "xscale"    # I
    .param p2, "ys"    # Ljava/math/BigInteger;
    .param p3, "yscale"    # I

    .line 5597
    sub-int v0, p1, p3

    .line 5598
    .local v0, "sdiff":I
    if-gez v0, :cond_e

    .line 5599
    neg-int v1, v0

    invoke-static {p0, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v1

    return v1

    .line 5601
    :cond_e
    invoke-static {p2, v0}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v1

    return v1
.end method

.method private static blacklist createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;
    .registers 13
    .param p0, "compactVal"    # J
    .param p2, "scale"    # I
    .param p3, "preferredScale"    # J

    .line 4977
    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2a

    int-to-long v0, p2

    cmp-long v0, v0, p3

    if-lez v0, :cond_2a

    .line 4978
    const-wide/16 v0, 0x1

    and-long v4, p0, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1b

    .line 4979
    goto :goto_2a

    .line 4980
    :cond_1b
    rem-long v4, p0, v2

    .line 4981
    .local v4, "r":J
    cmp-long v6, v4, v6

    if-eqz v6, :cond_22

    .line 4982
    goto :goto_2a

    .line 4983
    :cond_22
    div-long/2addr p0, v2

    .line 4984
    int-to-long v2, p2

    sub-long/2addr v2, v0

    invoke-static {p0, p1, v2, v3}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result p2

    .line 4985
    .end local v4    # "r":J
    goto :goto_1

    .line 4986
    :cond_2a
    :goto_2a
    invoke-static {p0, p1, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;
    .registers 9
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I
    .param p2, "preferredScale"    # J

    .line 4953
    nop

    :goto_1
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_31

    int-to-long v2, p1

    cmp-long v0, v2, p2

    if-lez v0, :cond_31

    .line 4955
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4956
    goto :goto_31

    .line 4957
    :cond_16
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 4958
    .local v0, "qr":[Ljava/math/BigInteger;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_26

    .line 4959
    goto :goto_31

    .line 4960
    :cond_26
    aget-object p0, v0, v1

    .line 4961
    int-to-long v1, p1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {p0, v1, v2}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result p1

    goto :goto_1

    .line 4963
    .end local v0    # "qr":[Ljava/math/BigInteger;
    :cond_31
    :goto_31
    invoke-static {p0, p1, v1}, Ljava/math/BigDecimal;->valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist divRemNegativeLong(JJ)[J
    .registers 12
    .param p0, "n"    # J
    .param p2, "d"    # J

    .line 5525
    nop

    .line 5526
    nop

    .line 5529
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    ushr-long v3, p2, v0

    div-long/2addr v1, v3

    .line 5530
    .local v1, "q":J
    mul-long v3, v1, p2

    sub-long v3, p0, v3

    .line 5533
    .local v3, "r":J
    :goto_c
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const-wide/16 v6, 0x1

    if-gez v5, :cond_17

    .line 5534
    add-long/2addr v3, p2

    .line 5535
    sub-long/2addr v1, v6

    goto :goto_c

    .line 5537
    :cond_17
    :goto_17
    cmp-long v5, v3, p2

    if-ltz v5, :cond_1e

    .line 5538
    sub-long/2addr v3, p2

    .line 5539
    add-long/2addr v1, v6

    goto :goto_17

    .line 5543
    :cond_1e
    const/4 v5, 0x2

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v3, v5, v6

    aput-wide v1, v5, v0

    return-object v5
.end method

.method private static blacklist divide(JIJIII)Ljava/math/BigDecimal;
    .registers 25
    .param p0, "dividend"    # J
    .param p2, "dividendScale"    # I
    .param p3, "divisor"    # J
    .param p5, "divisorScale"    # I
    .param p6, "scale"    # I
    .param p7, "roundingMode"    # I

    .line 5762
    move-wide/from16 v0, p0

    move/from16 v9, p2

    move/from16 v10, p5

    move/from16 v6, p6

    int-to-long v2, v6

    int-to-long v4, v10

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v2

    const-wide/high16 v3, -0x8000000000000000L

    if-le v2, v9, :cond_61

    .line 5763
    add-int v11, v6, v10

    .line 5764
    .local v11, "newScale":I
    sub-int v12, v11, v9

    .line 5765
    .local v12, "raise":I
    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v2, v2

    if-ge v12, v2, :cond_4c

    .line 5766
    move-wide/from16 v7, p0

    .line 5767
    .local v7, "xs":J
    invoke-static {v7, v8, v12}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v13

    move-wide v7, v13

    cmp-long v2, v13, v3

    if-eqz v2, :cond_34

    .line 5768
    move-wide v2, v7

    .end local v7    # "xs":J
    .local v2, "xs":J
    move/from16 v8, p6

    move-wide/from16 v4, p3

    move/from16 v7, p7

    invoke-static/range {v2 .. v8}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v8

    move-wide v13, v2

    .end local v2    # "xs":J
    .local v13, "xs":J
    return-object v8

    .line 5770
    .end local v13    # "xs":J
    .restart local v7    # "xs":J
    :cond_34
    move-wide v13, v7

    .end local v7    # "xs":J
    .restart local v13    # "xs":J
    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v2, v2, v12

    move/from16 v8, p6

    move-wide v4, v2

    move-wide v2, v0

    move-wide v0, v4

    move-wide/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Ljava/math/BigDecimal;->multiplyDivideAndRound(JJJIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 5771
    move-wide v6, v2

    .local v0, "q":Ljava/math/BigDecimal;
    if-eqz v0, :cond_4d

    .line 5772
    return-object v0

    .line 5765
    .end local v0    # "q":Ljava/math/BigDecimal;
    .end local v13    # "xs":J
    :cond_4c
    move-wide v6, v0

    .line 5775
    :cond_4d
    invoke-static {v6, v7, v12}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v0

    .line 5776
    .local v0, "scaledDividend":Ljava/math/BigInteger;
    move/from16 v5, p6

    move-wide/from16 v1, p3

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v5

    move-wide v13, v1

    move-object v1, v0

    move v0, v3

    .end local v0    # "scaledDividend":Ljava/math/BigInteger;
    .local v1, "scaledDividend":Ljava/math/BigInteger;
    return-object v5

    .line 5778
    .end local v1    # "scaledDividend":Ljava/math/BigInteger;
    .end local v11    # "newScale":I
    .end local v12    # "raise":I
    :cond_61
    move-wide v13, v0

    move v0, v6

    move-wide v6, v13

    move-wide/from16 v13, p3

    int-to-long v1, v9

    int-to-long v11, v0

    sub-long/2addr v1, v11

    invoke-static {v13, v14, v1, v2}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v8

    .line 5779
    .local v8, "newScale":I
    sub-int v11, v8, v10

    .line 5780
    .local v11, "raise":I
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v1, v1

    if-ge v11, v1, :cond_8e

    .line 5781
    move-wide/from16 v1, p3

    .line 5782
    .local v1, "ys":J
    invoke-static {v1, v2, v11}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v15

    move-wide v1, v15

    cmp-long v3, v15, v3

    if-eqz v3, :cond_8d

    .line 5783
    move/from16 v6, p6

    move/from16 v5, p7

    move v4, v0

    move-wide v2, v1

    move-wide/from16 v0, p0

    .end local v1    # "ys":J
    .local v2, "ys":J
    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v6

    move v0, v4

    return-object v6

    .line 5782
    .end local v2    # "ys":J
    .restart local v1    # "ys":J
    :cond_8d
    move-wide v2, v1

    .line 5786
    .end local v1    # "ys":J
    :cond_8e
    invoke-static {v13, v14, v11}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v1

    .line 5787
    .local v1, "scaledDivisor":Ljava/math/BigInteger;
    invoke-static/range {p0 .. p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v7, p7

    invoke-static {v2, v1, v0, v7, v0}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist divide(JIJIJLjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 27
    .param p0, "xs"    # J
    .param p2, "xscale"    # I
    .param p3, "ys"    # J
    .param p5, "yscale"    # I
    .param p6, "preferredScale"    # J
    .param p8, "mc"    # Ljava/math/MathContext;

    .line 5196
    move-wide/from16 v0, p0

    move/from16 v7, p2

    move/from16 v2, p5

    move-object/from16 v15, p8

    iget v3, v15, Ljava/math/MathContext;->precision:I

    .line 5197
    .local v3, "mcp":I
    if-gt v7, v2, :cond_17

    const/16 v4, 0x12

    if-ge v2, v4, :cond_17

    if-ge v3, v4, :cond_17

    .line 5198
    invoke-static/range {p0 .. p8}, Ljava/math/BigDecimal;->divideSmallFastPath(JIJIJLjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4

    .line 5200
    :cond_17
    invoke-static/range {p0 .. p5}, Ljava/math/BigDecimal;->compareMagnitudeNormalized(JIJI)I

    move-result v4

    if-lez v4, :cond_1f

    .line 5201
    add-int/lit8 v2, v2, -0x1

    .line 5203
    .end local p5    # "yscale":I
    .local v2, "yscale":I
    :cond_1f
    iget-object v4, v15, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v5, v4, Ljava/math/RoundingMode;->oldMode:I

    .line 5207
    .local v5, "roundingMode":I
    int-to-long v8, v2

    add-long v8, p6, v8

    int-to-long v10, v7

    sub-long/2addr v8, v10

    int-to-long v10, v3

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    .line 5209
    .local v4, "scl":I
    int-to-long v8, v3

    int-to-long v10, v2

    add-long/2addr v8, v10

    int-to-long v10, v7

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    const-wide/high16 v8, -0x8000000000000000L

    if-lez v6, :cond_76

    .line 5210
    int-to-long v10, v3

    int-to-long v12, v2

    add-long/2addr v10, v12

    int-to-long v12, v7

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    .line 5212
    .local v6, "raise":I
    invoke-static {v0, v1, v6}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v10

    move-wide/from16 v16, v10

    .local v16, "scaledXs":J
    cmp-long v8, v10, v8

    if-nez v8, :cond_5f

    .line 5213
    invoke-static {v0, v1, v6}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v8

    .line 5214
    .local v8, "rb":Ljava/math/BigInteger;
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v13

    move-wide/from16 v9, p3

    move v11, v4

    move v12, v5

    .end local v4    # "scl":I
    .end local v5    # "roundingMode":I
    .local v11, "scl":I
    .local v12, "roundingMode":I
    invoke-static/range {v8 .. v13}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v4

    .line 5215
    .end local v8    # "rb":Ljava/math/BigInteger;
    .end local v12    # "roundingMode":I
    .local v4, "quotient":Ljava/math/BigDecimal;
    .restart local v5    # "roundingMode":I
    goto :goto_6f

    .line 5216
    .end local v11    # "scl":I
    .local v4, "scl":I
    :cond_5f
    move v11, v4

    .end local v4    # "scl":I
    .restart local v11    # "scl":I
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v14

    move v13, v5

    move v12, v11

    move-wide/from16 v8, v16

    move-wide/from16 v10, p3

    .end local v5    # "roundingMode":I
    .end local v11    # "scl":I
    .end local v16    # "scaledXs":J
    .local v8, "scaledXs":J
    .local v12, "scl":I
    .local v13, "roundingMode":I
    invoke-static/range {v8 .. v14}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v4

    move v11, v12

    .line 5218
    .end local v6    # "raise":I
    .end local v8    # "scaledXs":J
    .end local v12    # "scl":I
    .end local v13    # "roundingMode":I
    .local v4, "quotient":Ljava/math/BigDecimal;
    .restart local v5    # "roundingMode":I
    .restart local v11    # "scl":I
    :goto_6f
    move v10, v2

    move v9, v3

    move-object v6, v4

    move v4, v11

    move-wide/from16 v11, p3

    goto :goto_c2

    .line 5219
    .end local v11    # "scl":I
    .local v4, "scl":I
    :cond_76
    move v11, v4

    .end local v4    # "scl":I
    .restart local v11    # "scl":I
    int-to-long v12, v7

    move-wide/from16 v16, v8

    int-to-long v8, v3

    sub-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v8

    .line 5221
    .local v8, "newScale":I
    if-ne v8, v2, :cond_91

    .line 5222
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    move v10, v2

    move v9, v3

    move v4, v11

    move-wide/from16 v2, p3

    .end local v2    # "yscale":I
    .end local v3    # "mcp":I
    .end local v11    # "scl":I
    .restart local v4    # "scl":I
    .local v9, "mcp":I
    .local v10, "yscale":I
    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v6

    move-wide v11, v2

    .local v6, "quotient":Ljava/math/BigDecimal;
    goto :goto_c2

    .line 5224
    .end local v4    # "scl":I
    .end local v6    # "quotient":Ljava/math/BigDecimal;
    .end local v9    # "mcp":I
    .end local v10    # "yscale":I
    .restart local v2    # "yscale":I
    .restart local v3    # "mcp":I
    .restart local v11    # "scl":I
    :cond_91
    move v10, v2

    move v9, v3

    move v4, v11

    move-wide/from16 v11, p3

    .end local v2    # "yscale":I
    .end local v3    # "mcp":I
    .end local v11    # "scl":I
    .restart local v4    # "scl":I
    .restart local v9    # "mcp":I
    .restart local v10    # "yscale":I
    int-to-long v0, v8

    int-to-long v2, v10

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v13

    .line 5226
    .local v13, "raise":I
    invoke-static {v11, v12, v13}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v2

    move-wide v0, v2

    .local v2, "scaledYs":J
    cmp-long v0, v0, v16

    if-nez v0, :cond_b8

    .line 5227
    invoke-static {v11, v12, v13}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v0

    .line 5228
    .local v0, "rb":Ljava/math/BigInteger;
    invoke-static/range {p0 .. p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 5229
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    .line 5228
    invoke-static {v1, v0, v4, v5, v6}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v0

    .line 5230
    .local v0, "quotient":Ljava/math/BigDecimal;
    move-object v6, v0

    goto :goto_c2

    .line 5231
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    :cond_b8
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    move-wide/from16 v0, p0

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v6

    .line 5236
    .end local v2    # "scaledYs":J
    .end local v8    # "newScale":I
    .end local v13    # "raise":I
    .restart local v6    # "quotient":Ljava/math/BigDecimal;
    :goto_c2
    invoke-static {v6, v15}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist divide(JILjava/math/BigInteger;III)Ljava/math/BigDecimal;
    .registers 11
    .param p0, "dividend"    # J
    .param p2, "dividendScale"    # I
    .param p3, "divisor"    # Ljava/math/BigInteger;
    .param p4, "divisorScale"    # I
    .param p5, "scale"    # I
    .param p6, "roundingMode"    # I

    .line 5812
    int-to-long v0, p5

    int-to-long v2, p4

    add-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v0

    if-le v0, p2, :cond_16

    .line 5813
    add-int v0, p5, p4

    .line 5814
    .local v0, "newScale":I
    sub-int v1, v0, p2

    .line 5815
    .local v1, "raise":I
    invoke-static {p0, p1, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v2

    .line 5816
    .local v2, "scaledDividend":Ljava/math/BigInteger;
    invoke-static {v2, p3, p5, p6, p5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 5818
    .end local v0    # "newScale":I
    .end local v1    # "raise":I
    .end local v2    # "scaledDividend":Ljava/math/BigInteger;
    :cond_16
    int-to-long v0, p2

    int-to-long v2, p5

    sub-long/2addr v0, v2

    invoke-static {p3, v0, v1}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v0

    .line 5819
    .restart local v0    # "newScale":I
    sub-int v1, v0, p4

    .line 5820
    .restart local v1    # "raise":I
    invoke-static {p3, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 5821
    .local v2, "scaledDivisor":Ljava/math/BigInteger;
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v2, p5, p6, p5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist divide(JILjava/math/BigInteger;IJLjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 16
    .param p0, "xs"    # J
    .param p2, "xscale"    # I
    .param p3, "ys"    # Ljava/math/BigInteger;
    .param p4, "yscale"    # I
    .param p5, "preferredScale"    # J
    .param p7, "mc"    # Ljava/math/MathContext;

    .line 5286
    invoke-static {p0, p1, p2, p3, p4}, Ljava/math/BigDecimal;->compareMagnitudeNormalized(JILjava/math/BigInteger;I)I

    move-result v0

    if-lez v0, :cond_8

    .line 5287
    add-int/lit8 p4, p4, -0x1

    .line 5289
    :cond_8
    iget v0, p7, Ljava/math/MathContext;->precision:I

    .line 5290
    .local v0, "mcp":I
    iget-object v1, p7, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v1, v1, Ljava/math/RoundingMode;->oldMode:I

    .line 5296
    .local v1, "roundingMode":I
    int-to-long v2, p4

    add-long/2addr v2, p5

    int-to-long v4, p2

    sub-long/2addr v2, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v2

    .line 5297
    .local v2, "scl":I
    int-to-long v3, v0

    int-to-long v5, p4

    add-long/2addr v3, v5

    int-to-long v5, p2

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    if-lez v3, :cond_39

    .line 5298
    int-to-long v3, v0

    int-to-long v5, p4

    add-long/2addr v3, v5

    int-to-long v5, p2

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 5299
    .local v3, "raise":I
    invoke-static {p0, p1, v3}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v4

    .line 5300
    .local v4, "rb":Ljava/math/BigInteger;
    invoke-static {p5, p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    invoke-static {v4, p3, v2, v1, v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    .line 5301
    .end local v4    # "rb":Ljava/math/BigInteger;
    .local v3, "quotient":Ljava/math/BigDecimal;
    goto :goto_58

    .line 5302
    .end local v3    # "quotient":Ljava/math/BigDecimal;
    :cond_39
    int-to-long v3, p2

    int-to-long v5, v0

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 5303
    .local v3, "newScale":I
    int-to-long v4, v3

    int-to-long v6, p4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    .line 5304
    .local v4, "raise":I
    invoke-static {p3, v4}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    .line 5305
    .local v5, "rb":Ljava/math/BigInteger;
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {p5, p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v7

    invoke-static {v6, v5, v2, v1, v7}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v3, v6

    .line 5308
    .end local v4    # "raise":I
    .end local v5    # "rb":Ljava/math/BigInteger;
    .local v3, "quotient":Ljava/math/BigDecimal;
    :goto_58
    invoke-static {v3, p7}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist divide(Ljava/math/BigInteger;IJIII)Ljava/math/BigDecimal;
    .registers 23
    .param p0, "dividend"    # Ljava/math/BigInteger;
    .param p1, "dividendScale"    # I
    .param p2, "divisor"    # J
    .param p4, "divisorScale"    # I
    .param p5, "scale"    # I
    .param p6, "roundingMode"    # I

    .line 5792
    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v13, p4

    move/from16 v10, p5

    int-to-long v1, v10

    int-to-long v3, v13

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v1

    if-le v1, v6, :cond_24

    .line 5793
    add-int v1, v10, v13

    .line 5794
    .local v1, "newScale":I
    sub-int v2, v1, v6

    .line 5795
    .local v2, "raise":I
    invoke-static {v0, v2}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    .line 5796
    .local v7, "scaledDividend":Ljava/math/BigInteger;
    move/from16 v12, p5

    move-wide/from16 v8, p2

    move/from16 v11, p6

    invoke-static/range {v7 .. v12}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 5798
    .end local v1    # "newScale":I
    .end local v2    # "raise":I
    .end local v7    # "scaledDividend":Ljava/math/BigInteger;
    :cond_24
    move-wide/from16 v8, p2

    int-to-long v1, v6

    int-to-long v3, v10

    sub-long/2addr v1, v3

    invoke-static {v8, v9, v1, v2}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v7

    .line 5799
    .local v7, "newScale":I
    sub-int v11, v7, v13

    .line 5800
    .local v11, "raise":I
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v1, v1

    if-ge v11, v1, :cond_4b

    .line 5801
    move-wide/from16 v1, p2

    .line 5802
    .local v1, "ys":J
    invoke-static {v1, v2, v11}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v3

    move-wide v1, v3

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v3, v3, v14

    if-eqz v3, :cond_4b

    .line 5803
    move/from16 v5, p5

    move/from16 v4, p6

    move v3, v10

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 5806
    .end local v1    # "ys":J
    :cond_4b
    invoke-static {v8, v9, v11}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v1

    .line 5807
    .local v1, "scaledDivisor":Ljava/math/BigInteger;
    move/from16 v4, p6

    invoke-static {v0, v1, v10, v4, v10}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist divide(Ljava/math/BigInteger;IJIJLjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 26
    .param p0, "xs"    # Ljava/math/BigInteger;
    .param p1, "xscale"    # I
    .param p2, "ys"    # J
    .param p4, "yscale"    # I
    .param p5, "preferredScale"    # J
    .param p7, "mc"    # Ljava/math/MathContext;

    .line 5245
    move-object/from16 v0, p0

    move/from16 v6, p1

    move-wide/from16 v8, p2

    move/from16 v1, p4

    move-object/from16 v13, p7

    invoke-static {v8, v9, v1, v0, v6}, Ljava/math/BigDecimal;->compareMagnitudeNormalized(JILjava/math/BigInteger;I)I

    move-result v2

    neg-int v2, v2

    if-lez v2, :cond_15

    .line 5246
    add-int/lit8 v1, v1, -0x1

    move v14, v1

    .end local p4    # "yscale":I
    .local v1, "yscale":I
    goto :goto_16

    .line 5245
    .end local v1    # "yscale":I
    .restart local p4    # "yscale":I
    :cond_15
    move v14, v1

    .line 5248
    .end local p4    # "yscale":I
    .local v14, "yscale":I
    :goto_16
    iget v15, v13, Ljava/math/MathContext;->precision:I

    .line 5249
    .local v15, "mcp":I
    iget-object v1, v13, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v4, v1, Ljava/math/RoundingMode;->oldMode:I

    .line 5255
    .local v4, "roundingMode":I
    int-to-long v1, v14

    add-long v1, p5, v1

    int-to-long v10, v6

    sub-long/2addr v1, v10

    int-to-long v10, v15

    add-long/2addr v1, v10

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 5256
    .local v3, "scl":I
    int-to-long v1, v15

    int-to-long v10, v14

    add-long/2addr v1, v10

    int-to-long v10, v6

    sub-long/2addr v1, v10

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v1

    if-lez v1, :cond_4c

    .line 5257
    int-to-long v1, v15

    int-to-long v10, v14

    add-long/2addr v1, v10

    int-to-long v10, v6

    sub-long/2addr v1, v10

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v1

    .line 5258
    .local v1, "raise":I
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    .line 5259
    .local v7, "rb":Ljava/math/BigInteger;
    invoke-static/range {p5 .. p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v12

    move v10, v3

    move v11, v4

    .end local v3    # "scl":I
    .end local v4    # "roundingMode":I
    .local v10, "scl":I
    .local v11, "roundingMode":I
    invoke-static/range {v7 .. v12}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v1

    .line 5260
    .end local v7    # "rb":Ljava/math/BigInteger;
    .end local v10    # "scl":I
    .end local v11    # "roundingMode":I
    .local v1, "quotient":Ljava/math/BigDecimal;
    .restart local v3    # "scl":I
    .restart local v4    # "roundingMode":I
    move-wide/from16 v8, p2

    goto :goto_8d

    .line 5261
    .end local v1    # "quotient":Ljava/math/BigDecimal;
    :cond_4c
    int-to-long v1, v6

    int-to-long v7, v15

    sub-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v7

    .line 5263
    .local v7, "newScale":I
    if-ne v7, v14, :cond_62

    .line 5264
    invoke-static/range {p5 .. p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    move-wide/from16 v1, p2

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v5

    move-wide v8, v1

    move-object v1, v5

    .local v5, "quotient":Ljava/math/BigDecimal;
    goto :goto_8d

    .line 5266
    .end local v5    # "quotient":Ljava/math/BigDecimal;
    :cond_62
    move-wide/from16 v8, p2

    int-to-long v1, v7

    int-to-long v10, v14

    sub-long/2addr v1, v10

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v10

    .line 5268
    .local v10, "raise":I
    invoke-static {v8, v9, v10}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v1

    move-wide v11, v1

    .local v1, "scaledYs":J
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v5, v11, v16

    if-nez v5, :cond_84

    .line 5269
    invoke-static {v8, v9, v10}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v5

    .line 5270
    .local v5, "rb":Ljava/math/BigInteger;
    invoke-static/range {p5 .. p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v11

    invoke-static {v0, v5, v3, v4, v11}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v5

    .line 5271
    .local v5, "quotient":Ljava/math/BigDecimal;
    move-object v1, v5

    goto :goto_8d

    .line 5272
    .end local v5    # "quotient":Ljava/math/BigDecimal;
    :cond_84
    invoke-static/range {p5 .. p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v5

    move-object v1, v5

    .line 5277
    .end local v7    # "newScale":I
    .end local v10    # "raise":I
    .local v1, "quotient":Ljava/math/BigDecimal;
    :goto_8d
    invoke-static {v1, v13}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist divide(Ljava/math/BigInteger;ILjava/math/BigInteger;III)Ljava/math/BigDecimal;
    .registers 10
    .param p0, "dividend"    # Ljava/math/BigInteger;
    .param p1, "dividendScale"    # I
    .param p2, "divisor"    # Ljava/math/BigInteger;
    .param p3, "divisorScale"    # I
    .param p4, "scale"    # I
    .param p5, "roundingMode"    # I

    .line 5826
    int-to-long v0, p4

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v0

    if-le v0, p1, :cond_16

    .line 5827
    add-int v0, p4, p3

    .line 5828
    .local v0, "newScale":I
    sub-int v1, v0, p1

    .line 5829
    .local v1, "raise":I
    invoke-static {p0, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 5830
    .local v2, "scaledDividend":Ljava/math/BigInteger;
    invoke-static {v2, p2, p4, p5, p4}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 5832
    .end local v0    # "newScale":I
    .end local v1    # "raise":I
    .end local v2    # "scaledDividend":Ljava/math/BigInteger;
    :cond_16
    int-to-long v0, p1

    int-to-long v2, p4

    sub-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v0

    .line 5833
    .restart local v0    # "newScale":I
    sub-int v1, v0, p3

    .line 5834
    .restart local v1    # "raise":I
    invoke-static {p2, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 5835
    .local v2, "scaledDivisor":Ljava/math/BigInteger;
    invoke-static {p0, v2, p4, p5, p4}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist divide(Ljava/math/BigInteger;ILjava/math/BigInteger;IJLjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 15
    .param p0, "xs"    # Ljava/math/BigInteger;
    .param p1, "xscale"    # I
    .param p2, "ys"    # Ljava/math/BigInteger;
    .param p3, "yscale"    # I
    .param p4, "preferredScale"    # J
    .param p6, "mc"    # Ljava/math/MathContext;

    .line 5317
    invoke-static {p0, p1, p2, p3}, Ljava/math/BigDecimal;->compareMagnitudeNormalized(Ljava/math/BigInteger;ILjava/math/BigInteger;I)I

    move-result v0

    if-lez v0, :cond_8

    .line 5318
    add-int/lit8 p3, p3, -0x1

    .line 5320
    :cond_8
    iget v0, p6, Ljava/math/MathContext;->precision:I

    .line 5321
    .local v0, "mcp":I
    iget-object v1, p6, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v1, v1, Ljava/math/RoundingMode;->oldMode:I

    .line 5327
    .local v1, "roundingMode":I
    int-to-long v2, p3

    add-long/2addr v2, p4

    int-to-long v4, p1

    sub-long/2addr v2, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v2

    .line 5328
    .local v2, "scl":I
    int-to-long v3, v0

    int-to-long v5, p3

    add-long/2addr v3, v5

    int-to-long v5, p1

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    if-lez v3, :cond_39

    .line 5329
    int-to-long v3, v0

    int-to-long v5, p3

    add-long/2addr v3, v5

    int-to-long v5, p1

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 5330
    .local v3, "raise":I
    invoke-static {p0, v3}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 5331
    .local v4, "rb":Ljava/math/BigInteger;
    invoke-static {p4, p5}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    invoke-static {v4, p2, v2, v1, v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    .line 5332
    .end local v4    # "rb":Ljava/math/BigInteger;
    .local v3, "quotient":Ljava/math/BigDecimal;
    goto :goto_54

    .line 5333
    .end local v3    # "quotient":Ljava/math/BigDecimal;
    :cond_39
    int-to-long v3, p1

    int-to-long v5, v0

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 5334
    .local v3, "newScale":I
    int-to-long v4, v3

    int-to-long v6, p3

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    .line 5335
    .local v4, "raise":I
    invoke-static {p2, v4}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    .line 5336
    .local v5, "rb":Ljava/math/BigInteger;
    invoke-static {p4, p5}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    invoke-static {p0, v5, v2, v1, v6}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v3, v6

    .line 5339
    .end local v4    # "raise":I
    .end local v5    # "rb":Ljava/math/BigInteger;
    .local v3, "quotient":Ljava/math/BigDecimal;
    :goto_54
    invoke-static {v3, p6}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist divideAndRound(JJI)J
    .registers 15
    .param p0, "ldividend"    # J
    .param p2, "ldivisor"    # J
    .param p4, "roundingMode"    # I

    .line 4717
    div-long v4, p0, p2

    .line 4718
    .local v4, "q":J
    const/4 v0, 0x1

    if-ne p4, v0, :cond_6

    .line 4719
    return-wide v4

    .line 4720
    :cond_6
    rem-long v6, p0, p2

    .line 4721
    .local v6, "r":J
    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const/4 v8, 0x0

    if-gez v3, :cond_11

    move v3, v0

    goto :goto_12

    :cond_11
    move v3, v8

    :goto_12
    cmp-long v9, p2, v1

    if-gez v9, :cond_17

    move v8, v0

    :cond_17
    if-ne v3, v8, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, -0x1

    :goto_1b
    move v3, v0

    .line 4722
    .local v3, "qsign":I
    cmp-long v0, v6, v1

    if-eqz v0, :cond_2d

    .line 4723
    move-wide v0, p2

    move v2, p4

    .end local p2    # "ldivisor":J
    .end local p4    # "roundingMode":I
    .local v0, "ldivisor":J
    .local v2, "roundingMode":I
    invoke-static/range {v0 .. v7}, Ljava/math/BigDecimal;->needIncrement(JIIJJ)Z

    move-result p2

    .line 4724
    .local p2, "increment":Z
    if-eqz p2, :cond_2b

    int-to-long p3, v3

    add-long/2addr p3, v4

    goto :goto_2c

    :cond_2b
    move-wide p3, v4

    :goto_2c
    return-wide p3

    .line 4726
    .end local v0    # "ldivisor":J
    .end local v2    # "roundingMode":I
    .local p2, "ldivisor":J
    .restart local p4    # "roundingMode":I
    :cond_2d
    return-wide v4
.end method

.method private static blacklist divideAndRound(JJIII)Ljava/math/BigDecimal;
    .registers 20
    .param p0, "ldividend"    # J
    .param p2, "ldivisor"    # J
    .param p4, "scale"    # I
    .param p5, "roundingMode"    # I
    .param p6, "preferredScale"    # I

    .line 4695
    move/from16 v0, p4

    move/from16 v1, p6

    div-long v6, p0, p2

    .line 4696
    .local v6, "q":J
    const/4 v2, 0x1

    move/from16 v4, p5

    if-ne v4, v2, :cond_12

    if-ne v0, v1, :cond_12

    .line 4697
    invoke-static {v6, v7, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 4698
    :cond_12
    rem-long v8, p0, p2

    .line 4699
    .local v8, "r":J
    const-wide/16 v10, 0x0

    cmp-long v3, p0, v10

    const/4 v5, 0x0

    if-gez v3, :cond_1d

    move v3, v2

    goto :goto_1e

    :cond_1d
    move v3, v5

    :goto_1e
    cmp-long v12, p2, v10

    if-gez v12, :cond_23

    move v5, v2

    :cond_23
    if-ne v3, v5, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, -0x1

    :goto_27
    move v5, v2

    .line 4700
    .local v5, "qsign":I
    cmp-long v2, v8, v10

    if-eqz v2, :cond_3c

    .line 4701
    move-wide v2, p2

    invoke-static/range {v2 .. v9}, Ljava/math/BigDecimal;->needIncrement(JIIJJ)Z

    move-result v10

    .line 4702
    .local v10, "increment":Z
    if-eqz v10, :cond_36

    int-to-long v2, v5

    add-long/2addr v2, v6

    goto :goto_37

    :cond_36
    move-wide v2, v6

    :goto_37
    invoke-static {v2, v3, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 4704
    .end local v10    # "increment":Z
    :cond_3c
    if-eq v1, v0, :cond_44

    .line 4705
    int-to-long v2, v1

    invoke-static {v6, v7, v0, v2, v3}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 4707
    :cond_44
    invoke-static {v6, v7, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;
    .registers 19
    .param p0, "bdividend"    # Ljava/math/BigInteger;
    .param p1, "ldivisor"    # J
    .param p3, "scale"    # I
    .param p4, "roundingMode"    # I
    .param p5, "preferredScale"    # I

    .line 4825
    move-wide v0, p1

    move/from16 v7, p3

    move/from16 v8, p5

    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    move-object v9, v2

    .line 4827
    .local v9, "mdividend":Ljava/math/MutableBigInteger;
    new-instance v4, Ljava/math/MutableBigInteger;

    invoke-direct {v4}, Ljava/math/MutableBigInteger;-><init>()V

    .line 4829
    .local v4, "mq":Ljava/math/MutableBigInteger;
    invoke-virtual {v9, p1, p2, v4}, Ljava/math/MutableBigInteger;->divide(JLjava/math/MutableBigInteger;)J

    move-result-wide v5

    .line 4831
    .local v5, "r":J
    const-wide/16 v2, 0x0

    cmp-long v10, v5, v2

    if-nez v10, :cond_1e

    const/4 v10, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v10, 0x0

    .line 4833
    .local v10, "isRemainderZero":Z
    :goto_1f
    cmp-long v2, v0, v2

    if-gez v2, :cond_27

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    neg-int v2, v2

    goto :goto_29

    :cond_27
    iget v2, p0, Ljava/math/BigInteger;->signum:I

    :goto_29
    move v3, v2

    .line 4834
    .local v3, "qsign":I
    if-nez v10, :cond_3e

    .line 4835
    move/from16 v2, p4

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->needIncrement(JIILjava/math/MutableBigInteger;J)Z

    move-result v11

    if-eqz v11, :cond_39

    .line 4836
    sget-object v0, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {v4, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 4838
    :cond_39
    invoke-virtual {v4, v3, v7}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4840
    :cond_3e
    if-eq v8, v7, :cond_5a

    .line 4841
    invoke-virtual {v4, v3}, Ljava/math/MutableBigInteger;->toCompactValue(I)J

    move-result-wide v0

    .line 4842
    .local v0, "compactVal":J
    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v2, v0, v11

    if-eqz v2, :cond_50

    .line 4843
    int-to-long v11, v8

    invoke-static {v0, v1, v7, v11, v12}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 4845
    :cond_50
    invoke-virtual {v4, v3}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 4846
    .local v2, "intVal":Ljava/math/BigInteger;
    int-to-long v11, v8

    invoke-static {v2, v7, v11, v12}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;

    move-result-object v11

    return-object v11

    .line 4848
    .end local v0    # "compactVal":J
    .end local v2    # "intVal":Ljava/math/BigInteger;
    :cond_5a
    invoke-virtual {v4, v3, v7}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;
    .registers 16
    .param p0, "bdividend"    # Ljava/math/BigInteger;
    .param p1, "bdivisor"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # I
    .param p4, "preferredScale"    # I

    .line 4906
    new-instance v0, Ljava/math/MutableBigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4907
    .local v0, "mdividend":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 4908
    .local v1, "mq":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p1, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4909
    .local v2, "mdivisor":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, v2, v1}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v3

    .line 4910
    .local v3, "mr":Ljava/math/MutableBigInteger;
    invoke-virtual {v3}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v4

    .line 4911
    .local v4, "isRemainderZero":Z
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    iget v6, p1, Ljava/math/BigInteger;->signum:I

    if-eq v5, v6, :cond_23

    const/4 v5, -0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x1

    .line 4912
    .local v5, "qsign":I
    :goto_24
    if-nez v4, :cond_36

    .line 4913
    invoke-static {v2, p3, v5, v1, v3}, Ljava/math/BigDecimal;->needIncrement(Ljava/math/MutableBigInteger;IILjava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 4914
    sget-object v6, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {v1, v6}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 4916
    :cond_31
    invoke-virtual {v1, v5, p2}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6

    .line 4918
    :cond_36
    if-eq p4, p2, :cond_52

    .line 4919
    invoke-virtual {v1, v5}, Ljava/math/MutableBigInteger;->toCompactValue(I)J

    move-result-wide v6

    .line 4920
    .local v6, "compactVal":J
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v6, v8

    if-eqz v8, :cond_48

    .line 4921
    int-to-long v8, p4

    invoke-static {v6, v7, p2, v8, v9}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v8

    return-object v8

    .line 4923
    :cond_48
    invoke-virtual {v1, v5}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 4924
    .local v8, "intVal":Ljava/math/BigInteger;
    int-to-long v9, p4

    invoke-static {v8, p2, v9, v10}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;

    move-result-object v9

    return-object v9

    .line 4926
    .end local v6    # "compactVal":J
    .end local v8    # "intVal":Ljava/math/BigInteger;
    :cond_52
    invoke-virtual {v1, v5, p2}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6
.end method

.method private static blacklist divideAndRound(Ljava/math/BigInteger;JI)Ljava/math/BigInteger;
    .registers 14
    .param p0, "bdividend"    # Ljava/math/BigInteger;
    .param p1, "ldivisor"    # J
    .param p3, "roundingMode"    # I

    .line 4796
    new-instance v0, Ljava/math/MutableBigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4798
    .local v0, "mdividend":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    move-object v6, v1

    .line 4800
    .local v6, "mq":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, p1, p2, v6}, Ljava/math/MutableBigInteger;->divide(JLjava/math/MutableBigInteger;)J

    move-result-wide v7

    .line 4802
    .local v7, "r":J
    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-nez v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    move v9, v3

    .line 4804
    .local v9, "isRemainderZero":Z
    cmp-long v1, p1, v1

    if-gez v1, :cond_23

    iget v1, p0, Ljava/math/BigInteger;->signum:I

    neg-int v1, v1

    goto :goto_25

    :cond_23
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    :goto_25
    move v5, v1

    .line 4805
    .local v5, "qsign":I
    if-nez v9, :cond_36

    .line 4806
    move-wide v2, p1

    move v4, p3

    .end local p1    # "ldivisor":J
    .end local p3    # "roundingMode":I
    .local v2, "ldivisor":J
    .local v4, "roundingMode":I
    invoke-static/range {v2 .. v8}, Ljava/math/BigDecimal;->needIncrement(JIILjava/math/MutableBigInteger;J)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 4807
    sget-object p1, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {v6, p1}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    goto :goto_38

    .line 4805
    .end local v2    # "ldivisor":J
    .end local v4    # "roundingMode":I
    .restart local p1    # "ldivisor":J
    .restart local p3    # "roundingMode":I
    :cond_36
    move-wide v2, p1

    move v4, p3

    .line 4810
    .end local p1    # "ldivisor":J
    .end local p3    # "roundingMode":I
    .restart local v2    # "ldivisor":J
    .restart local v4    # "roundingMode":I
    :cond_38
    :goto_38
    invoke-virtual {v6, v5}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private static blacklist divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 10
    .param p0, "bdividend"    # Ljava/math/BigInteger;
    .param p1, "bdivisor"    # Ljava/math/BigInteger;
    .param p2, "roundingMode"    # I

    .line 4878
    new-instance v0, Ljava/math/MutableBigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4879
    .local v0, "mdividend":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 4880
    .local v1, "mq":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p1, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4881
    .local v2, "mdivisor":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, v2, v1}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v3

    .line 4882
    .local v3, "mr":Ljava/math/MutableBigInteger;
    invoke-virtual {v3}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v4

    .line 4883
    .local v4, "isRemainderZero":Z
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    iget v6, p1, Ljava/math/BigInteger;->signum:I

    if-eq v5, v6, :cond_23

    const/4 v5, -0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x1

    .line 4884
    .local v5, "qsign":I
    :goto_24
    if-nez v4, :cond_31

    .line 4885
    invoke-static {v2, p2, v5, v1, v3}, Ljava/math/BigDecimal;->needIncrement(Ljava/math/MutableBigInteger;IILjava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 4886
    sget-object v6, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {v1, v6}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 4889
    :cond_31
    invoke-virtual {v1, v5}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v6

    return-object v6
.end method

.method private static blacklist divideAndRound128(JJJIIII)Ljava/math/BigDecimal;
    .registers 52
    .param p0, "dividendHi"    # J
    .param p2, "dividendLo"    # J
    .param p4, "divisor"    # J
    .param p6, "sign"    # I
    .param p7, "scale"    # I
    .param p8, "roundingMode"    # I
    .param p9, "preferredScale"    # I

    .line 5386
    move/from16 v3, p6

    move/from16 v8, p7

    move/from16 v2, p8

    move/from16 v9, p9

    cmp-long v0, p0, p4

    if-ltz v0, :cond_e

    .line 5387
    const/4 v0, 0x0

    return-object v0

    .line 5390
    :cond_e
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v10

    .line 5391
    .local v10, "shift":I
    shl-long v11, p4, v10

    .line 5393
    .end local p4    # "divisor":J
    .local v11, "divisor":J
    const/16 v0, 0x20

    ushr-long v4, v11, v0

    .line 5394
    .local v4, "v1":J
    const-wide v6, 0xffffffffL

    and-long v19, v11, v6

    .line 5396
    .local v19, "v0":J
    shl-long v13, p2, v10

    .line 5397
    .local v13, "tmp":J
    ushr-long v0, v13, v0

    .line 5398
    .local v0, "u1":J
    move-wide/from16 p4, v6

    and-long v6, v13, p4

    .line 5400
    .local v6, "u0":J
    shl-long v15, p0, v10

    rsub-int/lit8 v17, v10, 0x40

    ushr-long v17, p2, v17

    or-long v13, v15, v17

    .line 5401
    and-long v15, v13, p4

    .line 5403
    .local v15, "u2":J
    const-wide/16 v23, 0x1

    cmp-long v17, v4, v23

    const/16 v25, 0x0

    move/from16 v26, v10

    .end local v10    # "shift":I
    .local v26, "shift":I
    const/4 v10, 0x1

    const-wide/16 v27, 0x0

    if-nez v17, :cond_48

    .line 5404
    move-wide/from16 v17, v13

    .line 5405
    .local v17, "q1":J
    const-wide/16 v21, 0x0

    move-wide/from16 v29, v11

    move v12, v10

    move-wide/from16 v10, v21

    .local v21, "r_tmp":J
    goto :goto_69

    .line 5406
    .end local v17    # "q1":J
    .end local v21    # "r_tmp":J
    :cond_48
    cmp-long v17, v13, v27

    if-ltz v17, :cond_58

    .line 5407
    div-long v17, v13, v4

    .line 5408
    .restart local v17    # "q1":J
    mul-long v21, v17, v4

    sub-long v21, v13, v21

    move-wide/from16 v29, v11

    move v12, v10

    move-wide/from16 v10, v21

    .restart local v21    # "r_tmp":J
    goto :goto_69

    .line 5410
    .end local v17    # "q1":J
    .end local v21    # "r_tmp":J
    :cond_58
    invoke-static {v13, v14, v4, v5}, Ljava/math/BigDecimal;->divRemNegativeLong(JJ)[J

    move-result-object v17

    .line 5411
    .local v17, "rq":[J
    aget-wide v21, v17, v10

    .line 5412
    .local v21, "q1":J
    aget-wide v29, v17, v25

    move-wide/from16 v17, v11

    move v12, v10

    move-wide/from16 v10, v29

    move-wide/from16 v29, v17

    move-wide/from16 v17, v21

    .line 5415
    .end local v11    # "divisor":J
    .end local v21    # "q1":J
    .local v10, "r_tmp":J
    .local v17, "q1":J
    .local v29, "divisor":J
    :goto_69
    const-wide v31, 0x100000000L

    cmp-long v21, v17, v31

    if-gez v21, :cond_85

    move/from16 v33, v12

    move-wide/from16 v21, v13

    .end local v13    # "tmp":J
    .local v21, "tmp":J
    mul-long v12, v17, v19

    move-wide/from16 v34, v4

    .end local v4    # "v1":J
    .local v34, "v1":J
    invoke-static {v10, v11, v0, v1}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Ljava/math/BigDecimal;->unsignedLongCompare(JJ)Z

    move-result v4

    if-eqz v4, :cond_94

    goto :goto_8b

    .end local v21    # "tmp":J
    .end local v34    # "v1":J
    .restart local v4    # "v1":J
    .restart local v13    # "tmp":J
    :cond_85
    move-wide/from16 v34, v4

    move/from16 v33, v12

    move-wide/from16 v21, v13

    .line 5416
    .end local v4    # "v1":J
    .end local v13    # "tmp":J
    .restart local v21    # "tmp":J
    .restart local v34    # "v1":J
    :goto_8b
    sub-long v17, v17, v23

    .line 5417
    add-long v10, v10, v34

    .line 5418
    cmp-long v4, v10, v31

    if-ltz v4, :cond_1a8

    .line 5419
    nop

    .line 5422
    :cond_94
    move-wide v13, v15

    move-wide v15, v0

    move-wide/from16 v0, v21

    move-wide/from16 v21, v17

    move-wide/from16 v17, v34

    .end local v34    # "v1":J
    .local v0, "tmp":J
    .local v13, "u2":J
    .local v15, "u1":J
    .local v17, "v1":J
    .local v21, "q1":J
    invoke-static/range {v13 .. v22}, Ljava/math/BigDecimal;->mulsub(JJJJJ)J

    move-result-wide v0

    .line 5423
    move-wide/from16 v34, v13

    move-wide/from16 v4, v17

    move-wide/from16 v12, v21

    .end local v13    # "u2":J
    .end local v17    # "v1":J
    .end local v21    # "q1":J
    .restart local v4    # "v1":J
    .local v12, "q1":J
    .local v34, "u2":J
    and-long v14, v0, p4

    .line 5425
    .end local v15    # "u1":J
    .local v14, "u1":J
    cmp-long v16, v4, v23

    if-nez v16, :cond_b1

    .line 5426
    move-wide/from16 v16, v0

    .line 5427
    .local v16, "q0":J
    const-wide/16 v10, 0x0

    goto :goto_c6

    .line 5428
    .end local v16    # "q0":J
    :cond_b1
    cmp-long v16, v0, v27

    if-ltz v16, :cond_bc

    .line 5429
    div-long v16, v0, v4

    .line 5430
    .restart local v16    # "q0":J
    mul-long v21, v16, v4

    sub-long v10, v0, v21

    goto :goto_c6

    .line 5432
    .end local v16    # "q0":J
    :cond_bc
    invoke-static {v0, v1, v4, v5}, Ljava/math/BigDecimal;->divRemNegativeLong(JJ)[J

    move-result-object v16

    .line 5433
    .local v16, "rq":[J
    aget-wide v17, v16, v33

    .line 5434
    .local v17, "q0":J
    aget-wide v10, v16, v25

    move-wide/from16 v16, v17

    .line 5437
    .end local v17    # "q0":J
    .local v16, "q0":J
    :goto_c6
    cmp-long v18, v16, v31

    if-gez v18, :cond_de

    move-wide/from16 v36, v0

    .end local v0    # "tmp":J
    .local v36, "tmp":J
    mul-long v0, v16, v19

    move-wide/from16 v21, v4

    .end local v4    # "v1":J
    .local v21, "v1":J
    invoke-static {v10, v11, v6, v7}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/math/BigDecimal;->unsignedLongCompare(JJ)Z

    move-result v0

    if-eqz v0, :cond_db

    goto :goto_e2

    :cond_db
    move-wide/from16 v0, v16

    goto :goto_ec

    .end local v21    # "v1":J
    .end local v36    # "tmp":J
    .restart local v0    # "tmp":J
    .restart local v4    # "v1":J
    :cond_de
    move-wide/from16 v36, v0

    move-wide/from16 v21, v4

    .line 5438
    .end local v0    # "tmp":J
    .end local v4    # "v1":J
    .restart local v21    # "v1":J
    .restart local v36    # "tmp":J
    :goto_e2
    sub-long v16, v16, v23

    .line 5439
    add-long v10, v10, v21

    .line 5440
    cmp-long v0, v10, v31

    if-ltz v0, :cond_196

    .line 5441
    move-wide/from16 v0, v16

    .line 5444
    .end local v16    # "q0":J
    .local v0, "q0":J
    :goto_ec
    long-to-int v4, v12

    if-gez v4, :cond_14b

    .line 5447
    new-instance v4, Ljava/math/MutableBigInteger;

    long-to-int v5, v12

    move-wide/from16 v38, v6

    .end local v6    # "u0":J
    .local v38, "u0":J
    long-to-int v6, v0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 5448
    .local v4, "mq":Ljava/math/MutableBigInteger;
    move/from16 v5, v33

    if-ne v2, v5, :cond_107

    if-ne v8, v9, :cond_107

    .line 5449
    invoke-virtual {v4, v3, v8}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 5451
    :cond_107
    move-wide/from16 v17, v21

    move-wide/from16 v21, v0

    move-wide v0, v12

    move-wide v13, v14

    move-wide/from16 v15, v38

    .end local v12    # "q1":J
    .end local v14    # "u1":J
    .end local v38    # "u0":J
    .local v0, "q1":J
    .local v13, "u1":J
    .local v15, "u0":J
    .local v17, "v1":J
    .local v21, "q0":J
    invoke-static/range {v13 .. v22}, Ljava/math/BigDecimal;->mulsub(JJJJJ)J

    move-result-wide v5

    move-wide/from16 p4, v10

    move-wide/from16 v10, v21

    .end local v21    # "q0":J
    .local v10, "q0":J
    .local p4, "r_tmp":J
    ushr-long v5, v5, v26

    .line 5452
    .local v5, "r":J
    cmp-long v7, v5, v27

    if-eqz v7, :cond_135

    .line 5453
    move-wide/from16 v21, v0

    .end local v0    # "q1":J
    .local v21, "q1":J
    ushr-long v0, v29, v26

    move-wide/from16 v23, v13

    move-wide/from16 v12, v21

    .end local v13    # "u1":J
    .end local v21    # "q1":J
    .restart local v12    # "q1":J
    .local v23, "u1":J
    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->needIncrement(JIILjava/math/MutableBigInteger;J)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 5454
    sget-object v0, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {v4, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 5456
    :cond_130
    invoke-virtual {v4, v3, v8}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5458
    .end local v12    # "q1":J
    .end local v23    # "u1":J
    .restart local v0    # "q1":J
    .restart local v13    # "u1":J
    :cond_135
    move-wide/from16 v23, v13

    move-wide v12, v0

    .end local v0    # "q1":J
    .end local v13    # "u1":J
    .restart local v12    # "q1":J
    .restart local v23    # "u1":J
    if-eq v9, v8, :cond_146

    .line 5459
    invoke-virtual {v4, v3}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 5460
    .local v0, "intVal":Ljava/math/BigInteger;
    move-wide/from16 v21, v5

    .end local v5    # "r":J
    .local v21, "r":J
    int-to-long v5, v9

    invoke-static {v0, v8, v5, v6}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 5462
    .end local v0    # "intVal":Ljava/math/BigInteger;
    .end local v21    # "r":J
    .restart local v5    # "r":J
    :cond_146
    invoke-virtual {v4, v3, v8}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5467
    .end local v4    # "mq":Ljava/math/MutableBigInteger;
    .end local v5    # "r":J
    .end local v15    # "u0":J
    .end local v17    # "v1":J
    .end local v23    # "u1":J
    .end local p4    # "r_tmp":J
    .local v0, "q0":J
    .restart local v6    # "u0":J
    .local v10, "r_tmp":J
    .restart local v14    # "u1":J
    .local v21, "v1":J
    :cond_14b
    move-wide/from16 p4, v10

    move-wide/from16 v23, v14

    move-wide/from16 v17, v21

    move-wide v10, v0

    move-wide v15, v6

    .end local v0    # "q0":J
    .end local v6    # "u0":J
    .end local v14    # "u1":J
    .end local v21    # "v1":J
    .local v10, "q0":J
    .restart local v15    # "u0":J
    .restart local v17    # "v1":J
    .restart local v23    # "u1":J
    .restart local p4    # "r_tmp":J
    invoke-static {v12, v13, v10, v11}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v0

    .line 5468
    .local v0, "q":J
    int-to-long v4, v3

    mul-long/2addr v4, v0

    .line 5470
    .end local v0    # "q":J
    .local v4, "q":J
    const/4 v6, 0x1

    if-ne v2, v6, :cond_163

    if-ne v8, v9, :cond_163

    .line 5471
    invoke-static {v4, v5, v8}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5473
    :cond_163
    move-wide/from16 v21, v10

    move-wide/from16 v38, v12

    move-wide/from16 v13, v23

    .end local v10    # "q0":J
    .end local v12    # "q1":J
    .end local v23    # "u1":J
    .restart local v13    # "u1":J
    .local v21, "q0":J
    .local v38, "q1":J
    invoke-static/range {v13 .. v22}, Ljava/math/BigDecimal;->mulsub(JJJJJ)J

    move-result-wide v0

    move-wide/from16 v40, v13

    move-wide v12, v15

    move-wide/from16 v21, v17

    .end local v13    # "u1":J
    .end local v15    # "u0":J
    .end local v17    # "v1":J
    .restart local v10    # "q0":J
    .local v12, "u0":J
    .local v21, "v1":J
    .local v40, "u1":J
    ushr-long v6, v0, v26

    .line 5474
    .local v6, "r":J
    cmp-long v0, v6, v27

    if-eqz v0, :cond_189

    .line 5475
    ushr-long v0, v29, v26

    invoke-static/range {v0 .. v7}, Ljava/math/BigDecimal;->needIncrement(JIIJJ)Z

    move-result v0

    .line 5476
    .local v0, "increment":Z
    if-eqz v0, :cond_183

    int-to-long v1, v3

    add-long/2addr v1, v4

    goto :goto_184

    :cond_183
    move-wide v1, v4

    :goto_184
    invoke-static {v1, v2, v8}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 5478
    .end local v0    # "increment":Z
    :cond_189
    if-eq v9, v8, :cond_191

    .line 5479
    int-to-long v0, v9

    invoke-static {v4, v5, v8, v0, v1}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5481
    :cond_191
    invoke-static {v4, v5, v8}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5440
    .end local v4    # "q":J
    .end local v38    # "q1":J
    .end local v40    # "u1":J
    .end local p4    # "r_tmp":J
    .local v6, "u0":J
    .local v10, "r_tmp":J
    .local v12, "q1":J
    .restart local v14    # "u1":J
    .restart local v16    # "q0":J
    :cond_196
    move-wide/from16 v38, v12

    move-wide/from16 v40, v14

    move-wide v12, v6

    move/from16 v6, v33

    .end local v6    # "u0":J
    .end local v14    # "u1":J
    .local v12, "u0":J
    .restart local v38    # "q1":J
    .restart local v40    # "u1":J
    move/from16 v2, p8

    move-wide v6, v12

    move-wide/from16 v4, v21

    move-wide/from16 v0, v36

    move-wide/from16 v12, v38

    goto/16 :goto_c6

    .line 5418
    .end local v12    # "u0":J
    .end local v16    # "q0":J
    .end local v36    # "tmp":J
    .end local v38    # "q1":J
    .end local v40    # "u1":J
    .local v0, "u1":J
    .restart local v6    # "u0":J
    .local v15, "u2":J
    .local v17, "q1":J
    .local v21, "tmp":J
    .local v34, "v1":J
    :cond_1a8
    move-wide v12, v15

    move-wide v15, v0

    move-wide/from16 v0, v21

    move-wide/from16 v21, v34

    move-wide/from16 v34, v12

    move-wide v12, v6

    move/from16 v6, v33

    .end local v6    # "u0":J
    .local v0, "tmp":J
    .restart local v12    # "u0":J
    .local v15, "u1":J
    .local v21, "v1":J
    .local v34, "u2":J
    move-wide v4, v12

    move v12, v6

    move-wide v6, v4

    move/from16 v2, p8

    move-wide v13, v0

    move-wide v0, v15

    move-wide/from16 v4, v21

    move-wide/from16 v15, v34

    goto/16 :goto_69
.end method

.method private static blacklist divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;
    .registers 5
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "tenPow"    # I
    .param p2, "roundingMode"    # I

    .line 4675
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v0, v0

    if-ge p1, v0, :cond_e

    .line 4676
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v0, v0, p1

    invoke-static {p0, v0, v1, p2}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JI)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_16

    .line 4678
    :cond_e
    invoke-static {p1}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0, p2}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    .line 4679
    :goto_16
    return-object p0
.end method

.method private static blacklist divideSmallFastPath(JIJIJLjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 36
    .param p0, "xs"    # J
    .param p2, "xscale"    # I
    .param p3, "ys"    # J
    .param p5, "yscale"    # I
    .param p6, "preferredScale"    # J
    .param p8, "mc"    # Ljava/math/MathContext;

    .line 5115
    move-wide/from16 v0, p0

    move/from16 v7, p2

    move-wide/from16 v12, p3

    move/from16 v6, p5

    move-object/from16 v2, p8

    iget v3, v2, Ljava/math/MathContext;->precision:I

    .line 5116
    .local v3, "mcp":I
    iget-object v4, v2, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v5, v4, Ljava/math/RoundingMode;->oldMode:I

    .line 5118
    .local v5, "roundingMode":I
    nop

    .line 5119
    sub-int v4, v6, v7

    .line 5120
    .local v4, "xraise":I
    if-nez v4, :cond_17

    move-wide v10, v0

    goto :goto_1c

    .line 5121
    :cond_17
    invoke-static {v0, v1, v4}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v8

    move-wide v10, v8

    :goto_1c
    nop

    .line 5124
    .local v10, "scaledX":J
    invoke-static {v10, v11, v12, v13}, Ljava/math/BigDecimal;->longCompareMagnitude(JJ)I

    move-result v17

    .line 5125
    .local v17, "cmp":I
    if-lez v17, :cond_108

    .line 5126
    add-int/lit8 v6, v6, -0x1

    .line 5127
    .end local p5    # "yscale":I
    .local v6, "yscale":I
    int-to-long v14, v6

    add-long v14, p6, v14

    const-wide/high16 v18, -0x8000000000000000L

    int-to-long v8, v7

    sub-long/2addr v14, v8

    int-to-long v8, v3

    add-long/2addr v14, v8

    invoke-static {v14, v15}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v14

    .line 5128
    .local v14, "scl":I
    int-to-long v8, v3

    move/from16 v20, v4

    move v15, v5

    .end local v4    # "xraise":I
    .end local v5    # "roundingMode":I
    .local v15, "roundingMode":I
    .local v20, "xraise":I
    int-to-long v4, v6

    add-long/2addr v8, v4

    int-to-long v4, v7

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    if-lez v4, :cond_b0

    .line 5130
    int-to-long v4, v3

    int-to-long v8, v6

    add-long/2addr v4, v8

    int-to-long v8, v7

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    .line 5132
    .local v4, "raise":I
    invoke-static {v0, v1, v4}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v8

    move-wide/from16 v21, v8

    .local v21, "scaledXs":J
    cmp-long v5, v8, v18

    if-nez v5, :cond_92

    .line 5133
    const/4 v5, 0x0

    .line 5134
    .local v5, "quotient":Ljava/math/BigDecimal;
    add-int/lit8 v8, v3, -0x1

    if-ltz v8, :cond_70

    add-int/lit8 v8, v3, -0x1

    sget-object v9, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v9, v9

    if-ge v8, v9, :cond_70

    .line 5135
    sget-object v8, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    add-int/lit8 v9, v3, -0x1

    aget-wide v8, v8, v9

    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v16

    invoke-static/range {v8 .. v16}, Ljava/math/BigDecimal;->multiplyDivideAndRound(JJJIII)Ljava/math/BigDecimal;

    move-result-object v5

    move-wide v8, v10

    move v11, v14

    .end local v10    # "scaledX":J
    .end local v14    # "scl":I
    .local v8, "scaledX":J
    .local v11, "scl":I
    goto :goto_72

    .line 5134
    .end local v8    # "scaledX":J
    .end local v11    # "scl":I
    .restart local v10    # "scaledX":J
    .restart local v14    # "scl":I
    :cond_70
    move-wide v8, v10

    move v11, v14

    .line 5137
    .end local v10    # "scaledX":J
    .end local v14    # "scl":I
    .restart local v8    # "scaledX":J
    .restart local v11    # "scl":I
    :goto_72
    if-nez v5, :cond_8c

    .line 5138
    add-int/lit8 v10, v3, -0x1

    invoke-static {v8, v9, v10}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v10

    .line 5139
    .local v10, "rb":Ljava/math/BigInteger;
    nop

    .line 5140
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v13

    .line 5139
    move v12, v15

    move-wide v14, v8

    move-object v8, v10

    move-wide/from16 v9, p3

    .end local v10    # "rb":Ljava/math/BigInteger;
    .end local v15    # "roundingMode":I
    .local v8, "rb":Ljava/math/BigInteger;
    .local v12, "roundingMode":I
    .local v14, "scaledX":J
    invoke-static/range {v8 .. v13}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v5

    .line 5141
    .end local v8    # "rb":Ljava/math/BigInteger;
    move-wide/from16 v23, v14

    move v15, v12

    goto :goto_ab

    .line 5137
    .end local v12    # "roundingMode":I
    .end local v14    # "scaledX":J
    .local v8, "scaledX":J
    .restart local v15    # "roundingMode":I
    :cond_8c
    move v12, v15

    move-wide v14, v8

    .end local v8    # "scaledX":J
    .end local v15    # "roundingMode":I
    .restart local v12    # "roundingMode":I
    .restart local v14    # "scaledX":J
    move-wide/from16 v23, v14

    move v15, v12

    goto :goto_ab

    .line 5143
    .end local v5    # "quotient":Ljava/math/BigDecimal;
    .end local v11    # "scl":I
    .end local v12    # "roundingMode":I
    .local v10, "scaledX":J
    .local v14, "scl":I
    .restart local v15    # "roundingMode":I
    :cond_92
    move v12, v15

    move-wide/from16 v25, v10

    move v11, v14

    move-wide/from16 v14, v25

    .end local v10    # "scaledX":J
    .end local v15    # "roundingMode":I
    .restart local v11    # "scl":I
    .restart local v12    # "roundingMode":I
    .local v14, "scaledX":J
    move-wide v8, v14

    .end local v14    # "scaledX":J
    .restart local v8    # "scaledX":J
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v14

    move-wide/from16 v23, v8

    move v13, v12

    move-wide/from16 v8, v21

    move v12, v11

    move-wide/from16 v10, p3

    .end local v11    # "scl":I
    .end local v21    # "scaledXs":J
    .local v8, "scaledXs":J
    .local v12, "scl":I
    .local v13, "roundingMode":I
    .local v23, "scaledX":J
    invoke-static/range {v8 .. v14}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v5

    move v11, v12

    move v15, v13

    .line 5145
    .end local v4    # "raise":I
    .end local v8    # "scaledXs":J
    .end local v12    # "scl":I
    .end local v13    # "roundingMode":I
    .restart local v5    # "quotient":Ljava/math/BigDecimal;
    .restart local v11    # "scl":I
    .restart local v15    # "roundingMode":I
    :goto_ab
    move-wide/from16 v12, p3

    move v9, v3

    move v10, v6

    goto :goto_100

    .line 5146
    .end local v5    # "quotient":Ljava/math/BigDecimal;
    .end local v11    # "scl":I
    .end local v23    # "scaledX":J
    .restart local v10    # "scaledX":J
    .local v14, "scl":I
    :cond_b0
    move-wide/from16 v23, v10

    move v11, v14

    .end local v10    # "scaledX":J
    .end local v14    # "scl":I
    .restart local v11    # "scl":I
    .restart local v23    # "scaledX":J
    int-to-long v4, v7

    int-to-long v8, v3

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v8

    .line 5148
    .local v8, "newScale":I
    if-ne v8, v6, :cond_ce

    .line 5149
    move v4, v6

    .end local v6    # "yscale":I
    .local v4, "yscale":I
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    move v9, v3

    move v10, v4

    move v4, v11

    move v5, v15

    move-wide/from16 v2, p3

    .end local v3    # "mcp":I
    .end local v11    # "scl":I
    .end local v15    # "roundingMode":I
    .local v4, "scl":I
    .local v5, "roundingMode":I
    .local v9, "mcp":I
    .local v10, "yscale":I
    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v6

    move-wide v12, v2

    move-object v5, v6

    .end local v4    # "scl":I
    .end local v5    # "roundingMode":I
    .local v6, "quotient":Ljava/math/BigDecimal;
    .restart local v11    # "scl":I
    .restart local v15    # "roundingMode":I
    goto :goto_100

    .line 5151
    .end local v9    # "mcp":I
    .end local v10    # "yscale":I
    .restart local v3    # "mcp":I
    .local v6, "yscale":I
    :cond_ce
    move-wide/from16 v12, p3

    move v9, v3

    move v10, v6

    .end local v3    # "mcp":I
    .end local v6    # "yscale":I
    .restart local v9    # "mcp":I
    .restart local v10    # "yscale":I
    int-to-long v0, v8

    int-to-long v2, v10

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v14

    .line 5153
    .local v14, "raise":I
    invoke-static {v12, v13, v14}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v2

    move-wide v0, v2

    .local v2, "scaledYs":J
    cmp-long v0, v0, v18

    if-nez v0, :cond_f3

    .line 5154
    invoke-static {v12, v13, v14}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v0

    .line 5155
    .local v0, "rb":Ljava/math/BigInteger;
    invoke-static/range {p0 .. p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 5156
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    .line 5155
    invoke-static {v1, v0, v11, v15, v4}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v5

    .line 5157
    .end local v0    # "rb":Ljava/math/BigInteger;
    .local v5, "quotient":Ljava/math/BigDecimal;
    goto :goto_100

    .line 5158
    .end local v5    # "quotient":Ljava/math/BigDecimal;
    :cond_f3
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    move-wide/from16 v0, p0

    move v4, v11

    move v5, v15

    .end local v11    # "scl":I
    .end local v15    # "roundingMode":I
    .restart local v4    # "scl":I
    .local v5, "roundingMode":I
    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v5, v6

    .line 5162
    .end local v2    # "scaledYs":J
    .end local v4    # "scl":I
    .end local v8    # "newScale":I
    .end local v14    # "raise":I
    .local v5, "quotient":Ljava/math/BigDecimal;
    .restart local v15    # "roundingMode":I
    :goto_100
    move v12, v9

    move v6, v10

    move-wide/from16 v10, v23

    move-object/from16 v9, p8

    goto/16 :goto_197

    .line 5165
    .end local v9    # "mcp":I
    .end local v15    # "roundingMode":I
    .end local v20    # "xraise":I
    .end local v23    # "scaledX":J
    .restart local v3    # "mcp":I
    .local v4, "xraise":I
    .local v5, "roundingMode":I
    .local v10, "scaledX":J
    .restart local p5    # "yscale":I
    :cond_108
    move v9, v3

    move/from16 v20, v4

    move v15, v5

    move-wide/from16 v23, v10

    const-wide/high16 v18, -0x8000000000000000L

    .end local v3    # "mcp":I
    .end local v4    # "xraise":I
    .end local v5    # "roundingMode":I
    .end local v10    # "scaledX":J
    .restart local v9    # "mcp":I
    .restart local v15    # "roundingMode":I
    .restart local v20    # "xraise":I
    .restart local v23    # "scaledX":J
    int-to-long v0, v6

    add-long v0, p6, v0

    int-to-long v2, v7

    sub-long/2addr v0, v2

    int-to-long v2, v9

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v14

    .line 5166
    .local v14, "scl":I
    if-nez v17, :cond_140

    .line 5168
    const-wide/16 v0, 0x0

    move-wide/from16 v10, v23

    .end local v23    # "scaledX":J
    .restart local v10    # "scaledX":J
    cmp-long v2, v10, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_129

    move v2, v4

    goto :goto_12a

    :cond_129
    move v2, v3

    :goto_12a
    cmp-long v0, v12, v0

    if-gez v0, :cond_12f

    move v3, v4

    :cond_12f
    if-ne v2, v3, :cond_132

    goto :goto_133

    :cond_132
    const/4 v4, -0x1

    :goto_133
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v0

    invoke-static {v4, v9, v14, v0}, Ljava/math/BigDecimal;->roundedTenPower(IIII)Ljava/math/BigDecimal;

    move-result-object v5

    move v12, v9

    move-object/from16 v9, p8

    .local v5, "quotient":Ljava/math/BigDecimal;
    goto/16 :goto_197

    .line 5172
    .end local v5    # "quotient":Ljava/math/BigDecimal;
    .end local v10    # "scaledX":J
    .restart local v23    # "scaledX":J
    :cond_140
    move-wide/from16 v10, v23

    .end local v23    # "scaledX":J
    .restart local v10    # "scaledX":J
    invoke-static {v10, v11, v9}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v0

    move-wide/from16 v21, v0

    .restart local v21    # "scaledXs":J
    cmp-long v0, v0, v18

    if-nez v0, :cond_183

    .line 5173
    const/4 v0, 0x0

    .line 5174
    .local v0, "quotient":Ljava/math/BigDecimal;
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v1, v1

    if-ge v9, v1, :cond_165

    .line 5175
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v1, v1, v9

    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v16

    move-wide/from16 v25, v1

    move v1, v9

    move-wide/from16 v8, v25

    .end local v9    # "mcp":I
    .local v1, "mcp":I
    invoke-static/range {v8 .. v16}, Ljava/math/BigDecimal;->multiplyDivideAndRound(JJJIII)Ljava/math/BigDecimal;

    move-result-object v0

    move-object v8, v0

    goto :goto_167

    .line 5174
    .end local v1    # "mcp":I
    .restart local v9    # "mcp":I
    :cond_165
    move v1, v9

    .end local v9    # "mcp":I
    .restart local v1    # "mcp":I
    move-object v8, v0

    .line 5177
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    .local v8, "quotient":Ljava/math/BigDecimal;
    :goto_167
    if-nez v8, :cond_17e

    .line 5178
    invoke-static {v10, v11, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v0

    .line 5179
    .local v0, "rb":Ljava/math/BigInteger;
    nop

    .line 5180
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    .line 5179
    move-object/from16 v9, p8

    move v12, v1

    move v3, v14

    move v4, v15

    move-wide/from16 v1, p3

    .end local v1    # "mcp":I
    .end local v14    # "scl":I
    .end local v15    # "roundingMode":I
    .local v3, "scl":I
    .local v4, "roundingMode":I
    .local v12, "mcp":I
    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v5

    .line 5181
    .end local v0    # "rb":Ljava/math/BigInteger;
    .end local v3    # "scl":I
    .end local v4    # "roundingMode":I
    .end local v8    # "quotient":Ljava/math/BigDecimal;
    .restart local v5    # "quotient":Ljava/math/BigDecimal;
    .restart local v14    # "scl":I
    .restart local v15    # "roundingMode":I
    goto :goto_197

    .line 5177
    .end local v5    # "quotient":Ljava/math/BigDecimal;
    .end local v12    # "mcp":I
    .restart local v1    # "mcp":I
    .restart local v8    # "quotient":Ljava/math/BigDecimal;
    :cond_17e
    move-object/from16 v9, p8

    move v12, v1

    .end local v1    # "mcp":I
    .restart local v12    # "mcp":I
    move-object v5, v8

    goto :goto_197

    .line 5183
    .end local v8    # "quotient":Ljava/math/BigDecimal;
    .end local v12    # "mcp":I
    .restart local v9    # "mcp":I
    :cond_183
    move v12, v9

    move-object/from16 v9, p8

    .end local v9    # "mcp":I
    .restart local v12    # "mcp":I
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    move-wide/from16 v2, p3

    move v4, v14

    move v5, v15

    move-wide/from16 v0, v21

    .end local v14    # "scl":I
    .end local v15    # "roundingMode":I
    .end local v21    # "scaledXs":J
    .local v0, "scaledXs":J
    .local v4, "scl":I
    .local v5, "roundingMode":I
    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v5, v6

    move/from16 v6, p5

    .line 5188
    .end local v0    # "scaledXs":J
    .end local v4    # "scl":I
    .end local p5    # "yscale":I
    .local v5, "quotient":Ljava/math/BigDecimal;
    .restart local v6    # "yscale":I
    .restart local v15    # "roundingMode":I
    :goto_197
    invoke-static {v5, v9}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist doRound(JILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 11
    .param p0, "compactVal"    # J
    .param p2, "scale"    # I
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 4616
    iget v0, p3, Ljava/math/MathContext;->precision:I

    .line 4617
    .local v0, "mcp":I
    if-lez v0, :cond_2f

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2f

    .line 4618
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v1

    .line 4619
    .local v1, "prec":I
    sub-int v2, v1, v0

    .line 4620
    .local v2, "drop":I
    :goto_e
    if-lez v2, :cond_2a

    .line 4621
    int-to-long v3, p2

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result p2

    .line 4622
    sget-object v3, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v3, v3, v2

    iget-object v5, p3, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v5, v5, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {p0, p1, v3, v4, v5}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide p0

    .line 4623
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v1

    .line 4624
    sub-int v2, v1, v0

    goto :goto_e

    .line 4626
    :cond_2a
    invoke-static {p0, p1, p2, v1}, Ljava/math/BigDecimal;->valueOf(JII)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 4628
    .end local v1    # "prec":I
    .end local v2    # "drop":I
    :cond_2f
    invoke-static {p0, p1, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 19
    .param p0, "val"    # Ljava/math/BigDecimal;
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 4571
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Ljava/math/MathContext;->precision:I

    .line 4572
    .local v2, "mcp":I
    const/4 v3, 0x0

    .line 4573
    .local v3, "wasDivided":Z
    if-lez v2, :cond_7d

    .line 4574
    iget-object v4, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 4575
    .local v4, "intVal":Ljava/math/BigInteger;
    iget-wide v5, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 4576
    .local v5, "compactVal":J
    iget v7, v0, Ljava/math/BigDecimal;->scale:I

    .line 4577
    .local v7, "scale":I
    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    .line 4578
    .local v8, "prec":I
    iget-object v9, v1, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v9, v9, Ljava/math/RoundingMode;->oldMode:I

    .line 4580
    .local v9, "mode":I
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v12, v5, v10

    if-nez v12, :cond_45

    .line 4581
    sub-int v12, v8, v2

    .line 4582
    .local v12, "drop":I
    :goto_1f
    if-lez v12, :cond_43

    .line 4583
    int-to-long v13, v7

    move-wide v15, v10

    int-to-long v10, v12

    sub-long/2addr v13, v10

    invoke-static {v13, v14}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v7

    .line 4584
    invoke-static {v4, v12, v9}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object v4

    .line 4585
    const/4 v3, 0x1

    .line 4586
    invoke-static {v4}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v5

    .line 4587
    cmp-long v10, v5, v15

    if-eqz v10, :cond_3b

    .line 4588
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v8

    .line 4589
    goto :goto_46

    .line 4591
    :cond_3b
    invoke-static {v4}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v8

    .line 4592
    sub-int v12, v8, v2

    move-wide v10, v15

    goto :goto_1f

    .line 4582
    :cond_43
    move-wide v15, v10

    goto :goto_46

    .line 4580
    .end local v12    # "drop":I
    :cond_45
    move-wide v15, v10

    .line 4595
    :goto_46
    cmp-long v10, v5, v15

    if-eqz v10, :cond_6f

    .line 4596
    sub-int v10, v8, v2

    .line 4597
    .local v10, "drop":I
    :goto_4c
    if-lez v10, :cond_6a

    .line 4598
    int-to-long v11, v7

    int-to-long v13, v10

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v7

    .line 4599
    sget-object v11, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v11, v11, v10

    iget-object v13, v1, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v13, v13, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v5, v6, v11, v12, v13}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v5

    .line 4600
    const/4 v3, 0x1

    .line 4601
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v8

    .line 4602
    sub-int v10, v8, v2

    .line 4603
    const/4 v4, 0x0

    goto :goto_4c

    .line 4597
    :cond_6a
    move-object v11, v4

    move-wide v12, v5

    move v14, v7

    move v15, v8

    goto :goto_73

    .line 4595
    .end local v10    # "drop":I
    :cond_6f
    move-object v11, v4

    move-wide v12, v5

    move v14, v7

    move v15, v8

    .line 4606
    .end local v4    # "intVal":Ljava/math/BigInteger;
    .end local v5    # "compactVal":J
    .end local v7    # "scale":I
    .end local v8    # "prec":I
    .local v11, "intVal":Ljava/math/BigInteger;
    .local v12, "compactVal":J
    .local v14, "scale":I
    .local v15, "prec":I
    :goto_73
    if-eqz v3, :cond_7b

    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct/range {v10 .. v15}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    goto :goto_7c

    :cond_7b
    move-object v10, v0

    :goto_7c
    return-object v10

    .line 4608
    .end local v9    # "mode":I
    .end local v11    # "intVal":Ljava/math/BigInteger;
    .end local v12    # "compactVal":J
    .end local v14    # "scale":I
    .end local v15    # "prec":I
    :cond_7d
    return-object v0
.end method

.method private static blacklist doRound(Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 16
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 4636
    iget v0, p2, Ljava/math/MathContext;->precision:I

    .line 4637
    .local v0, "mcp":I
    const/4 v1, 0x0

    .line 4638
    .local v1, "prec":I
    if-lez v0, :cond_65

    .line 4639
    invoke-static {p0}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v2

    .line 4640
    .local v2, "compactVal":J
    iget-object v4, p2, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v4, v4, Ljava/math/RoundingMode;->oldMode:I

    .line 4642
    .local v4, "mode":I
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v2, v5

    if-nez v7, :cond_36

    .line 4643
    invoke-static {p0}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v1

    .line 4644
    sub-int v7, v1, v0

    .line 4645
    .local v7, "drop":I
    :goto_19
    if-lez v7, :cond_36

    .line 4646
    int-to-long v8, p1

    int-to-long v10, v7

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result p1

    .line 4647
    invoke-static {p0, v7, v4}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object p0

    .line 4648
    invoke-static {p0}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v2

    .line 4649
    cmp-long v8, v2, v5

    if-eqz v8, :cond_2f

    .line 4650
    goto :goto_36

    .line 4652
    :cond_2f
    invoke-static {p0}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v1

    .line 4653
    sub-int v7, v1, v0

    goto :goto_19

    .line 4656
    .end local v7    # "drop":I
    :cond_36
    :goto_36
    cmp-long v5, v2, v5

    if-eqz v5, :cond_61

    .line 4657
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v1

    .line 4658
    sub-int v5, v1, v0

    .line 4659
    .local v5, "drop":I
    :goto_40
    if-lez v5, :cond_5c

    .line 4660
    int-to-long v6, p1

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result p1

    .line 4661
    sget-object v6, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v6, v6, v5

    iget-object v8, p2, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v8, v8, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v2, v3, v6, v7, v8}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v2

    .line 4662
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v1

    .line 4663
    sub-int v5, v1, v0

    goto :goto_40

    .line 4665
    :cond_5c
    invoke-static {v2, v3, p1, v1}, Ljava/math/BigDecimal;->valueOf(JII)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6

    .line 4656
    .end local v5    # "drop":I
    :cond_61
    move-object v8, p0

    move v11, p1

    move v12, v1

    goto :goto_68

    .line 4638
    .end local v2    # "compactVal":J
    .end local v4    # "mode":I
    :cond_65
    move-object v8, p0

    move v11, p1

    move v12, v1

    .line 4668
    .end local v1    # "prec":I
    .end local p0    # "intVal":Ljava/math/BigInteger;
    .end local p1    # "scale":I
    .local v8, "intVal":Ljava/math/BigInteger;
    .local v11, "scale":I
    .local v12, "prec":I
    :goto_68
    new-instance v7, Ljava/math/BigDecimal;

    const-wide/high16 v9, -0x8000000000000000L

    invoke-direct/range {v7 .. v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v7
.end method

.method private static blacklist doRound128(JJIILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 24
    .param p0, "hi"    # J
    .param p2, "lo"    # J
    .param p4, "sign"    # I
    .param p5, "scale"    # I
    .param p6, "mc"    # Ljava/math/MathContext;

    .line 5697
    move-object/from16 v0, p6

    iget v1, v0, Ljava/math/MathContext;->precision:I

    .line 5699
    .local v1, "mcp":I
    const/4 v2, 0x0

    .line 5700
    .local v2, "res":Ljava/math/BigDecimal;
    invoke-static/range {p0 .. p3}, Ljava/math/BigDecimal;->precision(JJ)I

    move-result v3

    sub-int/2addr v3, v1

    move v4, v3

    .local v4, "drop":I
    if-lez v3, :cond_30

    sget-object v3, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v3, v3

    if-ge v4, v3, :cond_30

    .line 5701
    move/from16 v3, p5

    int-to-long v5, v3

    int-to-long v7, v4

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v14

    .line 5702
    .end local p5    # "scale":I
    .local v14, "scale":I
    sget-object v3, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v11, v3, v4

    iget-object v3, v0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v15, v3, Ljava/math/RoundingMode;->oldMode:I

    move/from16 v16, v14

    move-wide/from16 v7, p0

    move-wide/from16 v9, p2

    move/from16 v13, p4

    invoke-static/range {v7 .. v16}, Ljava/math/BigDecimal;->divideAndRound128(JJJIIII)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_33

    .line 5700
    .end local v14    # "scale":I
    .restart local p5    # "scale":I
    :cond_30
    move/from16 v3, p5

    .line 5704
    move v14, v3

    .end local p5    # "scale":I
    .restart local v14    # "scale":I
    :goto_33
    if-eqz v2, :cond_3a

    .line 5705
    invoke-static {v2, v0}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 5707
    :cond_3a
    const/4 v3, 0x0

    return-object v3
.end method

.method private static blacklist expandBigIntegerTenPowers(I)Ljava/math/BigInteger;
    .registers 8
    .param p0, "n"    # I

    .line 4118
    const-class v0, Ljava/math/BigDecimal;

    monitor-enter v0

    .line 4119
    :try_start_3
    sget-object v1, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    .line 4120
    .local v1, "pows":[Ljava/math/BigInteger;
    array-length v2, v1

    .line 4123
    .local v2, "curLen":I
    if-gt v2, p0, :cond_2a

    .line 4124
    shl-int/lit8 v3, v2, 0x1

    .line 4125
    .local v3, "newLen":I
    :goto_a
    if-gt v3, p0, :cond_f

    .line 4126
    shl-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 4128
    :cond_f
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/math/BigInteger;

    move-object v1, v4

    .line 4129
    move v4, v2

    .local v4, "i":I
    :goto_17
    if-ge v4, v3, :cond_28

    .line 4130
    add-int/lit8 v5, v4, -0x1

    aget-object v5, v1, v5

    sget-object v6, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v1, v4

    .line 4129
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 4136
    .end local v4    # "i":I
    :cond_28
    sput-object v1, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    .line 4138
    .end local v3    # "newLen":I
    :cond_2a
    aget-object v3, v1, p0

    monitor-exit v0

    return-object v3

    .line 4139
    .end local v1    # "pows":[Ljava/math/BigInteger;
    .end local v2    # "curLen":I
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private blacklist fractionOnly()Z
    .registers 3

    .line 3612
    nop

    .line 3613
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist getValueString(ILjava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "signum"    # I
    .param p2, "intString"    # Ljava/lang/String;
    .param p3, "scale"    # I

    .line 3512
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    .line 3513
    .local v0, "insertionPoint":I
    const-string v1, "-0."

    const-string v2, "0."

    if-nez v0, :cond_21

    .line 3514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p1, :cond_13

    goto :goto_14

    :cond_13
    move-object v1, v2

    :goto_14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3515
    :cond_21
    if-lez v0, :cond_36

    .line 3516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3517
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v2, 0x2e

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 3518
    if-gez p1, :cond_59

    .line 3519
    const/4 v2, 0x0

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 3521
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    rsub-int/lit8 v4, v0, 0x3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3522
    .local v3, "buf":Ljava/lang/StringBuilder;
    if-gez p1, :cond_45

    goto :goto_46

    :cond_45
    move-object v1, v2

    :goto_46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    neg-int v2, v0

    if-ge v1, v2, :cond_55

    .line 3524
    const/16 v2, 0x30

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3523
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 3526
    .end local v1    # "i":I
    :cond_55
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v3

    .line 3528
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .local v1, "buf":Ljava/lang/StringBuilder;
    :cond_59
    :goto_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist inflated()Ljava/math/BigInteger;
    .registers 3

    .line 4251
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-nez v0, :cond_b

    .line 4252
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 4254
    :cond_b
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    return-object v0
.end method

.method private blacklist isPowerOfTen()Z
    .registers 3

    .line 2373
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist layoutChars(Z)Ljava/lang/String;
    .registers 21
    .param p1, "sci"    # Z

    .line 3988
    move-object/from16 v0, p0

    iget v1, v0, Ljava/math/BigDecimal;->scale:I

    const-wide/high16 v2, -0x8000000000000000L

    if-nez v1, :cond_1c

    .line 3989
    iget-wide v4, v0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_15

    .line 3990
    iget-wide v1, v0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 3991
    :cond_15
    iget-object v1, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3989
    :goto_1b
    return-object v1

    .line 3992
    :cond_1c
    iget v1, v0, Ljava/math/BigDecimal;->scale:I

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/16 v7, 0x2e

    if-ne v1, v4, :cond_64

    iget-wide v8, v0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v1, v8, v5

    if-ltz v1, :cond_64

    iget-wide v8, v0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v1, v8, v10

    if-gez v1, :cond_64

    .line 3995
    iget-wide v1, v0, Ljava/math/BigDecimal;->intCompact:J

    long-to-int v1, v1

    rem-int/lit8 v1, v1, 0x64

    .line 3996
    .local v1, "lowInt":I
    iget-wide v2, v0, Ljava/math/BigDecimal;->intCompact:J

    long-to-int v2, v2

    div-int/lit8 v2, v2, 0x64

    .line 3997
    .local v2, "highInt":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_TENS:[C

    aget-char v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_ONES:[C

    aget-char v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4002
    .end local v1    # "lowInt":I
    .end local v2    # "highInt":I
    :cond_64
    sget-object v1, Ljava/math/BigDecimal;->threadLocalStringBuilderHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal$StringBuilderHelper;

    .line 4006
    .local v1, "sbHelper":Ljava/math/BigDecimal$StringBuilderHelper;
    iget-wide v8, v0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v2, v8, v2

    if-eqz v2, :cond_81

    .line 4007
    iget-wide v2, v0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal$StringBuilderHelper;->putIntCompact(J)I

    move-result v2

    .line 4008
    .local v2, "offset":I
    invoke-virtual {v1}, Ljava/math/BigDecimal$StringBuilderHelper;->getCompactCharArray()[C

    move-result-object v3

    .local v3, "coeff":[C
    goto :goto_90

    .line 4010
    .end local v2    # "offset":I
    .end local v3    # "coeff":[C
    :cond_81
    const/4 v2, 0x0

    .line 4011
    .restart local v2    # "offset":I
    iget-object v3, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 4018
    .restart local v3    # "coeff":[C
    :goto_90
    invoke-virtual {v1}, Ljava/math/BigDecimal$StringBuilderHelper;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4019
    .local v4, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v8

    if-gez v8, :cond_9f

    .line 4020
    const/16 v8, 0x2d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4021
    :cond_9f
    array-length v8, v3

    sub-int/2addr v8, v2

    .line 4022
    .local v8, "coeffLen":I
    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v9, v9

    neg-long v9, v9

    add-int/lit8 v11, v8, -0x1

    int-to-long v11, v11

    add-long/2addr v9, v11

    .line 4023
    .local v9, "adjusted":J
    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    const/16 v12, 0x30

    if-ltz v11, :cond_dc

    const-wide/16 v13, -0x6

    cmp-long v11, v9, v13

    if-ltz v11, :cond_dc

    .line 4024
    iget v5, v0, Ljava/math/BigDecimal;->scale:I

    sub-int/2addr v5, v8

    .line 4025
    .local v5, "pad":I
    if-ltz v5, :cond_cc

    .line 4026
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4027
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4028
    :goto_c0
    if-lez v5, :cond_c8

    .line 4029
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4028
    add-int/lit8 v5, v5, -0x1

    goto :goto_c0

    .line 4031
    :cond_c8
    invoke-virtual {v4, v3, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_da

    .line 4033
    :cond_cc
    neg-int v6, v5

    invoke-virtual {v4, v3, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 4034
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4035
    neg-int v6, v5

    add-int/2addr v6, v2

    iget v7, v0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {v4, v3, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 4037
    .end local v5    # "pad":I
    :goto_da
    goto/16 :goto_169

    .line 4038
    :cond_dc
    const/4 v11, 0x1

    if-eqz p1, :cond_f2

    .line 4039
    aget-char v12, v3, v2

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4040
    if-le v8, v11, :cond_f0

    .line 4041
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4042
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v4, v3, v7, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 4078
    :cond_f0
    move-wide v15, v5

    goto :goto_154

    .line 4045
    :cond_f2
    const-wide/16 v13, 0x3

    move-wide v15, v5

    rem-long v5, v9, v13

    long-to-int v5, v5

    .line 4046
    .local v5, "sig":I
    if-gez v5, :cond_fc

    .line 4047
    add-int/lit8 v5, v5, 0x3

    .line 4048
    :cond_fc
    move-wide/from16 v17, v13

    int-to-long v13, v5

    sub-long/2addr v9, v13

    .line 4049
    add-int/2addr v5, v11

    .line 4050
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-nez v6, :cond_137

    .line 4051
    packed-switch v5, :pswitch_data_16e

    .line 4064
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected sig value "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 4060
    :pswitch_123
    const-string v6, "0.0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4061
    add-long v9, v9, v17

    .line 4062
    goto :goto_154

    .line 4056
    :pswitch_12b
    const-string v6, "0.00"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4057
    add-long v9, v9, v17

    .line 4058
    goto :goto_154

    .line 4053
    :pswitch_133
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4054
    goto :goto_154

    .line 4066
    :cond_137
    if-lt v5, v8, :cond_147

    .line 4067
    invoke-virtual {v4, v3, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 4069
    sub-int v6, v5, v8

    .local v6, "i":I
    :goto_13e
    if-lez v6, :cond_146

    .line 4070
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4069
    add-int/lit8 v6, v6, -0x1

    goto :goto_13e

    .end local v6    # "i":I
    :cond_146
    goto :goto_154

    .line 4073
    :cond_147
    invoke-virtual {v4, v3, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 4074
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4075
    add-int v6, v2, v5

    sub-int v7, v8, v5

    invoke-virtual {v4, v3, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 4078
    .end local v5    # "sig":I
    :goto_154
    cmp-long v5, v9, v15

    if-eqz v5, :cond_169

    .line 4079
    const/16 v5, 0x45

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4080
    cmp-long v5, v9, v15

    if-lez v5, :cond_166

    .line 4081
    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4082
    :cond_166
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4085
    :cond_169
    :goto_169
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_133
        :pswitch_12b
        :pswitch_123
    .end packed-switch
.end method

.method private static blacklist longCompareMagnitude(JJ)I
    .registers 7
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 4456
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 4457
    neg-long p0, p0

    .line 4458
    :cond_7
    cmp-long v0, p2, v0

    if-gez v0, :cond_c

    .line 4459
    neg-long p2, p2

    .line 4460
    :cond_c
    cmp-long v0, p0, p2

    if-gez v0, :cond_12

    const/4 v0, -0x1

    goto :goto_19

    :cond_12
    cmp-long v0, p0, p2

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method static blacklist longDigitLength(J)I
    .registers 6
    .param p0, "x"    # J

    .line 4382
    nop

    .line 4383
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    .line 4384
    neg-long p0, p0

    .line 4385
    :cond_8
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    if-gez v0, :cond_10

    .line 4386
    return v1

    .line 4387
    :cond_10
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x4d1

    ushr-int/lit8 v0, v0, 0xc

    .line 4388
    .local v0, "r":I
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    .line 4390
    .local v1, "tab":[J
    array-length v2, v1

    if-ge v0, v2, :cond_2a

    aget-wide v2, v1, v0

    cmp-long v2, p0, v2

    if-gez v2, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 v2, v0, 0x1

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v2, v0

    :goto_2b
    return v2
.end method

.method private static blacklist longLongCompareMagnitude(JJJJ)Z
    .registers 15
    .param p0, "hi0"    # J
    .param p2, "lo0"    # J
    .param p4, "hi1"    # J
    .param p6, "lo1"    # J

    .line 5755
    cmp-long v0, p0, p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 5756
    cmp-long v0, p0, p4

    if-gez v0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 5758
    :cond_d
    const-wide/high16 v3, -0x8000000000000000L

    add-long v5, p2, v3

    add-long/2addr v3, p6

    cmp-long v0, v5, v3

    if-gez v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1
.end method

.method private static blacklist longMultiplyPowerTen(JI)J
    .registers 11
    .param p0, "val"    # J
    .param p2, "n"    # I

    .line 4218
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_2c

    if-gtz p2, :cond_9

    goto :goto_2c

    .line 4220
    :cond_9
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    .line 4221
    .local v0, "tab":[J
    sget-object v1, Ljava/math/BigDecimal;->THRESHOLDS_TABLE:[J

    .line 4222
    .local v1, "bounds":[J
    array-length v2, v0

    if-ge p2, v2, :cond_29

    array-length v2, v1

    if-ge p2, v2, :cond_29

    .line 4223
    aget-wide v2, v0, p2

    .line 4224
    .local v2, "tenpower":J
    const-wide/16 v4, 0x1

    cmp-long v4, p0, v4

    if-nez v4, :cond_1c

    .line 4225
    return-wide v2

    .line 4226
    :cond_1c
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    aget-wide v6, v1, p2

    cmp-long v4, v4, v6

    if-gtz v4, :cond_29

    .line 4227
    mul-long v4, p0, v2

    return-wide v4

    .line 4229
    .end local v2    # "tenpower":J
    :cond_29
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    .line 4219
    .end local v0    # "tab":[J
    .end local v1    # "bounds":[J
    :cond_2c
    :goto_2c
    return-wide p0
.end method

.method private static blacklist make64(JJ)J
    .registers 6
    .param p0, "hi"    # J
    .param p2, "lo"    # J

    .line 5547
    const/16 v0, 0x20

    shl-long v0, p0, v0

    or-long/2addr v0, p2

    return-wide v0
.end method

.method private static blacklist matchScale([Ljava/math/BigDecimal;)V
    .registers 6
    .param p0, "val"    # [Ljava/math/BigDecimal;

    .line 4271
    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget v1, v1, Ljava/math/BigDecimal;->scale:I

    const/4 v2, 0x1

    aget-object v3, p0, v2

    iget v3, v3, Ljava/math/BigDecimal;->scale:I

    const/4 v4, 0x7

    if-ge v1, v3, :cond_1a

    .line 4272
    aget-object v1, p0, v0

    aget-object v2, p0, v2

    iget v2, v2, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {v1, v2, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, p0, v0

    goto :goto_30

    .line 4273
    :cond_1a
    aget-object v1, p0, v2

    iget v1, v1, Ljava/math/BigDecimal;->scale:I

    aget-object v3, p0, v0

    iget v3, v3, Ljava/math/BigDecimal;->scale:I

    if-ge v1, v3, :cond_30

    .line 4274
    aget-object v1, p0, v2

    aget-object v0, p0, v0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {v1, v0, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, p0, v2

    .line 4276
    :cond_30
    :goto_30
    return-void
.end method

.method private static blacklist mulsub(JJJJJ)J
    .registers 16
    .param p0, "u1"    # J
    .param p2, "u0"    # J
    .param p4, "v1"    # J
    .param p6, "v0"    # J
    .param p8, "q0"    # J

    .line 5551
    mul-long v0, p8, p6

    sub-long v0, p2, v0

    .line 5552
    .local v0, "tmp":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    add-long/2addr v2, p0

    mul-long v4, p8, p4

    sub-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private static blacklist multiply(JJ)J
    .registers 14
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 5606
    mul-long v0, p0, p2

    .line 5607
    .local v0, "product":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 5608
    .local v2, "ax":J
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 5609
    .local v4, "ay":J
    or-long v6, v2, v4

    const/16 v8, 0x1f

    ushr-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_23

    cmp-long v6, p2, v8

    if-eqz v6, :cond_23

    div-long v6, v0, p2

    cmp-long v6, v6, p0

    if-nez v6, :cond_20

    goto :goto_23

    .line 5612
    :cond_20
    const-wide/high16 v6, -0x8000000000000000L

    return-wide v6

    .line 5610
    :cond_23
    :goto_23
    return-wide v0
.end method

.method private static blacklist multiply(JJI)Ljava/math/BigDecimal;
    .registers 14
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "scale"    # I

    .line 5616
    invoke-static {p0, p1, p2, p3}, Ljava/math/BigDecimal;->multiply(JJ)J

    move-result-wide v0

    .line 5617
    .local v0, "product":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 5618
    invoke-static {v0, v1, p4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 5620
    :cond_f
    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v4

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v8, 0x0

    move v7, p4

    .end local p4    # "scale":I
    .local v7, "scale":I
    invoke-direct/range {v3 .. v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v3
.end method

.method private static blacklist multiply(JLjava/math/BigInteger;I)Ljava/math/BigDecimal;
    .registers 11
    .param p0, "x"    # J
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "scale"    # I

    .line 5624
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 5625
    invoke-static {p3}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5627
    :cond_b
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p2, p0, p1}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v6, 0x0

    move v5, p3

    .end local p3    # "scale":I
    .local v5, "scale":I
    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v1
.end method

.method private static blacklist multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigDecimal;
    .registers 9
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    .line 5631
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v5, 0x0

    move v4, p2

    .end local p2    # "scale":I
    .local v4, "scale":I
    invoke-direct/range {v0 .. v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v0
.end method

.method private static blacklist multiplyAndRound(JJILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 40
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "scale"    # I
    .param p5, "mc"    # Ljava/math/MathContext;

    .line 5638
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v6, p5

    invoke-static/range {p0 .. p3}, Ljava/math/BigDecimal;->multiply(JJ)J

    move-result-wide v4

    .line 5639
    .local v4, "product":J
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v7, v4, v7

    if-eqz v7, :cond_17

    .line 5640
    move/from16 v12, p4

    invoke-static {v4, v5, v12, v6}, Ljava/math/BigDecimal;->doRound(JILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    return-object v7

    .line 5643
    :cond_17
    move/from16 v12, p4

    const/4 v7, 0x1

    .line 5644
    .local v7, "rsign":I
    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-gez v10, :cond_24

    .line 5645
    neg-long v0, v0

    .line 5646
    .end local p0    # "x":J
    .local v0, "x":J
    const/4 v7, -0x1

    move-wide v14, v0

    goto :goto_25

    .line 5644
    .end local v0    # "x":J
    .restart local p0    # "x":J
    :cond_24
    move-wide v14, v0

    .line 5648
    .end local p0    # "x":J
    .local v14, "x":J
    :goto_25
    cmp-long v0, v2, v8

    if-gez v0, :cond_2f

    .line 5649
    neg-long v0, v2

    .line 5650
    .end local p2    # "y":J
    .local v0, "y":J
    mul-int/lit8 v7, v7, -0x1

    move-wide/from16 v16, v0

    goto :goto_31

    .line 5648
    .end local v0    # "y":J
    .restart local p2    # "y":J
    :cond_2f
    move-wide/from16 v16, v2

    .line 5653
    .end local p2    # "y":J
    .local v16, "y":J
    :goto_31
    const/16 v0, 0x20

    ushr-long v18, v14, v0

    .line 5654
    .local v18, "m0_hi":J
    const-wide v1, 0xffffffffL

    and-long v20, v14, v1

    .line 5655
    .local v20, "m0_lo":J
    ushr-long v22, v16, v0

    .line 5656
    .local v22, "m1_hi":J
    and-long v24, v16, v1

    .line 5657
    .local v24, "m1_lo":J
    mul-long v3, v20, v24

    .line 5658
    .end local v4    # "product":J
    .local v3, "product":J
    and-long v8, v3, v1

    .line 5659
    .local v8, "m0":J
    ushr-long v10, v3, v0

    .line 5660
    .local v10, "m1":J
    mul-long v26, v18, v24

    add-long v26, v26, v10

    .line 5661
    .end local v3    # "product":J
    .local v26, "product":J
    and-long v3, v26, v1

    .line 5662
    .end local v10    # "m1":J
    .local v3, "m1":J
    ushr-long v10, v26, v0

    .line 5663
    .local v10, "m2":J
    mul-long v28, v20, v22

    add-long v28, v28, v3

    .line 5664
    .end local v26    # "product":J
    .local v28, "product":J
    and-long v3, v28, v1

    .line 5665
    ushr-long v26, v28, v0

    add-long v10, v10, v26

    .line 5666
    ushr-long v26, v10, v0

    .line 5667
    .local v26, "m3":J
    and-long/2addr v10, v1

    .line 5668
    mul-long v30, v18, v22

    add-long v30, v30, v10

    .line 5669
    .end local v28    # "product":J
    .local v30, "product":J
    and-long v10, v30, v1

    .line 5670
    ushr-long v28, v30, v0

    add-long v28, v28, v26

    and-long v0, v28, v1

    .line 5671
    .end local v26    # "m3":J
    .local v0, "m3":J
    invoke-static {v0, v1, v10, v11}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v26

    .line 5672
    .local v26, "mHi":J
    move-wide v4, v3

    .end local v3    # "m1":J
    .local v4, "m1":J
    invoke-static {v4, v5, v8, v9}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v2

    .line 5673
    .local v2, "mLo":J
    move-wide/from16 v28, v0

    move-wide/from16 v0, v26

    move-wide/from16 v26, v4

    move v4, v7

    move v5, v12

    .end local v7    # "rsign":I
    .local v0, "mHi":J
    .local v4, "rsign":I
    .local v26, "m1":J
    .local v28, "m3":J
    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->doRound128(JJIILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 5674
    .local v7, "res":Ljava/math/BigDecimal;
    if-eqz v7, :cond_7f

    .line 5675
    return-object v7

    .line 5677
    :cond_7f
    move-wide v12, v8

    .end local v8    # "m0":J
    .local v12, "m0":J
    new-instance v8, Ljava/math/BigDecimal;

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-wide/from16 p0, v0

    .end local v0    # "mHi":J
    .local p0, "mHi":J
    int-to-long v0, v4

    mul-long v0, v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v9

    move-wide v0, v10

    .end local v10    # "m2":J
    .local v0, "m2":J
    const-wide/high16 v10, -0x8000000000000000L

    move-wide/from16 v32, v12

    .end local v12    # "m0":J
    .local v32, "m0":J
    const/4 v13, 0x0

    move/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    .line 5678
    .end local v7    # "res":Ljava/math/BigDecimal;
    .local v8, "res":Ljava/math/BigDecimal;
    invoke-static {v8, v6}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5
.end method

.method private static blacklist multiplyAndRound(JLjava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 7
    .param p0, "x"    # J
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "scale"    # I
    .param p4, "mc"    # Ljava/math/MathContext;

    .line 5682
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 5683
    invoke-static {p3}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5685
    :cond_b
    invoke-virtual {p2, p0, p1}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p3, p4}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist multiplyAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 5689
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p2, p3}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist multiplyDivideAndRound(JJJIII)Ljava/math/BigDecimal;
    .registers 39
    .param p0, "dividend0"    # J
    .param p2, "dividend1"    # J
    .param p4, "divisor"    # J
    .param p6, "scale"    # I
    .param p7, "roundingMode"    # I
    .param p8, "preferredScale"    # I

    .line 5348
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->signum(J)I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->signum(J)I

    move-result v1

    mul-int v8, v0, v1

    .line 5349
    .local v8, "qsign":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 5350
    .end local p0    # "dividend0":J
    .local v0, "dividend0":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    .line 5351
    .end local p2    # "dividend1":J
    .local v12, "dividend1":J
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 5353
    .end local p4    # "divisor":J
    .local v6, "divisor":J
    const/16 v2, 0x20

    ushr-long v14, v0, v2

    .line 5354
    .local v14, "d0_hi":J
    const-wide v3, 0xffffffffL

    and-long v16, v0, v3

    .line 5355
    .local v16, "d0_lo":J
    ushr-long v18, v12, v2

    .line 5356
    .local v18, "d1_hi":J
    and-long v20, v12, v3

    .line 5357
    .local v20, "d1_lo":J
    mul-long v9, v16, v20

    .line 5358
    .local v9, "product":J
    move-wide/from16 p0, v0

    .end local v0    # "dividend0":J
    .restart local p0    # "dividend0":J
    and-long v0, v9, v3

    .line 5359
    .local v0, "d0":J
    ushr-long v22, v9, v2

    .line 5360
    .local v22, "d1":J
    mul-long v24, v14, v20

    add-long v24, v24, v22

    .line 5361
    .end local v9    # "product":J
    .local v24, "product":J
    and-long v9, v24, v3

    .line 5362
    .end local v22    # "d1":J
    .local v9, "d1":J
    ushr-long v22, v24, v2

    .line 5363
    .local v22, "d2":J
    mul-long v26, v16, v18

    add-long v26, v26, v9

    .line 5364
    .end local v24    # "product":J
    .local v26, "product":J
    and-long v9, v26, v3

    .line 5365
    ushr-long v24, v26, v2

    add-long v22, v22, v24

    .line 5366
    ushr-long v24, v22, v2

    .line 5367
    .local v24, "d3":J
    and-long v22, v22, v3

    .line 5368
    mul-long v28, v14, v18

    add-long v28, v28, v22

    .line 5369
    .end local v26    # "product":J
    .local v28, "product":J
    move-wide/from16 p2, v12

    .end local v12    # "dividend1":J
    .restart local p2    # "dividend1":J
    and-long v12, v28, v3

    .line 5370
    .end local v22    # "d2":J
    .local v12, "d2":J
    ushr-long v22, v28, v2

    add-long v22, v22, v24

    and-long v2, v22, v3

    .line 5371
    .end local v24    # "d3":J
    .local v2, "d3":J
    move-wide v4, v2

    .end local v2    # "d3":J
    .local v4, "d3":J
    invoke-static {v4, v5, v12, v13}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v2

    .line 5372
    .local v2, "dividendHi":J
    move-wide/from16 v22, v4

    .end local v4    # "d3":J
    .local v22, "d3":J
    invoke-static {v9, v10, v0, v1}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v4

    .line 5374
    .local v4, "dividendLo":J
    move/from16 v11, p8

    move-wide/from16 v24, v22

    move-wide/from16 v22, v9

    move/from16 v9, p6

    move/from16 v10, p7

    .end local v9    # "d1":J
    .local v22, "d1":J
    .restart local v24    # "d3":J
    invoke-static/range {v2 .. v11}, Ljava/math/BigDecimal;->divideAndRound128(JJJIIII)Ljava/math/BigDecimal;

    move-result-object v26

    return-object v26
.end method

.method private static blacklist needIncrement(JIIJJ)Z
    .registers 13
    .param p0, "ldivisor"    # J
    .param p2, "roundingMode"    # I
    .param p3, "qsign"    # I
    .param p4, "q"    # J
    .param p6, "r"    # J

    .line 4778
    nop

    .line 4781
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmp-long v0, p6, v0

    if-lez v0, :cond_19

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p6, v0

    if-lez v0, :cond_11

    goto :goto_19

    .line 4784
    :cond_11
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p6

    invoke-static {v0, v1, p0, p1}, Ljava/math/BigDecimal;->longCompareMagnitude(JJ)I

    move-result v0

    .local v0, "cmpFracHalf":I
    goto :goto_1a

    .line 4782
    .end local v0    # "cmpFracHalf":I
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 4787
    .restart local v0    # "cmpFracHalf":I
    :goto_1a
    const-wide/16 v1, 0x1

    and-long/2addr v1, p4

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-static {p2, p3, v0, v1}, Ljava/math/BigDecimal;->commonNeedIncrement(IIIZ)Z

    move-result v1

    return v1
.end method

.method private static blacklist needIncrement(JIILjava/math/MutableBigInteger;J)Z
    .registers 9
    .param p0, "ldivisor"    # J
    .param p2, "roundingMode"    # I
    .param p3, "qsign"    # I
    .param p4, "mq"    # Ljava/math/MutableBigInteger;
    .param p5, "r"    # J

    .line 4858
    nop

    .line 4861
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmp-long v0, p5, v0

    if-lez v0, :cond_19

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p5, v0

    if-lez v0, :cond_11

    goto :goto_19

    .line 4864
    :cond_11
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p5

    invoke-static {v0, v1, p0, p1}, Ljava/math/BigDecimal;->longCompareMagnitude(JJ)I

    move-result v0

    .local v0, "cmpFracHalf":I
    goto :goto_1a

    .line 4862
    .end local v0    # "cmpFracHalf":I
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 4867
    .restart local v0    # "cmpFracHalf":I
    :goto_1a
    invoke-virtual {p4}, Ljava/math/MutableBigInteger;->isOdd()Z

    move-result v1

    invoke-static {p2, p3, v0, v1}, Ljava/math/BigDecimal;->commonNeedIncrement(IIIZ)Z

    move-result v1

    return v1
.end method

.method private static blacklist needIncrement(Ljava/math/MutableBigInteger;IILjava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Z
    .registers 7
    .param p0, "mdivisor"    # Ljava/math/MutableBigInteger;
    .param p1, "roundingMode"    # I
    .param p2, "qsign"    # I
    .param p3, "mq"    # Ljava/math/MutableBigInteger;
    .param p4, "mr"    # Ljava/math/MutableBigInteger;

    .line 4936
    nop

    .line 4937
    invoke-virtual {p4, p0}, Ljava/math/MutableBigInteger;->compareHalf(Ljava/math/MutableBigInteger;)I

    move-result v0

    .line 4938
    .local v0, "cmpFracHalf":I
    invoke-virtual {p3}, Ljava/math/MutableBigInteger;->isOdd()Z

    move-result v1

    invoke-static {p1, p2, v0, v1}, Ljava/math/BigDecimal;->commonNeedIncrement(IIIZ)Z

    move-result v1

    return v1
.end method

.method private static blacklist parseExp([CII)J
    .registers 15
    .param p0, "in"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 723
    const-wide/16 v0, 0x0

    .line 724
    .local v0, "exp":J
    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 725
    aget-char v3, p0, p1

    .line 726
    .local v3, "c":C
    add-int/lit8 p2, p2, -0x1

    .line 727
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    .line 729
    .local v4, "negexp":Z
    :goto_f
    if-nez v4, :cond_15

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_1b

    .line 730
    :cond_15
    add-int/lit8 p1, p1, 0x1

    .line 731
    aget-char v3, p0, p1

    .line 732
    add-int/lit8 p2, p2, -0x1

    .line 734
    :cond_1b
    if-lez p2, :cond_67

    .line 737
    :goto_1d
    const/16 v5, 0x30

    const/16 v6, 0xa

    if-le p2, v6, :cond_32

    if-eq v3, v5, :cond_2b

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-nez v7, :cond_32

    .line 738
    :cond_2b
    add-int/lit8 p1, p1, 0x1

    .line 739
    aget-char v3, p0, p1

    .line 740
    add-int/lit8 p2, p2, -0x1

    goto :goto_1d

    .line 742
    :cond_32
    if-gt p2, v6, :cond_5f

    .line 747
    :goto_34
    if-lt v3, v5, :cond_3d

    const/16 v7, 0x39

    if-gt v3, v7, :cond_3d

    .line 748
    add-int/lit8 v7, v3, -0x30

    .local v7, "v":I
    goto :goto_43

    .line 750
    .end local v7    # "v":I
    :cond_3d
    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 751
    .restart local v7    # "v":I
    if-ltz v7, :cond_57

    .line 754
    :goto_43
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v0

    int-to-long v10, v7

    add-long v0, v8, v10

    .line 755
    if-ne p2, v2, :cond_50

    .line 756
    nop

    .line 760
    .end local v7    # "v":I
    if-eqz v4, :cond_4f

    .line 761
    neg-long v0, v0

    .line 762
    :cond_4f
    return-wide v0

    .line 757
    .restart local v7    # "v":I
    :cond_50
    add-int/lit8 p1, p1, 0x1

    .line 758
    aget-char v3, p0, p1

    .line 745
    .end local v7    # "v":I
    add-int/lit8 p2, p2, -0x1

    goto :goto_34

    .line 752
    .restart local v7    # "v":I
    :cond_57
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v5, "Not a digit."

    invoke-direct {v2, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 743
    .end local v7    # "v":I
    :cond_5f
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v5, "Too many nonzero exponent digits."

    invoke-direct {v2, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :cond_67
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v5, "No exponent digits."

    invoke-direct {v2, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist preAlign(Ljava/math/BigDecimal;Ljava/math/BigDecimal;JLjava/math/MathContext;)[Ljava/math/BigDecimal;
    .registers 19
    .param p1, "lhs"    # Ljava/math/BigDecimal;
    .param p2, "augend"    # Ljava/math/BigDecimal;
    .param p3, "padding"    # J
    .param p5, "mc"    # Ljava/math/MathContext;

    .line 1485
    nop

    .line 1489
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_a

    .line 1490
    move-object v0, p1

    .line 1491
    .local v0, "big":Ljava/math/BigDecimal;
    move-object v1, p2

    .local v1, "small":Ljava/math/BigDecimal;
    goto :goto_c

    .line 1493
    .end local v0    # "big":Ljava/math/BigDecimal;
    .end local v1    # "small":Ljava/math/BigDecimal;
    :cond_a
    move-object v0, p2

    .line 1494
    .restart local v0    # "big":Ljava/math/BigDecimal;
    move-object v1, p1

    .line 1503
    .restart local v1    # "small":Ljava/math/BigDecimal;
    :goto_c
    iget v2, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    move-object/from16 v4, p5

    iget v5, v4, Ljava/math/MathContext;->precision:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1514
    .local v2, "estResultUlpScale":J
    iget v5, v1, Ljava/math/BigDecimal;->scale:I

    int-to-long v5, v5

    invoke-virtual {v1}, Ljava/math/BigDecimal;->precision()I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 1515
    .local v5, "smallHighDigitPos":J
    iget v7, v0, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v7, v7, 0x2

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-lez v7, :cond_4e

    const-wide/16 v7, 0x2

    add-long/2addr v7, v2

    cmp-long v7, v5, v7

    if-lez v7, :cond_4e

    .line 1517
    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    int-to-long v7, v7

    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v9, v9

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x3

    add-long/2addr v9, v11

    invoke-direct {p0, v9, v10}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v9

    invoke-static {v7, v8, v9}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    .line 1522
    :cond_4e
    filled-new-array {v0, v1}, [Ljava/math/BigDecimal;

    move-result-object v7

    .line 1523
    .local v7, "result":[Ljava/math/BigDecimal;
    return-object v7
.end method

.method private static blacklist precision(JJ)I
    .registers 14
    .param p0, "hi"    # J
    .param p2, "lo"    # J

    .line 5737
    const-wide/16 v0, 0x0

    cmp-long v4, p0, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_23

    .line 5738
    cmp-long v0, p2, v0

    if-ltz v0, :cond_11

    .line 5739
    invoke-static {p2, p3}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v0

    return v0

    .line 5741
    :cond_11
    sget-object v0, Ljava/math/BigDecimal;->LONGLONG_TEN_POWERS_TABLE:[[J

    aget-object v0, v0, v5

    aget-wide v0, v0, v6

    invoke-static {p2, p3, v0, v1}, Ljava/math/BigDecimal;->unsignedLongCompareEq(JJ)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x14

    goto :goto_22

    :cond_20
    const/16 v0, 0x13

    :goto_22
    return v0

    .line 5744
    :cond_23
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int v0, v0, 0x80

    add-int/2addr v0, v6

    mul-int/lit16 v0, v0, 0x4d1

    ushr-int/lit8 v8, v0, 0xc

    .line 5745
    .local v8, "r":I
    add-int/lit8 v9, v8, -0x13

    .line 5746
    .local v9, "idx":I
    sget-object v0, Ljava/math/BigDecimal;->LONGLONG_TEN_POWERS_TABLE:[[J

    array-length v0, v0

    if-ge v9, v0, :cond_4d

    sget-object v0, Ljava/math/BigDecimal;->LONGLONG_TEN_POWERS_TABLE:[[J

    aget-object v0, v0, v9

    aget-wide v4, v0, v5

    sget-object v0, Ljava/math/BigDecimal;->LONGLONG_TEN_POWERS_TABLE:[[J

    aget-object v0, v0, v9

    aget-wide v6, v0, v6

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Ljava/math/BigDecimal;->longLongCompareMagnitude(JJJJ)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto :goto_4d

    .line 5747
    :cond_4a
    add-int/lit8 v0, v8, 0x1

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v0, v8

    .line 5746
    :goto_4e
    return v0
.end method

.method private static blacklist print(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bd"    # Ljava/math/BigDecimal;

    .line 4472
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-wide v1, p1, Ljava/math/BigDecimal;->intCompact:J

    .line 4474
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    .line 4476
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Ljava/math/BigDecimal;->precision:I

    .line 4477
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 4472
    const-string v2, "%s:\tintCompact %d\tintVal %d\tscale %d\tprecision %d%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 4478
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4320
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 4321
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "intVal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 4324
    .local v1, "serialIntVal":Ljava/math/BigInteger;
    if-eqz v1, :cond_1e

    .line 4328
    invoke-static {v1}, Ljava/math/BigDecimal;->toStrictBigInteger(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 4331
    const-string v2, "scale"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 4333
    .local v2, "serialScale":I
    invoke-static {p0, v1, v2}, Ljava/math/BigDecimal$UnsafeHolder;->setIntValAndScale(Ljava/math/BigDecimal;Ljava/math/BigInteger;I)V

    .line 4334
    return-void

    .line 4325
    .end local v2    # "serialScale":I
    :cond_1e
    new-instance v2, Ljava/io/StreamCorruptedException;

    const-string v3, "Null or missing intVal in BigDecimal stream"

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

    .line 4342
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialized BigDecimal objects need data"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist roundedTenPower(IIII)Ljava/math/BigDecimal;
    .registers 8
    .param p0, "qsign"    # I
    .param p1, "raise"    # I
    .param p2, "scale"    # I
    .param p3, "preferredScale"    # I

    .line 5491
    if-le p2, p3, :cond_15

    .line 5492
    sub-int v0, p2, p3

    .line 5493
    .local v0, "diff":I
    if-ge v0, p1, :cond_d

    .line 5494
    sub-int v1, p1, v0

    invoke-static {v1, p0, p3}, Ljava/math/BigDecimal;->scaledTenPow(III)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 5496
    :cond_d
    int-to-long v1, p0

    sub-int v3, p2, p1

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 5499
    .end local v0    # "diff":I
    :cond_15
    invoke-static {p1, p0, p2}, Ljava/math/BigDecimal;->scaledTenPow(III)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist saturateLong(J)I
    .registers 5
    .param p0, "s"    # J

    .line 4464
    long-to-int v0, p0

    .line 4465
    .local v0, "i":I
    int-to-long v1, v0

    cmp-long v1, p0, v1

    if-nez v1, :cond_8

    move v1, v0

    goto :goto_14

    :cond_8
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_11

    const/high16 v1, -0x80000000

    goto :goto_14

    :cond_11
    const v1, 0x7fffffff

    :goto_14
    return v1
.end method

.method static blacklist scaledTenPow(III)Ljava/math/BigDecimal;
    .registers 10
    .param p0, "n"    # I
    .param p1, "sign"    # I
    .param p2, "scale"    # I

    .line 5504
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v0, v0

    if-ge p0, v0, :cond_10

    .line 5505
    int-to-long v0, p1

    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v2, v2, p0

    mul-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5507
    :cond_10
    invoke-static {p0}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 5508
    .local v0, "unscaledVal":Ljava/math/BigInteger;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1d

    .line 5509
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    move-object v2, v0

    goto :goto_1e

    .line 5508
    :cond_1d
    move-object v2, v0

    .line 5511
    .end local v0    # "unscaledVal":Ljava/math/BigInteger;
    .local v2, "unscaledVal":Ljava/math/BigInteger;
    :goto_1e
    new-instance v1, Ljava/math/BigDecimal;

    add-int/lit8 v6, p0, 0x1

    const-wide/high16 v3, -0x8000000000000000L

    move v5, p2

    .end local p2    # "scale":I
    .local v5, "scale":I
    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v1
.end method

.method private blacklist square()Ljava/math/BigDecimal;
    .registers 2

    .line 2369
    invoke-virtual {p0, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private blacklist squareRootResultAssertions(Ljava/math/BigDecimal;Ljava/math/MathContext;)Z
    .registers 13
    .param p1, "result"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 2392
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_b

    .line 2393
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;->squareRootZeroResultAssertions(Ljava/math/BigDecimal;Ljava/math/MathContext;)Z

    move-result v0

    return v0

    .line 2395
    :cond_b
    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    .line 2396
    .local v0, "rm":Ljava/math/RoundingMode;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->ulp()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2397
    .local v1, "ulp":Ljava/math/BigDecimal;
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 2399
    .local v2, "neighborUp":Ljava/math/BigDecimal;
    invoke-direct {p1}, Ljava/math/BigDecimal;->isPowerOfTen()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2400
    sget-object v3, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2402
    :cond_23
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 2405
    .local v3, "neighborDown":Ljava/math/BigDecimal;
    nop

    .line 2409
    sget-object v4, Ljava/math/BigDecimal$2;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_62

    .line 2463
    return v5

    .line 2420
    :pswitch_35
    nop

    .line 2424
    return v5

    .line 2412
    :pswitch_37
    nop

    .line 2416
    return v5

    .line 2430
    :pswitch_39
    invoke-direct {p1}, Ljava/math/BigDecimal;->square()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v4

    .line 2431
    .local v4, "err":Ljava/math/BigDecimal;
    invoke-direct {v2}, Ljava/math/BigDecimal;->square()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    .line 2432
    .local v6, "errUp":Ljava/math/BigDecimal;
    invoke-direct {v3}, Ljava/math/BigDecimal;->square()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 2436
    .local v7, "errDown":Ljava/math/BigDecimal;
    invoke-virtual {v4, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v8

    .line 2437
    .local v8, "err_comp_errUp":I
    invoke-virtual {v4, v7}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v9

    .line 2439
    .local v9, "err_comp_errDown":I
    nop

    .line 2450
    nop

    .line 2455
    nop

    .line 2460
    return v5

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_37
        :pswitch_37
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method private blacklist squareRootZeroResultAssertions(Ljava/math/BigDecimal;Ljava/math/MathContext;)Z
    .registers 4
    .param p1, "result"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 2469
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist stripZerosToMatchScale(Ljava/math/BigInteger;JII)Ljava/math/BigDecimal;
    .registers 8
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "intCompact"    # J
    .param p3, "scale"    # I
    .param p4, "preferredScale"    # I

    .line 4990
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 4991
    int-to-long v0, p4

    invoke-static {p1, p2, p3, v0, v1}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4993
    :cond_c
    if-nez p0, :cond_11

    sget-object v0, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_12

    :cond_11
    move-object v0, p0

    :goto_12
    int-to-long v1, p4

    invoke-static {v0, p3, v1, v2}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toStrictBigInteger(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p0, "val"    # Ljava/math/BigInteger;

    .line 1078
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/math/BigInteger;

    if-ne v0, v1, :cond_a

    .line 1079
    move-object v0, p0

    goto :goto_19

    .line 1080
    :cond_a
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 1078
    :goto_19
    return-object v0
.end method

.method private static blacklist unsignedLongCompare(JJ)Z
    .registers 8
    .param p0, "one"    # J
    .param p2, "two"    # J

    .line 5556
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p0, v0

    add-long/2addr v0, p2

    cmp-long v0, v2, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist unsignedLongCompareEq(JJ)Z
    .registers 8
    .param p0, "one"    # J
    .param p2, "two"    # J

    .line 5560
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p0, v0

    add-long/2addr v0, p2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static whitelist test-api valueOf(D)Ljava/math/BigDecimal;
    .registers 4
    .param p0, "val"    # D

    .line 1377
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist test-api valueOf(J)Ljava/math/BigDecimal;
    .registers 15
    .param p0, "val"    # J

    .line 1321
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_14

    sget-object v0, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_14

    .line 1322
    sget-object v0, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    long-to-int v1, p0

    aget-object v0, v0, v1

    return-object v0

    .line 1323
    :cond_14
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_24

    .line 1324
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-wide v3, p0

    .end local p0    # "val":J
    .local v3, "val":J
    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v1

    .line 1325
    .end local v3    # "val":J
    .restart local p0    # "val":J
    :cond_24
    move-wide v3, p0

    .end local p0    # "val":J
    .restart local v3    # "val":J
    new-instance v7, Ljava/math/BigDecimal;

    sget-object v8, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v9, v3

    .end local v3    # "val":J
    .local v9, "val":J
    invoke-direct/range {v7 .. v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    .end local v9    # "val":J
    .restart local v3    # "val":J
    return-object v7
.end method

.method public static whitelist test-api valueOf(JI)Ljava/math/BigDecimal;
    .registers 10
    .param p0, "unscaledVal"    # J
    .param p2, "scale"    # I

    .line 1299
    if-nez p2, :cond_7

    .line 1300
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1301
    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_12

    .line 1302
    invoke-static {p2}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1304
    :cond_12
    new-instance v1, Ljava/math/BigDecimal;

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, p0, v2

    if-nez v0, :cond_1d

    .line 1305
    sget-object v0, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    move-object v2, v0

    const/4 v6, 0x0

    move-wide v3, p0

    move v5, p2

    .end local p0    # "unscaledVal":J
    .end local p2    # "scale":I
    .local v3, "unscaledVal":J
    .local v5, "scale":I
    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    .line 1304
    return-object v1
.end method

.method static blacklist valueOf(JII)Ljava/math/BigDecimal;
    .registers 11
    .param p0, "unscaledVal"    # J
    .param p2, "scale"    # I
    .param p3, "prec"    # I

    .line 1329
    const-wide/16 v0, 0x0

    if-nez p2, :cond_16

    cmp-long v2, p0, v0

    if-ltz v2, :cond_16

    sget-object v2, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, p0, v2

    if-gez v2, :cond_16

    .line 1330
    sget-object v0, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    long-to-int v1, p0

    aget-object v0, v0, v1

    return-object v0

    .line 1331
    :cond_16
    cmp-long v0, p0, v0

    if-nez v0, :cond_1f

    .line 1332
    invoke-static {p2}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1334
    :cond_1f
    new-instance v1, Ljava/math/BigDecimal;

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, p0, v2

    if-nez v0, :cond_2a

    sget-object v0, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    move-object v2, v0

    move-wide v3, p0

    move v5, p2

    move v6, p3

    .end local p0    # "unscaledVal":J
    .end local p2    # "scale":I
    .end local p3    # "prec":I
    .local v3, "unscaledVal":J
    .local v5, "scale":I
    .local v6, "prec":I
    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v1
.end method

.method static blacklist valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;
    .registers 9
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I
    .param p2, "prec"    # I

    .line 1339
    invoke-static {p0}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v2

    .line 1340
    .local v2, "val":J
    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_f

    .line 1341
    invoke-static {p1}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1342
    :cond_f
    if-nez p1, :cond_23

    cmp-long v0, v2, v0

    if-ltz v0, :cond_23

    sget-object v0, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_23

    .line 1343
    sget-object v0, Ljava/math/BigDecimal;->ZERO_THROUGH_TEN:[Ljava/math/BigDecimal;

    long-to-int v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 1345
    :cond_23
    new-instance v0, Ljava/math/BigDecimal;

    move-object v1, p0

    move v4, p1

    move v5, p2

    .end local p0    # "intVal":Ljava/math/BigInteger;
    .end local p1    # "scale":I
    .end local p2    # "prec":I
    .local v1, "intVal":Ljava/math/BigInteger;
    .local v4, "scale":I
    .local v5, "prec":I
    invoke-direct/range {v0 .. v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4355
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-nez v0, :cond_d

    .line 4356
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/math/BigDecimal$UnsafeHolder;->setIntValVolatile(Ljava/math/BigDecimal;Ljava/math/BigInteger;)V

    .line 4358
    :cond_d
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 4359
    return-void
.end method

.method static blacklist zeroValueOf(I)Ljava/math/BigDecimal;
    .registers 8
    .param p0, "scale"    # I

    .line 1349
    if-ltz p0, :cond_c

    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 1350
    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    aget-object v0, v0, p0

    return-object v0

    .line 1352
    :cond_c
    new-instance v1, Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    move v5, p0

    .end local p0    # "scale":I
    .local v5, "scale":I
    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v1
.end method


# virtual methods
.method public whitelist test-api abs()Ljava/math/BigDecimal;
    .registers 2

    .line 2596
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_b

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p0

    :goto_c
    return-object v0
.end method

.method public whitelist test-api abs(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 2609
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_b

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public whitelist test-api add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 9
    .param p1, "augend"    # Ljava/math/BigDecimal;

    .line 1390
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    .line 1391
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 1392
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    iget-wide v4, p1, Ljava/math/BigDecimal;->intCompact:J

    iget v6, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static/range {v1 .. v6}, Ljava/math/BigDecimal;->add(JIJI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1394
    :cond_1b
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v3, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/math/BigDecimal;->add(JILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1397
    :cond_28
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3b

    .line 1398
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/math/BigDecimal;->add(JILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1400
    :cond_3b
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigInteger;ILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 12
    .param p1, "augend"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1418
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_9

    .line 1419
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1420
    :cond_9
    move-object v2, p0

    .line 1425
    .local v2, "lhs":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_14

    move v0, v7

    goto :goto_15

    :cond_14
    move v0, v8

    .line 1426
    .local v0, "lhsIsZero":Z
    :goto_15
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_1d

    move v1, v7

    goto :goto_1e

    :cond_1d
    move v1, v8

    .line 1428
    .local v1, "augendIsZero":Z
    :goto_1e
    if-nez v0, :cond_58

    if-eqz v1, :cond_25

    move-object v3, p1

    move-object v6, p2

    goto :goto_5a

    .line 1452
    .end local v0    # "lhsIsZero":Z
    .end local v1    # "augendIsZero":Z
    :cond_25
    iget v0, v2, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v3, v3

    sub-long v4, v0, v3

    .line 1453
    .local v4, "padding":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_43

    .line 1454
    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    .end local p1    # "augend":Ljava/math/BigDecimal;
    .end local p2    # "mc":Ljava/math/MathContext;
    .local v3, "augend":Ljava/math/BigDecimal;
    .local v6, "mc":Ljava/math/MathContext;
    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;->preAlign(Ljava/math/BigDecimal;Ljava/math/BigDecimal;JLjava/math/MathContext;)[Ljava/math/BigDecimal;

    move-result-object p1

    .line 1455
    .local p1, "arg":[Ljava/math/BigDecimal;
    invoke-static {p1}, Ljava/math/BigDecimal;->matchScale([Ljava/math/BigDecimal;)V

    .line 1456
    aget-object v2, p1, v8

    .line 1457
    aget-object p2, p1, v7

    move-object p1, p2

    .end local v3    # "augend":Ljava/math/BigDecimal;
    .local p2, "augend":Ljava/math/BigDecimal;
    goto :goto_45

    .line 1453
    .end local v6    # "mc":Ljava/math/MathContext;
    .local p1, "augend":Ljava/math/BigDecimal;
    .local p2, "mc":Ljava/math/MathContext;
    :cond_43
    move-object v3, p1

    move-object v6, p2

    .line 1459
    .end local p2    # "mc":Ljava/math/MathContext;
    .restart local v6    # "mc":Ljava/math/MathContext;
    :goto_45
    invoke-direct {v2}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget v0, v2, Ljava/math/BigDecimal;->scale:I

    invoke-static {p2, v0, v6}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p2

    return-object p2

    .line 1428
    .end local v4    # "padding":J
    .end local v6    # "mc":Ljava/math/MathContext;
    .restart local v0    # "lhsIsZero":Z
    .restart local v1    # "augendIsZero":Z
    .restart local p2    # "mc":Ljava/math/MathContext;
    :cond_58
    move-object v3, p1

    move-object v6, p2

    .line 1429
    .end local p1    # "augend":Ljava/math/BigDecimal;
    .end local p2    # "mc":Ljava/math/MathContext;
    .restart local v3    # "augend":Ljava/math/BigDecimal;
    .restart local v6    # "mc":Ljava/math/MathContext;
    :goto_5a
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    invoke-virtual {v3}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1432
    .local p1, "preferredScale":I
    if-eqz v0, :cond_6f

    if-eqz v1, :cond_6f

    .line 1433
    invoke-static {p1}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object p2

    return-object p2

    .line 1434
    :cond_6f
    if-eqz v0, :cond_76

    invoke-static {v3, v6}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p2

    goto :goto_7a

    :cond_76
    invoke-static {v2, v6}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 1436
    .local p2, "result":Ljava/math/BigDecimal;
    :goto_7a
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    if-ne v4, p1, :cond_81

    .line 1437
    return-object p2

    .line 1438
    :cond_81
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    if-le v4, p1, :cond_92

    .line 1439
    iget-object v4, p2, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v7, p2, Ljava/math/BigDecimal;->intCompact:J

    iget v5, p2, Ljava/math/BigDecimal;->scale:I

    invoke-static {v4, v7, v8, v5, p1}, Ljava/math/BigDecimal;->stripZerosToMatchScale(Ljava/math/BigInteger;JII)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4

    .line 1441
    :cond_92
    iget v4, v6, Ljava/math/MathContext;->precision:I

    invoke-virtual {p2}, Ljava/math/BigDecimal;->precision()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1442
    .local v4, "precisionDiff":I
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    sub-int v5, p1, v5

    .line 1444
    .local v5, "scaleDiff":I
    if-lt v4, v5, :cond_a6

    .line 1445
    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v7

    return-object v7

    .line 1447
    :cond_a6
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p2, v7}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v7

    return-object v7
.end method

.method public whitelist test-api byteValueExact()B
    .registers 5

    .line 3745
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    .line 3746
    .local v0, "num":J
    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_e

    .line 3748
    long-to-int v2, v0

    int-to-byte v2, v2

    return v2

    .line 3747
    :cond_e
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .line 306
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/math/BigDecimal;)I
    .registers 12
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 3133
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    iget v1, p1, Ljava/math/BigDecimal;->scale:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_24

    .line 3134
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 3135
    .local v0, "xs":J
    iget-wide v5, p1, Ljava/math/BigDecimal;->intCompact:J

    .line 3136
    .local v5, "ys":J
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v0, v7

    if-eqz v9, :cond_24

    cmp-long v7, v5, v7

    if-eqz v7, :cond_24

    .line 3137
    cmp-long v7, v0, v5

    if-eqz v7, :cond_22

    cmp-long v4, v0, v5

    if-lez v4, :cond_20

    goto :goto_23

    :cond_20
    move v2, v3

    goto :goto_23

    :cond_22
    move v2, v4

    :goto_23
    return v2

    .line 3139
    .end local v0    # "xs":J
    .end local v5    # "ys":J
    :cond_24
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    .line 3140
    .local v0, "xsign":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    .line 3141
    .local v1, "ysign":I
    if-eq v0, v1, :cond_33

    .line 3142
    if-le v0, v1, :cond_31

    goto :goto_32

    :cond_31
    move v2, v3

    :goto_32
    return v2

    .line 3143
    :cond_33
    if-nez v0, :cond_36

    .line 3144
    return v4

    .line 3145
    :cond_36
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->compareMagnitude(Ljava/math/BigDecimal;)I

    move-result v2

    .line 3146
    .local v2, "cmp":I
    if-lez v0, :cond_3e

    move v3, v2

    goto :goto_3f

    :cond_3e
    neg-int v3, v2

    :goto_3f
    return v3
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .line 1761
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_1c

    .line 1762
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_14

    .line 1763
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division undefined"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1764
    :cond_14
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1768
    :cond_1c
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->saturateLong(J)I

    move-result v0

    .line 1770
    .local v0, "preferredScale":I
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_32

    .line 1771
    invoke-static {v0}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1781
    :cond_32
    new-instance v1, Ljava/math/MathContext;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v2

    int-to-long v2, v2

    .line 1782
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    add-long/2addr v2, v4

    .line 1781
    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-direct {v1, v2, v3}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1787
    .local v1, "mc":Ljava/math/MathContext;
    :try_start_57
    invoke-virtual {p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2
    :try_end_5b
    .catch Ljava/lang/ArithmeticException; {:try_start_57 .. :try_end_5b} :catch_69

    .line 1791
    .local v2, "quotient":Ljava/math/BigDecimal;
    nop

    .line 1793
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    .line 1799
    .local v3, "quotientScale":I
    if-le v0, v3, :cond_68

    .line 1800
    const/4 v4, 0x7

    invoke-virtual {v2, v0, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4

    .line 1802
    :cond_68
    return-object v2

    .line 1788
    .end local v2    # "quotient":Ljava/math/BigDecimal;
    .end local v3    # "quotientScale":I
    :catch_69
    move-exception v2

    .line 1789
    .local v2, "e":Ljava/lang/ArithmeticException;
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "Non-terminating decimal expansion; no exact representable decimal result."

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 1721
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {p0, p1, v0, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;
    .registers 13
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 1655
    if-ltz p3, :cond_58

    const/4 v0, 0x7

    if-gt p3, v0, :cond_58

    .line 1657
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    .line 1658
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 1659
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    iget-wide v4, p1, Ljava/math/BigDecimal;->intCompact:J

    iget v6, p1, Ljava/math/BigDecimal;->scale:I

    move v7, p2

    move v8, p3

    .end local p2    # "scale":I
    .end local p3    # "roundingMode":I
    .local v7, "scale":I
    .local v8, "roundingMode":I
    invoke-static/range {v1 .. v8}, Ljava/math/BigDecimal;->divide(JIJIII)Ljava/math/BigDecimal;

    move-result-object p2

    move v5, v7

    move v6, v8

    .end local v7    # "scale":I
    .end local v8    # "roundingMode":I
    .local v5, "scale":I
    .local v6, "roundingMode":I
    return-object p2

    .line 1661
    .end local v5    # "scale":I
    .end local v6    # "roundingMode":I
    .restart local p2    # "scale":I
    .restart local p3    # "roundingMode":I
    :cond_24
    move v5, p2

    move v6, p3

    .end local p2    # "scale":I
    .end local p3    # "roundingMode":I
    .restart local v5    # "scale":I
    .restart local v6    # "roundingMode":I
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v3, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divide(JILjava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object p2

    return-object p2

    .line 1664
    .end local v5    # "scale":I
    .end local v6    # "roundingMode":I
    .restart local p2    # "scale":I
    .restart local p3    # "roundingMode":I
    :cond_33
    move v5, p2

    move v6, p3

    .end local p2    # "scale":I
    .end local p3    # "roundingMode":I
    .restart local v5    # "scale":I
    .restart local v6    # "roundingMode":I
    iget-wide p2, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long p2, p2, v2

    if-eqz p2, :cond_48

    .line 1665
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget-wide v2, p1, Ljava/math/BigDecimal;->intCompact:J

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigInteger;IJIII)Ljava/math/BigDecimal;

    move-result-object p2

    return-object p2

    .line 1667
    :cond_48
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    move v4, v5

    move v5, v6

    .end local v6    # "roundingMode":I
    .local v4, "scale":I
    .local v5, "roundingMode":I
    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigInteger;ILjava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object p2

    move v5, v4

    .end local v4    # "scale":I
    .local v5, "scale":I
    .restart local v6    # "roundingMode":I
    return-object p2

    .line 1655
    .end local v5    # "scale":I
    .end local v6    # "roundingMode":I
    .restart local p2    # "scale":I
    .restart local p3    # "roundingMode":I
    :cond_58
    move v5, p2

    move v6, p3

    .line 1656
    .end local p2    # "scale":I
    .end local p3    # "roundingMode":I
    .restart local v5    # "scale":I
    .restart local v6    # "roundingMode":I
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid rounding mode"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1689
    iget v0, p3, Ljava/math/RoundingMode;->oldMode:I

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 16
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1820
    move-object v7, p2

    iget v9, v7, Ljava/math/MathContext;->precision:I

    .line 1821
    .local v9, "mcp":I
    if-nez v9, :cond_a

    .line 1822
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1824
    :cond_a
    move-object v10, p0

    .line 1825
    .local v10, "dividend":Ljava/math/BigDecimal;
    iget v0, v10, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long v5, v0, v2

    .line 1838
    .local v5, "preferredScale":J
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_2f

    .line 1839
    invoke-virtual {v10}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_27

    .line 1840
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division undefined"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1841
    :cond_27
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1843
    :cond_2f
    invoke-virtual {v10}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_3e

    .line 1844
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->saturateLong(J)I

    move-result v0

    invoke-static {v0}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1845
    :cond_3e
    invoke-virtual {v10}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    .line 1846
    .local v1, "xscale":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v4

    .line 1847
    .local v4, "yscale":I
    iget-wide v2, v10, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v0, v2, v11

    if-eqz v0, :cond_6e

    .line 1848
    iget-wide v2, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v2, v11

    if-eqz v0, :cond_63

    .line 1849
    move v2, v1

    .end local v1    # "xscale":I
    .local v2, "xscale":I
    iget-wide v0, v10, Ljava/math/BigDecimal;->intCompact:J

    move-wide v6, v5

    move v5, v4

    .end local v4    # "yscale":I
    .local v5, "yscale":I
    .local v6, "preferredScale":J
    iget-wide v3, p1, Ljava/math/BigDecimal;->intCompact:J

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Ljava/math/BigDecimal;->divide(JIJIJLjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    move v4, v5

    move-wide v5, v6

    .end local v6    # "preferredScale":J
    .restart local v4    # "yscale":I
    .local v5, "preferredScale":J
    return-object v0

    .line 1851
    .end local v2    # "xscale":I
    .restart local v1    # "xscale":I
    :cond_63
    move v2, v1

    .end local v1    # "xscale":I
    .restart local v2    # "xscale":I
    iget-wide v0, v10, Ljava/math/BigDecimal;->intCompact:J

    iget-object v3, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Ljava/math/BigDecimal;->divide(JILjava/math/BigInteger;IJLjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1854
    .end local v2    # "xscale":I
    .restart local v1    # "xscale":I
    :cond_6e
    move v2, v1

    .end local v1    # "xscale":I
    .restart local v2    # "xscale":I
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v0, v11

    if-eqz v0, :cond_81

    .line 1855
    iget-object v0, v10, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    move v1, v2

    .end local v2    # "xscale":I
    .restart local v1    # "xscale":I
    iget-wide v2, p1, Ljava/math/BigDecimal;->intCompact:J

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigInteger;IJIJLjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    move v2, v1

    .end local v1    # "xscale":I
    .restart local v2    # "xscale":I
    return-object v0

    .line 1857
    :cond_81
    iget-object v0, v10, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    move v1, v2

    .end local v2    # "xscale":I
    .restart local v1    # "xscale":I
    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    move v3, v4

    move-wide v4, v5

    move-object v6, p2

    .end local v5    # "preferredScale":J
    .local v3, "yscale":I
    .local v4, "preferredScale":J
    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigInteger;ILjava/math/BigInteger;IJLjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    move v2, v1

    move-wide v5, v4

    move v4, v3

    .end local v1    # "xscale":I
    .end local v3    # "yscale":I
    .restart local v2    # "xscale":I
    .local v4, "yscale":I
    .restart local v5    # "preferredScale":J
    return-object v0
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1740
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    iget v1, p2, Ljava/math/RoundingMode;->oldMode:I

    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .line 2045
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigDecimal;

    .line 2047
    .local v0, "result":[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2048
    aget-object v1, v0, v2

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2049
    return-object v0
.end method

.method public whitelist test-api divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;
    .registers 7
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 2079
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_9

    .line 2080
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2082
    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigDecimal;

    .line 2083
    .local v0, "result":[Ljava/math/BigDecimal;
    move-object v1, p0

    .line 2085
    .local v1, "lhs":Ljava/math/BigDecimal;
    invoke-virtual {v1, p1, p2}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 2086
    aget-object v2, v0, v3

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 2087
    return-object v0
.end method

.method public whitelist test-api divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 11
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .line 1875
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->saturateLong(J)I

    move-result v0

    .line 1876
    .local v0, "preferredScale":I
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->compareMagnitude(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_16

    .line 1878
    invoke-static {v0}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1881
    :cond_16
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    const/4 v2, 0x7

    if-nez v1, :cond_28

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-eqz v1, :cond_28

    .line 1882
    invoke-virtual {p0, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1887
    :cond_28
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    int-to-long v3, v1

    .line 1888
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    int-to-double v5, v1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-long v5, v5

    add-long/2addr v3, v5

    .line 1889
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    int-to-long v7, v1

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 1887
    const-wide/32 v5, 0x7fffffff

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    .line 1891
    .local v1, "maxDigits":I
    new-instance v3, Ljava/math/MathContext;

    sget-object v4, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-direct {v3, v1, v4}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    invoke-virtual {p0, p1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1893
    .local v3, "quotient":Ljava/math/BigDecimal;
    iget v4, v3, Ljava/math/BigDecimal;->scale:I

    if-lez v4, :cond_79

    .line 1894
    const/4 v4, 0x0

    sget-object v5, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1895
    iget-object v4, v3, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v5, v3, Ljava/math/BigDecimal;->intCompact:J

    iget v7, v3, Ljava/math/BigDecimal;->scale:I

    invoke-static {v4, v5, v6, v7, v0}, Ljava/math/BigDecimal;->stripZerosToMatchScale(Ljava/math/BigInteger;JII)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1898
    :cond_79
    iget v4, v3, Ljava/math/BigDecimal;->scale:I

    if-ge v4, v0, :cond_81

    .line 1900
    invoke-virtual {v3, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1903
    :cond_81
    return-object v3
.end method

.method public whitelist test-api divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 9
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1927
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-eqz v0, :cond_7c

    .line 1928
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->compareMagnitude(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_b

    goto :goto_7c

    .line 1932
    :cond_b
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->saturateLong(J)I

    move-result v0

    .line 1941
    .local v0, "preferredScale":I
    new-instance v1, Ljava/math/MathContext;

    iget v2, p2, Ljava/math/MathContext;->precision:I

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-direct {v1, v2, v3}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    invoke-virtual {p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 1943
    .local v1, "result":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-gez v2, :cond_40

    .line 1949
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1952
    .local v2, "product":Ljava/math/BigDecimal;
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;->compareMagnitude(Ljava/math/BigDecimal;)I

    move-result v3

    if-gez v3, :cond_38

    .end local v2    # "product":Ljava/math/BigDecimal;
    goto :goto_4e

    .line 1953
    .restart local v2    # "product":Ljava/math/BigDecimal;
    :cond_38
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "Division impossible"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1955
    .end local v2    # "product":Ljava/math/BigDecimal;
    :cond_40
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-lez v2, :cond_4e

    .line 1961
    const/4 v2, 0x0

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_4f

    .line 1955
    :cond_4e
    :goto_4e
    nop

    .line 1966
    :goto_4f
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-le v0, v2, :cond_71

    iget v2, p2, Ljava/math/MathContext;->precision:I

    .line 1967
    invoke-virtual {v1}, Ljava/math/BigDecimal;->precision()I

    move-result v3

    sub-int/2addr v2, v3

    move v3, v2

    .local v3, "precisionDiff":I
    if-lez v2, :cond_71

    .line 1968
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    iget v4, v1, Ljava/math/BigDecimal;->scale:I

    sub-int v4, v0, v4

    .line 1969
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1968
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 1971
    .end local v3    # "precisionDiff":I
    :cond_71
    iget-object v2, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v3, v1, Ljava/math/BigDecimal;->intCompact:J

    iget v5, v1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v2, v3, v4, v5, v0}, Ljava/math/BigDecimal;->stripZerosToMatchScale(Ljava/math/BigInteger;JII)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 1929
    .end local v0    # "preferredScale":I
    .end local v1    # "result":Ljava/math/BigDecimal;
    :cond_7c
    :goto_7c
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 5

    .line 3815
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    .line 3816
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v0, :cond_10

    .line 3817
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-double v0, v0

    return-wide v0

    .line 3825
    :cond_10
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/high16 v2, 0x10000000000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_4a

    .line 3829
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v0, :cond_32

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    sget-object v1, Ljava/math/BigDecimal;->DOUBLE_10_POW:[D

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 3830
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-double v0, v0

    sget-object v2, Ljava/math/BigDecimal;->DOUBLE_10_POW:[D

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0

    .line 3831
    :cond_32
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v0, :cond_4a

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    sget-object v1, Ljava/math/BigDecimal;->DOUBLE_10_POW:[D

    array-length v1, v1

    neg-int v1, v1

    if-le v0, v1, :cond_4a

    .line 3832
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-double v0, v0

    sget-object v2, Ljava/math/BigDecimal;->DOUBLE_10_POW:[D

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v3, v3

    aget-wide v2, v2, v3

    mul-double/2addr v0, v2

    return-wide v0

    .line 3838
    :cond_4a
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "x"    # Ljava/lang/Object;

    .line 3227
    instance-of v0, p1, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    .line 3229
    .local v0, "xDec":Ljava/math/BigDecimal;
    const/4 v2, 0x1

    if-ne p1, p0, :cond_c

    .line 3230
    return v2

    .line 3231
    :cond_c
    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    iget v4, v0, Ljava/math/BigDecimal;->scale:I

    if-eq v3, v4, :cond_13

    .line 3232
    return v1

    .line 3233
    :cond_13
    iget-wide v3, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 3234
    .local v3, "s":J
    iget-wide v5, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 3235
    .local v5, "xs":J
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v3, v7

    if-eqz v9, :cond_2d

    .line 3236
    cmp-long v7, v5, v7

    if-nez v7, :cond_27

    .line 3237
    iget-object v7, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v7}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v5

    .line 3238
    :cond_27
    cmp-long v7, v5, v3

    if-nez v7, :cond_2c

    move v1, v2

    :cond_2c
    return v1

    .line 3239
    :cond_2d
    cmp-long v7, v5, v7

    if-eqz v7, :cond_3d

    .line 3240
    iget-object v7, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v7}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-nez v7, :cond_3c

    move v1, v2

    :cond_3c
    return v1

    .line 3242
    :cond_3d
    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3228
    .end local v0    # "xDec":Ljava/math/BigDecimal;
    .end local v3    # "s":J
    .end local v5    # "xs":J
    :cond_4a
    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 5

    .line 3770
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4b

    .line 3771
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v0, :cond_10

    .line 3772
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-float v0, v0

    return v0

    .line 3780
    :cond_10
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_4b

    .line 3784
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v0, :cond_33

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    sget-object v1, Ljava/math/BigDecimal;->FLOAT_10_POW:[F

    array-length v1, v1

    if-ge v0, v1, :cond_33

    .line 3785
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-float v0, v0

    sget-object v1, Ljava/math/BigDecimal;->FLOAT_10_POW:[F

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    aget v1, v1, v2

    div-float/2addr v0, v1

    return v0

    .line 3786
    :cond_33
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v0, :cond_4b

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    sget-object v1, Ljava/math/BigDecimal;->FLOAT_10_POW:[F

    array-length v1, v1

    neg-int v1, v1

    if-le v0, v1, :cond_4b

    .line 3787
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-float v0, v0

    sget-object v1, Ljava/math/BigDecimal;->FLOAT_10_POW:[F

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v2, v2

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0

    .line 3793
    :cond_4b
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 3292
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    .line 3293
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    neg-long v0, v0

    goto :goto_16

    :cond_14
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 3294
    .local v0, "val2":J
    :goto_16
    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    mul-int/lit8 v4, v4, 0x1f

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v0

    add-long/2addr v4, v6

    long-to-int v4, v4

    .line 3296
    .local v4, "temp":I
    iget-wide v5, p0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_2e

    neg-int v2, v4

    goto :goto_2f

    :cond_2e
    move v2, v4

    :goto_2f
    mul-int/lit8 v2, v2, 0x1f

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v2, v3

    return v2

    .line 3298
    .end local v0    # "val2":J
    .end local v4    # "temp":I
    :cond_35
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 5

    .line 3686
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v0, :cond_10

    .line 3687
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-int v0, v0

    goto :goto_15

    .line 3688
    :cond_10
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 3686
    :goto_15
    return v0
.end method

.method public whitelist test-api intValueExact()I
    .registers 5

    .line 3705
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    .line 3706
    .local v0, "num":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_c

    .line 3708
    long-to-int v2, v0

    return v2

    .line 3707
    :cond_c
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api longValue()J
    .registers 5

    .line 3588
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v0, :cond_f

    .line 3589
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    return-wide v0

    .line 3592
    :cond_f
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Ljava/math/BigDecimal;->fractionOnly()Z

    move-result v0

    if-nez v0, :cond_2b

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x40

    if-gt v0, v1, :cond_22

    goto :goto_2b

    .line 3602
    :cond_22
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 3600
    :cond_2b
    :goto_2b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist test-api longValueExact()J
    .registers 5

    .line 3629
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v0, :cond_f

    .line 3630
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    return-wide v0

    .line 3633
    :cond_f
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_18

    .line 3634
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3638
    :cond_18
    invoke-direct {p0}, Ljava/math/BigDecimal;->fractionOnly()Z

    move-result v0

    if-nez v0, :cond_49

    .line 3642
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    sub-int/2addr v0, v1

    const/16 v1, 0x13

    if-gt v0, v1, :cond_41

    .line 3646
    const/4 v0, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3647
    .local v0, "num":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v2

    if-lt v2, v1, :cond_38

    .line 3648
    invoke-static {v0}, Ljava/math/BigDecimal$LongOverflow;->check(Ljava/math/BigDecimal;)V

    .line 3649
    :cond_38
    invoke-direct {v0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 3643
    .end local v0    # "num":Ljava/math/BigDecimal;
    :cond_41
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3639
    :cond_49
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api max(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 3271
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    return-object v0
.end method

.method public whitelist test-api min(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 3257
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    return-object v0
.end method

.method public whitelist test-api movePointLeft(I)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "n"    # I

    .line 3030
    if-nez p1, :cond_3

    return-object p0

    .line 3033
    :cond_3
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v6

    .line 3034
    .local v6, "newScale":I
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v4, p0, Ljava/math/BigDecimal;->intCompact:J

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    .line 3035
    .local v2, "num":Ljava/math/BigDecimal;
    iget v0, v2, Ljava/math/BigDecimal;->scale:I

    if-gez v0, :cond_21

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_22

    :cond_21
    move-object v0, v2

    :goto_22
    return-object v0
.end method

.method public whitelist test-api movePointRight(I)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "n"    # I

    .line 3054
    if-nez p1, :cond_3

    return-object p0

    .line 3057
    :cond_3
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v6

    .line 3058
    .local v6, "newScale":I
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v4, p0, Ljava/math/BigDecimal;->intCompact:J

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    .line 3059
    .local v2, "num":Ljava/math/BigDecimal;
    iget v0, v2, Ljava/math/BigDecimal;->scale:I

    if-gez v0, :cond_21

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_22

    :cond_21
    move-object v0, v2

    :goto_22
    return-object v0
.end method

.method public whitelist test-api multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 7
    .param p1, "multiplicand"    # Ljava/math/BigDecimal;

    .line 1581
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v0

    .line 1582
    .local v0, "productScale":I
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2b

    .line 1583
    iget-wide v1, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_22

    .line 1584
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v1, v2, v3, v4, v0}, Ljava/math/BigDecimal;->multiply(JJI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1586
    :cond_22
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    iget-object v3, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v1, v2, v3, v0}, Ljava/math/BigDecimal;->multiply(JLjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1589
    :cond_2b
    iget-wide v1, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3a

    .line 1590
    iget-wide v1, p1, Ljava/math/BigDecimal;->intCompact:J

    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v1, v2, v3, v0}, Ljava/math/BigDecimal;->multiply(JLjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1592
    :cond_3a
    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 11
    .param p1, "multiplicand"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1607
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_9

    .line 1608
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1609
    :cond_9
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v6

    .line 1610
    .local v6, "productScale":I
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_36

    .line 1611
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2c

    .line 1612
    iget-wide v2, p0, Ljava/math/BigDecimal;->intCompact:J

    iget-wide v4, p1, Ljava/math/BigDecimal;->intCompact:J

    move-object v7, p2

    .end local p2    # "mc":Ljava/math/MathContext;
    .local v7, "mc":Ljava/math/MathContext;
    invoke-static/range {v2 .. v7}, Ljava/math/BigDecimal;->multiplyAndRound(JJILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p2

    return-object p2

    .line 1614
    .end local v7    # "mc":Ljava/math/MathContext;
    .restart local p2    # "mc":Ljava/math/MathContext;
    :cond_2c
    move-object v7, p2

    .end local p2    # "mc":Ljava/math/MathContext;
    .restart local v7    # "mc":Ljava/math/MathContext;
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    iget-object p2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v0, v1, p2, v6, v7}, Ljava/math/BigDecimal;->multiplyAndRound(JLjava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p2

    return-object p2

    .line 1617
    .end local v7    # "mc":Ljava/math/MathContext;
    .restart local p2    # "mc":Ljava/math/MathContext;
    :cond_36
    move-object v7, p2

    .end local p2    # "mc":Ljava/math/MathContext;
    .restart local v7    # "mc":Ljava/math/MathContext;
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_46

    .line 1618
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    iget-object p2, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v0, v1, p2, v6, v7}, Ljava/math/BigDecimal;->multiplyAndRound(JLjava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p2

    return-object p2

    .line 1620
    :cond_46
    iget-object p2, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v0, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {p2, v0, v6, v7}, Ljava/math/BigDecimal;->multiplyAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p2

    return-object p2
.end method

.method public whitelist test-api negate()Ljava/math/BigDecimal;
    .registers 8

    .line 2619
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 2620
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    iget v6, p0, Ljava/math/BigDecimal;->precision:I

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v1

    .line 2622
    :cond_1a
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    neg-long v0, v0

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    iget v3, p0, Ljava/math/BigDecimal;->precision:I

    invoke-static {v0, v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 2635
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plus()Ljava/math/BigDecimal;
    .registers 1

    .line 2651
    return-object p0
.end method

.method public whitelist test-api plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 2668
    iget v0, p1, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_5

    .line 2669
    return-object p0

    .line 2670
    :cond_5
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pow(I)Ljava/math/BigDecimal;
    .registers 6
    .param p1, "n"    # I

    .line 2490
    if-ltz p1, :cond_1e

    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_1e

    .line 2494
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v0

    .line 2495
    .local v0, "newScale":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1

    .line 2491
    .end local v0    # "newScale":I
    :cond_1e
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Invalid operation"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "n"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 2550
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_9

    .line 2551
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2552
    :cond_9
    const v0, -0x3b9ac9ff

    const-string v1, "Invalid operation"

    if-lt p1, v0, :cond_68

    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_68

    .line 2554
    if-nez p1, :cond_1a

    .line 2555
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    return-object v0

    .line 2556
    :cond_1a
    move-object v0, p0

    .line 2557
    .local v0, "lhs":Ljava/math/BigDecimal;
    move-object v2, p2

    .line 2558
    .local v2, "workmc":Ljava/math/MathContext;
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2559
    .local v3, "mag":I
    iget v4, p2, Ljava/math/MathContext;->precision:I

    if-lez v4, :cond_41

    .line 2560
    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v4

    .line 2561
    .local v4, "elength":I
    iget v5, p2, Ljava/math/MathContext;->precision:I

    if-gt v4, v5, :cond_3b

    .line 2563
    new-instance v1, Ljava/math/MathContext;

    iget v5, p2, Ljava/math/MathContext;->precision:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p2, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {v1, v5, v6}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    move-object v2, v1

    goto :goto_41

    .line 2562
    :cond_3b
    new-instance v5, Ljava/lang/ArithmeticException;

    invoke-direct {v5, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2567
    .end local v4    # "elength":I
    :cond_41
    :goto_41
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 2568
    .local v1, "acc":Ljava/math/BigDecimal;
    const/4 v4, 0x0

    .line 2569
    .local v4, "seenbit":Z
    const/4 v5, 0x1

    .line 2570
    .local v5, "i":I
    :goto_45
    add-int/2addr v3, v3

    .line 2571
    if-gez v3, :cond_4d

    .line 2572
    const/4 v4, 0x1

    .line 2573
    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2575
    :cond_4d
    const/16 v6, 0x1f

    if-ne v5, v6, :cond_5f

    .line 2576
    nop

    .line 2582
    .end local v5    # "i":I
    if-gez p1, :cond_5a

    .line 2583
    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v5, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2585
    :cond_5a
    invoke-static {v1, p2}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 2577
    .restart local v5    # "i":I
    :cond_5f
    if-eqz v4, :cond_65

    .line 2578
    invoke-virtual {v1, v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2569
    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 2553
    .end local v0    # "lhs":Ljava/math/BigDecimal;
    .end local v1    # "acc":Ljava/math/BigDecimal;
    .end local v2    # "workmc":Ljava/math/MathContext;
    .end local v3    # "mag":I
    .end local v4    # "seenbit":Z
    .end local v5    # "i":I
    :cond_68
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api precision()I
    .registers 6

    .line 2709
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    .line 2710
    .local v0, "result":I
    if-nez v0, :cond_19

    .line 2711
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 2712
    .local v1, "s":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_11

    .line 2713
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v0

    goto :goto_17

    .line 2715
    :cond_11
    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v3}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v0

    .line 2716
    :goto_17
    iput v0, p0, Ljava/math/BigDecimal;->precision:I

    .line 2718
    .end local v1    # "s":J
    :cond_19
    return v0
.end method

.method public whitelist test-api remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .line 1989
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    .line 1990
    .local v0, "divrem":[Ljava/math/BigDecimal;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public whitelist test-api remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 2019
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    move-result-object v0

    .line 2020
    .local v0, "divrem":[Ljava/math/BigDecimal;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public whitelist test-api round(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 2849
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api scale()I
    .registers 2

    .line 2696
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    return v0
.end method

.method public whitelist test-api scaleByPowerOfTen(I)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "n"    # I

    .line 3076
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v2, p0, Ljava/math/BigDecimal;->intCompact:J

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v4, v4

    int-to-long v6, p1

    sub-long/2addr v4, v6

    .line 3077
    invoke-direct {p0, v4, v5}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v4

    iget v5, p0, Ljava/math/BigDecimal;->precision:I

    invoke-direct/range {v0 .. v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    .line 3076
    return-object v0
.end method

.method public whitelist test-api setScale(I)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "newScale"    # I

    .line 3009
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setScale(II)Ljava/math/BigDecimal;
    .registers 16
    .param p1, "newScale"    # I
    .param p2, "roundingMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 2927
    move v6, p2

    if-ltz v6, :cond_ba

    const/4 v0, 0x7

    if-gt v6, v0, :cond_ba

    .line 2930
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 2931
    .local v7, "oldScale":I
    if-ne p1, v7, :cond_b

    .line 2932
    return-object p0

    .line 2933
    :cond_b
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_16

    .line 2934
    invoke-static {p1}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2935
    :cond_16
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_74

    .line 2936
    move v5, v1

    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 2937
    .local v0, "rs":J
    if-le p1, v7, :cond_4e

    .line 2938
    int-to-long v8, p1

    int-to-long v10, v7

    sub-long/2addr v8, v10

    invoke-direct {p0, v8, v9}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v8

    .line 2939
    .local v8, "raise":I
    invoke-static {v0, v1, v8}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v9

    move-wide v11, v9

    .end local v0    # "rs":J
    .local v11, "rs":J
    cmp-long v0, v9, v2

    if-eqz v0, :cond_39

    .line 2940
    invoke-static {v11, v12, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2942
    :cond_39
    invoke-direct {p0, v8}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 2943
    .local v1, "rb":Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigDecimal;

    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v2, :cond_47

    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    add-int/2addr v2, v8

    move v5, v2

    :cond_47
    const-wide/high16 v2, -0x8000000000000000L

    move v4, p1

    invoke-direct/range {v0 .. v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v0

    .line 2947
    .end local v1    # "rb":Ljava/math/BigInteger;
    .end local v8    # "raise":I
    .end local v11    # "rs":J
    .restart local v0    # "rs":J
    :cond_4e
    int-to-long v2, v7

    int-to-long v8, p1

    sub-long/2addr v2, v8

    invoke-direct {p0, v2, v3}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v8

    .line 2948
    .local v8, "drop":I
    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v2, v2

    if-ge v8, v2, :cond_67

    .line 2949
    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v2, v2, v8

    move v6, p1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v2

    move v6, v5

    return-object v2

    .line 2951
    :cond_67
    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v8}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3, p1, p2, p1}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 2955
    .end local v0    # "rs":J
    .end local v8    # "drop":I
    :cond_74
    move v5, v1

    if-le p1, v7, :cond_95

    .line 2956
    int-to-long v0, p1

    int-to-long v2, v7

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v8

    .line 2957
    .local v8, "raise":I
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v0, v8}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 2958
    .restart local v1    # "rb":Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigDecimal;

    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v2, :cond_8e

    iget v2, p0, Ljava/math/BigDecimal;->precision:I

    add-int/2addr v2, v8

    move v5, v2

    :cond_8e
    const-wide/high16 v2, -0x8000000000000000L

    move v4, p1

    invoke-direct/range {v0 .. v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v0

    .line 2962
    .end local v1    # "rb":Ljava/math/BigInteger;
    .end local v8    # "raise":I
    :cond_95
    int-to-long v0, v7

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v8

    .line 2963
    .local v8, "drop":I
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v0, v0

    if-ge v8, v0, :cond_af

    .line 2964
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v1, v1, v8

    move v5, p1

    move v3, p1

    move v4, v6

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2967
    :cond_af
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v8}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p1}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2928
    .end local v7    # "oldScale":I
    .end local v8    # "drop":I
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rounding mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "newScale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 2882
    iget v0, p2, Ljava/math/RoundingMode;->oldMode:I

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api shortValueExact()S
    .registers 5

    .line 3725
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    .line 3726
    .local v0, "num":J
    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_e

    .line 3728
    long-to-int v2, v0

    int-to-short v2, v2

    return v2

    .line 3727
    :cond_e
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api signum()I
    .registers 5

    .line 2680
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 2681
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    goto :goto_15

    .line 2682
    :cond_f
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    .line 2680
    :goto_15
    return v0
.end method

.method public whitelist test-api sqrt(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 22
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 2125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    .line 2126
    .local v2, "signum":I
    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_181

    .line 2158
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 2159
    .local v6, "preferredScale":I
    invoke-static {v3, v4, v6}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v7

    .line 2163
    .local v7, "zeroWithFinalPreferredScale":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v8

    .line 2164
    .local v8, "stripped":Ljava/math/BigDecimal;
    invoke-virtual {v8}, Ljava/math/BigDecimal;->scale()I

    move-result v9

    .line 2167
    .local v9, "strippedScale":I
    invoke-direct {v8}, Ljava/math/BigDecimal;->isPowerOfTen()Z

    move-result v3

    if-eqz v3, :cond_3c

    rem-int/lit8 v3, v9, 0x2

    if-nez v3, :cond_3c

    .line 2169
    div-int/lit8 v3, v9, 0x2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v3

    .line 2170
    .local v3, "result":Ljava/math/BigDecimal;
    invoke-virtual {v3}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    if-eq v4, v6, :cond_3b

    .line 2173
    invoke-virtual {v3, v7, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 2175
    :cond_3b
    return-object v3

    .line 2191
    .end local v3    # "result":Ljava/math/BigDecimal;
    :cond_3c
    const/4 v3, 0x0

    .line 2192
    .local v3, "scaleAdjust":I
    invoke-virtual {v8}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-virtual {v8}, Ljava/math/BigDecimal;->precision()I

    move-result v10

    sub-int/2addr v4, v10

    add-int/lit8 v10, v4, 0x1

    .line 2193
    .local v10, "scale":I
    rem-int/lit8 v4, v10, 0x2

    if-nez v4, :cond_4f

    .line 2194
    move v3, v10

    move v11, v3

    goto :goto_52

    .line 2196
    :cond_4f
    add-int/lit8 v3, v10, -0x1

    move v11, v3

    .line 2199
    .end local v3    # "scaleAdjust":I
    .local v11, "scaleAdjust":I
    :goto_52
    invoke-virtual {v8, v11}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v12

    .line 2201
    .local v12, "working":Ljava/math/BigDecimal;
    nop

    .line 2228
    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {v12}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-direct {v3, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v13, v3

    .line 2229
    .local v13, "guess":Ljava/math/BigDecimal;
    const/16 v3, 0xf

    .line 2230
    .local v3, "guessPrecision":I
    invoke-virtual {v1}, Ljava/math/MathContext;->getPrecision()I

    move-result v14

    .line 2237
    .local v14, "originalPrecision":I
    if-nez v14, :cond_76

    .line 2238
    invoke-virtual {v8}, Ljava/math/BigDecimal;->precision()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    move v5, v4

    .local v4, "targetPrecision":I
    goto :goto_92

    .line 2246
    .end local v4    # "targetPrecision":I
    :cond_76
    sget-object v4, Ljava/math/BigDecimal$2;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {v1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1a4

    .line 2256
    move v4, v14

    move v5, v4

    .restart local v4    # "targetPrecision":I
    goto :goto_92

    .line 2250
    .end local v4    # "targetPrecision":I
    :pswitch_88
    mul-int/lit8 v4, v14, 0x2

    .line 2251
    .restart local v4    # "targetPrecision":I
    if-gez v4, :cond_91

    .line 2252
    const v4, 0x7ffffffd

    move v5, v4

    goto :goto_92

    .line 2251
    :cond_91
    move v5, v4

    .line 2265
    .end local v4    # "targetPrecision":I
    .local v5, "targetPrecision":I
    :goto_92
    move-object v4, v13

    .line 2266
    .local v4, "approx":Ljava/math/BigDecimal;
    invoke-virtual {v12}, Ljava/math/BigDecimal;->precision()I

    move-result v15

    .line 2268
    .local v15, "workingPrecision":I
    :goto_97
    move/from16 v16, v2

    .end local v2    # "signum":I
    .local v16, "signum":I
    add-int/lit8 v2, v5, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2270
    .local v2, "tmpPrecision":I
    move/from16 v17, v3

    .end local v3    # "guessPrecision":I
    .local v17, "guessPrecision":I
    new-instance v3, Ljava/math/MathContext;

    move-object/from16 v18, v8

    .end local v8    # "stripped":Ljava/math/BigDecimal;
    .local v18, "stripped":Ljava/math/BigDecimal;
    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v3, v2, v8}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 2272
    .local v3, "mcTmp":Ljava/math/MathContext;
    sget-object v8, Ljava/math/BigDecimal;->ONE_HALF:Ljava/math/BigDecimal;

    move/from16 v19, v2

    .end local v2    # "tmpPrecision":I
    .local v19, "tmpPrecision":I
    invoke-virtual {v12, v4, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 2273
    mul-int/lit8 v3, v17, 0x2

    .line 2274
    .end local v17    # "guessPrecision":I
    .end local v19    # "tmpPrecision":I
    .local v3, "guessPrecision":I
    add-int/lit8 v2, v5, 0x2

    if-lt v3, v2, :cond_175

    .line 2277
    invoke-virtual {v1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v2

    .line 2278
    .local v2, "targetRm":Ljava/math/RoundingMode;
    sget-object v8, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    if-eq v2, v8, :cond_129

    if-nez v14, :cond_d1

    move/from16 v17, v3

    goto :goto_12b

    .line 2290
    :cond_d1
    neg-int v8, v11

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v4, v8}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 2292
    .local v8, "result":Ljava/math/BigDecimal;
    sget-object v17, Ljava/math/BigDecimal$2;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {v2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v19

    aget v17, v17, v19

    packed-switch v17, :pswitch_data_1ae

    move/from16 v17, v3

    .end local v3    # "guessPrecision":I
    .restart local v17    # "guessPrecision":I
    goto/16 :goto_156

    .line 2314
    .end local v17    # "guessPrecision":I
    .restart local v3    # "guessPrecision":I
    :pswitch_eb
    invoke-direct {v8}, Ljava/math/BigDecimal;->square()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_100

    .line 2315
    invoke-virtual {v8}, Ljava/math/BigDecimal;->ulp()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    move/from16 v17, v3

    goto :goto_156

    .line 2314
    :cond_100
    move/from16 v17, v3

    goto :goto_156

    .line 2296
    :pswitch_103
    invoke-direct {v8}, Ljava/math/BigDecimal;->square()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_126

    .line 2297
    invoke-virtual {v8}, Ljava/math/BigDecimal;->ulp()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2304
    .local v1, "ulp":Ljava/math/BigDecimal;
    move/from16 v17, v3

    .end local v3    # "guessPrecision":I
    .restart local v17    # "guessPrecision":I
    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-nez v3, :cond_121

    .line 2305
    sget-object v3, Ljava/math/BigDecimal;->ONE_TENTH:Ljava/math/BigDecimal;

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2307
    :cond_121
    invoke-virtual {v8, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 2308
    .end local v1    # "ulp":Ljava/math/BigDecimal;
    goto :goto_156

    .line 2296
    .end local v17    # "guessPrecision":I
    .restart local v3    # "guessPrecision":I
    :cond_126
    move/from16 v17, v3

    .end local v3    # "guessPrecision":I
    .restart local v17    # "guessPrecision":I
    goto :goto_156

    .line 2278
    .end local v8    # "result":Ljava/math/BigDecimal;
    .end local v17    # "guessPrecision":I
    .restart local v3    # "guessPrecision":I
    :cond_129
    move/from16 v17, v3

    .line 2280
    .end local v3    # "guessPrecision":I
    .restart local v17    # "guessPrecision":I
    :goto_12b
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    if-ne v2, v1, :cond_132

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    goto :goto_133

    :cond_132
    move-object v1, v2

    .line 2281
    .local v1, "tmpRm":Ljava/math/RoundingMode;
    :goto_133
    new-instance v3, Ljava/math/MathContext;

    invoke-direct {v3, v5, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 2282
    .local v3, "mcTmp":Ljava/math/MathContext;
    neg-int v8, v11

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v4, v8}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 2286
    .restart local v8    # "result":Ljava/math/BigDecimal;
    move-object/from16 v19, v1

    .end local v1    # "tmpRm":Ljava/math/RoundingMode;
    .local v19, "tmpRm":Ljava/math/RoundingMode;
    invoke-direct {v8}, Ljava/math/BigDecimal;->square()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_16d

    .line 2289
    .end local v3    # "mcTmp":Ljava/math/MathContext;
    .end local v19    # "tmpRm":Ljava/math/RoundingMode;
    nop

    .line 2337
    :goto_156
    nop

    .line 2338
    invoke-virtual {v8}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-eq v0, v6, :cond_16c

    .line 2346
    invoke-virtual {v8}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/MathContext;

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-direct {v1, v14, v3}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 2347
    invoke-virtual {v0, v7, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 2350
    :cond_16c
    return-object v8

    .line 2287
    .restart local v3    # "mcTmp":Ljava/math/MathContext;
    .restart local v19    # "tmpRm":Ljava/math/RoundingMode;
    :cond_16d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Computed square root not exact."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2274
    .end local v2    # "targetRm":Ljava/math/RoundingMode;
    .end local v8    # "result":Ljava/math/BigDecimal;
    .end local v17    # "guessPrecision":I
    .end local v19    # "tmpRm":Ljava/math/RoundingMode;
    .local v3, "guessPrecision":I
    :cond_175
    move/from16 v17, v3

    .end local v3    # "guessPrecision":I
    .restart local v17    # "guessPrecision":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v8, v18

    goto/16 :goto_97

    .line 2352
    .end local v4    # "approx":Ljava/math/BigDecimal;
    .end local v5    # "targetPrecision":I
    .end local v6    # "preferredScale":I
    .end local v7    # "zeroWithFinalPreferredScale":Ljava/math/BigDecimal;
    .end local v9    # "strippedScale":I
    .end local v10    # "scale":I
    .end local v11    # "scaleAdjust":I
    .end local v12    # "working":Ljava/math/BigDecimal;
    .end local v13    # "guess":Ljava/math/BigDecimal;
    .end local v14    # "originalPrecision":I
    .end local v15    # "workingPrecision":I
    .end local v16    # "signum":I
    .end local v17    # "guessPrecision":I
    .end local v18    # "stripped":Ljava/math/BigDecimal;
    .local v2, "signum":I
    :cond_181
    move/from16 v16, v2

    .end local v2    # "signum":I
    .restart local v16    # "signum":I
    const/4 v0, 0x0

    .line 2353
    .local v0, "result":Ljava/math/BigDecimal;
    packed-switch v16, :pswitch_data_1ba

    .line 2363
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Bad value from signum"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2358
    :pswitch_18f
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v3, v4, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2359
    nop

    .line 2360
    return-object v0

    .line 2355
    :pswitch_19b
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Attempted square root of negative BigDecimal"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_1a4
    .packed-switch 0x1
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x4
        :pswitch_103
        :pswitch_103
        :pswitch_eb
        :pswitch_eb
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch -0x1
        :pswitch_19b
        :pswitch_18f
    .end packed-switch
.end method

.method public whitelist test-api stripTrailingZeros()Ljava/math/BigDecimal;
    .registers 6

    .line 3097
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2f

    .line 3099
    :cond_15
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    .line 3100
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v4, v2, v3}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3102
    :cond_26
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 3098
    :cond_2f
    :goto_2f
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public whitelist test-api subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 9
    .param p1, "subtrahend"    # Ljava/math/BigDecimal;

    .line 1535
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2d

    .line 1536
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 1537
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    iget-wide v4, p1, Ljava/math/BigDecimal;->intCompact:J

    neg-long v4, v4

    iget v6, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static/range {v1 .. v6}, Ljava/math/BigDecimal;->add(JIJI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1539
    :cond_1c
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v3, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/math/BigDecimal;->add(JILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1542
    :cond_2d
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_41

    .line 1546
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    neg-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/math/BigDecimal;->add(JILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1548
    :cond_41
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigInteger;ILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "subtrahend"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1566
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_9

    .line 1567
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1569
    :cond_9
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 3551
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toBigIntegerExact()Ljava/math/BigInteger;
    .registers 3

    .line 3566
    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toEngineeringString()Ljava/lang/String;
    .registers 2

    .line 3436
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->layoutChars(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toPlainString()Ljava/lang/String;
    .registers 6

    .line 3473
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_1a

    .line 3474
    iget-wide v3, p0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_13

    .line 3475
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3477
    :cond_13
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3480
    :cond_1a
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v0, :cond_66

    .line 3481
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_27

    .line 3482
    const-string v0, "0"

    return-object v0

    .line 3484
    :cond_27
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v3, v0

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v0

    .line 3486
    .local v0, "trailingZeros":I
    iget-wide v3, p0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_42

    .line 3487
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3488
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 3490
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_42
    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3491
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3492
    .local v2, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v2

    .line 3494
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .local v1, "buf":Ljava/lang/StringBuilder;
    :goto_56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    if-ge v2, v0, :cond_61

    .line 3495
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3494
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 3497
    .end local v2    # "i":I
    :cond_61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3500
    .end local v0    # "trailingZeros":I
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_66
    iget-wide v3, p0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_77

    .line 3501
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_81

    .line 3503
    .end local v0    # "str":Ljava/lang/String;
    :cond_77
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3505
    .restart local v0    # "str":Ljava/lang/String;
    :goto_81
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0, v1, v0, v2}, Ljava/math/BigDecimal;->getValueString(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3404
    iget-object v0, p0, Ljava/math/BigDecimal;->stringCache:Ljava/lang/String;

    .line 3405
    .local v0, "sc":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 3406
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;->layoutChars(Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Ljava/math/BigDecimal;->stringCache:Ljava/lang/String;

    .line 3408
    :cond_c
    return-object v0
.end method

.method public whitelist test-api ulp()Ljava/math/BigDecimal;
    .registers 5

    .line 3876
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/math/BigDecimal;->valueOf(JII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api unscaledValue()Ljava/math/BigInteger;
    .registers 2

    .line 2731
    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
