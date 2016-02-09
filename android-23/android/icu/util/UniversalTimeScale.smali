.class public final Landroid/icu/util/UniversalTimeScale;
.super Ljava/lang/Object;
.source "UniversalTimeScale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    }
.end annotation


# static fields
.field public static final DB2_TIME:I = 0x8

.field public static final DOTNET_DATE_TIME:I = 0x4

.field public static final EPOCH_OFFSET_MINUS_1_VALUE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EPOCH_OFFSET_PLUS_1_VALUE:I = 0x6

.field public static final EPOCH_OFFSET_VALUE:I = 0x1

.field public static final EXCEL_TIME:I = 0x7

.field public static final FROM_MAX_VALUE:I = 0x3

.field public static final FROM_MIN_VALUE:I = 0x2

.field public static final ICU4C_TIME:I = 0x2

.field public static final JAVA_TIME:I = 0x0

.field public static final MAC_OLD_TIME:I = 0x5

.field public static final MAC_TIME:I = 0x6

.field public static final MAX_ROUND_VALUE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_SCALE:I = 0xa

.field public static final MAX_SCALE_VALUE:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIN_ROUND_VALUE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TO_MAX_VALUE:I = 0x5

.field public static final TO_MIN_VALUE:I = 0x4

.field public static final UNITS_ROUND_VALUE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNITS_VALUE:I = 0x0

.field public static final UNIX_MICROSECONDS_TIME:I = 0x9

.field public static final UNIX_TIME:I = 0x1

.field public static final WINDOWS_FILE_TIME:I = 0x3

.field private static final days:J = 0xc92a69c000L

.field private static final hours:J = 0x861c46800L

.field private static final microseconds:J = 0xaL

.field private static final milliseconds:J = 0x2710L

.field private static final minutes:J = 0x23c34600L

.field private static final seconds:J = 0x989680L

.field private static final ticks:J = 0x1L

.field private static final timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    #@0
    .prologue
    .line 339
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@4
    .line 340
    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@6
    const-wide/16 v2, 0x2710

    #@8
    const-wide v4, 0x89f7ff5f7b58000L

    #@d
    const-wide v6, -0x7ffffffffffffcd7L    # -3.997E-321

    #@12
    const-wide v8, 0x7ffffffffffffcd7L

    #@17
    const-wide v10, -0x37f5f6f906065L

    #@1c
    const-wide v12, 0x30e594b36b065L

    #@21
    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    #@24
    const/4 v2, 0x0

    #@25
    aput-object v1, v0, v2

    #@27
    .line 341
    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@29
    const-wide/32 v2, 0x989680

    #@2c
    const-wide v4, 0x89f7ff5f7b58000L

    #@31
    const-wide/high16 v6, -0x8000000000000000L

    #@33
    const-wide v8, 0x7fffffffffffffffL

    #@38
    const-wide v10, -0xe53726cce5L

    #@3d
    const-wide v12, 0xc84802dee5L

    #@42
    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    #@45
    const/4 v2, 0x1

    #@46
    aput-object v1, v0, v2

    #@48
    .line 342
    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@4a
    const-wide/16 v2, 0x2710

    #@4c
    const-wide v4, 0x89f7ff5f7b58000L

    #@51
    const-wide v6, -0x7ffffffffffffcd7L    # -3.997E-321

    #@56
    const-wide v8, 0x7ffffffffffffcd7L

    #@5b
    const-wide v10, -0x37f5f6f906065L

    #@60
    const-wide v12, 0x30e594b36b065L

    #@65
    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    #@68
    const/4 v2, 0x2

    #@69
    aput-object v1, v0, v2

    #@6b
    .line 343
    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@6d
    const-wide/16 v2, 0x1

    #@6f
    const-wide v4, 0x701ce1722770000L

    #@74
    const-wide v6, -0x78fe31e8dd890000L    # -6.42831179684452E-275

    #@79
    const-wide v8, 0x7fffffffffffffffL

    #@7e
    const-wide/high16 v10, -0x8000000000000000L

    #@80
    const-wide v12, 0x78fe31e8dd88ffffL    # 6.533870374225853E274

    #@85
    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    #@88
    const/4 v2, 0x3

    #@89
    aput-object v1, v0, v2

    #@8b
    .line 344
    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@8d
    const-wide/16 v2, 0x1

    #@8f
    const-wide/16 v4, 0x0

    #@91
    const-wide/high16 v6, -0x8000000000000000L

    #@93
    const-wide v8, 0x7fffffffffffffffL

    #@98
    const-wide/high16 v10, -0x8000000000000000L

    #@9a
    const-wide v12, 0x7fffffffffffffffL

    #@9f
    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    #@a2
    const/4 v2, 0x4

    #@a3
    aput-object v1, v0, v2

    #@a5
    .line 345
    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@a7
    const-wide/32 v2, 0x989680

    #@aa
    const-wide v4, 0x855809903724000L

    #@af
    const-wide/high16 v6, -0x8000000000000000L

    #@b1
    const-wide v8, 0x7fffffffffffffffL

    #@b6
    const-wide v10, -0xe4bb011c65L

    #@bb
    const-wide v12, 0xc8c4288f65L

    #@c0
    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    #@c3
    const/4 v2, 0x5

    #@c4
    aput-object v1, v0, v2

    #@c6
    .line 346
    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@c8
    const-wide/32 v2, 0x989680

    #@cb
    const-wide v4, 0x8c2419ceb14c000L

    #@d0
    const-wide/high16 v6, -0x8000000000000000L

    #@d2
    const-wide v8, 0x7fffffffffffffffL

    #@d7
    const-wide v10, -0xe571769565L

    #@dc
    const-wide v12, 0xc80db31665L

    #@e1
    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    #@e4
    const/4 v2, 0x6

    #@e5
    aput-object v1, v0, v2

    #@e7
    .line 347
    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@e9
    const-wide v2, 0xc92a69c000L

    #@ee
    const-wide v4, 0x8510489f5ed8000L

    #@f3
    const-wide/high16 v6, -0x8000000000000000L

    #@f5
    const-wide v8, 0x7fffffffffffffffL

    #@fa
    const-wide/32 v10, -0xad7959

    #@fd
    const-wide/32 v12, 0x984ea5

    #@100
    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    #@103
    const/4 v2, 0x7

    #@104
    aput-object v1, v0, v2

    #@106
    .line 348
    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@108
    const-wide v2, 0xc92a69c000L

    #@10d
    const-wide v4, 0x8510489f5ed8000L

    #@112
    const-wide/high16 v6, -0x8000000000000000L

    #@114
    const-wide v8, 0x7fffffffffffffffL

    #@119
    const-wide/32 v10, -0xad7959

    #@11c
    const-wide/32 v12, 0x984ea5

    #@11f
    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    #@122
    const/16 v2, 0x8

    #@124
    aput-object v1, v0, v2

    #@126
    .line 349
    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@128
    const-wide/16 v2, 0xa

    #@12a
    const-wide v4, 0x89f7ff5f7b58000L

    #@12f
    const-wide v6, -0x7ffffffffffffffcL    # -2.0E-323

    #@134
    const-wide v8, 0x7ffffffffffffffcL

    #@139
    const-wide v10, -0xda98ccbcbf88cccL

    #@13e
    const-wide v12, 0xbf00ccdcda10cccL

    #@143
    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    #@146
    const/16 v2, 0x9

    #@148
    aput-object v1, v0, v2

    #@14a
    .line 339
    sput-object v0, Landroid/icu/util/UniversalTimeScale;->timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@14c
    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static bigDecimalFrom(DI)Landroid/icu/math/BigDecimal;
    .locals 6
    .param p0, "otherTime"    # D
    .param p2, "timeScale"    # I

    #@0
    .prologue
    .line 394
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 395
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v2, Landroid/icu/math/BigDecimal;

    #@6
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    invoke-direct {v2, v4}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@d
    .line 396
    .local v2, "other":Landroid/icu/math/BigDecimal;
    new-instance v3, Landroid/icu/math/BigDecimal;

    #@f
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@11
    invoke-direct {v3, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@14
    .line 397
    .local v3, "units":Landroid/icu/math/BigDecimal;
    new-instance v1, Landroid/icu/math/BigDecimal;

    #@16
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@18
    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@1b
    .line 399
    .local v1, "epochOffset":Landroid/icu/math/BigDecimal;
    invoke-virtual {v2, v1}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v3}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@22
    move-result-object v4

    #@23
    return-object v4
.end method

.method public static bigDecimalFrom(JI)Landroid/icu/math/BigDecimal;
    .locals 6
    .param p0, "otherTime"    # J
    .param p2, "timeScale"    # I

    #@0
    .prologue
    .line 416
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 417
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v2, Landroid/icu/math/BigDecimal;

    #@6
    invoke-direct {v2, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@9
    .line 418
    .local v2, "other":Landroid/icu/math/BigDecimal;
    new-instance v3, Landroid/icu/math/BigDecimal;

    #@b
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@d
    invoke-direct {v3, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@10
    .line 419
    .local v3, "units":Landroid/icu/math/BigDecimal;
    new-instance v1, Landroid/icu/math/BigDecimal;

    #@12
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@14
    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@17
    .line 421
    .local v1, "epochOffset":Landroid/icu/math/BigDecimal;
    invoke-virtual {v2, v1}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, v3}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@1e
    move-result-object v4

    #@1f
    return-object v4
.end method

.method public static bigDecimalFrom(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 6
    .param p0, "otherTime"    # Landroid/icu/math/BigDecimal;
    .param p1, "timeScale"    # I

    #@0
    .prologue
    .line 438
    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 440
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v2, Landroid/icu/math/BigDecimal;

    #@6
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@8
    invoke-direct {v2, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@b
    .line 441
    .local v2, "units":Landroid/icu/math/BigDecimal;
    new-instance v1, Landroid/icu/math/BigDecimal;

    #@d
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@f
    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@12
    .line 443
    .local v1, "epochOffset":Landroid/icu/math/BigDecimal;
    invoke-virtual {p0, v1}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v2}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@19
    move-result-object v3

    #@1a
    return-object v3
.end method

.method public static from(JI)J
    .locals 6
    .param p0, "otherTime"    # J
    .param p2, "timeScale"    # I

    #@0
    .prologue
    .line 375
    invoke-static {p0, p1, p2}, Landroid/icu/util/UniversalTimeScale;->fromRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 377
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@6
    add-long/2addr v2, p0

    #@7
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@9
    mul-long/2addr v2, v4

    #@a
    return-wide v2
.end method

.method private static fromRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .locals 4
    .param p0, "otherTime"    # J
    .param p2, "scale"    # I

    #@0
    .prologue
    .line 627
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 629
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    #@6
    cmp-long v1, p0, v2

    #@8
    if-ltz v1, :cond_0

    #@a
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    #@c
    cmp-long v1, p0, v2

    #@e
    if-gtz v1, :cond_0

    #@10
    .line 630
    return-object v0

    #@11
    .line 633
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "otherTime out of range:"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1
.end method

.method private static getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .locals 3
    .param p0, "scale"    # I

    #@0
    .prologue
    .line 553
    if-ltz p0, :cond_0

    #@2
    const/16 v0, 0xa

    #@4
    if-lt p0, v0, :cond_1

    #@6
    .line 554
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "scale out of range: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 557
    :cond_1
    sget-object v0, Landroid/icu/util/UniversalTimeScale;->timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@22
    aget-object v0, v0, p0

    #@24
    return-object v0
.end method

.method public static getTimeScaleValue(II)J
    .locals 4
    .param p0, "scale"    # I
    .param p1, "value"    # I

    #@0
    .prologue
    .line 572
    invoke-static {p0}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 574
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    packed-switch p1, :pswitch_data_0

    #@7
    .line 610
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "value out of range: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 577
    :pswitch_0
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@23
    return-wide v2

    #@24
    .line 580
    :pswitch_1
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@26
    return-wide v2

    #@27
    .line 583
    :pswitch_2
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    #@29
    return-wide v2

    #@2a
    .line 586
    :pswitch_3
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    #@2c
    return-wide v2

    #@2d
    .line 589
    :pswitch_4
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    #@2f
    return-wide v2

    #@30
    .line 592
    :pswitch_5
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    #@32
    return-wide v2

    #@33
    .line 595
    :pswitch_6
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    #@35
    return-wide v2

    #@36
    .line 598
    :pswitch_7
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    #@38
    return-wide v2

    #@39
    .line 601
    :pswitch_8
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    #@3b
    return-wide v2

    #@3c
    .line 604
    :pswitch_9
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    #@3e
    return-wide v2

    #@3f
    .line 607
    :pswitch_a
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    #@41
    return-wide v2

    #@42
    .line 574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static toBigDecimal(JI)Landroid/icu/math/BigDecimal;
    .locals 6
    .param p0, "universalTime"    # J
    .param p2, "timeScale"    # I

    #@0
    .prologue
    .line 517
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 518
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v3, Landroid/icu/math/BigDecimal;

    #@6
    invoke-direct {v3, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@9
    .line 519
    .local v3, "universal":Landroid/icu/math/BigDecimal;
    new-instance v2, Landroid/icu/math/BigDecimal;

    #@b
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@d
    invoke-direct {v2, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@10
    .line 520
    .local v2, "units":Landroid/icu/math/BigDecimal;
    new-instance v1, Landroid/icu/math/BigDecimal;

    #@12
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@14
    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@17
    .line 522
    .local v1, "epochOffset":Landroid/icu/math/BigDecimal;
    const/4 v4, 0x4

    #@18
    invoke-virtual {v3, v2, v4}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, v1}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@1f
    move-result-object v4

    #@20
    return-object v4
.end method

.method public static toBigDecimal(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 6
    .param p0, "universalTime"    # Landroid/icu/math/BigDecimal;
    .param p1, "timeScale"    # I

    #@0
    .prologue
    .line 537
    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 538
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v2, Landroid/icu/math/BigDecimal;

    #@6
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@8
    invoke-direct {v2, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@b
    .line 539
    .local v2, "units":Landroid/icu/math/BigDecimal;
    new-instance v1, Landroid/icu/math/BigDecimal;

    #@d
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@f
    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@12
    .line 541
    .local v1, "epochOffset":Landroid/icu/math/BigDecimal;
    const/4 v3, 0x4

    #@13
    invoke-virtual {p0, v2, v3}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v1}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@1a
    move-result-object v3

    #@1b
    return-object v3
.end method

.method public static toBigDecimalTrunc(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 6
    .param p0, "universalTime"    # Landroid/icu/math/BigDecimal;
    .param p1, "timeScale"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 653
    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 654
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v2, Landroid/icu/math/BigDecimal;

    #@6
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@8
    invoke-direct {v2, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@b
    .line 655
    .local v2, "units":Landroid/icu/math/BigDecimal;
    new-instance v1, Landroid/icu/math/BigDecimal;

    #@d
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@f
    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    #@12
    .line 657
    .local v1, "epochOffset":Landroid/icu/math/BigDecimal;
    const/4 v3, 0x1

    #@13
    invoke-virtual {p0, v2, v3}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, v1}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    #@1a
    move-result-object v3

    #@1b
    return-object v3
.end method

.method public static toLong(JI)J
    .locals 6
    .param p0, "universalTime"    # J
    .param p2, "timeScale"    # I

    #@0
    .prologue
    .line 488
    invoke-static {p0, p1, p2}, Landroid/icu/util/UniversalTimeScale;->toRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 490
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    const-wide/16 v2, 0x0

    #@6
    cmp-long v1, p0, v2

    #@8
    if-gez v1, :cond_1

    #@a
    .line 491
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    #@c
    cmp-long v1, p0, v2

    #@e
    if-gez v1, :cond_0

    #@10
    .line 492
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    #@12
    add-long/2addr v2, p0

    #@13
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@15
    div-long/2addr v2, v4

    #@16
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    #@18
    sub-long/2addr v2, v4

    #@19
    return-wide v2

    #@1a
    .line 495
    :cond_0
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    #@1c
    sub-long v2, p0, v2

    #@1e
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@20
    div-long/2addr v2, v4

    #@21
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@23
    sub-long/2addr v2, v4

    #@24
    return-wide v2

    #@25
    .line 498
    :cond_1
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    #@27
    cmp-long v1, p0, v2

    #@29
    if-lez v1, :cond_2

    #@2b
    .line 499
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    #@2d
    sub-long v2, p0, v2

    #@2f
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@31
    div-long/2addr v2, v4

    #@32
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    #@34
    sub-long/2addr v2, v4

    #@35
    return-wide v2

    #@36
    .line 502
    :cond_2
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    #@38
    add-long/2addr v2, p0

    #@39
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@3b
    div-long/2addr v2, v4

    #@3c
    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@3e
    sub-long/2addr v2, v4

    #@3f
    return-wide v2
.end method

.method private static toRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .locals 4
    .param p0, "universalTime"    # J
    .param p2, "scale"    # I

    #@0
    .prologue
    .line 616
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    #@3
    move-result-object v0

    #@4
    .line 618
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    #@6
    cmp-long v1, p0, v2

    #@8
    if-ltz v1, :cond_0

    #@a
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    #@c
    cmp-long v1, p0, v2

    #@e
    if-gtz v1, :cond_0

    #@10
    .line 619
    return-object v0

    #@11
    .line 622
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "universalTime out of range:"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1
.end method
