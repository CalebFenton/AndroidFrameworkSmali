.class public final Landroid/util/LauncherIcons;
.super Ljava/lang/Object;
.source "LauncherIcons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LauncherIcons$ShadowDrawable;
    }
.end annotation


# static fields
.field private static final greylist-max-o AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final greylist-max-o ICON_SIZE_BLUR_FACTOR:F = 0.010416667f

.field private static final greylist-max-o ICON_SIZE_KEY_SHADOW_DELTA_FACTOR:F = 0.020833334f

.field private static final greylist-max-o KEY_SHADOW_ALPHA:I = 0x3d


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final greylist-max-o mIconSize:I

.field private final greylist-max-o mRes:Landroid/content/res/Resources;

.field private final greylist-max-o mShadowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/util/LauncherIcons;->mRes:Landroid/content/res/Resources;

    .line 52
    iget-object v0, p0, Landroid/util/LauncherIcons;->mRes:Landroid/content/res/Resources;

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/util/LauncherIcons;->mIconSize:I

    .line 53
    iput-object p1, p0, Landroid/util/LauncherIcons;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private greylist-max-o getShadowBitmap(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "d"    # Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 65
    iget v0, p0, Landroid/util/LauncherIcons;->mIconSize:I

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    .local v0, "shadowSize":I
    iget-object v1, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 67
    :try_start_d
    iget-object v2, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 68
    .local v2, "shadow":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_19

    .line 69
    monitor-exit v1

    return-object v2

    .line 71
    .end local v2    # "shadow":Landroid/graphics/Bitmap;
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_77

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 75
    const v2, 0x3c2aaaab

    int-to-float v3, v0

    mul-float/2addr v3, v2

    .line 76
    .local v3, "blur":F
    const v2, 0x3caaaaab

    int-to-float v4, v0

    mul-float/2addr v4, v2

    .line 78
    .local v4, "keyShadowDistance":F
    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v3, v5

    add-float/2addr v2, v6

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 79
    .local v2, "bitmapSize":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 81
    .local v6, "shadow":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v7, "canvas":Landroid/graphics/Canvas;
    div-float v5, v4, v5

    add-float/2addr v5, v3

    invoke-virtual {v7, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    new-instance v5, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 85
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    const/high16 v1, 0x1e000000

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8, v8, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 92
    invoke-virtual {v7, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    const/high16 v1, 0x3d000000    # 0.03125f

    invoke-virtual {v5, v3, v8, v8, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    iget-object v8, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v8

    .line 98
    :try_start_6d
    iget-object v1, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    monitor-exit v8

    .line 100
    return-object v6

    .line 99
    :catchall_74
    move-exception v1

    monitor-exit v8
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_74

    throw v1

    .line 71
    .end local v2    # "bitmapSize":I
    .end local v3    # "blur":F
    .end local v4    # "keyShadowDistance":F
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "shadow":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    :catchall_77
    move-exception v2

    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v2
.end method


# virtual methods
.method public blacklist getBadgeDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "badgeForeground"    # Landroid/graphics/drawable/Drawable;
    .param p2, "backgroundColor"    # I

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .registers 12
    .param p1, "base"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeForeground"    # Landroid/graphics/drawable/Drawable;
    .param p3, "backgroundColor"    # I

    .line 110
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "overlayableRes":Landroid/content/res/Resources;
    const v1, 0x108040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    .local v1, "badgeShadow":Landroid/graphics/drawable/Drawable;
    const v2, 0x108040b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 120
    .local v2, "badgeColor":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 122
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_38

    .line 123
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, v6

    aput-object v2, v3, v5

    aput-object p2, v3, v4

    goto :goto_44

    .line 124
    :cond_38
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v7, v6

    aput-object v1, v7, v5

    aput-object v2, v7, v4

    aput-object p2, v7, v3

    move-object v3, v7

    :goto_44
    nop

    .line 125
    .local v3, "drawables":[Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v4
.end method

.method public greylist-max-o wrapIconDrawableWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 57
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v0, :cond_5

    .line 58
    return-object p1

    .line 60
    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p0, v0}, Landroid/util/LauncherIcons;->getShadowBitmap(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "shadow":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/util/LauncherIcons$ShadowDrawable;

    invoke-direct {v1, v0, p1}, Landroid/util/LauncherIcons$ShadowDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
