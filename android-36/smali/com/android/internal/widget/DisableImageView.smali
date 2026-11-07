.class public Lcom/android/internal/widget/DisableImageView;
.super Landroid/widget/ImageView;
.source "DisableImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/DisableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/DisableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/DisableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 51
    .local v0, "brightnessMatrix":Landroid/graphics/ColorMatrix;
    const/high16 v1, 0x3f000000    # 0.5f

    .line 52
    .local v1, "brightnessF":F
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 54
    .local v2, "brightnessI":I
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    .line 55
    .local v3, "scale":F
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v4

    .line 56
    .local v4, "mat":[F
    const/4 v5, 0x0

    aput v3, v4, v5

    .line 57
    const/4 v5, 0x6

    aput v3, v4, v5

    .line 58
    const/16 v5, 0xc

    aput v3, v4, v5

    .line 59
    const/4 v5, 0x4

    int-to-float v6, v2

    aput v6, v4, v5

    .line 60
    const/16 v5, 0x9

    int-to-float v6, v2

    aput v6, v4, v5

    .line 61
    const/16 v5, 0xe

    int-to-float v6, v2

    aput v6, v4, v5

    .line 63
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 64
    .local v5, "filterMatrix":Landroid/graphics/ColorMatrix;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 65
    invoke-virtual {v5, v0}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 66
    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/DisableImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 67
    return-void
.end method
