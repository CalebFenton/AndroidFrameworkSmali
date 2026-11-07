.class public Lcom/android/internal/widget/BigPictureNotificationImageView;
.super Landroid/widget/ImageView;
.source "BigPictureNotificationImageView.java"

# interfaces
.implements Lcom/android/internal/widget/NotificationDrawableConsumer;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mIconManager:Lcom/android/internal/widget/NotificationIconManager;

.field private final blacklist mMaximumDrawableHeight:I

.field private final blacklist mMaximumDrawableWidth:I


# direct methods
.method public static synthetic blacklist $r8$lambda$9D-x-0XYX8QSYzCNvwGzHUxg1m8(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->lambda$setImageURIAsync$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v1_dWjmdF0BNqawVnDiFf6Jxn6A(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->lambda$setImageIconAsync$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/android/internal/widget/BigPictureNotificationImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/BigPictureNotificationImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 70
    .local v0, "isLowRam":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    if-eqz v0, :cond_11

    const v2, 0x10502a3

    goto :goto_14

    .line 72
    :cond_11
    const v2, 0x10502a2

    .line 70
    :goto_14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 74
    if-eqz v0, :cond_24

    const v2, 0x10502a1

    goto :goto_27

    .line 75
    :cond_24
    const v2, 0x10502a0

    .line 73
    :goto_27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    .line 76
    return-void
.end method

.method private synthetic blacklist lambda$setImageIconAsync$1(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic blacklist lambda$setImageURIAsync$0(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private blacklist loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 147
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    iget v3, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 151
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_11

    .line 152
    return-object v1

    .line 155
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_1a

    .line 157
    return-object v1

    .line 160
    :cond_1a
    sget-object v2, Lcom/android/internal/widget/BigPictureNotificationImageView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load drawable for icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-object v0
.end method

.method private blacklist loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 141
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableWidth:I

    iget v2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mMaximumDrawableHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist setIconManager(Lcom/android/internal/widget/NotificationIconManager;)V
    .registers 2
    .param p1, "iconManager"    # Lcom/android/internal/widget/NotificationIconManager;

    .line 88
    iput-object p1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mIconManager:Lcom/android/internal/widget/NotificationIconManager;

    .line 89
    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 126
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 127
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_24

    .line 128
    invoke-static {}, Landroid/widget/flags/Flags;->bigPictureStyleDiscardEmptyIconBitmapDrawables()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 129
    sget-object v1, Lcom/android/internal/widget/BigPictureNotificationImageView;->TAG:Ljava/lang/String;

    const-string v2, "discarding BitmapDrawable with null Bitmap (invalid image file?)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 p1, 0x0

    goto :goto_24

    .line 132
    :cond_1c
    sget-object v1, Lcom/android/internal/widget/BigPictureNotificationImageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setting BitmapDrawable with null Bitmap (invalid image file?)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_24
    :goto_24
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    return-void
.end method

.method public whitelist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mIconManager:Lcom/android/internal/widget/NotificationIconManager;

    if-eqz v0, :cond_e

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mIconManager:Lcom/android/internal/widget/NotificationIconManager;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/NotificationIconManager;->updateIcon(Lcom/android/internal/widget/NotificationDrawableConsumer;Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    return-void

    .line 111
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    return-void
.end method

.method public blacklist setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mIconManager:Lcom/android/internal/widget/NotificationIconManager;

    if-eqz v0, :cond_b

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView;->mIconManager:Lcom/android/internal/widget/NotificationIconManager;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/NotificationIconManager;->updateIcon(Lcom/android/internal/widget/NotificationDrawableConsumer;Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 120
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public whitelist setImageURI(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public blacklist setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
