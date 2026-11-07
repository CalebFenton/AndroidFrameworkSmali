.class public Lcom/android/internal/widget/NotificationRowIconView;
.super Lcom/android/internal/widget/CachingIconView;
.source "NotificationRowIconView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;
    }
.end annotation


# instance fields
.field private blacklist mAppIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mIconProvider:Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;

.field private blacklist mOriginalBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mOriginalBackgroundColor:I

.field private blacklist mOriginalIconColor:I

.field private blacklist mOriginalPadding:Landroid/graphics/Rect;


# direct methods
.method public static synthetic blacklist $r8$lambda$lbVOC83Vspx21gXd6LAQ5aw_JtY(Lcom/android/internal/widget/NotificationRowIconView;Landroid/graphics/drawable/Icon;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationRowIconView;->lambda$setImageIconAsync$2(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wX1zL1rnXaKiuEEk5_XFFAXFUGY(Lcom/android/internal/widget/NotificationRowIconView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->lambda$setImageIconAsync$1()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    .line 44
    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    .line 46
    iput v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    .line 44
    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    .line 46
    iput v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    .line 44
    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    .line 46
    iput v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/CachingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    .line 44
    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    .line 46
    iput v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    .line 65
    return-void
.end method

.method private blacklist adjustViewForAppIcon()V
    .registers 1

    .line 136
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->removePadding()V

    .line 137
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->removeBackground()V

    .line 138
    return-void
.end method

.method static synthetic blacklist lambda$setImageIconAsync$0()V
    .registers 0

    .line 114
    return-void
.end method

.method private synthetic blacklist lambda$setImageIconAsync$1()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationRowIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->adjustViewForAppIcon()V

    .line 121
    return-void
.end method

.method private synthetic blacklist lambda$setImageIconAsync$2(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 124
    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 125
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->restoreViewForSmallIcon()V

    .line 126
    return-void
.end method

.method private blacklist loadAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mIconProvider:Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mIconProvider:Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;

    invoke-interface {v0}, Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;->shouldShowAppIcon()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mIconProvider:Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;

    invoke-interface {v0}, Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 79
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist removeBackground()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_a

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationRowIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    .line 172
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationRowIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-void
.end method

.method private blacklist removePadding()V
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1b

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationRowIconView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationRowIconView;->getPaddingTop()I

    move-result v2

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationRowIconView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationRowIconView;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    .line 155
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/internal/widget/NotificationRowIconView;->setPadding(IIII)V

    .line 156
    return-void
.end method

.method private blacklist restoreBackground()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationRowIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackground:Landroid/graphics/drawable/Drawable;

    .line 183
    :cond_c
    return-void
.end method

.method private blacklist restoreColors()V
    .registers 3

    .line 186
    iget v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    .line 187
    iget v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    invoke-super {p0, v0}, Lcom/android/internal/widget/CachingIconView;->setBackgroundColor(I)V

    .line 188
    iput v1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    .line 190
    :cond_c
    iget v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    if-eq v0, v1, :cond_17

    .line 191
    iget v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    invoke-super {p0, v0}, Lcom/android/internal/widget/CachingIconView;->setOriginalIconColor(I)V

    .line 192
    iput v1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    .line 194
    :cond_17
    return-void
.end method

.method private blacklist restorePadding()V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_1a

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationRowIconView;->setPadding(IIII)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalPadding:Landroid/graphics/Rect;

    .line 165
    :cond_1a
    return-void
.end method

.method private blacklist restoreViewForSmallIcon()V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->restorePadding()V

    .line 146
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->restoreBackground()V

    .line 147
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->restoreColors()V

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist setBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 201
    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setBackgroundColor(I)V

    goto :goto_a

    .line 203
    :cond_8
    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalBackgroundColor:I

    .line 205
    :goto_a
    return-void
.end method

.method public blacklist setIconProvider(Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;)V
    .registers 2
    .param p1, "iconProvider"    # Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;

    .line 72
    iput-object p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mIconProvider:Lcom/android/internal/widget/NotificationRowIconView$NotificationIconProvider;

    .line 73
    return-void
.end method

.method public whitelist setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 85
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignAppIcons()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 90
    return-void

    .line 92
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->loadAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationRowIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->adjustViewForAppIcon()V

    goto :goto_24

    .line 97
    :cond_1e
    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 98
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->restoreViewForSmallIcon()V

    .line 100
    :goto_24
    return-void

    .line 102
    :cond_25
    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 103
    return-void
.end method

.method public blacklist setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 108
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignAppIcons()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 113
    new-instance v0, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda0;-><init>()V

    return-object v0

    .line 116
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationRowIconView;->loadAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    .line 118
    new-instance v0, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/NotificationRowIconView;)V

    return-object v0

    .line 123
    :cond_20
    new-instance v0, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/NotificationRowIconView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/NotificationRowIconView;Landroid/graphics/drawable/Icon;)V

    return-object v0

    .line 129
    :cond_26
    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setOriginalIconColor(I)V
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/NotificationRowIconView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 212
    invoke-super {p0, p1}, Lcom/android/internal/widget/CachingIconView;->setOriginalIconColor(I)V

    goto :goto_a

    .line 214
    :cond_8
    iput p1, p0, Lcom/android/internal/widget/NotificationRowIconView;->mOriginalIconColor:I

    .line 216
    :goto_a
    return-void
.end method
