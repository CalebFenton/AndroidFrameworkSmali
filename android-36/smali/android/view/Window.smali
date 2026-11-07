.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$Callback;,
        Landroid/view/Window$OnFrameMetricsAvailableListener;,
        Landroid/view/Window$OnWindowDismissedCallback;,
        Landroid/view/Window$OnWindowSwipeDismissedCallback;,
        Landroid/view/Window$WindowControllerCallback;,
        Landroid/view/Window$DecorCallback;,
        Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;,
        Landroid/view/Window$OnContentApplyWindowInsetsListener;
    }
.end annotation


# static fields
.field public static final whitelist DECOR_CAPTION_SHADE_AUTO:I = 0x0

.field public static final whitelist DECOR_CAPTION_SHADE_DARK:I = 0x2

.field public static final whitelist DECOR_CAPTION_SHADE_LIGHT:I = 0x1

.field protected static final whitelist DEFAULT_FEATURES:I = 0x41
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_ACTION_BAR:I = 0x8

.field public static final whitelist FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final whitelist FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final whitelist FEATURE_ACTIVITY_TRANSITIONS:I = 0xd

.field public static final whitelist FEATURE_CONTENT_TRANSITIONS:I = 0xc

.field public static final whitelist FEATURE_CONTEXT_MENU:I = 0x6

.field public static final whitelist FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final whitelist FEATURE_INDETERMINATE_PROGRESS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_LEFT_ICON:I = 0x3

.field public static final greylist-max-r FEATURE_MAX:I = 0xd

.field public static final whitelist FEATURE_NO_TITLE:I = 0x1

.field public static final whitelist FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final whitelist FEATURE_PROGRESS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_RIGHT_ICON:I = 0x4

.field public static final whitelist FEATURE_SWIPE_TO_DISMISS:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ID_ANDROID_CONTENT:I = 0x1020002

.field public static final whitelist NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:navigation:background"

.field public static final whitelist PROGRESS_END:I = 0x2710
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_INDETERMINATE_OFF:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_INDETERMINATE_ON:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_SECONDARY_END:I = 0x7530
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_SECONDARY_START:I = 0x4e20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_START:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_VISIBILITY_OFF:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_VISIBILITY_ON:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:status:background"

.field protected static blacklist sToolkitSetFrameRateReadOnlyFlagValue:Z


# instance fields
.field private greylist-max-o mActiveChild:Landroid/view/Window;

.field private greylist mAppName:Ljava/lang/String;

.field private greylist mAppToken:Landroid/os/IBinder;

.field private greylist mCallback:Landroid/view/Window$Callback;

.field private greylist-max-o mCloseOnSwipeEnabled:Z

.field private greylist-max-o mCloseOnTouchOutside:Z

.field private greylist-max-o mContainer:Landroid/view/Window;

.field private final greylist mContext:Landroid/content/Context;

.field private blacklist mDecorCallback:Landroid/view/Window$DecorCallback;

.field private greylist-max-o mDefaultWindowFormat:I

.field private greylist mDestroyed:Z

.field private greylist mFeatures:I

.field private greylist-max-o mForcedWindowFlags:I

.field private greylist mHardwareAccelerated:Z

.field private greylist-max-o mHasChildren:Z

.field private greylist-max-o mHasSoftInputMode:Z

.field private greylist-max-o mHaveDimAmount:Z

.field private greylist-max-o mHaveWindowFormat:Z

.field private greylist-max-o mIsActive:Z

.field private greylist mLocalFeatures:I

.field private greylist-max-o mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

.field private greylist-max-o mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

.field private greylist-max-o mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

.field private greylist-max-o mOverlayWithDecorCaptionEnabled:Z

.field private greylist-max-o mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

.field private greylist-max-o mSetCloseOnTouchOutside:Z

.field private blacklist mSystemBarAppearance:I

.field private final greylist mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private greylist-max-o mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private greylist-max-p mWindowManager:Landroid/view/WindowManager;

.field private greylist mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 343
    invoke-static {}, Landroid/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    .line 342
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 315
    iput-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    .line 316
    iput-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 317
    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 318
    iput v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 325
    iput-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 326
    iput-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 327
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 329
    iput-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 335
    iput-boolean v0, p0, Landroid/view/Window;->mCloseOnSwipeEnabled:Z

    .line 346
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 779
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 780
    invoke-static {p1}, Landroid/view/Window;->getDefaultFeatures(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 781
    return-void
.end method

.method public static whitelist getDefaultFeatures(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2153
    const/4 v0, 0x0

    .line 2155
    .local v0, "features":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2156
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1110135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2157
    or-int/lit8 v0, v0, 0x1

    .line 2160
    :cond_10
    const v2, 0x1110134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2161
    or-int/lit8 v0, v0, 0x40

    .line 2164
    :cond_1b
    return v0
.end method

.method private greylist-max-o isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1664
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1665
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1666
    .local v1, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    .line 1667
    .local v2, "slop":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 1668
    .local v3, "decorView":Landroid/view/View;
    neg-int v4, v2

    if-lt v0, v4, :cond_2d

    neg-int v4, v2

    if-lt v1, v4, :cond_2d

    .line 1669
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_2d

    .line 1670
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    if-le v1, v4, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v4, 0x1

    .line 1668
    :goto_2e
    return v4
.end method

.method private greylist-max-o setPrivateFlags(II)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 1313
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1314
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1315
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1316
    return-void
.end method


# virtual methods
.method public abstract whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public whitelist addFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 1242
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    .line 1243
    return-void
.end method

.method public final whitelist addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 983
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 984
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 988
    if-eqz p1, :cond_c

    .line 992
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->addFrameMetricsListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 993
    return-void

    .line 989
    :cond_c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 985
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t observe a Window without an attached view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-r addPrivateFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 1256
    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1257
    return-void
.end method

.method public whitelist addSystemFlags(I)V
    .registers 2
    .param p1, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1272
    invoke-virtual {p0, p1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 1273
    return-void
.end method

.method greylist-max-o adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .registers 8
    .param p1, "wp"    # Landroid/view/WindowManager$LayoutParams;

    .line 885
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 886
    .local v0, "curTitle":Ljava/lang/CharSequence;
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v2, ":"

    const/16 v3, 0x20

    const/16 v4, 0x3e8

    if-lt v1, v4, :cond_8d

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-gt v1, v5, :cond_8d

    .line 888
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_24

    .line 889
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 890
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_24

    .line 891
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 894
    .end local v1    # "decor":Landroid/view/View;
    :cond_24
    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e4

    .line 895
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 896
    .local v1, "title":Ljava/lang/StringBuilder;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e9

    if-ne v3, v5, :cond_3d

    .line 897
    const-string v3, "Media"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 898
    :cond_3d
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ec

    if-ne v3, v5, :cond_49

    .line 899
    const-string v3, "MediaOvr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 900
    :cond_49
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v4, :cond_53

    .line 901
    const-string v3, "Panel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 902
    :cond_53
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_5f

    .line 903
    const-string v3, "SubPanel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 904
    :cond_5f
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_6b

    .line 905
    const-string v3, "AboveSubPanel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 906
    :cond_6b
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_77

    .line 907
    const-string v3, "AtchDlg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 909
    :cond_77
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 911
    :goto_7c
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_89

    .line 912
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    :cond_89
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 915
    .end local v1    # "title":Ljava/lang/StringBuilder;
    goto :goto_e4

    .line 916
    :cond_8d
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v1, v4, :cond_c2

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb7

    if-gt v1, v4, :cond_c2

    .line 922
    if-eqz v0, :cond_a1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e4

    .line 923
    :cond_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 924
    .restart local v1    # "title":Ljava/lang/StringBuilder;
    const-string v3, "Sys"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 925
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_be

    .line 926
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :cond_be
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 929
    .end local v1    # "title":Ljava/lang/StringBuilder;
    goto :goto_e4

    .line 931
    :cond_c2
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_d3

    .line 932
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-nez v1, :cond_cd

    iget-object v1, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    goto :goto_d1

    :cond_cd
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v1, v1, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    :goto_d1
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 934
    :cond_d3
    if-eqz v0, :cond_db

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e4

    :cond_db
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v1, :cond_e4

    .line 936
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 939
    :cond_e4
    :goto_e4
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_f0

    .line 940
    iget-object v1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 942
    :cond_f0
    iget-boolean v1, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    const/high16 v2, 0x1000000

    if-nez v1, :cond_fd

    iget-object v1, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_102

    .line 944
    :cond_fd
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 946
    :cond_102
    return-void
.end method

.method public abstract greylist alwaysReadCloseOnTouchAttr()V
.end method

.method public abstract greylist-max-o clearContentView()V
.end method

.method public whitelist clearFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 1283
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    .line 1284
    return-void
.end method

.method public abstract whitelist closeAllPanels()V
.end method

.method public abstract whitelist closePanel(I)V
.end method

.method public blacklist decorFitsSystemWindows()Z
    .registers 2

    .line 1573
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o destroy()V
    .registers 2

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    .line 842
    invoke-virtual {p0}, Landroid/view/Window;->onDestroy()V

    .line 843
    return-void
.end method

.method public final blacklist dispatchOnSystemBarAppearanceChanged(I)V
    .registers 3
    .param p1, "appearance"    # I

    .line 1059
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSystemBarAppearance(I)V

    .line 1060
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    if-eqz v0, :cond_c

    .line 1061
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    invoke-interface {v0, p1}, Landroid/view/Window$DecorCallback;->onSystemBarAppearanceChanged(I)V

    .line 1063
    :cond_c
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    if-eqz v0, :cond_15

    .line 1064
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-interface {v0, p1}, Landroid/view/Window$WindowControllerCallback;->updateSystemBarsAppearance(I)V

    .line 1066
    :cond_15
    return-void
.end method

.method public final greylist-max-o dispatchOnWindowDismissed(ZZ)V
    .registers 4
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .line 1013
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    if-eqz v0, :cond_9

    .line 1014
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed(ZZ)V

    .line 1016
    :cond_9
    return-void
.end method

.method public final greylist-max-o dispatchOnWindowSwipeDismissed()V
    .registers 2

    .line 1025
    iget-object v0, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    if-eqz v0, :cond_9

    .line 1026
    iget-object v0, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    invoke-interface {v0}, Landroid/view/Window$OnWindowSwipeDismissedCallback;->onWindowSwipeDismissed()V

    .line 1028
    :cond_9
    return-void
.end method

.method protected greylist-max-o dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1322
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_9

    .line 1323
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1325
    :cond_9
    return-void
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1735
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAllowEnterTransitionOverlap()Z
    .registers 2

    .line 2590
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getAllowReturnTransitionOverlap()Z
    .registers 2

    .line 2618
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist getAttributes()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 1598
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final whitelist getCallback()Landroid/view/Window$Callback;
    .registers 2

    .line 972
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public whitelist getColorMode()I
    .registers 2

    .line 1515
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v0

    return v0
.end method

.method public final whitelist getContainer()Landroid/view/Window;
    .registers 2

    .line 832
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .registers 2

    .line 2353
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 791
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract whitelist getCurrentFocus()Landroid/view/View;
.end method

.method public abstract whitelist getDecorView()Landroid/view/View;
.end method

.method public whitelist getDesiredHdrHeadroom()F
    .registers 2

    .line 1391
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getDesiredHdrHeadroom()F

    move-result v0

    return v0
.end method

.method public greylist-max-o getElevation()F
    .registers 2

    .line 1904
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 2427
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 2456
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final whitelist getFeatures()I
    .registers 2

    .line 2145
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method protected final whitelist getForcedWindowFlags()I
    .registers 2

    .line 1606
    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public whitelist getFrameRateBoostOnTouchEnabled()Z
    .registers 2

    .line 1421
    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_d

    .line 1422
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFrameRateBoostOnTouchEnabled()Z

    move-result v0

    return v0

    .line 1424
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getInsetsController()Landroid/view/WindowInsetsController;
    .registers 2

    .line 3006
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final whitelist getLocalFeatures()I
    .registers 2

    .line 2186
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public whitelist getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .line 2254
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 2114
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getNavigationBarColor()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getNavigationBarDividerColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2783
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 3

    .line 3025
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getReenterTransition()Landroid/transition/Transition;
    .registers 2

    .line 2470
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getReturnTransition()Landroid/transition/Transition;
    .registers 2

    .line 2442
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .registers 2

    .line 3017
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 2507
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 2553
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementReenterTransition()Landroid/transition/Transition;
    .registers 2

    .line 2564
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementReturnTransition()Landroid/transition/Transition;
    .registers 2

    .line 2516
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementsUseOverlay()Z
    .registers 2

    .line 2657
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStatusBarBackgroundView()Landroid/view/View;
    .registers 2

    .line 2105
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getStatusBarColor()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final blacklist getSystemBarAppearance()I
    .registers 2

    .line 1053
    iget v0, p0, Landroid/view/Window;->mSystemBarAppearance:I

    return v0
.end method

.method public whitelist getSystemGestureExclusionRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 2902
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransitionBackgroundFadeDuration()J
    .registers 3

    .line 2631
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTransitionManager()Landroid/transition/TransitionManager;
    .registers 2

    .line 2330
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getVolumeControlStream()I
.end method

.method public final greylist-max-o getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;
    .registers 2

    .line 1037
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 955
    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final whitelist getWindowStyle()Landroid/content/res/TypedArray;
    .registers 3

    .line 799
    monitor-enter p0

    .line 800
    :try_start_1
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    if-nez v0, :cond_f

    .line 801
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 804
    :cond_f
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    monitor-exit p0

    return-object v0

    .line 805
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final whitelist hasChildren()Z
    .registers 2

    .line 836
    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method public whitelist hasFeature(I)Z
    .registers 5
    .param p1, "feature"    # I

    .line 2174
    invoke-virtual {p0}, Landroid/view/Window;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method protected final whitelist hasSoftInputMode()Z
    .registers 2

    .line 1613
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method protected greylist-max-o haveDimAmount()Z
    .registers 2

    .line 2210
    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    return v0
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 2317
    return-void
.end method

.method public abstract whitelist invalidatePanelMenu(I)V
.end method

.method public final whitelist isActive()Z
    .registers 2

    .line 1712
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public final greylist-max-r isDestroyed()Z
    .registers 2

    .line 852
    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return v0
.end method

.method public abstract whitelist isFloating()Z
.end method

.method public whitelist isFrameRatePowerSavingsBalanced()Z
    .registers 2

    .line 1457
    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_d

    .line 1458
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFrameRatePowerSavingsBalanced()Z

    move-result v0

    return v0

    .line 1460
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNavigationBarContrastEnforced()Z
    .registers 2

    .line 2855
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOverlayWithDecorCaptionEnabled()Z
    .registers 2

    .line 2946
    iget-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    return v0
.end method

.method public abstract whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public whitelist isStatusBarContrastEnforced()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2821
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isWideColorGamut()Z
    .registers 3

    .line 1526
    invoke-virtual {p0}, Landroid/view/Window;->getColorMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 1527
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 1526
    :goto_1b
    return v1
.end method

.method public final whitelist makeActive()V
    .registers 3

    .line 1700
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v0, :cond_15

    .line 1701
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    if-eqz v0, :cond_11

    .line 1702
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/Window;->mIsActive:Z

    .line 1704
    :cond_11
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    .line 1706
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 1707
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    .line 1708
    return-void
.end method

.method public greylist-max-o notifyRestrictedCaptionAreaCallback(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2951
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    if-eqz v0, :cond_10

    .line 2952
    iget-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2953
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    iget-object v1, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;->onRestrictedCaptionAreaChanged(Landroid/graphics/Rect;)V

    .line 2956
    :cond_10
    return-void
.end method

.method protected abstract whitelist onActive()V
.end method

.method public abstract whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method protected blacklist onDestroy()V
    .registers 1

    .line 847
    return-void
.end method

.method public final blacklist onDrawLegacyNavigationBarBackgroundChanged(Z)Z
    .registers 3
    .param p1, "drawLegacyNavigationBarBackground"    # Z

    .line 1071
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    if-nez v0, :cond_6

    .line 1072
    const/4 v0, 0x0

    return v0

    .line 1074
    :cond_6
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    invoke-interface {v0, p1}, Landroid/view/Window$DecorCallback;->onDrawLegacyNavigationBarBackgroundChanged(Z)Z

    move-result v0

    return v0
.end method

.method public abstract greylist-max-o onMultiWindowModeChanged()V
.end method

.method public abstract greylist-max-o onPictureInPictureModeChanged(Z)V
.end method

.method public abstract whitelist openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract whitelist peekDecorView()Landroid/view/View;
.end method

.method public abstract whitelist performContextMenuIdentifierAction(II)Z
.end method

.method public abstract whitelist performPanelIdentifierAction(III)Z
.end method

.method public abstract whitelist performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method public whitelist registerScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 2921
    return-void
.end method

.method protected greylist-max-o removeFeature(I)V
    .registers 5
    .param p1, "featureId"    # I

    .line 1694
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 1695
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 1696
    iget v1, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v2, v2, Landroid/view/Window;->mFeatures:I

    not-int v2, v2

    and-int/2addr v2, v0

    goto :goto_16

    :cond_15
    move v2, v0

    :goto_16
    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1697
    return-void
.end method

.method public final whitelist removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 999
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1000
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 1001
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->removeFrameMetricsListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 1003
    :cond_d
    return-void
.end method

.method public whitelist requestFeature(I)Z
    .registers 6
    .param p1, "featureId"    # I

    .line 1684
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 1685
    .local v1, "flag":I
    iget v2, p0, Landroid/view/Window;->mFeatures:I

    or-int/2addr v2, v1

    iput v2, p0, Landroid/view/Window;->mFeatures:I

    .line 1686
    iget v2, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v3, :cond_15

    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v3, v3, Landroid/view/Window;->mFeatures:I

    not-int v3, v3

    and-int/2addr v3, v1

    goto :goto_16

    :cond_15
    move v3, v1

    :goto_16
    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1687
    iget v2, p0, Landroid/view/Window;->mFeatures:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 2912
    return-void
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1754
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1755
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_7

    .line 1758
    return-object v0

    .line 1756
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Window"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract whitelist restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist saveHierarchyState()Landroid/os/Bundle;
.end method

.method public whitelist setAllowEnterTransitionOverlap(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .line 2577
    return-void
.end method

.method public whitelist setAllowReturnTransitionOverlap(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .line 2604
    return-void
.end method

.method public whitelist setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    .line 1587
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1588
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1589
    return-void
.end method

.method public whitelist setBackgroundBlurRadius(I)V
    .registers 2
    .param p1, "blurRadius"    # I

    .line 1975
    return-void
.end method

.method public abstract whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public whitelist setBackgroundDrawableResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1928
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1929
    return-void
.end method

.method public whitelist setCallback(Landroid/view/Window$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .line 965
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    .line 966
    return-void
.end method

.method public abstract whitelist setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setChildInt(II)V
.end method

.method public whitelist setClipToOutline(Z)V
    .registers 2
    .param p1, "clipToOutline"    # Z

    .line 1916
    return-void
.end method

.method public greylist setCloseOnTouchOutside(Z)V
    .registers 3
    .param p1, "close"    # Z

    .line 1619
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1620
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1621
    return-void
.end method

.method public greylist setCloseOnTouchOutsideIfNotSet(Z)V
    .registers 3
    .param p1, "close"    # Z

    .line 1626
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    if-nez v0, :cond_9

    .line 1627
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1628
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1630
    :cond_9
    return-void
.end method

.method public whitelist setColorMode(I)V
    .registers 3
    .param p1, "colorMode"    # I

    .line 1345
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1346
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    .line 1347
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1348
    return-void
.end method

.method public whitelist setContainer(Landroid/view/Window;)V
    .registers 3
    .param p1, "container"    # Landroid/view/Window;

    .line 816
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 817
    if-eqz p1, :cond_13

    .line 819
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 820
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    .line 823
    :cond_13
    return-void
.end method

.method public abstract whitelist setContentView(I)V
.end method

.method public abstract whitelist setContentView(Landroid/view/View;)V
.end method

.method public abstract whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public final blacklist setDecorCallback(Landroid/view/Window$DecorCallback;)V
    .registers 2
    .param p1, "decorCallback"    # Landroid/view/Window$DecorCallback;

    .line 1042
    iput-object p1, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    .line 1043
    return-void
.end method

.method public abstract whitelist setDecorCaptionShade(I)V
.end method

.method public whitelist setDecorFitsSystemWindows(Z)V
    .registers 2
    .param p1, "decorFitsSystemWindows"    # Z

    .line 1569
    return-void
.end method

.method public greylist-max-o setDefaultIcon(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 2285
    return-void
.end method

.method public greylist-max-o setDefaultLogo(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 2303
    return-void
.end method

.method protected whitelist setDefaultWindowFormat(I)V
    .registers 3
    .param p1, "format"    # I

    .line 2200
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 2201
    iget-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    if-nez v0, :cond_f

    .line 2202
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2203
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2204
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 2206
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_f
    return-void
.end method

.method public whitelist setDesiredHdrHeadroom(F)V
    .registers 3
    .param p1, "desiredHeadroom"    # F

    .line 1379
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1380
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setDesiredHdrHeadroom(F)V

    .line 1381
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1382
    return-void
.end method

.method public whitelist setDimAmount(F)V
    .registers 4
    .param p1, "amount"    # F

    .line 1539
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1540
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1541
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 1542
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1543
    return-void
.end method

.method public whitelist setElevation(F)V
    .registers 2
    .param p1, "elevation"    # F

    .line 1896
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2367
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2398
    return-void
.end method

.method public abstract whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setFeatureDrawableAlpha(II)V
.end method

.method public abstract whitelist setFeatureDrawableResource(II)V
.end method

.method public abstract whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract whitelist setFeatureInt(II)V
.end method

.method public whitelist setFlags(II)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 1306
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1307
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1308
    iget v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 1309
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1310
    return-void
.end method

.method public whitelist setFormat(I)V
    .registers 4
    .param p1, "format"    # I

    .line 1192
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1193
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_c

    .line 1194
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1195
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    goto :goto_13

    .line 1197
    :cond_c
    iget v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1198
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 1200
    :goto_13
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1201
    return-void
.end method

.method public whitelist setFrameRateBoostOnTouchEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1404
    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_e

    .line 1405
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1406
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setFrameRateBoostOnTouchEnabled(Z)V

    .line 1407
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1409
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    return-void
.end method

.method public whitelist setFrameRatePowerSavingsBalanced(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1438
    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_e

    .line 1439
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1440
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setFrameRatePowerSavingsBalanced(Z)V

    .line 1441
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1443
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 1163
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1164
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1165
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1166
    return-void
.end method

.method public final whitelist setHideOverlayWindows(Z)V
    .registers 4
    .param p1, "hide"    # Z

    .line 1099
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 1100
    const-string v1, "android.permission.HIDE_OVERLAY_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 1101
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: setHideOverlayWindows: HIDE_OVERLAY_WINDOWS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_1d
    :goto_1d
    const/high16 v0, 0x80000

    if-eqz p1, :cond_23

    move v1, v0

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-direct {p0, v1, v0}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1106
    return-void
.end method

.method public whitelist setIcon(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 2276
    return-void
.end method

.method public whitelist setLayout(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1145
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1146
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1147
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1148
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1149
    return-void
.end method

.method public whitelist setLocalFocus(ZZ)V
    .registers 3
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .line 2311
    return-void
.end method

.method public whitelist setLogo(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 2294
    return-void
.end method

.method public whitelist setMediaController(Landroid/media/session/MediaController;)V
    .registers 2
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 2244
    return-void
.end method

.method public abstract whitelist setNavigationBarColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setNavigationBarContrastEnforced(Z)V
    .registers 2
    .param p1, "enforceContrast"    # Z

    .line 2840
    return-void
.end method

.method public whitelist setNavigationBarDividerColor(I)V
    .registers 2
    .param p1, "dividerColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2771
    return-void
.end method

.method public final greylist-max-o setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .registers 2
    .param p1, "dcb"    # Landroid/view/Window$OnWindowDismissedCallback;

    .line 1007
    iput-object p1, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    .line 1008
    return-void
.end method

.method public final greylist-max-o setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V
    .registers 2
    .param p1, "sdcb"    # Landroid/view/Window$OnWindowSwipeDismissedCallback;

    .line 1020
    iput-object p1, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    .line 1021
    return-void
.end method

.method public greylist-max-o setOverlayWithDecorCaptionEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 2941
    iput-boolean p1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 2942
    return-void
.end method

.method public whitelist setPreferMinimalPostProcessing(Z)V
    .registers 3
    .param p1, "isPreferred"    # Z

    .line 1497
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean p1, v0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 1498
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1499
    return-void
.end method

.method public whitelist setReenterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2414
    return-void
.end method

.method public abstract whitelist setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final whitelist setRestrictedCaptionAreaListener(Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 1084
    iput-object p1, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 1085
    if-eqz p1, :cond_a

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iput-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    .line 1086
    return-void
.end method

.method public whitelist setReturnTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2384
    return-void
.end method

.method public whitelist setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2483
    return-void
.end method

.method public whitelist setSharedElementExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2529
    return-void
.end method

.method public whitelist setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2542
    return-void
.end method

.method public whitelist setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2498
    return-void
.end method

.method public whitelist setSharedElementsUseOverlay(Z)V
    .registers 2
    .param p1, "sharedElementsUseOverlay"    # Z

    .line 2668
    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 1224
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1225
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_c

    .line 1226
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1227
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    goto :goto_f

    .line 1229
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 1231
    :goto_f
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1232
    return-void
.end method

.method public abstract whitelist setStatusBarColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setStatusBarContrastEnforced(Z)V
    .registers 2
    .param p1, "ensureContrast"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2804
    return-void
.end method

.method public whitelist setSustainedPerformanceMode(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 1658
    const/high16 v0, 0x10000

    if-eqz p1, :cond_6

    .line 1659
    move v1, v0

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 1658
    :goto_7
    invoke-direct {p0, v1, v0}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1661
    return-void
.end method

.method public final blacklist setSystemBarAppearance(I)V
    .registers 2
    .param p1, "appearance"    # I

    .line 1047
    iput p1, p0, Landroid/view/Window;->mSystemBarAppearance:I

    .line 1048
    return-void
.end method

.method public whitelist setSystemGestureExclusionRects(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 2888
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "window does not support gesture exclusion rects"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setTheme(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 2933
    return-void
.end method

.method public abstract whitelist setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract whitelist setTitleColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setTransitionBackgroundFadeDuration(J)V
    .registers 3
    .param p1, "fadeDurationMillis"    # J

    .line 2645
    return-void
.end method

.method public whitelist setTransitionManager(Landroid/transition/TransitionManager;)V
    .registers 3
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .line 2341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 1175
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1176
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1177
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1178
    return-void
.end method

.method public whitelist setUiOptions(I)V
    .registers 2
    .param p1, "uiOptions"    # I

    .line 2261
    return-void
.end method

.method public whitelist setUiOptions(II)V
    .registers 3
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .line 2269
    return-void
.end method

.method public abstract whitelist setVolumeControlStream(I)V
.end method

.method public whitelist setWindowAnimations(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1211
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1212
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1213
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1214
    return-void
.end method

.method public final greylist-max-o setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V
    .registers 2
    .param p1, "wccb"    # Landroid/view/Window$WindowControllerCallback;

    .line 1032
    iput-object p1, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    .line 1033
    return-void
.end method

.method public whitelist setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;

    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 864
    return-void
.end method

.method public whitelist setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .line 875
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 876
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 877
    iput-boolean p4, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    .line 878
    if-nez p1, :cond_14

    .line 879
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/view/WindowManager;

    .line 881
    :cond_14
    move-object v0, p1

    check-cast v0, Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    .line 882
    return-void
.end method

.method public greylist-max-p shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1645
    nop

    .line 1646
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1647
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    .line 1648
    .local v0, "isOutside":Z
    :goto_19
    iget-boolean v3, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    if-eqz v3, :cond_26

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_26

    if-eqz v0, :cond_26

    .line 1649
    return v2

    .line 1651
    :cond_26
    return v1
.end method

.method public blacklist shouldCloseOnTouchOutside()Z
    .registers 2

    .line 1634
    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    return v0
.end method

.method public abstract whitelist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist takeInputQueue(Landroid/view/InputQueue$Callback;)V
.end method

.method public abstract whitelist takeKeyEvents(Z)V
.end method

.method public abstract whitelist takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
.end method

.method public abstract whitelist togglePanel(ILandroid/view/KeyEvent;)V
.end method

.method public whitelist unregisterScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 2929
    return-void
.end method
