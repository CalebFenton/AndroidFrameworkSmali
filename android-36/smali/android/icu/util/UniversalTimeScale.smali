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
.field public static final whitelist test-api DB2_TIME:I = 0x8

.field public static final whitelist test-api DOTNET_DATE_TIME:I = 0x4

.field public static final greylist-max-o EPOCH_OFFSET_MINUS_1_VALUE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api EPOCH_OFFSET_PLUS_1_VALUE:I = 0x6

.field public static final whitelist test-api EPOCH_OFFSET_VALUE:I = 0x1

.field public static final whitelist test-api EXCEL_TIME:I = 0x7

.field public static final whitelist test-api FROM_MAX_VALUE:I = 0x3

.field public static final whitelist test-api FROM_MIN_VALUE:I = 0x2

.field public static final whitelist test-api ICU4C_TIME:I = 0x2

.field public static final whitelist test-api JAVA_TIME:I = 0x0

.field public static final whitelist test-api MAC_OLD_TIME:I = 0x5

.field public static final whitelist test-api MAC_TIME:I = 0x6

.field public static final greylist-max-o MAX_ROUND_VALUE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api MAX_SCALE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MAX_SCALE_VALUE:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MIN_ROUND_VALUE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api TO_MAX_VALUE:I = 0x5

.field public static final whitelist test-api TO_MIN_VALUE:I = 0x4

.field public static final greylist-max-o UNITS_ROUND_VALUE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api UNITS_VALUE:I = 0x0

.field public static final whitelist test-api UNIX_MICROSECONDS_TIME:I = 0x9

.field public static final whitelist test-api UNIX_TIME:I = 0x1

.field public static final whitelist test-api WINDOWS_FILE_TIME:I = 0x3

.field private static final greylist-max-o days:J = 0xc92a69c000L

.field private static final greylist-max-o hours:J = 0x861c46800L

.field private static final greylist-max-o microseconds:J = 0xaL

.field private static final greylist-max-o milliseconds:J = 0x2710L

.field private static final greylist-max-o minutes:J = 0x23c34600L

.field private static final greylist-max-o seconds:J = 0x989680L

.field private static final greylist-max-o ticks:J = 0x1L

.field private static final greylist-max-o timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 24

    .line 306
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide v10, -0x37f5f6f906065L

    const-wide v12, 0x30e594b36b065L

    const-wide/16 v2, 0x2710

    const-wide v4, 0x89f7ff5f7b58000L

    const-wide v6, -0x7ffffffffffffcd7L    # -3.997E-321

    const-wide v8, 0x7ffffffffffffcd7L

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v3, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide v12, -0xe53726cce5L

    const-wide v14, 0xc84802dee5L

    const-wide/32 v4, 0x989680

    const-wide v6, 0x89f7ff5f7b58000L

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    invoke-direct/range {v3 .. v15}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v1, 0x1

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide v13, -0x37f5f6f906065L

    const-wide v15, 0x30e594b36b065L

    const-wide/16 v5, 0x2710

    const-wide v7, 0x89f7ff5f7b58000L

    const-wide v9, -0x7ffffffffffffcd7L    # -3.997E-321

    const-wide v11, 0x7ffffffffffffcd7L

    invoke-direct/range {v4 .. v16}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v1, 0x2

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/high16 v14, -0x8000000000000000L

    const-wide v16, 0x78fe31e8dd88ffffL    # 6.533870374225853E274

    const-wide/16 v6, 0x1

    const-wide v8, 0x701ce1722770000L

    const-wide v10, -0x78fe31e8dd890000L    # -6.42831179684452E-275

    const-wide v12, 0x7fffffffffffffffL

    invoke-direct/range {v5 .. v17}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v1, 0x3

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/high16 v15, -0x8000000000000000L

    const-wide v17, 0x7fffffffffffffffL

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x0

    const-wide/high16 v11, -0x8000000000000000L

    const-wide v13, 0x7fffffffffffffffL

    invoke-direct/range {v6 .. v18}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v1, 0x4

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide v16, -0xe4bb011c65L

    const-wide v18, 0xc8c4288f65L

    const-wide/32 v8, 0x989680

    const-wide v10, 0x855809903724000L

    const-wide/high16 v12, -0x8000000000000000L

    const-wide v14, 0x7fffffffffffffffL

    invoke-direct/range {v7 .. v19}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v1, 0x5

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide v17, -0xe571769565L

    const-wide v19, 0xc80db31665L

    const-wide/32 v9, 0x989680

    const-wide v11, 0x8c2419ceb14c000L

    const-wide/high16 v13, -0x8000000000000000L

    const-wide v15, 0x7fffffffffffffffL

    invoke-direct/range {v8 .. v20}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v1, 0x6

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/32 v18, -0xad7959

    const-wide/32 v20, 0x984ea5

    const-wide v10, 0xc92a69c000L

    const-wide v12, 0x8510489f5ed8000L

    const-wide/high16 v14, -0x8000000000000000L

    const-wide v16, 0x7fffffffffffffffL

    invoke-direct/range {v9 .. v21}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v1, 0x7

    aput-object v9, v0, v1

    new-instance v10, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/32 v19, -0xad7959

    const-wide/32 v21, 0x984ea5

    const-wide v11, 0xc92a69c000L

    const-wide v13, 0x8510489f5ed8000L

    const-wide/high16 v15, -0x8000000000000000L

    const-wide v17, 0x7fffffffffffffffL

    invoke-direct/range {v10 .. v22}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/16 v1, 0x8

    aput-object v10, v0, v1

    new-instance v11, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide v20, -0xda98ccbcbf88cccL

    const-wide v22, 0xbf00ccdcda10cccL

    const-wide/16 v12, 0xa

    const-wide v14, 0x89f7ff5f7b58000L

    const-wide v16, -0x7ffffffffffffffcL    # -2.0E-323

    const-wide v18, 0x7ffffffffffffffcL

    invoke-direct/range {v11 .. v23}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/16 v1, 0x9

    aput-object v11, v0, v1

    sput-object v0, Landroid/icu/util/UniversalTimeScale;->timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    return-void
.end method

.method public static whitelist test-api bigDecimalFrom(DI)Landroid/icu/math/BigDecimal;
    .registers 9
    .param p0, "otherTime"    # D
    .param p2, "timeScale"    # I

    .line 357
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 358
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v1, Landroid/icu/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, "other":Landroid/icu/math/BigDecimal;
    new-instance v2, Landroid/icu/math/BigDecimal;

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v2, v3, v4}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 360
    .local v2, "units":Landroid/icu/math/BigDecimal;
    new-instance v3, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v3, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 362
    .local v3, "epochOffset":Landroid/icu/math/BigDecimal;
    invoke-virtual {v1, v3}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method

.method public static whitelist test-api bigDecimalFrom(JI)Landroid/icu/math/BigDecimal;
    .registers 9
    .param p0, "otherTime"    # J
    .param p2, "timeScale"    # I

    .line 377
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 378
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v1, Landroid/icu/math/BigDecimal;

    invoke-direct {v1, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 379
    .local v1, "other":Landroid/icu/math/BigDecimal;
    new-instance v2, Landroid/icu/math/BigDecimal;

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v2, v3, v4}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 380
    .local v2, "units":Landroid/icu/math/BigDecimal;
    new-instance v3, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v3, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 382
    .local v3, "epochOffset":Landroid/icu/math/BigDecimal;
    invoke-virtual {v1, v3}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method

.method public static whitelist test-api bigDecimalFrom(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .registers 7
    .param p0, "otherTime"    # Landroid/icu/math/BigDecimal;
    .param p1, "timeScale"    # I

    .line 397
    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 399
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v1, v2, v3}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 400
    .local v1, "units":Landroid/icu/math/BigDecimal;
    new-instance v2, Landroid/icu/math/BigDecimal;

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v2, v3, v4}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 402
    .local v2, "epochOffset":Landroid/icu/math/BigDecimal;
    invoke-virtual {p0, v2}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist test-api from(JI)J
    .registers 8
    .param p0, "otherTime"    # J
    .param p2, "timeScale"    # I

    .line 340
    invoke-static {p0, p1, p2}, Landroid/icu/util/UniversalTimeScale;->fromRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 342
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    add-long/2addr v1, p0

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private static greylist-max-o fromRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .registers 7
    .param p0, "otherTime"    # J
    .param p2, "scale"    # I

    .line 578
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 580
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    cmp-long v1, p0, v1

    if-ltz v1, :cond_11

    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    cmp-long v1, p0, v1

    if-gtz v1, :cond_11

    .line 581
    return-object v0

    .line 584
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otherTime out of range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .registers 4
    .param p0, "scale"    # I

    .line 506
    if-ltz p0, :cond_b

    const/16 v0, 0xa

    if-ge p0, v0, :cond_b

    .line 510
    sget-object v0, Landroid/icu/util/UniversalTimeScale;->timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    aget-object v0, v0, p0

    return-object v0

    .line 507
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scale out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getTimeScaleValue(II)J
    .registers 6
    .param p0, "scale"    # I
    .param p1, "value"    # I

    .line 523
    invoke-static {p0}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 525
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    packed-switch p1, :pswitch_data_42

    .line 561
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :pswitch_20
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    return-wide v1

    .line 555
    :pswitch_23
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    return-wide v1

    .line 552
    :pswitch_26
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    return-wide v1

    .line 549
    :pswitch_29
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    return-wide v1

    .line 546
    :pswitch_2c
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    return-wide v1

    .line 543
    :pswitch_2f
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    return-wide v1

    .line 540
    :pswitch_32
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    return-wide v1

    .line 537
    :pswitch_35
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    return-wide v1

    .line 534
    :pswitch_38
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    return-wide v1

    .line 531
    :pswitch_3b
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    return-wide v1

    .line 528
    :pswitch_3e
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    return-wide v1

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method public static whitelist test-api toBigDecimal(JI)Landroid/icu/math/BigDecimal;
    .registers 9
    .param p0, "universalTime"    # J
    .param p2, "timeScale"    # I

    .line 472
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 473
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v1, Landroid/icu/math/BigDecimal;

    invoke-direct {v1, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 474
    .local v1, "universal":Landroid/icu/math/BigDecimal;
    new-instance v2, Landroid/icu/math/BigDecimal;

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v2, v3, v4}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 475
    .local v2, "units":Landroid/icu/math/BigDecimal;
    new-instance v3, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v3, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 477
    .local v3, "epochOffset":Landroid/icu/math/BigDecimal;
    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method

.method public static whitelist test-api toBigDecimal(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .registers 7
    .param p0, "universalTime"    # Landroid/icu/math/BigDecimal;
    .param p1, "timeScale"    # I

    .line 490
    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 491
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v1, v2, v3}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 492
    .local v1, "units":Landroid/icu/math/BigDecimal;
    new-instance v2, Landroid/icu/math/BigDecimal;

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v2, v3, v4}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 494
    .local v2, "epochOffset":Landroid/icu/math/BigDecimal;
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o toBigDecimalTrunc(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .registers 7
    .param p0, "universalTime"    # Landroid/icu/math/BigDecimal;
    .param p1, "timeScale"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 605
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v1, v2, v3}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 606
    .local v1, "units":Landroid/icu/math/BigDecimal;
    new-instance v2, Landroid/icu/math/BigDecimal;

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v2, v3, v4}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 608
    .local v2, "epochOffset":Landroid/icu/math/BigDecimal;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist test-api toLong(JI)J
    .registers 8
    .param p0, "universalTime"    # J
    .param p2, "timeScale"    # I

    .line 445
    invoke-static {p0, p1, p2}, Landroid/icu/util/UniversalTimeScale;->toRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 447
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_25

    .line 448
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    cmp-long v1, p0, v1

    if-gez v1, :cond_1a

    .line 449
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    add-long/2addr v1, p0

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr v1, v3

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    sub-long/2addr v1, v3

    return-wide v1

    .line 452
    :cond_1a
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    sub-long v1, p0, v1

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr v1, v3

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    sub-long/2addr v1, v3

    return-wide v1

    .line 455
    :cond_25
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    cmp-long v1, p0, v1

    if-lez v1, :cond_36

    .line 456
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    sub-long v1, p0, v1

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr v1, v3

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    sub-long/2addr v1, v3

    return-wide v1

    .line 459
    :cond_36
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    add-long/2addr v1, p0

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr v1, v3

    iget-wide v3, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method private static greylist-max-o toRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .registers 7
    .param p0, "universalTime"    # J
    .param p2, "scale"    # I

    .line 567
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    .line 569
    .local v0, "data":Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    cmp-long v1, p0, v1

    if-ltz v1, :cond_11

    iget-wide v1, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    cmp-long v1, p0, v1

    if-gtz v1, :cond_11

    .line 570
    return-object v0

    .line 573
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "universalTime out of range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
