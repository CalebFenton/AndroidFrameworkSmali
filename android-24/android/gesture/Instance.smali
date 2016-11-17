.class Landroid/gesture/Instance;
.super Ljava/lang/Object;
.source "Instance.java"


# static fields
.field private static final ORIENTATIONS:[F

.field private static final PATCH_SAMPLE_SIZE:I = 0x10

.field private static final SEQUENCE_SAMPLE_SIZE:I = 0x10


# instance fields
.field final id:J

.field final label:Ljava/lang/String;

.field final vector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 29
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [F

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/gesture/Instance;->ORIENTATIONS:[F

    #@9
    .line 24
    return-void

    #@a
    .line 29
    :array_0
    .array-data 4
        0x0
        0x3f490fdb
        0x3fc90fdb
        0x4016cbe4
        0x40490fdb    # (float)Math.PI
        0x0
        -0x40b6f025
        -0x4036f025
        -0x3fe9341c
        -0x3fb6f025
    .end array-data
.end method

.method private constructor <init>(J[FLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "sample"    # [F
    .param p4, "sampleName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-wide p1, p0, Landroid/gesture/Instance;->id:J

    #@5
    .line 46
    iput-object p3, p0, Landroid/gesture/Instance;->vector:[F

    #@7
    .line 47
    iput-object p4, p0, Landroid/gesture/Instance;->label:Ljava/lang/String;

    #@9
    .line 44
    return-void
.end method

.method static createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;
    .locals 4
    .param p0, "sequenceType"    # I
    .param p1, "orientationType"    # I
    .param p2, "gesture"    # Landroid/gesture/Gesture;
    .param p3, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    const/4 v2, 0x2

    #@1
    if-ne p0, v2, :cond_0

    #@3
    .line 76
    invoke-static {p1, p2}, Landroid/gesture/Instance;->temporalSampler(ILandroid/gesture/Gesture;)[F

    #@6
    move-result-object v1

    #@7
    .line 77
    .local v1, "pts":[F
    new-instance v0, Landroid/gesture/Instance;

    #@9
    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    #@c
    move-result-wide v2

    #@d
    invoke-direct {v0, v2, v3, v1, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    #@10
    .line 78
    .local v0, "instance":Landroid/gesture/Instance;
    invoke-direct {v0}, Landroid/gesture/Instance;->normalize()V

    #@13
    .line 83
    :goto_0
    return-object v0

    #@14
    .line 80
    .end local v0    # "instance":Landroid/gesture/Instance;
    .end local v1    # "pts":[F
    :cond_0
    invoke-static {p2}, Landroid/gesture/Instance;->spatialSampler(Landroid/gesture/Gesture;)[F

    #@17
    move-result-object v1

    #@18
    .line 81
    .restart local v1    # "pts":[F
    new-instance v0, Landroid/gesture/Instance;

    #@1a
    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    #@1d
    move-result-wide v2

    #@1e
    invoke-direct {v0, v2, v3, v1, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    #@21
    .restart local v0    # "instance":Landroid/gesture/Instance;
    goto :goto_0
.end method

.method private normalize()V
    .locals 8

    #@0
    .prologue
    .line 51
    iget-object v2, p0, Landroid/gesture/Instance;->vector:[F

    #@2
    .line 52
    .local v2, "sample":[F
    const/4 v4, 0x0

    #@3
    .line 54
    .local v4, "sum":F
    array-length v3, v2

    #@4
    .line 55
    .local v3, "size":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@7
    .line 56
    aget v5, v2, v0

    #@9
    aget v6, v2, v0

    #@b
    mul-float/2addr v5, v6

    #@c
    add-float/2addr v4, v5

    #@d
    .line 55
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 59
    :cond_0
    float-to-double v6, v4

    #@11
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@14
    move-result-wide v6

    #@15
    double-to-float v1, v6

    #@16
    .line 60
    .local v1, "magnitude":F
    const/4 v0, 0x0

    #@17
    :goto_1
    if-ge v0, v3, :cond_1

    #@19
    .line 61
    aget v5, v2, v0

    #@1b
    div-float/2addr v5, v1

    #@1c
    aput v5, v2, v0

    #@1e
    .line 60
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_1

    #@21
    .line 50
    :cond_1
    return-void
.end method

.method private static spatialSampler(Landroid/gesture/Gesture;)[F
    .locals 2
    .param p0, "gesture"    # Landroid/gesture/Gesture;

    #@0
    .prologue
    .line 87
    const/16 v0, 0x10

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private static temporalSampler(ILandroid/gesture/Gesture;)[F
    .locals 14
    .param p0, "orientationType"    # I
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 91
    invoke-virtual {p1}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    #@5
    move-result-object v7

    #@6
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v7

    #@a
    check-cast v7, Landroid/gesture/GestureStroke;

    #@c
    .line 92
    const/16 v8, 0x10

    #@e
    .line 91
    invoke-static {v7, v8}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    #@11
    move-result-object v6

    #@12
    .line 93
    .local v6, "pts":[F
    invoke-static {v6}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    #@15
    move-result-object v1

    #@16
    .line 94
    .local v1, "center":[F
    aget v7, v6, v13

    #@18
    aget v8, v1, v13

    #@1a
    sub-float/2addr v7, v8

    #@1b
    float-to-double v8, v7

    #@1c
    aget v7, v6, v12

    #@1e
    aget v10, v1, v12

    #@20
    sub-float/2addr v7, v10

    #@21
    float-to-double v10, v7

    #@22
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    #@25
    move-result-wide v8

    #@26
    double-to-float v5, v8

    #@27
    .line 96
    .local v5, "orientation":F
    neg-float v0, v5

    #@28
    .line 97
    .local v0, "adjustment":F
    if-eq p0, v13, :cond_1

    #@2a
    .line 98
    sget-object v7, Landroid/gesture/Instance;->ORIENTATIONS:[F

    #@2c
    array-length v2, v7

    #@2d
    .line 99
    .local v2, "count":I
    const/4 v4, 0x0

    #@2e
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    #@30
    .line 100
    sget-object v7, Landroid/gesture/Instance;->ORIENTATIONS:[F

    #@32
    aget v7, v7, v4

    #@34
    sub-float v3, v7, v5

    #@36
    .line 101
    .local v3, "delta":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@39
    move-result v7

    #@3a
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@3d
    move-result v8

    #@3e
    cmpg-float v7, v7, v8

    #@40
    if-gez v7, :cond_0

    #@42
    .line 102
    move v0, v3

    #@43
    .line 99
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@45
    goto :goto_0

    #@46
    .line 107
    .end local v2    # "count":I
    .end local v3    # "delta":F
    .end local v4    # "i":I
    :cond_1
    aget v7, v1, v12

    #@48
    neg-float v7, v7

    #@49
    aget v8, v1, v13

    #@4b
    neg-float v8, v8

    #@4c
    invoke-static {v6, v7, v8}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    #@4f
    .line 108
    invoke-static {v6, v0}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    #@52
    .line 110
    return-object v6
.end method
