.class public Lcom/android/internal/util/UserIcons;
.super Ljava/lang/Object;
.source "UserIcons.java"


# static fields
.field private static final USER_ICON_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    #@9
    .line 31
    return-void

    #@a
    .line 33
    :array_0
    .array-data 4
        0x106005b
        0x106005c
        0x106005d
        0x106005e
        0x106005f
        0x1060060
        0x1060061
        0x1060062
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 48
    if-nez p0, :cond_0

    #@4
    .line 49
    return-object v4

    #@5
    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@8
    move-result v3

    #@9
    .line 52
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@c
    move-result v2

    #@d
    .line 53
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@f
    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@12
    move-result-object v0

    #@13
    .line 54
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    #@15
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@18
    .line 55
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    .line 56
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1e
    .line 57
    return-object v0
.end method

.method public static getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "userId"    # I
    .param p1, "light"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 68
    if-eqz p1, :cond_1

    #@4
    const v0, 0x1060064

    #@7
    .line 69
    .local v0, "colorResId":I
    :goto_0
    const/16 v2, -0x2710

    #@9
    if-eq p0, v2, :cond_0

    #@b
    .line 71
    sget-object v2, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    #@d
    sget-object v3, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    #@f
    array-length v3, v3

    #@10
    rem-int v3, p0, v3

    #@12
    aget v0, v2, v3

    #@14
    .line 73
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@17
    move-result-object v2

    #@18
    const v3, 0x10802f2

    #@1b
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v1

    #@23
    .line 74
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    #@2a
    move-result v2

    #@2b
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@2d
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@30
    .line 75
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@33
    move-result v2

    #@34
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@37
    move-result v3

    #@38
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@3b
    .line 76
    return-object v1

    #@3c
    .line 68
    .end local v0    # "colorResId":I
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const v0, 0x1060063

    #@3f
    .restart local v0    # "colorResId":I
    goto :goto_0
.end method
