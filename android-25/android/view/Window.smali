.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$Callback;,
        Landroid/view/Window$OnFrameMetricsAvailableListener;,
        Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;,
        Landroid/view/Window$OnWindowDismissedCallback;,
        Landroid/view/Window$WindowControllerCallback;
    }
.end annotation


# static fields
.field public static final DECOR_CAPTION_SHADE_AUTO:I = 0x0

.field public static final DECOR_CAPTION_SHADE_DARK:I = 0x2

.field public static final DECOR_CAPTION_SHADE_LIGHT:I = 0x1

.field protected static final DEFAULT_FEATURES:I = 0x41
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_ACTIVITY_TRANSITIONS:I = 0xd

.field public static final FEATURE_CONTENT_TRANSITIONS:I = 0xc

.field public static final FEATURE_CONTEXT_MENU:I = 0x6

.field public static final FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final FEATURE_INDETERMINATE_PROGRESS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_LEFT_ICON:I = 0x3

.field public static final FEATURE_MAX:I = 0xd

.field public static final FEATURE_NO_TITLE:I = 0x1

.field public static final FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final FEATURE_PROGRESS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_RIGHT_ICON:I = 0x4

.field public static final FEATURE_SWIPE_TO_DISMISS:I = 0xb

.field public static final ID_ANDROID_CONTENT:I = 0x1020002

.field public static final NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:navigation:background"

.field public static final PROGRESS_END:I = 0x2710
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_INDETERMINATE_OFF:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_INDETERMINATE_ON:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_SECONDARY_END:I = 0x7530
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_SECONDARY_START:I = 0x4e20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_START:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_VISIBILITY_OFF:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_VISIBILITY_ON:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PROPERTY_HARDWARE_UI:Ljava/lang/String; = "persist.sys.ui.hw"

.field public static final STATUS_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:status:background"


# instance fields
.field private mActiveChild:Landroid/view/Window;

.field private mAppName:Ljava/lang/String;

.field private mAppToken:Landroid/os/IBinder;

.field private mCallback:Landroid/view/Window$Callback;

.field private mCloseOnTouchOutside:Z

.field private mContainer:Landroid/view/Window;

.field private final mContext:Landroid/content/Context;

.field private mDefaultWindowFormat:I

.field private mDestroyed:Z

.field private mFeatures:I

.field private mForcedWindowFlags:I

.field private mHardwareAccelerated:Z

.field private mHasChildren:Z

.field private mHasSoftInputMode:Z

.field private mHaveDimAmount:Z

.field private mHaveWindowFormat:Z

.field private mIsActive:Z

.field private mLocalFeatures:I

.field private mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

.field private mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

.field private mOverlayWithDecorCaptionEnabled:Z

.field private mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

.field private mSetCloseOnTouchOutside:Z

.field private final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 287
    iput-boolean v1, p0, Landroid/view/Window;->mIsActive:Z

    #@6
    .line 288
    iput-boolean v1, p0, Landroid/view/Window;->mHasChildren:Z

    #@8
    .line 289
    iput-boolean v1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    #@a
    .line 290
    iput-boolean v1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    #@c
    .line 291
    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    #@e
    .line 296
    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    #@10
    .line 297
    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    #@12
    .line 298
    const/4 v0, -0x1

    #@13
    iput v0, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    #@15
    .line 300
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    #@17
    .line 304
    iput-boolean v1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    #@19
    .line 308
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@1b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@1e
    .line 307
    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@20
    .line 647
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@22
    .line 648
    invoke-static {p1}, Landroid/view/Window;->getDefaultFeatures(Landroid/content/Context;)I

    #@25
    move-result v0

    #@26
    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    #@28
    iput v0, p0, Landroid/view/Window;->mFeatures:I

    #@2a
    .line 646
    return-void
.end method

.method public static getDefaultFeatures(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1592
    const/4 v0, 0x0

    #@1
    .line 1594
    .local v0, "features":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    .line 1595
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x112009b

    #@8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1596
    const/4 v0, 0x1

    #@f
    .line 1599
    :cond_0
    const v2, 0x112009c

    #@12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1600
    or-int/lit8 v0, v0, 0x40

    #@1a
    .line 1603
    :cond_1
    return v0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@4
    move-result v5

    #@5
    float-to-int v2, v5

    #@6
    .line 1202
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@9
    move-result v5

    #@a
    float-to-int v3, v5

    #@b
    .line 1203
    .local v3, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    #@12
    move-result v1

    #@13
    .line 1204
    .local v1, "slop":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 1205
    .local v0, "decorView":Landroid/view/View;
    neg-int v5, v1

    #@18
    if-lt v2, v5, :cond_0

    #@1a
    neg-int v5, v1

    #@1b
    if-ge v3, v5, :cond_1

    #@1d
    :cond_0
    :goto_0
    return v4

    #@1e
    .line 1206
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@21
    move-result v5

    #@22
    add-int/2addr v5, v1

    #@23
    if-gt v2, v5, :cond_0

    #@25
    .line 1207
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@28
    move-result v5

    #@29
    add-int/2addr v5, v1

    #@2a
    if-gt v3, v5, :cond_0

    #@2c
    const/4 v4, 0x0

    #@2d
    goto :goto_0
.end method

.method private setPrivateFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 1079
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 1080
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@6
    not-int v2, p2

    #@7
    and-int/2addr v1, v2

    #@8
    and-int v2, p1, p2

    #@a
    or-int/2addr v1, v2

    #@b
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@d
    .line 1081
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@10
    .line 1078
    return-void
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public addFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1033
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    #@3
    .line 1032
    return-void
.end method

.method public final addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 845
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 846
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_0

    #@6
    .line 847
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "can\'t observe a Window without an attached view"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 850
    :cond_0
    if-nez p1, :cond_1

    #@11
    .line 851
    new-instance v1, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v2, "listener cannot be null"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 854
    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->addFrameMetricsListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    #@1d
    .line 844
    return-void
.end method

.method public addPrivateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1038
    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    #@3
    .line 1037
    return-void
.end method

.method adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 8
    .param p1, "wp"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/high16 v7, 0x1000000

    #@2
    const/16 v6, 0x3e8

    #@4
    const/16 v5, 0x20

    #@6
    .line 747
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    .line 748
    .local v0, "curTitle":Ljava/lang/CharSequence;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@c
    if-lt v3, v6, :cond_d

    #@e
    .line 749
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@10
    const/16 v4, 0x7cf

    #@12
    if-gt v3, v4, :cond_d

    #@14
    .line 750
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@16
    if-nez v3, :cond_0

    #@18
    .line 751
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@1b
    move-result-object v1

    #@1c
    .line 752
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_0

    #@1e
    .line 753
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@21
    move-result-object v3

    #@22
    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@24
    .line 756
    .end local v1    # "decor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    #@26
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_3

    #@2c
    .line 757
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@31
    .line 758
    .local v2, "title":Ljava/lang/StringBuilder;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@33
    const/16 v4, 0x3e9

    #@35
    if-ne v3, v4, :cond_7

    #@37
    .line 759
    const-string/jumbo v3, "Media"

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 773
    :goto_0
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 774
    const-string/jumbo v3, ":"

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    iget-object v4, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 776
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@50
    .line 801
    .end local v2    # "title":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@52
    if-nez v3, :cond_4

    #@54
    .line 802
    iget-object v3, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@56
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@5c
    .line 804
    :cond_4
    iget-boolean v3, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    #@5e
    if-nez v3, :cond_5

    #@60
    .line 805
    iget-object v3, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@62
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@64
    and-int/2addr v3, v7

    #@65
    if-eqz v3, :cond_6

    #@67
    .line 806
    :cond_5
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@69
    or-int/2addr v3, v7

    #@6a
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@6c
    .line 746
    :cond_6
    return-void

    #@6d
    .line 760
    .restart local v2    # "title":Ljava/lang/StringBuilder;
    :cond_7
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6f
    const/16 v4, 0x3ec

    #@71
    if-ne v3, v4, :cond_8

    #@73
    .line 761
    const-string/jumbo v3, "MediaOvr"

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    goto :goto_0

    #@7a
    .line 762
    :cond_8
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7c
    if-ne v3, v6, :cond_9

    #@7e
    .line 763
    const-string/jumbo v3, "Panel"

    #@81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    goto :goto_0

    #@85
    .line 764
    :cond_9
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@87
    const/16 v4, 0x3ea

    #@89
    if-ne v3, v4, :cond_a

    #@8b
    .line 765
    const-string/jumbo v3, "SubPanel"

    #@8e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    goto :goto_0

    #@92
    .line 766
    :cond_a
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@94
    const/16 v4, 0x3ed

    #@96
    if-ne v3, v4, :cond_b

    #@98
    .line 767
    const-string/jumbo v3, "AboveSubPanel"

    #@9b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    goto :goto_0

    #@9f
    .line 768
    :cond_b
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a1
    const/16 v4, 0x3eb

    #@a3
    if-ne v3, v4, :cond_c

    #@a5
    .line 769
    const-string/jumbo v3, "AtchDlg"

    #@a8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    goto :goto_0

    #@ac
    .line 771
    :cond_c
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@ae
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    goto :goto_0

    #@b2
    .line 778
    .end local v2    # "title":Ljava/lang/StringBuilder;
    :cond_d
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@b4
    const/16 v4, 0x7d0

    #@b6
    if-lt v3, v4, :cond_10

    #@b8
    .line 779
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@ba
    const/16 v4, 0xbb7

    #@bc
    if-gt v3, v4, :cond_10

    #@be
    .line 784
    if-eqz v0, :cond_e

    #@c0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@c3
    move-result v3

    #@c4
    if-nez v3, :cond_3

    #@c6
    .line 785
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@cb
    .line 786
    .restart local v2    # "title":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Sys"

    #@ce
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v3

    #@d2
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@d4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d7
    .line 787
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@d9
    if-eqz v3, :cond_f

    #@db
    .line 788
    const-string/jumbo v3, ":"

    #@de
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v3

    #@e2
    iget-object v4, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@e4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    .line 790
    :cond_f
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@ea
    goto/16 :goto_1

    #@ec
    .line 793
    .end local v2    # "title":Ljava/lang/StringBuilder;
    :cond_10
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@ee
    if-nez v3, :cond_11

    #@f0
    .line 794
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@f2
    if-nez v3, :cond_13

    #@f4
    iget-object v3, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    #@f6
    :goto_2
    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@f8
    .line 796
    :cond_11
    if-eqz v0, :cond_12

    #@fa
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@fd
    move-result v3

    #@fe
    if-nez v3, :cond_3

    #@100
    .line 797
    :cond_12
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@102
    if-eqz v3, :cond_3

    #@104
    .line 798
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@106
    invoke-virtual {p1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@109
    goto/16 :goto_1

    #@10b
    .line 794
    :cond_13
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@10d
    iget-object v3, v3, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    #@10f
    goto :goto_2
.end method

.method public abstract alwaysReadCloseOnTouchAttr()V
.end method

.method public abstract clearContentView()V
.end method

.method public clearFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1049
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    #@4
    .line 1048
    return-void
.end method

.method public abstract closeAllPanels()V
.end method

.method public abstract closePanel(I)V
.end method

.method public final destroy()V
    .locals 1

    #@0
    .prologue
    .line 708
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    #@3
    .line 707
    return-void
.end method

.method public final dispatchOnWindowDismissed(Z)V
    .locals 1
    .param p1, "finishTask"    # Z

    #@0
    .prologue
    .line 874
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 875
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    #@6
    invoke-interface {v0, p1}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed(Z)V

    #@9
    .line 873
    :cond_0
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 1097
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1098
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    #@6
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@9
    .line 1096
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1262
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    #@0
    .prologue
    .line 2029
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    #@0
    .prologue
    .line 2055
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 1139
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2
    return-object v0
.end method

.method public final getCallback()Landroid/view/Window$Callback;
    .locals 1

    #@0
    .prologue
    .line 834
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    #@2
    return-object v0
.end method

.method public final getContainer()Landroid/view/Window;
    .locals 1

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@2
    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    #@0
    .prologue
    .line 1792
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public abstract getCurrentFocus()Landroid/view/View;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method public getElevation()F
    .locals 1

    #@0
    .prologue
    .line 1397
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1866
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1895
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected final getFeatures()I
    .locals 1

    #@0
    .prologue
    .line 1584
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    #@2
    return v0
.end method

.method protected final getForcedWindowFlags()I
    .locals 1

    #@0
    .prologue
    .line 1147
    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    #@2
    return v0
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final getLocalFeatures()I
    .locals 1

    #@0
    .prologue
    .line 1625
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    #@2
    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    #@0
    .prologue
    .line 1693
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getNavigationBarColor()I
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1909
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1881
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1946
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1992
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 2003
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1955
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    #@0
    .prologue
    .line 2094
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public abstract getStatusBarColor()I
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 2

    #@0
    .prologue
    .line 2068
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    #@0
    .prologue
    .line 1769
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public final getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;
    .locals 1

    #@0
    .prologue
    .line 886
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    #@2
    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    #@0
    .prologue
    .line 817
    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    #@2
    return-object v0
.end method

.method public final getWindowStyle()Landroid/content/res/TypedArray;
    .locals 2

    #@0
    .prologue
    .line 666
    monitor-enter p0

    #@1
    .line 667
    :try_start_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 668
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@7
    .line 669
    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    #@9
    .line 668
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    #@f
    .line 671
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v0

    #@13
    .line 666
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public final hasChildren()Z
    .locals 1

    #@0
    .prologue
    .line 703
    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    #@2
    return v0
.end method

.method public hasFeature(I)Z
    .locals 4
    .param p1, "feature"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1613
    invoke-virtual {p0}, Landroid/view/Window;->getFeatures()I

    #@5
    move-result v2

    #@6
    shl-int v3, v0, p1

    #@8
    and-int/2addr v2, v3

    #@9
    if-eqz v2, :cond_0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    move v0, v1

    #@d
    goto :goto_0
.end method

.method protected final hasSoftInputMode()Z
    .locals 1

    #@0
    .prologue
    .line 1154
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    #@2
    return v0
.end method

.method protected haveDimAmount()Z
    .locals 1

    #@0
    .prologue
    .line 1649
    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    #@2
    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 1756
    return-void
.end method

.method public abstract invalidatePanelMenu(I)V
.end method

.method public final isActive()Z
    .locals 1

    #@0
    .prologue
    .line 1249
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    #@2
    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    #@0
    .prologue
    .line 713
    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    #@2
    return v0
.end method

.method public abstract isFloating()Z
.end method

.method public isOverlayWithDecorCaptionEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 2168
    iget-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    #@2
    return v0
.end method

.method public abstract isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public final makeActive()V
    .locals 2

    #@0
    .prologue
    .line 1237
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1238
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@6
    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1239
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@c
    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    #@e
    const/4 v1, 0x0

    #@f
    iput-boolean v1, v0, Landroid/view/Window;->mIsActive:Z

    #@11
    .line 1241
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@13
    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    #@15
    .line 1243
    :cond_1
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    #@18
    .line 1244
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    #@1b
    .line 1236
    return-void
.end method

.method public notifyRestrictedCaptionAreaCallback(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 2173
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2174
    iget-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    #@6
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@9
    .line 2175
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    #@b
    .line 2176
    iget-object v1, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    #@d
    .line 2175
    invoke-interface {v0, v1}, Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;->onRestrictedCaptionAreaChanged(Landroid/graphics/Rect;)V

    #@10
    .line 2172
    :cond_0
    return-void
.end method

.method protected abstract onActive()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onMultiWindowModeChanged()V
.end method

.method public abstract openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract peekDecorView()Landroid/view/View;
.end method

.method public abstract performContextMenuIdentifierAction(II)Z
.end method

.method public abstract performPanelIdentifierAction(III)Z
.end method

.method public abstract performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method protected removeFeature(I)V
    .locals 3
    .param p1, "featureId"    # I

    #@0
    .prologue
    .line 1231
    const/4 v1, 0x1

    #@1
    shl-int v0, v1, p1

    #@3
    .line 1232
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    #@5
    not-int v2, v0

    #@6
    and-int/2addr v1, v2

    #@7
    iput v1, p0, Landroid/view/Window;->mFeatures:I

    #@9
    .line 1233
    iget v1, p0, Landroid/view/Window;->mLocalFeatures:I

    #@b
    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@d
    if-eqz v2, :cond_0

    #@f
    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@11
    iget v2, v2, Landroid/view/Window;->mFeatures:I

    #@13
    not-int v2, v2

    #@14
    and-int/2addr v0, v2

    #@15
    .end local v0    # "flag":I
    :cond_0
    not-int v2, v0

    #@16
    and-int/2addr v1, v2

    #@17
    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    #@19
    .line 1230
    return-void
.end method

.method public final removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;

    #@0
    .prologue
    .line 861
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 862
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 863
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1}, Landroid/view/View;->removeFrameMetricsListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    #@d
    .line 860
    :cond_0
    return-void
.end method

.method public abstract reportActivityRelaunched()V
.end method

.method public requestFeature(I)Z
    .locals 5
    .param p1, "featureId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1221
    shl-int v0, v2, p1

    #@4
    .line 1222
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    #@6
    or-int/2addr v1, v0

    #@7
    iput v1, p0, Landroid/view/Window;->mFeatures:I

    #@9
    .line 1223
    iget v4, p0, Landroid/view/Window;->mLocalFeatures:I

    #@b
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@11
    iget v1, v1, Landroid/view/Window;->mFeatures:I

    #@13
    not-int v1, v1

    #@14
    and-int/2addr v1, v0

    #@15
    :goto_0
    or-int/2addr v1, v4

    #@16
    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    #@18
    .line 1224
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    #@1a
    and-int/2addr v1, v0

    #@1b
    if-eqz v1, :cond_1

    #@1d
    move v1, v2

    #@1e
    :goto_1
    return v1

    #@1f
    :cond_0
    move v1, v0

    #@20
    .line 1223
    goto :goto_0

    #@21
    :cond_1
    move v1, v3

    #@22
    .line 1224
    goto :goto_1
.end method

.method public abstract restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract saveHierarchyState()Landroid/os/Bundle;
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 0
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 2016
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 0
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 2042
    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 1128
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@5
    .line 1129
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@7
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@a
    .line 1127
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1421
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 1420
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    #@0
    .prologue
    .line 827
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    #@2
    .line 826
    return-void
.end method

.method public abstract setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setChildInt(II)V
.end method

.method public setClipToOutline(Z)V
    .locals 0
    .param p1, "clipToOutline"    # Z

    #@0
    .prologue
    .line 1409
    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 1
    .param p1, "close"    # Z

    #@0
    .prologue
    .line 1159
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    #@2
    .line 1160
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    #@5
    .line 1158
    return-void
.end method

.method public setCloseOnTouchOutsideIfNotSet(Z)V
    .locals 1
    .param p1, "close"    # Z

    #@0
    .prologue
    .line 1165
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1166
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    #@6
    .line 1167
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    #@9
    .line 1164
    :cond_0
    return-void
.end method

.method public setContainer(Landroid/view/Window;)V
    .locals 1
    .param p1, "container"    # Landroid/view/Window;

    #@0
    .prologue
    .line 683
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@2
    .line 684
    if-eqz p1, :cond_0

    #@4
    .line 686
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    #@6
    or-int/lit8 v0, v0, 0x2

    #@8
    iput v0, p0, Landroid/view/Window;->mFeatures:I

    #@a
    .line 687
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    #@c
    or-int/lit8 v0, v0, 0x2

    #@e
    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    #@10
    .line 688
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    #@13
    .line 682
    :cond_0
    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setDecorCaptionShade(I)V
.end method

.method public setDefaultIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1724
    return-void
.end method

.method public setDefaultLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1742
    return-void
.end method

.method protected setDefaultWindowFormat(I)V
    .locals 2
    .param p1, "format"    # I

    #@0
    .prologue
    .line 1639
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    #@2
    .line 1640
    iget-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1641
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@9
    move-result-object v0

    #@a
    .line 1642
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@c
    .line 1643
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@f
    .line 1638
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setDimAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    #@0
    .prologue
    .line 1111
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 1112
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@6
    .line 1113
    const/4 v1, 0x1

    #@7
    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    #@9
    .line 1114
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@c
    .line 1110
    return-void
.end method

.method public setDisableWallpaperTouchEvents(Z)V
    .locals 2
    .param p1, "disable"    # Z

    #@0
    .prologue
    const/16 v1, 0x800

    #@2
    .line 1174
    if-eqz p1, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/view/Window;->setPrivateFlags(II)V

    #@8
    .line 1173
    return-void

    #@9
    .line 1175
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    #@0
    .prologue
    .line 1389
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1806
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1837
    return-void
.end method

.method public abstract setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setFeatureDrawableAlpha(II)V
.end method

.method public abstract setFeatureDrawableResource(II)V
.end method

.method public abstract setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract setFeatureInt(II)V
.end method

.method public setFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 1072
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 1073
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@6
    not-int v2, p2

    #@7
    and-int/2addr v1, v2

    #@8
    and-int v2, p1, p2

    #@a
    or-int/2addr v1, v2

    #@b
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@d
    .line 1074
    iget v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    #@f
    or-int/2addr v1, p2

    #@10
    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    #@12
    .line 1075
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@15
    .line 1071
    return-void
.end method

.method public setFormat(I)V
    .locals 3
    .param p1, "format"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 983
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@4
    move-result-object v0

    #@5
    .line 984
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    #@7
    .line 985
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@9
    .line 986
    const/4 v1, 0x1

    #@a
    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    #@c
    .line 991
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@f
    .line 982
    return-void

    #@10
    .line 988
    :cond_0
    iget v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    #@12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@14
    .line 989
    iput-boolean v2, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    #@16
    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 954
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 955
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@6
    .line 956
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@9
    .line 952
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1715
    return-void
.end method

.method public setLayout(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 936
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 937
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@6
    .line 938
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@8
    .line 939
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@b
    .line 935
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    #@0
    .prologue
    .line 1750
    return-void
.end method

.method public setLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1733
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    .line 1682
    return-void
.end method

.method public abstract setNavigationBarColor(I)V
.end method

.method protected setNeedsMenuKey(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1088
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 1089
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@6
    .line 1090
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@9
    .line 1087
    return-void
.end method

.method public final setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .locals 0
    .param p1, "dcb"    # Landroid/view/Window$OnWindowDismissedCallback;

    #@0
    .prologue
    .line 869
    iput-object p1, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    #@2
    .line 868
    return-void
.end method

.method public setOverlayWithDecorCaptionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2163
    iput-boolean p1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    #@2
    .line 2162
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1853
    return-void
.end method

.method public abstract setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final setRestrictedCaptionAreaListener(Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 895
    iput-object p1, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    #@3
    .line 896
    if-eqz p1, :cond_0

    #@5
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@a
    :cond_0
    iput-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    #@c
    .line 894
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1823
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1922
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1968
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1981
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1937
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 0
    .param p1, "sharedElementsUseOverlay"    # Z

    #@0
    .prologue
    .line 2105
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1015
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@4
    move-result-object v0

    #@5
    .line 1016
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    #@7
    .line 1017
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@9
    .line 1018
    const/4 v1, 0x1

    #@a
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    #@c
    .line 1022
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@f
    .line 1014
    return-void

    #@10
    .line 1020
    :cond_0
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    #@12
    goto :goto_0
.end method

.method public abstract setStatusBarColor(I)V
.end method

.method public setSustainedPerformanceMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/high16 v1, 0x40000

    #@2
    .line 1195
    if-eqz p1, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/view/Window;->setPrivateFlags(II)V

    #@8
    .line 1194
    return-void

    #@9
    .line 1196
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 2154
    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 0
    .param p1, "fadeDurationMillis"    # J

    #@0
    .prologue
    .line 2082
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    #@0
    .prologue
    .line 1780
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 966
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 967
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6
    .line 968
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@9
    .line 965
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    #@0
    .prologue
    .line 1700
    return-void
.end method

.method public setUiOptions(II)V
    .locals 0
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 1708
    return-void
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public setWindowAnimations(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1002
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 1003
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@6
    .line 1004
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@9
    .line 1001
    return-void
.end method

.method public final setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V
    .locals 0
    .param p1, "wccb"    # Landroid/view/Window$WindowControllerCallback;

    #@0
    .prologue
    .line 881
    iput-object p1, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    #@2
    .line 880
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 724
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    #@4
    .line 723
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    #@0
    .prologue
    .line 736
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    #@2
    .line 737
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@4
    .line 738
    if-nez p4, :cond_1

    #@6
    .line 739
    const-string/jumbo v0, "persist.sys.ui.hw"

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@d
    move-result v0

    #@e
    .line 738
    :goto_0
    iput-boolean v0, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    #@10
    .line 740
    if-nez p1, :cond_0

    #@12
    .line 741
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@14
    const-string/jumbo v1, "window"

    #@17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object p1

    #@1b
    .end local p1    # "wm":Landroid/view/WindowManager;
    check-cast p1, Landroid/view/WindowManager;

    #@1d
    .line 743
    .restart local p1    # "wm":Landroid/view/WindowManager;
    :cond_0
    check-cast p1, Landroid/view/WindowManagerImpl;

    #@1f
    .end local p1    # "wm":Landroid/view/WindowManager;
    invoke-virtual {p1, p0}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    #@25
    .line 735
    return-void

    #@26
    .line 738
    .restart local p1    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v0, 0x1

    #@27
    goto :goto_0
.end method

.method public shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1184
    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1185
    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    #@e
    move-result v0

    #@f
    .line 1184
    if-eqz v0, :cond_0

    #@11
    .line 1185
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1186
    const/4 v0, 0x1

    #@18
    return v0

    #@19
    .line 1188
    :cond_0
    return v1
.end method

.method public abstract superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract takeInputQueue(Landroid/view/InputQueue$Callback;)V
.end method

.method public abstract takeKeyEvents(Z)V
.end method

.method public abstract takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
.end method

.method public abstract togglePanel(ILandroid/view/KeyEvent;)V
.end method
