.class public Landroid/animation/ArgbEvaluator;
.super Ljava/lang/Object;
.source "ArgbEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# static fields
.field private static final sInstance:Landroid/animation/ArgbEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 24
    new-instance v0, Landroid/animation/ArgbEvaluator;

    #@2
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    #@5
    sput-object v0, Landroid/animation/ArgbEvaluator;->sInstance:Landroid/animation/ArgbEvaluator;

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/animation/ArgbEvaluator;
    .locals 1

    #@0
    .prologue
    .line 35
    sget-object v0, Landroid/animation/ArgbEvaluator;->sInstance:Landroid/animation/ArgbEvaluator;

    #@2
    return-object v0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 55
    check-cast p2, Ljava/lang/Integer;

    #@2
    .end local p2    # "startValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v8

    #@6
    .line 56
    .local v8, "startInt":I
    shr-int/lit8 v10, v8, 0x18

    #@8
    and-int/lit16 v5, v10, 0xff

    #@a
    .line 57
    .local v5, "startA":I
    shr-int/lit8 v10, v8, 0x10

    #@c
    and-int/lit16 v9, v10, 0xff

    #@e
    .line 58
    .local v9, "startR":I
    shr-int/lit8 v10, v8, 0x8

    #@10
    and-int/lit16 v7, v10, 0xff

    #@12
    .line 59
    .local v7, "startG":I
    and-int/lit16 v6, v8, 0xff

    #@14
    .line 61
    .local v6, "startB":I
    check-cast p3, Ljava/lang/Integer;

    #@16
    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v3

    #@1a
    .line 62
    .local v3, "endInt":I
    shr-int/lit8 v10, v3, 0x18

    #@1c
    and-int/lit16 v0, v10, 0xff

    #@1e
    .line 63
    .local v0, "endA":I
    shr-int/lit8 v10, v3, 0x10

    #@20
    and-int/lit16 v4, v10, 0xff

    #@22
    .line 64
    .local v4, "endR":I
    shr-int/lit8 v10, v3, 0x8

    #@24
    and-int/lit16 v2, v10, 0xff

    #@26
    .line 65
    .local v2, "endG":I
    and-int/lit16 v1, v3, 0xff

    #@28
    .line 67
    .local v1, "endB":I
    sub-int v10, v0, v5

    #@2a
    int-to-float v10, v10

    #@2b
    mul-float/2addr v10, p1

    #@2c
    float-to-int v10, v10

    #@2d
    add-int/2addr v10, v5

    #@2e
    shl-int/lit8 v10, v10, 0x18

    #@30
    .line 68
    sub-int v11, v4, v9

    #@32
    int-to-float v11, v11

    #@33
    mul-float/2addr v11, p1

    #@34
    float-to-int v11, v11

    #@35
    add-int/2addr v11, v9

    #@36
    shl-int/lit8 v11, v11, 0x10

    #@38
    .line 67
    or-int/2addr v10, v11

    #@39
    .line 69
    sub-int v11, v2, v7

    #@3b
    int-to-float v11, v11

    #@3c
    mul-float/2addr v11, p1

    #@3d
    float-to-int v11, v11

    #@3e
    add-int/2addr v11, v7

    #@3f
    shl-int/lit8 v11, v11, 0x8

    #@41
    .line 67
    or-int/2addr v10, v11

    #@42
    .line 70
    sub-int v11, v1, v6

    #@44
    int-to-float v11, v11

    #@45
    mul-float/2addr v11, p1

    #@46
    float-to-int v11, v11

    #@47
    add-int/2addr v11, v6

    #@48
    .line 67
    or-int/2addr v10, v11

    #@49
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v10

    #@4d
    return-object v10
.end method
