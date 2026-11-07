.class public Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
.super Landroid/widget/FrameLayout;
.source "RemoteComposePlayer.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;
    }
.end annotation


# static fields
.field private static final blacklist MAX_SUPPORTED_MAJOR_VERSION:I = 0x1

.field private static final blacklist MAX_SUPPORTED_MINOR_VERSION:I

.field private static final blacklist sHapticTable:[I


# instance fields
.field blacklist mAcc:Landroid/hardware/Sensor;

.field blacklist mGyro:Landroid/hardware/Sensor;

.field private blacklist mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

.field blacklist mLight:Landroid/hardware/Sensor;

.field blacklist mListener:Landroid/hardware/SensorEventListener;

.field blacklist mMag:Landroid/hardware/Sensor;

.field blacklist mSensorManager:Landroid/hardware/SensorManager;

.field private blacklist mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInner(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprovideHapticFeedback(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->provideHapticFeedback(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 693
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->sHapticTable:[I

    .line 717
    return-void

    :array_a
    .array-data 4
        -0x1
        0x0
        0x1
        0x3
        0x4
        0x6
        0x3
        0x7
        0x8
        0x9
        0xc
        0xd
        0x10
        0x11
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    .line 842
    new-instance v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 57
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    .line 842
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    .line 842
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method private blacklist applyContentBehavior(I)V
    .registers 8
    .param p1, "contentBehavior"    # I

    .line 178
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_a4

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_a2

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    .line 214
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a2

    .line 196
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_2a
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/ScrollView;

    if-nez v4, :cond_a2

    .line 197
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    .line 199
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v4, "layoutParamsInner":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 202
    .local v2, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 203
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v2, v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 207
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "scrollView":Landroid/widget/ScrollView;
    .end local v4    # "layoutParamsInner":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_a2

    .line 180
    :pswitch_66
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/HorizontalScrollView;

    if-nez v4, :cond_a2

    .line 181
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->removeAllViews()V

    .line 183
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 185
    .restart local v4    # "layoutParamsInner":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/HorizontalScrollView;

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 187
    .local v2, "horizontalScrollView":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 188
    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v2, v0, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 192
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "horizontalScrollView":Landroid/widget/HorizontalScrollView;
    .end local v4    # "layoutParamsInner":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 219
    :cond_a2
    :goto_a2
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_66
        :pswitch_2a
    .end packed-switch
.end method

.method private blacklist getColorFromResource(I)I
    .registers 6
    .param p1, "id"    # I

    .line 680
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 681
    .local v0, "typedValue":Landroid/util/TypedValue;
    nop

    .line 682
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 683
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->data:I

    filled-new-array {p1}, [I

    move-result-object v3

    .line 684
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 685
    .local v1, "arr":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_1a
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_25

    .line 686
    .local v2, "color":I
    nop

    .line 687
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 686
    :cond_24
    return v2

    .line 681
    .end local v2    # "color":I
    :catchall_25
    move-exception v2

    if-eqz v1, :cond_30

    :try_start_28
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw v2
.end method

.method private blacklist init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 222
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setBackgroundColor(I)V

    .line 225
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    .line 226
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setBackgroundColor(I)V

    .line 227
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    return-void
.end method

.method static synthetic blacklist lambda$addIdActionListener$0(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;ILjava/lang/String;)V
    .registers 3
    .param p0, "callback"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;
    .param p1, "id"    # I
    .param p2, "metadata"    # Ljava/lang/String;

    .line 407
    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;->onAction(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$new$1(Ljava/lang/String;)Z
    .registers 2
    .param p0, "shader"    # Ljava/lang/String;

    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist mapColors()V
    .registers 9

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "name":[Ljava/lang/String;
    if-nez v0, :cond_7

    .line 488
    return-void

    .line 490
    :cond_7
    const/4 v1, 0x0

    .line 491
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v0

    const-string v4, "android."

    if-ge v2, v3, :cond_1b

    .line 492
    aget-object v3, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 493
    const/4 v1, 0x1

    .line 494
    goto :goto_1b

    .line 491
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 497
    .end local v2    # "i":I
    :cond_1b
    :goto_1b
    if-nez v1, :cond_1e

    .line 498
    return-void

    .line 501
    :cond_1e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1f
    array-length v3, v0

    if-ge v2, v3, :cond_407

    .line 502
    aget-object v3, v0, v2

    .line 503
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 504
    goto/16 :goto_403

    .line 506
    :cond_2c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, "sub":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_408

    :cond_3b
    goto/16 :goto_287

    :sswitch_3d
    const-string v6, "activatedBackgroundIndicator"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x3

    goto/16 :goto_288

    :sswitch_48
    const-string v6, "colorPrimary"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x15

    goto/16 :goto_288

    :sswitch_54
    const-string/jumbo v6, "popupBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x21

    goto/16 :goto_288

    :sswitch_61
    const-string v6, "panelBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x1e

    goto/16 :goto_288

    :sswitch_6d
    const-string v6, "colorBackgroundCacheHint"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x7

    goto/16 :goto_288

    :sswitch_78
    const-string v6, "colorSwitchThumbNormal"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x30

    goto/16 :goto_288

    :sswitch_84
    const-string v6, "galleryItemBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x1a

    goto/16 :goto_288

    :sswitch_90
    const-string/jumbo v6, "textColorPrimaryInverse"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x28

    goto/16 :goto_288

    :sswitch_9d
    const-string v6, "headerBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x1b

    goto/16 :goto_288

    :sswitch_a9
    const-string v6, "itemBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x1c

    goto/16 :goto_288

    :sswitch_b5
    const-string v6, "colorError"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0xe

    goto/16 :goto_288

    :sswitch_c1
    const-string v6, "colorButtonNormal"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x9

    goto/16 :goto_288

    :sswitch_cd
    const-string v6, "actionModeSplitBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x2

    goto/16 :goto_288

    :sswitch_d8
    const-string/jumbo v6, "textColorTertiary"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x2a

    goto/16 :goto_288

    :sswitch_e5
    const-string/jumbo v6, "textColorTertiaryInverse"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x2b

    goto/16 :goto_288

    :sswitch_f2
    const-string v6, "colorBackgroundFloating"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x8

    goto/16 :goto_288

    :sswitch_fe
    const-string/jumbo v6, "submitBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x24

    goto/16 :goto_288

    :sswitch_10b
    const-string v6, "colorLongPressedHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x12

    goto/16 :goto_288

    :sswitch_117
    const-string v6, "colorFocusedHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0xf

    goto/16 :goto_288

    :sswitch_123
    const-string v6, "actionModeBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x1

    goto/16 :goto_288

    :sswitch_12e
    const-string v6, "colorAccent"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x4

    goto/16 :goto_288

    :sswitch_139
    const-string v6, "colorBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x6

    goto/16 :goto_288

    :sswitch_144
    const-string v6, "detailsElementBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x18

    goto/16 :goto_288

    :sswitch_150
    const-string v6, "colorControlNormal"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0xc

    goto/16 :goto_288

    :sswitch_15c
    const-string/jumbo v6, "textColorSecondaryInverse"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x29

    goto/16 :goto_288

    :sswitch_169
    const-string/jumbo v6, "selectableItemBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x23

    goto/16 :goto_288

    :sswitch_176
    const-string v6, "panelFullBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x20

    goto/16 :goto_288

    :sswitch_182
    const-string v6, "colorActivatedHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x5

    goto/16 :goto_288

    :sswitch_18d
    const-string/jumbo v6, "queryBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x22

    goto/16 :goto_288

    :sswitch_19a
    const-string/jumbo v6, "windowBackgroundFallback"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x27

    goto/16 :goto_288

    :sswitch_1a7
    const-string v6, "colorPressedHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x14

    goto/16 :goto_288

    :sswitch_1b3
    const-string v6, "colorControlActivated"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0xa

    goto/16 :goto_288

    :sswitch_1bf
    const-string v6, "colorForeground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x10

    goto/16 :goto_288

    :sswitch_1cb
    const-string v6, "colorEdgeEffect"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0xd

    goto/16 :goto_288

    :sswitch_1d7
    const-string v6, "actionBarItemBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x0

    goto/16 :goto_288

    :sswitch_1e2
    const-string v6, "numbersBackgroundColor"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x1d

    goto/16 :goto_288

    :sswitch_1ee
    const-string/jumbo v6, "textColorHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x2c

    goto/16 :goto_288

    :sswitch_1fb
    const-string v6, "colorMultiSelectHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x13

    goto/16 :goto_288

    :sswitch_207
    const-string/jumbo v6, "textColor"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x25

    goto/16 :goto_288

    :sswitch_214
    const-string v6, "editTextBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x19

    goto/16 :goto_288

    :sswitch_220
    const-string v6, "colorControlHighlight"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0xb

    goto :goto_288

    :sswitch_22b
    const-string/jumbo v6, "windowBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x26

    goto :goto_288

    :sswitch_237
    const-string v6, "colorSecondary"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x17

    goto :goto_288

    :sswitch_242
    const-string v6, "colorForegroundInverse"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x11

    goto :goto_288

    :sswitch_24d
    const-string/jumbo v6, "textColorHintInverse"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x2f

    goto :goto_288

    :sswitch_259
    const-string v6, "panelColorBackground"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x1f

    goto :goto_288

    :sswitch_264
    const-string/jumbo v6, "textColorLink"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x2d

    goto :goto_288

    :sswitch_270
    const-string/jumbo v6, "textColorHint"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x2e

    goto :goto_288

    :sswitch_27c
    const-string v6, "colorPrimaryDark"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/16 v6, 0x16

    goto :goto_288

    :goto_287
    const/4 v6, -0x1

    :goto_288
    const v7, 0x1010429

    packed-switch v6, :pswitch_data_4ce

    goto/16 :goto_403

    .line 667
    :pswitch_290
    invoke-direct {p0, v3, v7}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    goto/16 :goto_403

    .line 663
    :pswitch_295
    const v6, 0x101003f

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 664
    goto/16 :goto_403

    .line 659
    :pswitch_29d
    const v6, 0x101009a

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 660
    goto/16 :goto_403

    .line 655
    :pswitch_2a5
    const v6, 0x101009b

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 656
    goto/16 :goto_403

    .line 651
    :pswitch_2ad
    const v6, 0x1010099

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 652
    goto/16 :goto_403

    .line 647
    :pswitch_2b5
    const v6, 0x1010213

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 648
    goto/16 :goto_403

    .line 643
    :pswitch_2bd
    const v6, 0x1010212

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 644
    goto/16 :goto_403

    .line 639
    :pswitch_2c5
    const v6, 0x101003a

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 640
    goto/16 :goto_403

    .line 635
    :pswitch_2cd
    const v6, 0x1010039

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 636
    goto/16 :goto_403

    .line 631
    :pswitch_2d5
    const v6, 0x1010503

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 632
    goto/16 :goto_403

    .line 628
    :pswitch_2dd
    const v6, 0x1010054

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 629
    goto/16 :goto_403

    .line 625
    :pswitch_2e5
    const v6, 0x1010098

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 626
    goto/16 :goto_403

    .line 622
    :pswitch_2ed
    const v6, 0x1010488

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 623
    goto/16 :goto_403

    .line 619
    :pswitch_2f5
    const v6, 0x101030e

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 620
    goto/16 :goto_403

    .line 616
    :pswitch_2fd
    const v6, 0x1010487

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 617
    goto/16 :goto_403

    .line 613
    :pswitch_305
    const v6, 0x1010176

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 614
    goto/16 :goto_403

    .line 610
    :pswitch_30d
    const v6, 0x101005f

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 611
    goto/16 :goto_403

    .line 607
    :pswitch_315
    const v6, 0x1010061

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 608
    goto/16 :goto_403

    .line 604
    :pswitch_31d
    const v6, 0x101005e

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 605
    goto/16 :goto_403

    .line 601
    :pswitch_325
    const v6, 0x10104a2

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 602
    goto/16 :goto_403

    .line 598
    :pswitch_32d
    const v6, 0x1010130

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 599
    goto/16 :goto_403

    .line 595
    :pswitch_335
    const v6, 0x101012f

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 596
    goto/16 :goto_403

    .line 592
    :pswitch_33d
    const v6, 0x101004c

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 593
    goto/16 :goto_403

    .line 589
    :pswitch_345
    const v6, 0x1010352

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 590
    goto/16 :goto_403

    .line 586
    :pswitch_34d
    const v6, 0x101034e

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 587
    goto/16 :goto_403

    .line 583
    :pswitch_355
    const v6, 0x1010530

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 584
    goto/16 :goto_403

    .line 580
    :pswitch_35d
    const v6, 0x1010434

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 581
    goto/16 :goto_403

    .line 577
    :pswitch_365
    const v6, 0x1010433

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 578
    goto/16 :goto_403

    .line 574
    :pswitch_36d
    const v6, 0x101038d

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 575
    goto/16 :goto_403

    .line 571
    :pswitch_375
    const v6, 0x1010391

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 572
    goto/16 :goto_403

    .line 568
    :pswitch_37d
    const v6, 0x101038e

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 569
    goto/16 :goto_403

    .line 565
    :pswitch_385
    const v6, 0x1010206

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 566
    goto/16 :goto_403

    .line 561
    :pswitch_38d
    const v6, 0x1010030

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 562
    goto/16 :goto_403

    .line 558
    :pswitch_395
    const v6, 0x101038f

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 559
    goto/16 :goto_403

    .line 555
    :pswitch_39d
    const v6, 0x1010543

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 556
    goto :goto_403

    .line 552
    :pswitch_3a4
    const v6, 0x10104ce

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 553
    goto :goto_403

    .line 548
    :pswitch_3ab
    invoke-direct {p0, v3, v7}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 549
    goto :goto_403

    .line 544
    :pswitch_3af
    const v6, 0x101042c

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 545
    goto :goto_403

    .line 541
    :pswitch_3b6
    const v6, 0x101042a

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 542
    goto :goto_403

    .line 537
    :pswitch_3bd
    const v6, 0x101042b

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 538
    goto :goto_403

    .line 534
    :pswitch_3c4
    const v6, 0x10104e2

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 535
    goto :goto_403

    .line 530
    :pswitch_3cb
    const v6, 0x10102ab

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 531
    goto :goto_403

    .line 527
    :pswitch_3d2
    const v6, 0x1010031

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 528
    goto :goto_403

    .line 524
    :pswitch_3d9
    const v6, 0x1010390

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 525
    goto :goto_403

    .line 521
    :pswitch_3e0
    const v6, 0x1010435

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 522
    goto :goto_403

    .line 518
    :pswitch_3e7
    const v6, 0x10102fd

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 519
    goto :goto_403

    .line 515
    :pswitch_3ee
    const v6, 0x101039d

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 516
    goto :goto_403

    .line 512
    :pswitch_3f5
    const v6, 0x10102db

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 513
    goto :goto_403

    .line 509
    :pswitch_3fc
    const v6, 0x101039c

    invoke-direct {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setRColor(Ljava/lang/String;I)V

    .line 510
    nop

    .line 501
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "sub":Ljava/lang/String;
    :goto_403
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f

    .line 671
    .end local v2    # "i":I
    :cond_407
    return-void

    :sswitch_data_408
    .sparse-switch
        -0x7d4b52cb -> :sswitch_27c
        -0x79908a23 -> :sswitch_270
        -0x798eb8b0 -> :sswitch_264
        -0x6a3f59b3 -> :sswitch_259
        -0x625ee56d -> :sswitch_24d
        -0x5efbf4b6 -> :sswitch_242
        -0x5ee4feaf -> :sswitch_237
        -0x5df81ec2 -> :sswitch_22b
        -0x4cd1b2a6 -> :sswitch_220
        -0x430e7d1b -> :sswitch_214
        -0x3f64d1ca -> :sswitch_207
        -0x3a2a2f5e -> :sswitch_1fb
        -0x3991e4e2 -> :sswitch_1ee
        -0x367b7cd5 -> :sswitch_1e2
        -0x29fa7002 -> :sswitch_1d7
        -0x2555828f -> :sswitch_1cb
        -0x20bc2afa -> :sswitch_1bf
        -0x18087589 -> :sswitch_1b3
        -0x15af2bcb -> :sswitch_1a7
        -0x159c31c0 -> :sswitch_19a
        -0xd790fea -> :sswitch_18d
        -0x74ea95a -> :sswitch_182
        0x14aac41 -> :sswitch_176
        0x2b89a97 -> :sswitch_169
        0xd357d72 -> :sswitch_15c
        0xe082e01 -> :sswitch_150
        0x10e99f28 -> :sswitch_144
        0x1993c0f1 -> :sswitch_139
        0x1add7a0d -> :sswitch_12e
        0x21122f07 -> :sswitch_123
        0x26566480 -> :sswitch_117
        0x2d8aed51 -> :sswitch_10b
        0x31673366 -> :sswitch_fe
        0x39eaac17 -> :sswitch_f2
        0x45926168 -> :sswitch_e5
        0x45d104a8 -> :sswitch_d8
        0x45d919af -> :sswitch_cd
        0x479ba9bc -> :sswitch_c1
        0x4b6fd865 -> :sswitch_b5
        0x4d3730a1 -> :sswitch_a9
        0x5563079b -> :sswitch_9d
        0x5765e2a4 -> :sswitch_90
        0x57763c93 -> :sswitch_84
        0x5ef2ad66 -> :sswitch_78
        0x60354f38 -> :sswitch_6d
        0x62508652 -> :sswitch_61
        0x6824bafa -> :sswitch_54
        0x743ff11f -> :sswitch_48
        0x7f61def0 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_4ce
    .packed-switch 0x0
        :pswitch_3fc
        :pswitch_3f5
        :pswitch_3ee
        :pswitch_3e7
        :pswitch_3e0
        :pswitch_3d9
        :pswitch_3d2
        :pswitch_3cb
        :pswitch_3c4
        :pswitch_3bd
        :pswitch_3b6
        :pswitch_3af
        :pswitch_3ab
        :pswitch_3a4
        :pswitch_39d
        :pswitch_395
        :pswitch_38d
        :pswitch_385
        :pswitch_37d
        :pswitch_375
        :pswitch_36d
        :pswitch_365
        :pswitch_35d
        :pswitch_355
        :pswitch_34d
        :pswitch_345
        :pswitch_33d
        :pswitch_335
        :pswitch_32d
        :pswitch_325
        :pswitch_31d
        :pswitch_315
        :pswitch_30d
        :pswitch_305
        :pswitch_2fd
        :pswitch_2f5
        :pswitch_2ed
        :pswitch_2e5
        :pswitch_2dd
        :pswitch_2d5
        :pswitch_2cd
        :pswitch_2c5
        :pswitch_2bd
        :pswitch_2b5
        :pswitch_2ad
        :pswitch_2a5
        :pswitch_29d
        :pswitch_295
        :pswitch_290
    .end packed-switch
.end method

.method private blacklist provideHapticFeedback(I)V
    .registers 4
    .param p1, "type"    # I

    .line 720
    sget-object v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->sHapticTable:[I

    sget-object v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->sHapticTable:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->performHapticFeedback(I)Z

    .line 721
    return-void
.end method

.method private blacklist setRColor(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 674
    invoke-direct {p0, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getColorFromResource(I)I

    move-result v0

    .line 675
    .local v0, "color":I
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setColor(Ljava/lang/String;I)V

    .line 676
    return-void
.end method

.method private blacklist setupSensors()V
    .registers 9

    .line 729
    const/16 v0, 0x11

    .line 730
    .local v0, "minId":I
    const/16 v1, 0x1a

    .line 731
    .local v1, "maxId":I
    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    .line 733
    .local v2, "ids":[I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->hasSensorListeners([I)I

    move-result v3

    .line 734
    .local v3, "count":I
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    .line 735
    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    .line 736
    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    .line 737
    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    .line 738
    if-lez v3, :cond_72

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    .line 741
    .local v4, "app":Landroid/app/Application;
    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 742
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    if-ge v5, v3, :cond_72

    .line 743
    aget v6, v2, v5

    packed-switch v6, :pswitch_data_76

    goto :goto_6f

    .line 766
    :pswitch_38
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    if-nez v6, :cond_6f

    .line 767
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    goto :goto_6f

    .line 761
    :pswitch_46
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    if-nez v6, :cond_6f

    .line 762
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    goto :goto_6f

    .line 754
    :pswitch_54
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    if-nez v6, :cond_6f

    .line 755
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    goto :goto_6f

    .line 747
    :pswitch_62
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    if-nez v6, :cond_6f

    .line 748
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    .line 742
    :cond_6f
    :goto_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 772
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "i":I
    :cond_72
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->registerListener()V

    .line 773
    return-void

    :pswitch_data_76
    .packed-switch 0x11
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;

    .line 407
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addIdActionListener(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V

    .line 408
    return-void
.end method

.method public blacklist clearLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalString(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public blacklist clearSystemLocalString(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalString(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public blacklist clearUserLocalBitmap(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalBitmap(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public blacklist clearUserLocalColor(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalColor(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public blacklist clearUserLocalFloat(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalFloat(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public blacklist clearUserLocalInt(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalInt(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public blacklist clearUserLocalString(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->clearLocalString(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEvalTime()F
    .registers 2

    .line 839
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getEvalTime()F

    move-result v0

    return v0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedFloats()[Ljava/lang/String;
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedImages()[Ljava/lang/String;
    .registers 3

    .line 460
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedStrings()[Ljava/lang/String;
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpsPerFrame()I
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getOpsPerFrame()I

    move-result v0

    return v0
.end method

.method public blacklist getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    return-object v0
.end method

.method public whitelist invalidate()V
    .registers 2

    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    if-eqz v0, :cond_c

    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 95
    :cond_c
    return-void
.end method

.method public blacklist isDraggable()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->isDraggable()Z

    move-result v0

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 777
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 778
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->unregisterListener()V

    .line 779
    return-void
.end method

.method public blacklist registerListener()V
    .registers 9

    .line 782
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 783
    .local v1, "s":[Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v2, :cond_1e

    .line 784
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->unregisterListener()V

    .line 786
    :cond_1e
    new-instance v2, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$2;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)V

    .line 814
    .local v2, "listener":Landroid/hardware/SensorEventListener;
    new-array v0, v0, [Landroid/hardware/Sensor;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mAcc:Landroid/hardware/Sensor;

    aput-object v7, v0, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mGyro:Landroid/hardware/Sensor;

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mMag:Landroid/hardware/Sensor;

    aput-object v3, v0, v5

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mLight:Landroid/hardware/Sensor;

    aput-object v3, v0, v6

    .line 815
    .local v0, "sensors":[Landroid/hardware/Sensor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    array-length v4, v0

    if-ge v3, v4, :cond_49

    .line 816
    aget-object v4, v0, v3

    .line 817
    .local v4, "sensor":Landroid/hardware/Sensor;
    if-eqz v4, :cond_46

    .line 818
    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    .line 819
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v5, v7, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 815
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 823
    .end local v3    # "i":I
    :cond_49
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    if-eqz v0, :cond_c

    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->requestLayout()V

    .line 84
    :cond_c
    return-void
.end method

.method public blacklist setColor(Ljava/lang/String;I)V
    .registers 4
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "colorValue"    # I

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setColor(Ljava/lang/String;I)V

    .line 471
    return-void
.end method

.method public blacklist setDebug(I)V
    .registers 3
    .param p1, "debugFlags"    # I

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDebug(I)V

    .line 113
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .registers 6
    .param p1, "value"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 137
    if-eqz p1, :cond_38

    .line 138
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->canBeDisplayed(IIJ)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 140
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->isUpdateDoc()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->updateDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 142
    return-void

    .line 144
    :cond_16
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getContentScroll()I

    move-result v0

    .line 146
    .local v0, "contentBehavior":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->applyContentBehavior(I)V

    .line 147
    .end local v0    # "contentBehavior":I
    goto :goto_2e

    .line 148
    :cond_27
    const-string v0, "RemoteComposePlayer"

    const-string v1, "Unsupported document "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_2e
    sget-object v0, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeTouchHelper;->REGISTRAR:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;->setAccessibilityDelegate(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    goto :goto_43

    .line 153
    :cond_38
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 155
    sget-object v0, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeTouchHelper;->REGISTRAR:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;->clearAccessibilityDelegate(Landroid/view/View;)V

    .line 158
    :goto_43
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mapColors()V

    .line 159
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setupSensors()V

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$1;-><init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->checkShaders(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V

    .line 169
    return-void
.end method

.method public blacklist setLocalString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public blacklist setLong(Ljava/lang/String;J)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLong(Ljava/lang/String;J)V

    .line 481
    return-void
.end method

.method public blacklist setShaderControl(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .registers 2
    .param p1, "ctl"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 854
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mShaderControl:Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;

    .line 855
    return-void
.end method

.method public blacklist setSystemLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public blacklist setTheme(I)V
    .registers 3
    .param p1, "theme"    # I

    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getTheme()I

    move-result v0

    if-eq v0, p1, :cond_12

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setTheme(I)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 425
    :cond_12
    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 381
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setUseChoreographer(Z)V

    .line 382
    return-void
.end method

.method public blacklist setUserLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 299
    return-void
.end method

.method public blacklist setUserLocalColor(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalColor(Ljava/lang/String;I)V

    .line 279
    return-void
.end method

.method public blacklist setUserLocalFloat(Ljava/lang/String;F)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalFloat(Ljava/lang/String;Ljava/lang/Float;)V

    .line 289
    return-void
.end method

.method public blacklist setUserLocalInt(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalInt(Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method public blacklist setUserLocalString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setLocalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public blacklist unregisterListener()V
    .registers 3

    .line 826
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_f

    .line 827
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 829
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mListener:Landroid/hardware/SensorEventListener;

    .line 830
    return-void
.end method

.method public blacklist updateDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .registers 7
    .param p1, "value"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    .line 125
    move-object v0, p1

    .line 126
    .local v0, "document":Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    .line 127
    .local v1, "tmpContext":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 129
    .local v2, "density":F
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setAnimationEnabled(Z)V

    .line 130
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDensity(F)V

    .line 131
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setUseChoreographer(Z)V

    .line 132
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getDocument()Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->applyUpdate(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    .line 133
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->mInner:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    .line 134
    return-void
.end method
