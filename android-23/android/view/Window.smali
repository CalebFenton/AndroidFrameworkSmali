.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$Callback;,
        Landroid/view/Window$OnWindowDismissedCallback;
    }
.end annotation


# static fields
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

.field public static final FEATURE_LEFT_ICON:I = 0x3

.field public static final FEATURE_MAX:I = 0xd

.field public static final FEATURE_NO_TITLE:I = 0x1

.field public static final FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final FEATURE_PROGRESS:I = 0x2

.field public static final FEATURE_RIGHT_ICON:I = 0x4

.field public static final FEATURE_SWIPE_TO_DISMISS:I = 0xb

.field public static final ID_ANDROID_CONTENT:I = 0x1020002

.field public static final NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:navigation:background"

.field public static final PROGRESS_END:I = 0x2710

.field public static final PROGRESS_INDETERMINATE_OFF:I = -0x4

.field public static final PROGRESS_INDETERMINATE_ON:I = -0x3

.field public static final PROGRESS_SECONDARY_END:I = 0x7530

.field public static final PROGRESS_SECONDARY_START:I = 0x4e20

.field public static final PROGRESS_START:I = 0x0

.field public static final PROGRESS_VISIBILITY_OFF:I = -0x2

.field public static final PROGRESS_VISIBILITY_ON:I = -0x1

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

.field private mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

.field private mSetCloseOnTouchOutside:Z

.field private final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

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
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 191
    iput-boolean v1, p0, Landroid/view/Window;->mIsActive:Z

    #@6
    .line 192
    iput-boolean v1, p0, Landroid/view/Window;->mHasChildren:Z

    #@8
    .line 193
    iput-boolean v1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    #@a
    .line 194
    iput-boolean v1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    #@c
    .line 195
    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    #@e
    .line 200
    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    #@10
    .line 201
    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    #@12
    .line 202
    const/4 v0, -0x1

    #@13
    iput v0, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    #@15
    .line 204
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    #@17
    .line 210
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@19
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@1c
    .line 209
    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@1e
    .line 479
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@20
    .line 480
    invoke-static {p1}, Landroid/view/Window;->getDefaultFeatures(Landroid/content/Context;)I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    #@26
    iput v0, p0, Landroid/view/Window;->mFeatures:I

    #@28
    .line 478
    return-void
.end method

.method public static getDefaultFeatures(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1334
    const/4 v0, 0x0

    #@1
    .line 1336
    .local v0, "features":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    .line 1337
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1120093

    #@8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1338
    const/4 v0, 0x1

    #@f
    .line 1341
    :cond_0
    const v2, 0x1120094

    #@12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1342
    or-int/lit8 v0, v0, 0x40

    #@1a
    .line 1345
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
    .line 959
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@4
    move-result v5

    #@5
    float-to-int v2, v5

    #@6
    .line 960
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@9
    move-result v5

    #@a
    float-to-int v3, v5

    #@b
    .line 961
    .local v3, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    #@12
    move-result v1

    #@13
    .line 962
    .local v1, "slop":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    .line 963
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
    .line 964
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@21
    move-result v5

    #@22
    add-int/2addr v5, v1

    #@23
    if-gt v2, v5, :cond_0

    #@25
    .line 965
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
    .line 846
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 847
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
    .line 848
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@10
    .line 845
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
    .line 800
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    #@3
    .line 799
    return-void
.end method

.method public addPrivateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 805
    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    #@3
    .line 804
    return-void
.end method

.method adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "wp"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    const/16 v5, 0x3e8

    #@2
    .line 579
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    .line 580
    .local v0, "curTitle":Ljava/lang/CharSequence;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@8
    if-lt v3, v5, :cond_c

    #@a
    .line 581
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@c
    const/16 v4, 0x7cf

    #@e
    if-gt v3, v4, :cond_c

    #@10
    .line 582
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@12
    if-nez v3, :cond_0

    #@14
    .line 583
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@17
    move-result-object v1

    #@18
    .line 584
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_0

    #@1a
    .line 585
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@1d
    move-result-object v3

    #@1e
    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@20
    .line 588
    .end local v1    # "decor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    #@22
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_3

    #@28
    .line 590
    :cond_1
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2a
    const/16 v4, 0x3e9

    #@2c
    if-ne v3, v4, :cond_6

    #@2e
    .line 591
    const-string/jumbo v2, "Media"

    #@31
    .line 605
    .local v2, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    const-string/jumbo v4, ":"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    iget-object v4, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 608
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@52
    .line 619
    .end local v2    # "title":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@54
    if-nez v3, :cond_4

    #@56
    .line 620
    iget-object v3, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@58
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@5e
    .line 622
    :cond_4
    iget-boolean v3, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    #@60
    if-eqz v3, :cond_5

    #@62
    .line 623
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@64
    const/high16 v4, 0x1000000

    #@66
    or-int/2addr v3, v4

    #@67
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@69
    .line 578
    :cond_5
    return-void

    #@6a
    .line 592
    :cond_6
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6c
    const/16 v4, 0x3ec

    #@6e
    if-ne v3, v4, :cond_7

    #@70
    .line 593
    const-string/jumbo v2, "MediaOvr"

    #@73
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    #@74
    .line 594
    .end local v2    # "title":Ljava/lang/String;
    :cond_7
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@76
    if-ne v3, v5, :cond_8

    #@78
    .line 595
    const-string/jumbo v2, "Panel"

    #@7b
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    #@7c
    .line 596
    .end local v2    # "title":Ljava/lang/String;
    :cond_8
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@7e
    const/16 v4, 0x3ea

    #@80
    if-ne v3, v4, :cond_9

    #@82
    .line 597
    const-string/jumbo v2, "SubPanel"

    #@85
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    #@86
    .line 598
    .end local v2    # "title":Ljava/lang/String;
    :cond_9
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@88
    const/16 v4, 0x3ed

    #@8a
    if-ne v3, v4, :cond_a

    #@8c
    .line 599
    const-string/jumbo v2, "AboveSubPanel"

    #@8f
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    #@90
    .line 600
    .end local v2    # "title":Ljava/lang/String;
    :cond_a
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@92
    const/16 v4, 0x3eb

    #@94
    if-ne v3, v4, :cond_b

    #@96
    .line 601
    const-string/jumbo v2, "AtchDlg"

    #@99
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    #@9a
    .line 603
    .end local v2    # "title":Ljava/lang/String;
    :cond_b
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@9c
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9f
    move-result-object v2

    #@a0
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_0

    #@a1
    .line 611
    .end local v2    # "title":Ljava/lang/String;
    :cond_c
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@a3
    if-nez v3, :cond_d

    #@a5
    .line 612
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@a7
    if-nez v3, :cond_f

    #@a9
    iget-object v3, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    #@ab
    :goto_2
    iput-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@ad
    .line 614
    :cond_d
    if-eqz v0, :cond_e

    #@af
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@b2
    move-result v3

    #@b3
    if-nez v3, :cond_3

    #@b5
    .line 615
    :cond_e
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@b7
    if-eqz v3, :cond_3

    #@b9
    .line 616
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@bb
    invoke-virtual {p1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@be
    goto :goto_1

    #@bf
    .line 612
    :cond_f
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@c1
    iget-object v3, v3, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    #@c3
    goto :goto_2
.end method

.method public abstract alwaysReadCloseOnTouchAttr()V
.end method

.method public clearFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 816
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    #@4
    .line 815
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
    .line 540
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    #@3
    .line 539
    return-void
.end method

.method public final dispatchOnWindowDismissed()V
    .locals 1

    #@0
    .prologue
    .line 661
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 662
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    #@6
    invoke-interface {v0}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed()V

    #@9
    .line 660
    :cond_0
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 864
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 865
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    #@6
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@9
    .line 863
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1020
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
    .line 1771
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    #@0
    .prologue
    .line 1797
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 906
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2
    return-object v0
.end method

.method public final getCallback()Landroid/view/Window$Callback;
    .locals 1

    #@0
    .prologue
    .line 651
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    #@2
    return-object v0
.end method

.method public final getContainer()Landroid/view/Window;
    .locals 1

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@2
    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    #@0
    .prologue
    .line 1534
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public abstract getCurrentFocus()Landroid/view/View;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1608
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1637
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected final getFeatures()I
    .locals 1

    #@0
    .prologue
    .line 1326
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    #@2
    return v0
.end method

.method protected final getForcedWindowFlags()I
    .locals 1

    #@0
    .prologue
    .line 914
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
    .line 1367
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    #@2
    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    #@0
    .prologue
    .line 1435
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
    .line 1651
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1623
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1688
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1734
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1745
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1697
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    #@0
    .prologue
    .line 1836
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
    .line 1810
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    #@0
    .prologue
    .line 1511
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    #@2
    return-object v0
.end method

.method public final getWindowStyle()Landroid/content/res/TypedArray;
    .locals 2

    #@0
    .prologue
    .line 498
    monitor-enter p0

    #@1
    .line 499
    :try_start_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 500
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@7
    .line 501
    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    #@9
    .line 500
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    #@f
    .line 503
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v0

    #@13
    .line 498
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
    .line 535
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
    .line 1355
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
    .line 921
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    #@2
    return v0
.end method

.method protected haveDimAmount()Z
    .locals 1

    #@0
    .prologue
    .line 1391
    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    #@2
    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 1498
    return-void
.end method

.method public abstract invalidatePanelMenu(I)V
.end method

.method public final isActive()Z
    .locals 1

    #@0
    .prologue
    .line 1007
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    #@2
    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    #@0
    .prologue
    .line 545
    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    #@2
    return v0
.end method

.method public abstract isFloating()Z
.end method

.method public abstract isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public final makeActive()V
    .locals 2

    #@0
    .prologue
    .line 995
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 996
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@6
    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 997
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@c
    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    #@e
    const/4 v1, 0x0

    #@f
    iput-boolean v1, v0, Landroid/view/Window;->mIsActive:Z

    #@11
    .line 999
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@13
    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    #@15
    .line 1001
    :cond_1
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    #@18
    .line 1002
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    #@1b
    .line 994
    return-void
.end method

.method protected abstract onActive()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 989
    const/4 v1, 0x1

    #@1
    shl-int v0, v1, p1

    #@3
    .line 990
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    #@5
    not-int v2, v0

    #@6
    and-int/2addr v1, v2

    #@7
    iput v1, p0, Landroid/view/Window;->mFeatures:I

    #@9
    .line 991
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
    .line 988
    return-void
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
    .line 979
    shl-int v0, v2, p1

    #@4
    .line 980
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    #@6
    or-int/2addr v1, v0

    #@7
    iput v1, p0, Landroid/view/Window;->mFeatures:I

    #@9
    .line 981
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
    .line 982
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
    .line 981
    goto :goto_0

    #@21
    :cond_1
    move v1, v3

    #@22
    .line 982
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
    .line 1758
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 0
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 1784
    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    #@0
    .prologue
    .line 895
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@5
    .line 896
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    #@7
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@a
    .line 894
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1163
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 1162
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    #@0
    .prologue
    .line 644
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    #@2
    .line 643
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
    .line 1151
    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 1
    .param p1, "close"    # Z

    #@0
    .prologue
    .line 926
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    #@2
    .line 927
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    #@5
    .line 925
    return-void
.end method

.method public setCloseOnTouchOutsideIfNotSet(Z)V
    .locals 1
    .param p1, "close"    # Z

    #@0
    .prologue
    .line 932
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 933
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    #@6
    .line 934
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    #@9
    .line 931
    :cond_0
    return-void
.end method

.method public setContainer(Landroid/view/Window;)V
    .locals 1
    .param p1, "container"    # Landroid/view/Window;

    #@0
    .prologue
    .line 515
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    #@2
    .line 516
    if-eqz p1, :cond_0

    #@4
    .line 518
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    #@6
    or-int/lit8 v0, v0, 0x2

    #@8
    iput v0, p0, Landroid/view/Window;->mFeatures:I

    #@a
    .line 519
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    #@c
    or-int/lit8 v0, v0, 0x2

    #@e
    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    #@10
    .line 520
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    #@13
    .line 514
    :cond_0
    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public setDefaultIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1466
    return-void
.end method

.method public setDefaultLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1484
    return-void
.end method

.method protected setDefaultWindowFormat(I)V
    .locals 2
    .param p1, "format"    # I

    #@0
    .prologue
    .line 1381
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    #@2
    .line 1382
    iget-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1383
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@9
    move-result-object v0

    #@a
    .line 1384
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@c
    .line 1385
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@f
    .line 1380
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setDimAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    #@0
    .prologue
    .line 878
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 879
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@6
    .line 880
    const/4 v1, 0x1

    #@7
    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    #@9
    .line 881
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@c
    .line 877
    return-void
.end method

.method public setDisableWallpaperTouchEvents(Z)V
    .locals 2
    .param p1, "disable"    # Z

    #@0
    .prologue
    const/16 v1, 0x800

    #@2
    .line 941
    if-eqz p1, :cond_0

    #@4
    move v0, v1

    #@5
    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/view/Window;->setPrivateFlags(II)V

    #@8
    .line 940
    return-void

    #@9
    .line 942
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
    .line 1140
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1548
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1579
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
    .line 839
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 840
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
    .line 841
    iget v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    #@f
    or-int/2addr v1, p2

    #@10
    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    #@12
    .line 842
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@15
    .line 838
    return-void
.end method

.method public setFormat(I)V
    .locals 3
    .param p1, "format"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 750
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@4
    move-result-object v0

    #@5
    .line 751
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    #@7
    .line 752
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@9
    .line 753
    const/4 v1, 0x1

    #@a
    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    #@c
    .line 758
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@f
    .line 749
    return-void

    #@10
    .line 755
    :cond_0
    iget v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    #@12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    #@14
    .line 756
    iput-boolean v2, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    #@16
    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 721
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 722
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@6
    .line 723
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@9
    .line 719
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1457
    return-void
.end method

.method public setLayout(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 703
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 704
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    #@6
    .line 705
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@8
    .line 706
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@b
    .line 702
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    #@0
    .prologue
    .line 1492
    return-void
.end method

.method public setLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 1475
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    .line 1424
    return-void
.end method

.method public abstract setNavigationBarColor(I)V
.end method

.method protected setNeedsMenuKey(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 855
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 856
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@6
    .line 857
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@9
    .line 854
    return-void
.end method

.method public final setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .locals 0
    .param p1, "dcb"    # Landroid/view/Window$OnWindowDismissedCallback;

    #@0
    .prologue
    .line 656
    iput-object p1, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    #@2
    .line 655
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1595
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1565
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1664
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1710
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1723
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1679
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 0
    .param p1, "sharedElementsUseOverlay"    # Z

    #@0
    .prologue
    .line 1847
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 2
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 782
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@4
    move-result-object v0

    #@5
    .line 783
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    #@7
    .line 784
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@9
    .line 785
    const/4 v1, 0x1

    #@a
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    #@c
    .line 789
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@f
    .line 781
    return-void

    #@10
    .line 787
    :cond_0
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    #@12
    goto :goto_0
.end method

.method public abstract setStatusBarColor(I)V
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
    .line 1824
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    #@0
    .prologue
    .line 1522
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
    .line 733
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 734
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@6
    .line 735
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@9
    .line 732
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    #@0
    .prologue
    .line 1442
    return-void
.end method

.method public setUiOptions(II)V
    .locals 0
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 1450
    return-void
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public setWindowAnimations(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 769
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@3
    move-result-object v0

    #@4
    .line 770
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@6
    .line 771
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    #@9
    .line 768
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 556
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    #@4
    .line 555
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
    .line 568
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    #@2
    .line 569
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    #@4
    .line 570
    if-nez p4, :cond_1

    #@6
    .line 571
    const-string/jumbo v0, "persist.sys.ui.hw"

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@d
    move-result v0

    #@e
    .line 570
    :goto_0
    iput-boolean v0, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    #@10
    .line 572
    if-nez p1, :cond_0

    #@12
    .line 573
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
    .line 575
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
    .line 567
    return-void

    #@26
    .line 570
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
    .line 951
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
    .line 952
    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    #@e
    move-result v0

    #@f
    .line 951
    if-eqz v0, :cond_0

    #@11
    .line 952
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 953
    const/4 v0, 0x1

    #@18
    return v0

    #@19
    .line 955
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
