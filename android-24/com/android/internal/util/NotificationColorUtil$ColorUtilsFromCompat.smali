.class Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
.super Ljava/lang/Object;
.source "NotificationColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/NotificationColorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorUtilsFromCompat"
.end annotation


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 356
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    #@7
    .line 346
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static LABToColor(DDD)I
    .locals 8
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    #@0
    .prologue
    .line 622
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    #@3
    move-result-object v6

    #@4
    .local v6, "result":[D
    move-wide v0, p0

    #@5
    move-wide v2, p2

    #@6
    move-wide v4, p4

    #@7
    .line 623
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToXYZ(DDD[D)V

    #@a
    .line 624
    const/4 v0, 0x0

    #@b
    aget-wide v0, v6, v0

    #@d
    const/4 v2, 0x1

    #@e
    aget-wide v2, v6, v2

    #@10
    const/4 v4, 0x2

    #@11
    aget-wide v4, v6, v4

    #@13
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->XYZToColor(DDD)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public static LABToXYZ(DDD[D)V
    .locals 18
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "outXyz"    # [D

    #@0
    .prologue
    .line 565
    const-wide/high16 v14, 0x4030000000000000L    # 16.0

    #@2
    add-double v14, v14, p0

    #@4
    const-wide/high16 v16, 0x405d000000000000L    # 116.0

    #@6
    div-double v2, v14, v16

    #@8
    .line 566
    .local v2, "fy":D
    const-wide v14, 0x407f400000000000L    # 500.0

    #@d
    div-double v14, p2, v14

    #@f
    add-double v0, v14, v2

    #@11
    .line 567
    .local v0, "fx":D
    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    #@13
    div-double v14, p4, v14

    #@15
    sub-double v4, v2, v14

    #@17
    .line 569
    .local v4, "fz":D
    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    #@19
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    #@1c
    move-result-wide v6

    #@1d
    .line 570
    .local v6, "tmp":D
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    #@22
    cmpl-double v14, v6, v14

    #@24
    if-lez v14, :cond_0

    #@26
    move-wide v8, v6

    #@27
    .line 571
    .local v8, "xr":D
    :goto_0
    const-wide v14, 0x401fff9da4c11507L    # 7.9996247999999985

    #@2c
    cmpl-double v14, p0, v14

    #@2e
    if-lez v14, :cond_1

    #@30
    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    #@32
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    #@35
    move-result-wide v10

    #@36
    .line 573
    .local v10, "yr":D
    :goto_1
    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    #@38
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->pow(DD)D

    #@3b
    move-result-wide v6

    #@3c
    .line 574
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    #@41
    cmpl-double v14, v6, v14

    #@43
    if-lez v14, :cond_2

    #@45
    move-wide v12, v6

    #@46
    .line 576
    .local v12, "zr":D
    :goto_2
    const-wide v14, 0x4057c3020c49ba5eL    # 95.047

    #@4b
    mul-double/2addr v14, v8

    #@4c
    const/16 v16, 0x0

    #@4e
    aput-wide v14, p6, v16

    #@50
    .line 577
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    #@52
    mul-double/2addr v14, v10

    #@53
    const/16 v16, 0x1

    #@55
    aput-wide v14, p6, v16

    #@57
    .line 578
    const-wide v14, 0x405b3883126e978dL    # 108.883

    #@5c
    mul-double/2addr v14, v12

    #@5d
    const/16 v16, 0x2

    #@5f
    aput-wide v14, p6, v16

    #@61
    .line 564
    return-void

    #@62
    .line 570
    .end local v8    # "xr":D
    .end local v10    # "yr":D
    .end local v12    # "zr":D
    :cond_0
    const-wide/high16 v14, 0x405d000000000000L    # 116.0

    #@64
    mul-double/2addr v14, v0

    #@65
    const-wide/high16 v16, 0x4030000000000000L    # 16.0

    #@67
    sub-double v14, v14, v16

    #@69
    const-wide v16, 0x408c3a6666666666L    # 903.3

    #@6e
    div-double v8, v14, v16

    #@70
    .restart local v8    # "xr":D
    goto :goto_0

    #@71
    .line 571
    :cond_1
    const-wide v14, 0x408c3a6666666666L    # 903.3

    #@76
    div-double v10, p0, v14

    #@78
    .restart local v10    # "yr":D
    goto :goto_1

    #@79
    .line 574
    :cond_2
    const-wide/high16 v14, 0x405d000000000000L    # 116.0

    #@7b
    mul-double/2addr v14, v4

    #@7c
    const-wide/high16 v16, 0x4030000000000000L    # 16.0

    #@7e
    sub-double v14, v14, v16

    #@80
    const-wide v16, 0x408c3a6666666666L    # 903.3

    #@85
    div-double v12, v14, v16

    #@87
    .restart local v12    # "zr":D
    goto :goto_2
.end method

.method public static RGBToLAB(III[D)V
    .locals 7
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outLab"    # [D

    #@0
    .prologue
    .line 451
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToXYZ(III[D)V

    #@3
    .line 453
    const/4 v0, 0x0

    #@4
    aget-wide v0, p3, v0

    #@6
    const/4 v2, 0x1

    #@7
    aget-wide v2, p3, v2

    #@9
    const/4 v4, 0x2

    #@a
    aget-wide v4, p3, v4

    #@c
    move-object v6, p3

    #@d
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->XYZToLAB(DDD[D)V

    #@10
    .line 449
    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .locals 10
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outXyz"    # [D

    #@0
    .prologue
    .line 496
    array-length v6, p3

    #@1
    const/4 v7, 0x3

    #@2
    if-eq v6, v7, :cond_0

    #@4
    .line 497
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v7, "outXyz must have a length of 3."

    #@9
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v6

    #@d
    .line 500
    :cond_0
    int-to-double v6, p0

    #@e
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@13
    div-double v4, v6, v8

    #@15
    .line 501
    .local v4, "sr":D
    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    #@1a
    cmpg-double v6, v4, v6

    #@1c
    if-gez v6, :cond_1

    #@1e
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@23
    div-double/2addr v4, v6

    #@24
    .line 502
    :goto_0
    int-to-double v6, p1

    #@25
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@2a
    div-double v2, v6, v8

    #@2c
    .line 503
    .local v2, "sg":D
    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    #@31
    cmpg-double v6, v2, v6

    #@33
    if-gez v6, :cond_2

    #@35
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@3a
    div-double/2addr v2, v6

    #@3b
    .line 504
    :goto_1
    int-to-double v6, p2

    #@3c
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@41
    div-double v0, v6, v8

    #@43
    .line 505
    .local v0, "sb":D
    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    #@48
    cmpg-double v6, v0, v6

    #@4a
    if-gez v6, :cond_3

    #@4c
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@51
    div-double/2addr v0, v6

    #@52
    .line 507
    :goto_2
    const-wide v6, 0x3fda64c2f837b4a2L    # 0.4124

    #@57
    mul-double/2addr v6, v4

    #@58
    const-wide v8, 0x3fd6e2eb1c432ca5L    # 0.3576

    #@5d
    mul-double/2addr v8, v2

    #@5e
    add-double/2addr v6, v8

    #@5f
    const-wide v8, 0x3fc71a9fbe76c8b4L    # 0.1805

    #@64
    mul-double/2addr v8, v0

    #@65
    add-double/2addr v6, v8

    #@66
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    #@68
    mul-double/2addr v6, v8

    #@69
    const/4 v8, 0x0

    #@6a
    aput-wide v6, p3, v8

    #@6c
    .line 508
    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    #@71
    mul-double/2addr v6, v4

    #@72
    const-wide v8, 0x3fe6e2eb1c432ca5L    # 0.7152

    #@77
    mul-double/2addr v8, v2

    #@78
    add-double/2addr v6, v8

    #@79
    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    #@7e
    mul-double/2addr v8, v0

    #@7f
    add-double/2addr v6, v8

    #@80
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    #@82
    mul-double/2addr v6, v8

    #@83
    const/4 v8, 0x1

    #@84
    aput-wide v6, p3, v8

    #@86
    .line 509
    const-wide v6, 0x3f93c36113404ea5L    # 0.0193

    #@8b
    mul-double/2addr v6, v4

    #@8c
    const-wide v8, 0x3fbe83e425aee632L    # 0.1192

    #@91
    mul-double/2addr v8, v2

    #@92
    add-double/2addr v6, v8

    #@93
    const-wide v8, 0x3fee6a7ef9db22d1L    # 0.9505

    #@98
    mul-double/2addr v8, v0

    #@99
    add-double/2addr v6, v8

    #@9a
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    #@9c
    mul-double/2addr v6, v8

    #@9d
    const/4 v8, 0x2

    #@9e
    aput-wide v6, p3, v8

    #@a0
    .line 495
    return-void

    #@a1
    .line 501
    .end local v0    # "sb":D
    .end local v2    # "sg":D
    :cond_1
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    #@a6
    add-double/2addr v6, v4

    #@a7
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@ac
    div-double/2addr v6, v8

    #@ad
    const-wide v8, 0x4003333333333333L    # 2.4

    #@b2
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@b5
    move-result-wide v4

    #@b6
    goto/16 :goto_0

    #@b8
    .line 503
    .restart local v2    # "sg":D
    :cond_2
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    #@bd
    add-double/2addr v6, v2

    #@be
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@c3
    div-double/2addr v6, v8

    #@c4
    const-wide v8, 0x4003333333333333L    # 2.4

    #@c9
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@cc
    move-result-wide v2

    #@cd
    goto/16 :goto_1

    #@cf
    .line 505
    .restart local v0    # "sb":D
    :cond_3
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    #@d4
    add-double/2addr v6, v0

    #@d5
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@da
    div-double/2addr v6, v8

    #@db
    const-wide v8, 0x4003333333333333L    # 2.4

    #@e0
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@e3
    move-result-wide v0

    #@e4
    goto/16 :goto_2
.end method

.method public static XYZToColor(DDD)I
    .locals 12
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    #@0
    .prologue
    .line 596
    const-wide v6, 0x4009ecbfb15b573fL    # 3.2406

    #@5
    mul-double/2addr v6, p0

    #@6
    const-wide v8, -0x400767a0f9096bbaL    # -1.5372

    #@b
    mul-double/2addr v8, p2

    #@c
    add-double/2addr v6, v8

    #@d
    const-wide v8, -0x402016f0068db8bbL    # -0.4986

    #@12
    mul-double v8, v8, p4

    #@14
    add-double/2addr v6, v8

    #@15
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    #@17
    div-double v4, v6, v8

    #@19
    .line 597
    .local v4, "r":D
    const-wide v6, -0x4010fec56d5cfaadL    # -0.9689

    #@1e
    mul-double/2addr v6, p0

    #@1f
    const-wide v8, 0x3ffe0346dc5d6388L    # 1.8758

    #@24
    mul-double/2addr v8, p2

    #@25
    add-double/2addr v6, v8

    #@26
    const-wide v8, 0x3fa53f7ced916873L    # 0.0415

    #@2b
    mul-double v8, v8, p4

    #@2d
    add-double/2addr v6, v8

    #@2e
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    #@30
    div-double v2, v6, v8

    #@32
    .line 598
    .local v2, "g":D
    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    #@37
    mul-double/2addr v6, p0

    #@38
    const-wide v8, -0x4035e353f7ced917L    # -0.204

    #@3d
    mul-double/2addr v8, p2

    #@3e
    add-double/2addr v6, v8

    #@3f
    const-wide v8, 0x3ff0e978d4fdf3b6L    # 1.057

    #@44
    mul-double v8, v8, p4

    #@46
    add-double/2addr v6, v8

    #@47
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    #@49
    div-double v0, v6, v8

    #@4b
    .line 600
    .local v0, "b":D
    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    #@50
    cmpl-double v6, v4, v6

    #@52
    if-lez v6, :cond_0

    #@54
    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    #@59
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@5c
    move-result-wide v6

    #@5d
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@62
    mul-double/2addr v6, v8

    #@63
    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    #@68
    sub-double v4, v6, v8

    #@6a
    .line 601
    :goto_0
    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    #@6f
    cmpl-double v6, v2, v6

    #@71
    if-lez v6, :cond_1

    #@73
    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    #@78
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@7b
    move-result-wide v6

    #@7c
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@81
    mul-double/2addr v6, v8

    #@82
    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    #@87
    sub-double v2, v6, v8

    #@89
    .line 602
    :goto_1
    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    #@8e
    cmpl-double v6, v0, v6

    #@90
    if-lez v6, :cond_2

    #@92
    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    #@97
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@9a
    move-result-wide v6

    #@9b
    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    #@a0
    mul-double/2addr v6, v8

    #@a1
    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    #@a6
    sub-double v0, v6, v8

    #@a8
    .line 605
    :goto_2
    const-wide v6, 0x406fe00000000000L    # 255.0

    #@ad
    mul-double/2addr v6, v4

    #@ae
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    #@b1
    move-result-wide v6

    #@b2
    long-to-int v6, v6

    #@b3
    const/4 v7, 0x0

    #@b4
    const/16 v8, 0xff

    #@b6
    invoke-static {v6, v7, v8}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    #@b9
    move-result v6

    #@ba
    .line 606
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@bf
    mul-double/2addr v8, v2

    #@c0
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    #@c3
    move-result-wide v8

    #@c4
    long-to-int v7, v8

    #@c5
    const/4 v8, 0x0

    #@c6
    const/16 v9, 0xff

    #@c8
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    #@cb
    move-result v7

    #@cc
    .line 607
    const-wide v8, 0x406fe00000000000L    # 255.0

    #@d1
    mul-double/2addr v8, v0

    #@d2
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    #@d5
    move-result-wide v8

    #@d6
    long-to-int v8, v8

    #@d7
    const/4 v9, 0x0

    #@d8
    const/16 v10, 0xff

    #@da
    invoke-static {v8, v9, v10}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    #@dd
    move-result v8

    #@de
    .line 604
    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    #@e1
    move-result v6

    #@e2
    return v6

    #@e3
    .line 600
    :cond_0
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@e8
    mul-double/2addr v4, v6

    #@e9
    goto :goto_0

    #@ea
    .line 601
    :cond_1
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@ef
    mul-double/2addr v2, v6

    #@f0
    goto :goto_1

    #@f1
    .line 602
    :cond_2
    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    #@f6
    mul-double/2addr v0, v6

    #@f7
    goto :goto_2
.end method

.method public static XYZToLAB(DDD[D)V
    .locals 6
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "outLab"    # [D

    #@0
    .prologue
    .line 533
    array-length v0, p6

    #@1
    const/4 v1, 0x3

    #@2
    if-eq v0, v1, :cond_0

    #@4
    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "outLab must have a length of 3."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 536
    :cond_0
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    #@12
    div-double v0, p0, v0

    #@14
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    #@17
    move-result-wide p0

    #@18
    .line 537
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    #@1a
    div-double v0, p2, v0

    #@1c
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    #@1f
    move-result-wide p2

    #@20
    .line 538
    const-wide v0, 0x405b3883126e978dL    # 108.883

    #@25
    div-double v0, p4, v0

    #@27
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    #@2a
    move-result-wide p4

    #@2b
    .line 539
    const-wide/16 v0, 0x0

    #@2d
    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    #@2f
    mul-double/2addr v2, p2

    #@30
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    #@32
    sub-double/2addr v2, v4

    #@33
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@36
    move-result-wide v0

    #@37
    const/4 v2, 0x0

    #@38
    aput-wide v0, p6, v2

    #@3a
    .line 540
    sub-double v0, p0, p2

    #@3c
    const-wide v2, 0x407f400000000000L    # 500.0

    #@41
    mul-double/2addr v0, v2

    #@42
    const/4 v2, 0x1

    #@43
    aput-wide v0, p6, v2

    #@45
    .line 541
    sub-double v0, p2, p4

    #@47
    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    #@49
    mul-double/2addr v0, v2

    #@4a
    const/4 v2, 0x2

    #@4b
    aput-wide v0, p6, v2

    #@4d
    .line 532
    return-void
.end method

.method public static calculateContrast(II)D
    .locals 8
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    #@0
    .prologue
    const/16 v5, 0xff

    #@2
    const-wide v6, 0x3fa999999999999aL    # 0.05

    #@7
    .line 407
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@a
    move-result v4

    #@b
    if-eq v4, v5, :cond_0

    #@d
    .line 408
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v6, "background can not be translucent: #"

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    .line 408
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v4

    #@2b
    .line 411
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@2e
    move-result v4

    #@2f
    if-ge v4, v5, :cond_1

    #@31
    .line 413
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    #@34
    move-result p0

    #@35
    .line 416
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    #@38
    move-result-wide v4

    #@39
    add-double v0, v4, v6

    #@3b
    .line 417
    .local v0, "luminance1":D
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    #@3e
    move-result-wide v4

    #@3f
    add-double v2, v4, v6

    #@41
    .line 420
    .local v2, "luminance2":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    #@44
    move-result-wide v4

    #@45
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    #@48
    move-result-wide v6

    #@49
    div-double/2addr v4, v6

    #@4a
    return-wide v4
.end method

.method public static calculateLuminance(I)D
    .locals 6
    .param p0, "color"    # I

    #@0
    .prologue
    .line 393
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    #@3
    move-result-object v0

    #@4
    .line 394
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToXYZ(I[D)V

    #@7
    .line 396
    const/4 v1, 0x1

    #@8
    aget-wide v2, v0, v1

    #@a
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    #@c
    div-double/2addr v2, v4

    #@d
    return-wide v2
.end method

.method public static colorToLAB(I[D)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "outLab"    # [D

    #@0
    .prologue
    .line 430
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@7
    move-result v1

    #@8
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@b
    move-result v2

    #@c
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToLAB(III[D)V

    #@f
    .line 429
    return-void
.end method

.method public static colorToXYZ(I[D)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "outXyz"    # [D

    #@0
    .prologue
    .line 473
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@7
    move-result v1

    #@8
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@b
    move-result v2

    #@c
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToXYZ(III[D)V

    #@f
    .line 472
    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 2
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    #@0
    .prologue
    .line 379
    rsub-int v0, p1, 0xff

    #@2
    rsub-int v1, p0, 0xff

    #@4
    mul-int/2addr v0, v1

    #@5
    div-int/lit16 v0, v0, 0xff

    #@7
    rsub-int v0, v0, 0xff

    #@9
    return v0
.end method

.method public static compositeColors(II)I
    .locals 8
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    #@0
    .prologue
    .line 364
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v2

    #@4
    .line 365
    .local v2, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@7
    move-result v3

    #@8
    .line 366
    .local v3, "fgAlpha":I
    invoke-static {v3, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeAlpha(II)I

    #@b
    move-result v0

    #@c
    .line 368
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    #@f
    move-result v6

    #@10
    .line 369
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    #@13
    move-result v7

    #@14
    .line 368
    invoke-static {v6, v3, v7, v2, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    #@17
    move-result v5

    #@18
    .line 370
    .local v5, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    #@1b
    move-result v6

    #@1c
    .line 371
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    #@1f
    move-result v7

    #@20
    .line 370
    invoke-static {v6, v3, v7, v2, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    #@23
    move-result v4

    #@24
    .line 372
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    #@27
    move-result v6

    #@28
    .line 373
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    #@2b
    move-result v7

    #@2c
    .line 372
    invoke-static {v6, v3, v7, v2, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    #@2f
    move-result v1

    #@30
    .line 375
    .local v1, "b":I
    invoke-static {v0, v5, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    #@33
    move-result v6

    #@34
    return v6
.end method

.method private static compositeComponent(IIIII)I
    .locals 3
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 383
    if-nez p4, :cond_0

    #@3
    return v0

    #@4
    .line 384
    :cond_0
    mul-int/lit16 v0, p0, 0xff

    #@6
    mul-int/2addr v0, p1

    #@7
    mul-int v1, p2, p3

    #@9
    rsub-int v2, p1, 0xff

    #@b
    mul-int/2addr v1, v2

    #@c
    add-int/2addr v0, v1

    #@d
    mul-int/lit16 v1, p4, 0xff

    #@f
    div-int/2addr v0, v1

    #@10
    return v0
.end method

.method private static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    #@0
    .prologue
    .line 628
    if-ge p0, p1, :cond_0

    #@2
    .end local p1    # "low":I
    :goto_0
    return p1

    #@3
    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    #@5
    move p1, p2

    #@6
    goto :goto_0

    #@7
    :cond_1
    move p1, p0

    #@8
    goto :goto_0
.end method

.method private static getTempDouble3Array()[D
    .locals 2

    #@0
    .prologue
    .line 638
    sget-object v1, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [D

    #@8
    .line 639
    .local v0, "result":[D
    if-nez v0, :cond_0

    #@a
    .line 640
    const/4 v1, 0x3

    #@b
    new-array v0, v1, [D

    #@d
    .line 641
    sget-object v1, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    #@f
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@12
    .line 643
    :cond_0
    return-object v0
.end method

.method private static pivotXyzComponent(D)D
    .locals 4
    .param p0, "component"    # D

    #@0
    .prologue
    .line 632
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    #@5
    cmpl-double v0, p0, v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 633
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    #@e
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@11
    move-result-wide v0

    #@12
    .line 632
    :goto_0
    return-wide v0

    #@13
    .line 634
    :cond_0
    const-wide v0, 0x408c3a6666666666L    # 903.3

    #@18
    mul-double/2addr v0, p0

    #@19
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    #@1b
    add-double/2addr v0, v2

    #@1c
    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    #@1e
    div-double/2addr v0, v2

    #@1f
    goto :goto_0
.end method
