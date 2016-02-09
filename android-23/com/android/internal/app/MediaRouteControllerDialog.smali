.class public Lcom/android/internal/app/MediaRouteControllerDialog;
.super Landroid/app/Dialog;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final VOLUME_UPDATE_DELAY_MILLIS:I = 0xfa


# instance fields
.field private final mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

.field private mControlView:Landroid/view/View;

.field private mCreated:Z

.field private mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisconnectButton:Landroid/widget/Button;

.field private mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

.field private mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field private final mRouter:Landroid/media/MediaRouter;

.field private mVolumeControlEnabled:Z

.field private mVolumeLayout:Landroid/widget/LinearLayout;

.field private mVolumeSlider:Landroid/widget/SeekBar;

.field private mVolumeSliderTouched:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@3
    .line 64
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    #@6
    .line 76
    const-string/jumbo v0, "media_router"

    #@9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/media/MediaRouter;

    #@f
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    #@11
    .line 77
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;)V

    #@17
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    #@19
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    #@1b
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@21
    .line 73
    return-void
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@2
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 258
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 259
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    .line 260
    const v1, 0x1080393

    #@13
    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    #@19
    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    return-object v0

    #@1c
    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 265
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    #@23
    move-result-object v0

    #@24
    .line 266
    const v1, 0x10803a8

    #@27
    .line 265
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    #@2d
    .line 268
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    #@2f
    return-object v0
.end method

.method private isVolumeControlAvailable()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 285
    iget-boolean v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@8
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    #@b
    move-result v2

    #@c
    if-ne v2, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method private update()Z
    .locals 3

    #@0
    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@2
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@a
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    #@13
    .line 242
    const/4 v1, 0x0

    #@14
    return v1

    #@15
    .line 245
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@17
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@1e
    .line 246
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    #@21
    .line 248
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object v0

    #@25
    .line 249
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    #@27
    if-eq v0, v1, :cond_2

    #@29
    .line 250
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    .line 251
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    #@2e
    move-result-object v1

    #@2f
    const/4 v2, 0x3

    #@30
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@33
    .line 253
    :cond_2
    const/4 v1, 0x1

    #@34
    return v1
.end method

.method private updateVolume()V
    .locals 2

    #@0
    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 274
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->isVolumeControlAvailable()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 275
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@10
    .line 276
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    #@12
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@14
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    #@1b
    .line 277
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    #@1d
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@1f
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    #@22
    move-result v1

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    #@26
    .line 272
    :cond_0
    :goto_0
    return-void

    #@27
    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    #@29
    const/16 v1, 0x8

    #@2b
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@2e
    goto :goto_0
.end method


# virtual methods
.method public getMediaControlView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@2
    return-object v0
.end method

.method public isVolumeControlEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    #@2
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    #@0
    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    #@3
    .line 209
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    #@5
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    #@7
    const/4 v2, 0x0

    #@8
    const/4 v3, 0x2

    #@9
    invoke-virtual {v0, v2, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    #@c
    .line 210
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    #@f
    .line 206
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 137
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v1

    #@7
    const/4 v2, 0x3

    #@8
    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    #@b
    .line 139
    const v1, 0x109007b

    #@e
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setContentView(I)V

    #@11
    .line 141
    const v1, 0x102035f

    #@14
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/widget/LinearLayout;

    #@1a
    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    #@1c
    .line 142
    const v1, 0x1020360

    #@1f
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/widget/SeekBar;

    #@25
    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    #@27
    .line 143
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    #@29
    new-instance v2, Lcom/android/internal/app/MediaRouteControllerDialog$1;

    #@2b
    invoke-direct {v2, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$1;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    #@2e
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    #@31
    .line 179
    const v1, 0x1020362

    #@34
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Landroid/widget/Button;

    #@3a
    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    #@3c
    .line 180
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    #@3e
    new-instance v2, Lcom/android/internal/app/MediaRouteControllerDialog$2;

    #@40
    invoke-direct {v2, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$2;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    #@43
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@46
    .line 190
    const/4 v1, 0x1

    #@47
    iput-boolean v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    #@49
    .line 191
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_0

    #@4f
    .line 192
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    #@52
    move-result-object v1

    #@53
    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    #@55
    .line 194
    const v1, 0x1020361

    #@58
    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Landroid/widget/FrameLayout;

    #@5e
    .line 195
    .local v0, "controlFrame":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    #@60
    if-eqz v1, :cond_1

    #@62
    .line 196
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    #@64
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@67
    .line 197
    const/4 v1, 0x0

    #@68
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@6b
    .line 134
    .end local v0    # "controlFrame":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    return-void

    #@6c
    .line 199
    .restart local v0    # "controlFrame":Landroid/widget/FrameLayout;
    :cond_1
    const/16 v1, 0x8

    #@6e
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@71
    goto :goto_0
.end method

.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 97
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    #@2
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    #@4
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    #@7
    .line 217
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    #@a
    .line 214
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/16 v3, 0x19

    #@2
    const/4 v1, 0x1

    #@3
    .line 222
    if-eq p1, v3, :cond_0

    #@5
    .line 223
    const/16 v0, 0x18

    #@7
    if-ne p1, v0, :cond_2

    #@9
    .line 224
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #@b
    if-ne p1, v3, :cond_1

    #@d
    const/4 v0, -0x1

    #@e
    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    #@11
    .line 225
    return v1

    #@12
    :cond_1
    move v0, v1

    #@13
    .line 224
    goto :goto_0

    #@14
    .line 227
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 232
    const/16 v0, 0x19

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 233
    const/16 v0, 0x18

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 234
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 236
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public setVolumeControlEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 118
    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    #@6
    .line 119
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 120
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    #@d
    .line 116
    :cond_0
    return-void
.end method
