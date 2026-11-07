.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;
.super Lcom/android/internal/widget/remotecompose/core/PaintContext;
.source "AndroidPaintContext.java"


# instance fields
.field private blacklist mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field blacklist mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

.field blacklist mCanvas:Landroid/graphics/Canvas;

.field blacklist mNode:Landroid/graphics/RenderNode;

.field blacklist mPaint:Landroid/graphics/Paint;

.field blacklist mPaintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPreviousCanvas:Landroid/graphics/Canvas;

.field blacklist mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetShaderData(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getShaderData(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smorigamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->origamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 70
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    .line 606
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

    .line 74
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 75
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-object v0
.end method

.method private blacklist getPath(IFF)Landroid/graphics/Path;
    .registers 9
    .param p1, "id"    # I
    .param p2, "start"    # F
    .param p3, "end"    # F

    .line 968
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 969
    .local v0, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPath(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 970
    .local v1, "p":Landroid/graphics/Path;
    if-eqz v1, :cond_f

    .line 971
    return-object v1

    .line 973
    :cond_f
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 974
    .local v2, "path":Landroid/graphics/Path;
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v3

    .line 975
    .local v3, "pathData":[F
    if-eqz v3, :cond_24

    .line 976
    invoke-static {v2, v3, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;->genPath(Landroid/graphics/Path;[FFF)V

    .line 977
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v4, p1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPath(ILjava/lang/Object;)V

    .line 980
    :cond_24
    return-object v2
.end method

.method private blacklist getPath(IIFFF)Landroid/graphics/Path;
    .registers 7
    .param p1, "path1Id"    # I
    .param p2, "path2Id"    # I
    .param p3, "tween"    # F
    .param p4, "start"    # F
    .param p5, "end"    # F

    .line 936
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPathArray(IIF)[F

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath([FFF)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPath([FFF)Landroid/graphics/Path;
    .registers 5
    .param p1, "tmp"    # [F
    .param p2, "start"    # F
    .param p3, "end"    # F

    .line 962
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 963
    .local v0, "path":Landroid/graphics/Path;
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;->genPath(Landroid/graphics/Path;[FFF)V

    .line 964
    return-object v0
.end method

.method private blacklist getPathArray(IIF)[F
    .registers 11
    .param p1, "path1Id"    # I
    .param p2, "path2Id"    # I
    .param p3, "tween"    # F

    .line 940
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 941
    .local v0, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_10

    .line 942
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v1

    return-object v1

    .line 944
    :cond_10
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-nez v1, :cond_1d

    .line 945
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v1

    return-object v1

    .line 948
    :cond_1d
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v1

    .line 949
    .local v1, "data1":[F
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v2

    .line 950
    .local v2, "data2":[F
    array-length v3, v2

    new-array v3, v3, [F

    .line 951
    .local v3, "tmp":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2d
    array-length v5, v3

    if-ge v4, v5, :cond_54

    .line 952
    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_4d

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_41

    goto :goto_4d

    .line 955
    :cond_41
    aget v5, v2, v4

    aget v6, v1, v4

    sub-float/2addr v5, v6

    mul-float/2addr v5, p3

    aget v6, v1, v4

    add-float/2addr v5, v6

    aput v5, v3, v4

    goto :goto_51

    .line 953
    :cond_4d
    :goto_4d
    aget v5, v1, v4

    aput v5, v3, v4

    .line 951
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 958
    .end local v4    # "i":I
    :cond_54
    return-object v3
.end method

.method private blacklist getShaderData(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .registers 3
    .param p1, "id"    # I

    .line 989
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    return-object v0
.end method

.method public static blacklist origamiToBlendMode(I)Landroid/graphics/BlendMode;
    .registers 2
    .param p0, "mode"    # I

    .line 541
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_5e

    .line 603
    return-object v0

    .line 601
    :pswitch_5
    return-object v0

    .line 599
    :pswitch_6
    sget-object v0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    return-object v0

    .line 597
    :pswitch_9
    sget-object v0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    return-object v0

    .line 595
    :pswitch_c
    sget-object v0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    return-object v0

    .line 593
    :pswitch_f
    sget-object v0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    return-object v0

    .line 591
    :pswitch_12
    sget-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    return-object v0

    .line 589
    :pswitch_15
    sget-object v0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    return-object v0

    .line 587
    :pswitch_18
    sget-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    return-object v0

    .line 585
    :pswitch_1b
    sget-object v0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    return-object v0

    .line 583
    :pswitch_1e
    sget-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    return-object v0

    .line 581
    :pswitch_21
    sget-object v0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    return-object v0

    .line 579
    :pswitch_24
    sget-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    return-object v0

    .line 577
    :pswitch_27
    sget-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 575
    :pswitch_2a
    sget-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 573
    :pswitch_2d
    sget-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    return-object v0

    .line 571
    :pswitch_30
    sget-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object v0

    .line 569
    :pswitch_33
    sget-object v0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object v0

    .line 567
    :pswitch_36
    sget-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object v0

    .line 565
    :pswitch_39
    sget-object v0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    return-object v0

    .line 563
    :pswitch_3c
    sget-object v0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    return-object v0

    .line 561
    :pswitch_3f
    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object v0

    .line 559
    :pswitch_42
    sget-object v0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    return-object v0

    .line 557
    :pswitch_45
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    return-object v0

    .line 555
    :pswitch_48
    sget-object v0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    return-object v0

    .line 553
    :pswitch_4b
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    return-object v0

    .line 551
    :pswitch_4e
    sget-object v0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    return-object v0

    .line 549
    :pswitch_51
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    return-object v0

    .line 547
    :pswitch_54
    sget-object v0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    return-object v0

    .line 545
    :pswitch_57
    sget-object v0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    return-object v0

    .line 543
    :pswitch_5a
    sget-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    return-object v0

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist origamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "mode"    # I

    .line 499
    packed-switch p0, :pswitch_data_3c

    .line 537
    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 535
    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 533
    :pswitch_9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 531
    :pswitch_c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 529
    :pswitch_f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 527
    :pswitch_12
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 525
    :pswitch_15
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 523
    :pswitch_18
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 521
    :pswitch_1b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 519
    :pswitch_1e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 517
    :pswitch_21
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 515
    :pswitch_24
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 513
    :pswitch_27
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 511
    :pswitch_2a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 509
    :pswitch_2d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 507
    :pswitch_30
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 505
    :pswitch_33
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 503
    :pswitch_36
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 501
    :pswitch_39
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_3
        :pswitch_3
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .registers 3
    .param p1, "paintData"    # Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 824
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedPaintChanges:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->applyPaintChange(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)V

    .line 825
    return-void
.end method

.method public blacklist clipPath(II)V
    .registers 5
    .param p1, "pathId"    # I
    .param p2, "regionOp"    # I

    .line 897
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v0

    .line 898
    .local v0, "path":Landroid/graphics/Path;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_10

    .line 899
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_15

    .line 901
    :cond_10
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 903
    :goto_15
    return-void
.end method

.method public blacklist clipRect(FFFF)V
    .registers 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 867
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 868
    return-void
.end method

.method public blacklist combinePath(IIIB)V
    .registers 11
    .param p1, "out"    # I
    .param p2, "path1"    # I
    .param p3, "path2"    # I
    .param p4, "operation"    # B

    .line 914
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v2

    .line 915
    .local v2, "p1":Landroid/graphics/Path;
    invoke-direct {p0, p3, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v0

    .line 916
    .local v0, "p2":Landroid/graphics/Path;
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Path$Op;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    sget-object v4, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    aput-object v4, v1, v3

    .line 923
    .local v1, "op":[Landroid/graphics/Path$Op;
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 924
    .local v3, "p":Landroid/graphics/Path;
    aget-object v4, v1, p4

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 926
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v4, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 927
    .local v4, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v5, v4, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v5, p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPath(ILjava/lang/Object;)V

    .line 928
    return-void
.end method

.method public blacklist drawArc(FFFFFF)V
    .registers 16
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 296
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .end local p5    # "startAngle":F
    .end local p6    # "sweepAngle":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    .local v5, "startAngle":F
    .local v6, "sweepAngle":F
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 297
    return-void
.end method

.method public blacklist drawBitmap(IFFFF)V
    .registers 12
    .param p1, "id"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 308
    .local v0, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 309
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 310
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 311
    .local v2, "src":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 312
    .local v3, "dst":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 314
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "src":Landroid/graphics/Rect;
    .end local v3    # "dst":Landroid/graphics/RectF;
    :cond_2e
    return-void
.end method

.method public blacklist drawBitmap(IIIIIIIIII)V
    .registers 27
    .param p1, "imageId"    # I
    .param p2, "srcLeft"    # I
    .param p3, "srcTop"    # I
    .param p4, "srcRight"    # I
    .param p5, "srcBottom"    # I
    .param p6, "dstLeft"    # I
    .param p7, "dstTop"    # I
    .param p8, "dstRight"    # I
    .param p9, "dstBottom"    # I
    .param p10, "cdId"    # I

    .line 125
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 126
    .local v2, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v3, v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 127
    iget-object v3, v2, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 128
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/Rect;

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v15, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v5, v10, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4a

    .line 126
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3a
    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    .line 134
    :goto_4a
    return-void
.end method

.method public blacklist drawCircle(FFF)V
    .registers 6
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F

    .line 318
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 319
    return-void
.end method

.method public blacklist drawComplexText(Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;)V
    .registers 4
    .param p1, "computedTextLayout"    # Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    .line 486
    if-nez p1, :cond_3

    .line 487
    return-void

    .line 489
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;->get()Landroid/text/StaticLayout;

    move-result-object v0

    .line 490
    .local v0, "staticLayout":Landroid/text/StaticLayout;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 491
    return-void
.end method

.method public blacklist drawLine(FFFF)V
    .registers 11
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 323
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "x1":F
    .end local p2    # "y1":F
    .end local p3    # "x2":F
    .end local p4    # "y2":F
    .local v1, "x1":F
    .local v2, "y1":F
    .local v3, "x2":F
    .local v4, "y2":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 324
    return-void
.end method

.method public blacklist drawOval(FFFF)V
    .registers 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 328
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 329
    return-void
.end method

.method public blacklist drawPath(IFF)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "start"    # F
    .param p3, "end"    # F

    .line 333
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 334
    return-void
.end method

.method public blacklist drawRect(FFFF)V
    .registers 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 339
    return-void
.end method

.method public blacklist drawRoundRect(FFFFFF)V
    .registers 15
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radiusX"    # F
    .param p6, "radiusY"    # F

    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .end local p5    # "radiusX":F
    .end local p6    # "radiusY":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    .local v5, "radiusX":F
    .local v6, "radiusY":F
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 361
    return-void
.end method

.method public blacklist drawSector(FFFFFF)V
    .registers 16
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .end local p5    # "startAngle":F
    .end local p6    # "sweepAngle":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    .local v5, "startAngle":F
    .local v6, "sweepAngle":F
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 303
    return-void
.end method

.method public blacklist drawTextOnPath(IIFF)V
    .registers 11
    .param p1, "textId"    # I
    .param p2, "pathId"    # I
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F

    .line 365
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, v2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v3, p3

    move v4, p4

    .end local p3    # "hOffset":F
    .end local p4    # "vOffset":F
    .local v3, "hOffset":F
    .local v4, "vOffset":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 366
    return-void
.end method

.method public blacklist drawTextRun(IIIIIFFZ)V
    .registers 12
    .param p1, "textID"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "rtl"    # Z

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "textToPaint":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 469
    return-void

    .line 471
    :cond_7
    const/4 v1, -0x1

    if-ne p3, v1, :cond_11

    .line 472
    if-eqz p2, :cond_20

    .line 473
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 475
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_1c

    .line 476
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 478
    :cond_1c
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 481
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, p6, p7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 482
    return-void
.end method

.method public blacklist drawTweenPath(IIFFF)V
    .registers 10
    .param p1, "path1Id"    # I
    .param p2, "path2Id"    # I
    .param p3, "tween"    # F
    .param p4, "start"    # F
    .param p5, "end"    # F

    .line 495
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPath(IIFFF)Landroid/graphics/Path;

    move-result-object v1

    move v2, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "path1Id":I
    .local v2, "end":F
    .local p2, "path1Id":I
    .local p3, "path2Id":I
    .local p4, "tween":F
    .local p5, "start":F
    iget-object v3, p1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 496
    return-void
.end method

.method public blacklist endGraphicsLayer()V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 279
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->enableZ()V

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->disableZ()V

    .line 285
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 286
    return-void
.end method

.method public blacklist getCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public blacklist getText(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .line 985
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTextBounds(IIII[F)V
    .registers 10
    .param p1, "textId"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I
    .param p5, "bounds"    # [F

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "str":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq p3, v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_11

    .line 374
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    .line 377
    :cond_11
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    if-nez v1, :cond_1d

    .line 378
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 380
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 381
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p2, p3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 382
    and-int/lit8 v1, p4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_3d

    .line 383
    const/4 v1, 0x0

    aput v1, p5, v2

    .line 384
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    aput v1, p5, v3

    goto :goto_5e

    .line 386
    :cond_3d
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, p5, v2

    .line 387
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_57

    .line 388
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p5, v3

    goto :goto_5e

    .line 390
    :cond_57
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, p5, v3

    .line 394
    :goto_5e
    and-int/lit8 v1, p4, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_7b

    .line 395
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, p5, v3

    .line 396
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCachedFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, p5, v2

    goto :goto_89

    .line 398
    :cond_7b
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, p5, v3

    .line 399
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, p5, v2

    .line 401
    :goto_89
    return-void
.end method

.method public blacklist layoutComplexText(IIIIIIFI)Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;
    .registers 16
    .param p1, "textId"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "alignment"    # I
    .param p5, "overflow"    # I
    .param p6, "maxLines"    # I
    .param p7, "maxWidth"    # F
    .param p8, "flags"    # I

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 415
    const/4 v1, 0x0

    return-object v1

    .line 417
    :cond_8
    const/4 v1, -0x1

    if-eq p3, v1, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p3, v1, :cond_15

    .line 418
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    .line 421
    :cond_15
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 422
    .local v1, "textPaint":Landroid/text/TextPaint;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 423
    float-to-int v2, p7

    .line 424
    invoke-static {v0, p2, p3, v1, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 425
    .local v2, "staticLayoutBuilder":Landroid/text/StaticLayout$Builder;
    packed-switch p4, :pswitch_data_6a

    .line 434
    :pswitch_27
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    goto :goto_39

    .line 431
    :pswitch_2d
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 432
    goto :goto_39

    .line 428
    :pswitch_33
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 429
    nop

    .line 436
    :goto_39
    packed-switch p5, :pswitch_data_78

    goto :goto_4f

    .line 441
    :pswitch_3d
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 442
    goto :goto_4f

    .line 444
    :pswitch_43
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 445
    goto :goto_4f

    .line 438
    :pswitch_49
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 439
    nop

    .line 448
    :goto_4f
    invoke-virtual {v2, p6}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 449
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 451
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    .line 452
    .local v3, "staticLayout":Landroid/text/StaticLayout;
    new-instance v4, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;

    .line 453
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v3, v5, v6}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidComputedTextLayout;-><init>(Landroid/text/StaticLayout;FF)V

    .line 452
    return-object v4

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_27
        :pswitch_33
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x3
        :pswitch_49
        :pswitch_43
        :pswitch_3d
    .end packed-switch
.end method

.method public blacklist matrixRestore()V
    .registers 2

    .line 862
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 863
    return-void
.end method

.method public blacklist matrixRotate(FFF)V
    .registers 5
    .param p1, "rotate"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .line 848
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 849
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_11

    .line 851
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 853
    :goto_11
    return-void
.end method

.method public blacklist matrixSave()V
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 858
    return-void
.end method

.method public blacklist matrixScale(FFFF)V
    .registers 6
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 829
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 830
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_11

    .line 832
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 834
    :goto_11
    return-void
.end method

.method public blacklist matrixSkew(FF)V
    .registers 4
    .param p1, "skewX"    # F
    .param p2, "skewY"    # F

    .line 843
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 844
    return-void
.end method

.method public blacklist matrixTranslate(FF)V
    .registers 4
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .line 838
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 839
    return-void
.end method

.method public blacklist replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .registers 3
    .param p1, "paintBundle"    # Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 353
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 355
    return-void
.end method

.method public blacklist reset()V
    .registers 2

    .line 932
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 933
    return-void
.end method

.method public blacklist restore()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 98
    return-void
.end method

.method public blacklist restorePaint()V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    .line 349
    return-void
.end method

.method public blacklist roundedClipRect(FFFFFF)V
    .registers 15
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "topStart"    # F
    .param p4, "topEnd"    # F
    .param p5, "bottomStart"    # F
    .param p6, "bottomEnd"    # F

    .line 878
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v1, v0

    .line 879
    .local v1, "roundedPath":Landroid/graphics/Path;
    const/16 v0, 0x8

    new-array v6, v0, [F

    const/4 v0, 0x0

    aput p3, v6, v0

    const/4 v0, 0x1

    aput p3, v6, v0

    const/4 v0, 0x2

    aput p4, v6, v0

    const/4 v0, 0x3

    aput p4, v6, v0

    const/4 v0, 0x4

    aput p6, v6, v0

    const/4 v0, 0x5

    aput p6, v6, v0

    const/4 v0, 0x6

    aput p5, v6, v0

    const/4 v0, 0x7

    aput p5, v6, v0

    .line 891
    .local v6, "radii":[F
    const/4 v3, 0x0

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    move v4, p1

    move v5, p2

    .end local p1    # "width":F
    .end local p2    # "height":F
    .local v4, "width":F
    .local v5, "height":F
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 892
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 893
    return-void
.end method

.method public blacklist save()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 88
    return-void
.end method

.method public blacklist saveLayer(FFFF)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    add-float v3, p1, p3

    add-float v4, p2, p4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    move v1, p1

    move v2, p2

    .end local p1    # "x":F
    .end local p2    # "y":F
    .local v1, "x":F
    .local v2, "y":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 93
    return-void
.end method

.method public blacklist savePaint()V
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaintList:Ljava/util/List;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public blacklist scale(FF)V
    .registers 4
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 139
    return-void
.end method

.method public blacklist setCanvas(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 82
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 83
    return-void
.end method

.method public blacklist setGraphicsLayer(Ljava/util/HashMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    if-nez v0, :cond_5

    .line 152
    return-void

    .line 154
    :cond_5
    const/4 v0, 0x0

    .line 155
    .local v0, "hasBlurEffect":Z
    const/4 v1, 0x0

    .line 156
    .local v1, "hasOutline":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_117

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 157
    .local v3, "key":Ljava/lang/Integer;
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 158
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    packed-switch v7, :pswitch_data_20c

    :pswitch_28
    goto/16 :goto_115

    .line 190
    :pswitch_2a
    const/4 v1, 0x1

    .line 191
    goto/16 :goto_115

    .line 208
    :pswitch_2d
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_37

    goto :goto_38

    :cond_37
    move v4, v5

    :goto_38
    move v0, v4

    .end local v0    # "hasBlurEffect":Z
    .local v4, "hasBlurEffect":Z
    goto/16 :goto_115

    .line 205
    .end local v4    # "hasBlurEffect":Z
    .restart local v0    # "hasBlurEffect":Z
    :pswitch_3b
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setAmbientShadowColor(I)Z

    .line 206
    goto/16 :goto_115

    .line 202
    :pswitch_49
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setSpotShadowColor(I)Z

    .line 203
    goto/16 :goto_115

    .line 199
    :pswitch_57
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setCameraDistance(F)Z

    .line 200
    goto/16 :goto_115

    .line 196
    :pswitch_65
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    .line 197
    goto/16 :goto_115

    .line 193
    :pswitch_73
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setElevation(F)Z

    .line 194
    goto/16 :goto_115

    .line 187
    :pswitch_81
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setTranslationZ(F)Z

    .line 188
    goto/16 :goto_115

    .line 184
    :pswitch_8f
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setTranslationY(F)Z

    .line 185
    goto/16 :goto_115

    .line 181
    :pswitch_9d
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setTranslationX(F)Z

    .line 182
    goto :goto_115

    .line 178
    :pswitch_aa
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v7}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setPivotY(F)Z

    .line 179
    goto :goto_115

    .line 175
    :pswitch_bf
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v7}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setPivotX(F)Z

    .line 176
    goto :goto_115

    .line 172
    :pswitch_d4
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    .line 173
    goto :goto_115

    .line 169
    :pswitch_e1
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setRotationY(F)Z

    .line 170
    goto :goto_115

    .line 166
    :pswitch_ee
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setRotationX(F)Z

    .line 167
    goto :goto_115

    .line 163
    :pswitch_fb
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    .line 164
    goto :goto_115

    .line 160
    :pswitch_108
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    move-object v5, v6

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    .line 161
    nop

    .line 211
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_115
    goto/16 :goto_f

    .line 212
    :cond_117
    if-eqz v1, :cond_1b2

    .line 213
    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    .line 214
    .local v2, "outline":Landroid/graphics/Outline;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 215
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 216
    .local v3, "oShape":Ljava/lang/Object;
    if-eqz v3, :cond_1ad

    .line 217
    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 218
    .local v6, "oShapeRadius":Ljava/lang/Object;
    move-object v7, v3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 219
    .local v7, "type":I
    if-nez v7, :cond_152

    .line 220
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v4

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v8}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v8

    invoke-virtual {v2, v5, v5, v4, v8}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_1ad

    .line 221
    :cond_152
    if-ne v7, v4, :cond_182

    .line 222
    if-eqz v6, :cond_172

    .line 223
    move-object v4, v6

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 224
    .local v4, "radius":F
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 225
    invoke-virtual {v9}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v10}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v10

    invoke-direct {v8, v5, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 224
    invoke-virtual {v2, v8, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 226
    .end local v4    # "radius":F
    goto :goto_1ad

    .line 227
    :cond_172
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v4

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v8}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v8

    invoke-virtual {v2, v5, v5, v4, v8}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_1ad

    .line 229
    :cond_182
    const/4 v4, 0x2

    if-ne v7, v4, :cond_1ad

    .line 230
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v4

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v8}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    .line 231
    .restart local v4    # "radius":F
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 232
    invoke-virtual {v9}, Landroid/graphics/RenderNode;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v10}, Landroid/graphics/RenderNode;->getHeight()I

    move-result v10

    invoke-direct {v8, v5, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    invoke-virtual {v2, v8, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 235
    .end local v4    # "radius":F
    .end local v6    # "oShapeRadius":Ljava/lang/Object;
    .end local v7    # "type":I
    :cond_1ad
    :goto_1ad
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, v2}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 237
    .end local v2    # "outline":Landroid/graphics/Outline;
    .end local v3    # "oShape":Ljava/lang/Object;
    :cond_1b2
    if-eqz v0, :cond_20b

    .line 238
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 239
    .local v2, "oBlurRadiusX":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 240
    .local v3, "blurRadiusX":F
    if-eqz v2, :cond_1c8

    .line 241
    move-object v4, v2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 243
    :cond_1c8
    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 244
    .local v4, "oBlurRadiusY":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 245
    .local v5, "blurRadiusY":F
    if-eqz v4, :cond_1dc

    .line 246
    move-object v6, v4

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 248
    :cond_1dc
    const/4 v6, 0x0

    .line 249
    .local v6, "blurTileMode":I
    const/16 v7, 0x13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 250
    .local v7, "oBlurTileMode":Ljava/lang/Object;
    if-eqz v7, :cond_1f0

    .line 251
    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 253
    :cond_1f0
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 254
    .local v8, "tileMode":Landroid/graphics/Shader$TileMode;
    packed-switch v6, :pswitch_data_23a

    goto :goto_202

    .line 259
    :pswitch_1f6
    sget-object v8, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    .line 261
    goto :goto_202

    .line 263
    :pswitch_1f9
    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 264
    goto :goto_202

    .line 266
    :pswitch_1fc
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_202

    .line 256
    :pswitch_1ff
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 257
    nop

    .line 270
    :goto_202
    invoke-static {v3, v5, v8}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v9

    .line 271
    .local v9, "effect":Landroid/graphics/RenderEffect;
    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v10, v9}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    .line 273
    .end local v2    # "oBlurRadiusX":Ljava/lang/Object;
    .end local v3    # "blurRadiusX":F
    .end local v4    # "oBlurRadiusY":Ljava/lang/Object;
    .end local v5    # "blurRadiusY":F
    .end local v6    # "blurTileMode":I
    .end local v7    # "oBlurTileMode":Ljava/lang/Object;
    .end local v8    # "tileMode":Landroid/graphics/Shader$TileMode;
    .end local v9    # "effect":Landroid/graphics/RenderEffect;
    :cond_20b
    return-void

    :pswitch_data_20c
    .packed-switch 0x0
        :pswitch_108
        :pswitch_fb
        :pswitch_ee
        :pswitch_e1
        :pswitch_d4
        :pswitch_bf
        :pswitch_aa
        :pswitch_9d
        :pswitch_8f
        :pswitch_81
        :pswitch_73
        :pswitch_65
        :pswitch_57
        :pswitch_28
        :pswitch_49
        :pswitch_3b
        :pswitch_2d
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_2a
    .end packed-switch

    :pswitch_data_23a
    .packed-switch 0x0
        :pswitch_1ff
        :pswitch_1fc
        :pswitch_1f9
        :pswitch_1f6
    .end packed-switch
.end method

.method public blacklist startGraphicsLayer(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 143
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "layer"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPreviousCanvas:Landroid/graphics/Canvas;

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    .line 147
    return-void
.end method

.method public blacklist translate(FF)V
    .registers 4
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 291
    return-void
.end method

.method public blacklist tweenPath(IIIF)V
    .registers 8
    .param p1, "out"    # I
    .param p2, "path1"    # I
    .param p3, "path2"    # I
    .param p4, "tween"    # F

    .line 907
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->getPathArray(IIF)[F

    move-result-object v0

    .line 908
    .local v0, "p":[F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    check-cast v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    .line 909
    .local v1, "androidContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    iget-object v2, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPathData(I[F)V

    .line 910
    return-void
.end method
