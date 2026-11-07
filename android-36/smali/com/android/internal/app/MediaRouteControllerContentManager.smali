.class public Lcom/android/internal/app/MediaRouteControllerContentManager;
.super Ljava/lang/Object;
.source "MediaRouteControllerContentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;,
        Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final blacklist VOLUME_UPDATE_DELAY_MILLIS:I = 0xfa


# instance fields
.field private blacklist mAttachedToWindow:Z

.field private final blacklist mCallback:Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

.field private blacklist mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mMediaRouteConnectingState:[I

.field private final blacklist mMediaRouteOnState:[I

.field private final blacklist mRoute:Landroid/media/MediaRouter$RouteInfo;

.field private final blacklist mRouter:Landroid/media/MediaRouter;

.field private blacklist mVolumeLayout:Landroid/widget/LinearLayout;

.field private blacklist mVolumeSlider:Landroid/widget/SeekBar;

.field private blacklist mVolumeSliderTouched:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRoute(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/media/MediaRouter$RouteInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeSlider(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/widget/SeekBar;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerContentManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSliderTouched:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerContentManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSliderTouched:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateVolume(Lcom/android/internal/app/MediaRouteControllerContentManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->updateVolume()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const v0, 0x10100a0

    const v1, 0x101009e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteConnectingState:[I

    .line 72
    const v0, 0x10102fe

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteOnState:[I

    .line 82
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    .line 84
    const-class v0, Landroid/media/MediaRouter;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    .line 85
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerContentManager;Lcom/android/internal/app/MediaRouteControllerContentManager-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mCallback:Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;

    .line 86
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 87
    return-void
.end method

.method private blacklist getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_9

    .line 234
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 235
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 236
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 237
    .local v0, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteConnectingState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 238
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 240
    .end local v0    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 241
    .restart local v0    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteOnState:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 242
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private blacklist isVolumeControlAvailable()Z
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private blacklist obtainMediaRouteButtonDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 221
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 222
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10103ad

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_17

    .line 223
    const/4 v1, 0x0

    return-object v1

    .line 225
    :cond_17
    const v1, 0x112004e

    filled-new-array {v1}, [I

    move-result-object v1

    .line 226
    .local v1, "drawableAttrs":[I
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mContext:Landroid/content/Context;

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 227
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 228
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    return-object v3
.end method

.method private blacklist updateVolume()V
    .registers 3

    .line 184
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSliderTouched:Z

    if-nez v0, :cond_2e

    .line 185
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->isVolumeControlAvailable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 186
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2e

    .line 190
    :cond_27
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public blacklist bindViews(Landroid/view/View;)V
    .registers 4
    .param p1, "containerView"    # Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;->setMediaRouteDeviceTitle(Ljava/lang/CharSequence;)V

    .line 95
    const v0, 0x10203e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 96
    const v0, 0x10203e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 97
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mVolumeSlider:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/internal/app/MediaRouteControllerContentManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MediaRouteControllerContentManager$1;-><init>(Lcom/android/internal/app/MediaRouteControllerContentManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 133
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->obtainMediaRouteButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mMediaRouteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 134
    return-void
.end method

.method public blacklist onAttachedToWindow()V
    .registers 5

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mAttachedToWindow:Z

    .line 141
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mCallback:Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    .line 143
    return-void
.end method

.method public blacklist onDetachedFromWindow()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mCallback:Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mAttachedToWindow:Z

    .line 151
    return-void
.end method

.method public blacklist onDisconnectButtonClick()V
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 200
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 201
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_23

    .line 203
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 206
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    invoke-interface {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;->dismissView()V

    .line 207
    return-void
.end method

.method public blacklist requestUpdateRouteVolume(I)V
    .registers 3
    .param p1, "direction"    # I

    .line 213
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 214
    return-void
.end method

.method public blacklist update()V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 158
    :cond_10
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    invoke-interface {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;->dismissView()V

    .line 161
    :cond_15
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;->setMediaRouteDeviceTitle(Ljava/lang/CharSequence;)V

    .line 162
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->updateVolume()V

    .line 164
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_62

    .line 166
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_5d

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 168
    .local v1, "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v2, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mAttachedToWindow:Z

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v2

    if-nez v2, :cond_54

    .line 171
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 172
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 174
    :cond_49
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_5d

    .line 175
    :cond_54
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 176
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 179
    .end local v1    # "animDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_5d
    :goto_5d
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;

    invoke-interface {v1, v0}, Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;->setMediaRouteDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_62
    return-void
.end method
