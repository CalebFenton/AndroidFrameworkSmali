.class final Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;,
        Lcom/android/server/wm/WindowState$DeathRecipient;
    }
.end annotation


# static fields
.field static final DEBUG_DISABLE_SAVING_SURFACES:Z = false

.field static final MINIMUM_VISIBLE_HEIGHT_IN_DP:I = 0x20

.field static final MINIMUM_VISIBLE_WIDTH_IN_DP:I = 0x30

.field static final RESIZE_HANDLE_WIDTH_IN_DP:I = 0x1e

.field static final TAG:Ljava/lang/String;

.field static final sEmptyRegion:Landroid/graphics/Region;

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field mAnimateReplacingWindow:Z

.field mAnimatingExit:Z

.field private mAnimatingWithSavedSurface:Z

.field mAppDied:Z

.field mAppFreezing:Z

.field final mAppOp:I

.field mAppOpVisibility:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/wm/WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mChildWindows:Lcom/android/server/wm/WindowList;

.field final mClient:Landroid/view/IWindow;

.field mClientChannel:Landroid/view/InputChannel;

.field final mCompatFrame:Landroid/graphics/Rect;

.field private mConfigHasChanged:Z

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field private mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field final mDecorFrame:Landroid/graphics/Rect;

.field mDestroying:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mDragResizing:Z

.field mDragResizingChangeReported:Z

.field mDrawLock:Landroid/os/PowerManager$WakeLock;

.field mEnforceSizeCompat:Z

.field mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mInRelayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field final mInsetFrame:Landroid/graphics/Rect;

.field mInvGlobalScale:F

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field private mJustMovedInStack:Z

.field final mLastContentInsets:Landroid/graphics/Rect;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastFreezeDuration:I

.field mLastHScale:F

.field final mLastOutsets:Landroid/graphics/Rect;

.field final mLastOverscanInsets:Landroid/graphics/Rect;

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastStableInsets:Landroid/graphics/Rect;

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field private mMergedConfiguration:Landroid/content/res/Configuration;

.field mMovedByResize:Z

.field mNotOnAppsDisplay:Z

.field mObscured:Z

.field mOrientationChanging:Z

.field final mOutsetFrame:Landroid/graphics/Rect;

.field final mOutsets:Landroid/graphics/Rect;

.field mOutsetsChanged:Z

.field final mOverscanFrame:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanInsetsChanged:Z

.field final mOwnerUid:I

.field final mParentFrame:Landroid/graphics/Rect;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mRebuilding:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field mReplacingRemoveRequested:Z

.field mReplacingWindow:Lcom/android/server/wm/WindowState;

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mResizeMode:I

.field mResizedWhileGone:Z

.field private mResizedWhileNotDragResizing:Z

.field private mResizedWhileNotDragResizingReported:Z

.field mRootToken:Lcom/android/server/wm/WindowToken;

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field final mShownPosition:Landroid/graphics/Point;

.field mSkipEnterAnimationForSeamlessReplacement:Z

.field final mStableFrame:Landroid/graphics/Rect;

.field final mStableInsets:Landroid/graphics/Rect;

.field mStableInsetsChanged:Z

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field private mSurfaceSaved:Z

.field mSystemUiVisibility:I

.field mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRect:Landroid/graphics/Rect;

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mTurnOnScreen:Z

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field mWallpaperDisplayOffsetX:I

.field mWallpaperDisplayOffsetY:I

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWasExiting:Z

.field mWasVisibleBeforeClientHidden:Z

.field mWillReplaceWindow:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field final mWindowId:Landroid/view/IWindowId;

.field mWindowRemovalAllowed:Z

.field mXOffset:I

.field mYOffset:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 121
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    #@5
    .line 334
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@a
    sput-object v0, Lcom/android/server/wm/WindowState;->sTmpRect:Landroid/graphics/Rect;

    #@c
    .line 2050
    new-instance v0, Landroid/graphics/Region;

    #@e
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@11
    sput-object v0, Lcom/android/server/wm/WindowState;->sEmptyRegion:Landroid/graphics/Region;

    #@13
    .line 120
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V
    .locals 15
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"    # Lcom/android/server/wm/Session;
    .param p3, "c"    # Landroid/view/IWindow;
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;
    .param p5, "attachedWindow"    # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"    # I
    .param p7, "seq"    # I
    .param p8, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"    # I
    .param p10, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 151
    new-instance v12, Landroid/view/WindowManager$LayoutParams;

    #@5
    invoke-direct {v12}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@8
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a
    .line 154
    new-instance v12, Lcom/android/server/wm/WindowList;

    #@c
    invoke-direct {v12}, Lcom/android/server/wm/WindowList;-><init>()V

    #@f
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@11
    .line 165
    const/4 v12, 0x1

    #@12
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@14
    .line 166
    const/4 v12, 0x1

    #@15
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@17
    .line 167
    const/4 v12, 0x1

    #@18
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@1a
    .line 191
    const/4 v12, -0x1

    #@1b
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    #@1d
    .line 193
    new-instance v12, Landroid/content/res/Configuration;

    #@1f
    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    #@22
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mTmpConfig:Landroid/content/res/Configuration;

    #@24
    .line 197
    new-instance v12, Landroid/content/res/Configuration;

    #@26
    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    #@29
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@2b
    .line 206
    new-instance v12, Landroid/graphics/Point;

    #@2d
    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    #@30
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@32
    .line 212
    new-instance v12, Landroid/graphics/Rect;

    #@34
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@37
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@39
    .line 213
    new-instance v12, Landroid/graphics/Rect;

    #@3b
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@3e
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    #@40
    .line 221
    new-instance v12, Landroid/graphics/Rect;

    #@42
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@45
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@47
    .line 222
    new-instance v12, Landroid/graphics/Rect;

    #@49
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@4c
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@4e
    .line 229
    new-instance v12, Landroid/graphics/Rect;

    #@50
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@53
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@55
    .line 230
    new-instance v12, Landroid/graphics/Rect;

    #@57
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@5a
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    #@5c
    .line 237
    new-instance v12, Landroid/graphics/Rect;

    #@5e
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@61
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@63
    .line 238
    new-instance v12, Landroid/graphics/Rect;

    #@65
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@68
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    #@6a
    .line 245
    new-instance v12, Landroid/graphics/Rect;

    #@6c
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@6f
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@71
    .line 246
    new-instance v12, Landroid/graphics/Rect;

    #@73
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@76
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@78
    .line 247
    const/4 v12, 0x0

    #@79
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@7b
    .line 259
    new-instance v12, Landroid/graphics/Rect;

    #@7d
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@80
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@82
    .line 265
    new-instance v12, Landroid/graphics/Rect;

    #@84
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@87
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@89
    .line 270
    new-instance v12, Landroid/graphics/Region;

    #@8b
    invoke-direct {v12}, Landroid/graphics/Region;-><init>()V

    #@8e
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    #@90
    .line 278
    const/4 v12, 0x0

    #@91
    iput v12, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@93
    .line 281
    const/high16 v12, 0x3f800000    # 1.0f

    #@95
    iput v12, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@97
    .line 282
    const/high16 v12, 0x3f800000    # 1.0f

    #@99
    iput v12, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@9b
    .line 283
    const/high16 v12, 0x3f800000    # 1.0f

    #@9d
    iput v12, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@9f
    const/high16 v12, 0x3f800000    # 1.0f

    #@a1
    iput v12, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@a3
    .line 284
    const/high16 v12, 0x3f800000    # 1.0f

    #@a5
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    #@a7
    const/high16 v12, 0x3f800000    # 1.0f

    #@a9
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    #@ab
    .line 285
    new-instance v12, Landroid/graphics/Matrix;

    #@ad
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    #@b0
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    #@b2
    .line 288
    new-instance v12, Landroid/graphics/Rect;

    #@b4
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@b7
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b9
    .line 289
    new-instance v12, Landroid/graphics/Rect;

    #@bb
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@be
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@c0
    .line 292
    new-instance v12, Landroid/graphics/Rect;

    #@c2
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@c5
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@c7
    .line 294
    new-instance v12, Landroid/graphics/Rect;

    #@c9
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@cc
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@ce
    .line 296
    new-instance v12, Landroid/graphics/Rect;

    #@d0
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@d3
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    #@d5
    .line 300
    new-instance v12, Landroid/graphics/Rect;

    #@d7
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@da
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@dc
    .line 306
    new-instance v12, Landroid/graphics/Rect;

    #@de
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@e1
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@e3
    .line 310
    new-instance v12, Landroid/graphics/Rect;

    #@e5
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@e8
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@ea
    .line 314
    new-instance v12, Landroid/graphics/Rect;

    #@ec
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@ef
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@f1
    .line 318
    new-instance v12, Landroid/graphics/Rect;

    #@f3
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@f6
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@f8
    .line 322
    new-instance v12, Landroid/graphics/Rect;

    #@fa
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@fd
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@ff
    .line 326
    new-instance v12, Landroid/graphics/Rect;

    #@101
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@104
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@106
    .line 332
    new-instance v12, Landroid/graphics/Rect;

    #@108
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@10b
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@10d
    .line 340
    const/high16 v12, -0x40800000    # -1.0f

    #@10f
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@111
    .line 341
    const/high16 v12, -0x40800000    # -1.0f

    #@113
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@115
    .line 345
    const/high16 v12, -0x40800000    # -1.0f

    #@117
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@119
    .line 346
    const/high16 v12, -0x40800000    # -1.0f

    #@11b
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@11d
    .line 350
    const/high16 v12, -0x80000000

    #@11f
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@121
    .line 351
    const/high16 v12, -0x80000000

    #@123
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@125
    .line 429
    const/4 v12, 0x0

    #@126
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@128
    .line 431
    const/4 v12, 0x0

    #@129
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@12b
    .line 439
    const/4 v12, 0x0

    #@12c
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@12e
    .line 454
    const/4 v12, 0x0

    #@12f
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@131
    .line 456
    const/4 v12, 0x0

    #@132
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    #@134
    .line 458
    const/4 v12, 0x0

    #@135
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@137
    .line 461
    const/4 v12, 0x0

    #@138
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@13a
    .line 466
    const/4 v12, 0x0

    #@13b
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    #@13d
    .line 479
    new-instance v12, Landroid/graphics/Rect;

    #@13f
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@142
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@144
    .line 489
    const/4 v12, 0x0

    #@145
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    #@147
    .line 500
    move-object/from16 v0, p1

    #@149
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14b
    .line 501
    move-object/from16 v0, p2

    #@14d
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@14f
    .line 502
    move-object/from16 v0, p3

    #@151
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@153
    .line 503
    move/from16 v0, p6

    #@155
    iput v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    #@157
    .line 504
    move-object/from16 v0, p4

    #@159
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@15b
    .line 505
    move-object/from16 v0, p2

    #@15d
    iget v12, v0, Lcom/android/server/wm/Session;->mUid:I

    #@15f
    iput v12, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@161
    .line 506
    new-instance v12, Lcom/android/server/wm/WindowState$1;

    #@163
    invoke-direct {v12, p0}, Lcom/android/server/wm/WindowState$1;-><init>(Lcom/android/server/wm/WindowState;)V

    #@166
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    #@168
    .line 520
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@16a
    move-object/from16 v0, p8

    #@16c
    invoke-virtual {v12, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@16f
    .line 521
    move/from16 v0, p9

    #@171
    iput v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@173
    .line 522
    move-object/from16 v0, p10

    #@175
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@177
    .line 523
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@179
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@17b
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@17d
    .line 524
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@17f
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@181
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    #@183
    .line 525
    new-instance v7, Lcom/android/server/wm/WindowState$DeathRecipient;

    #@185
    const/4 v12, 0x0

    #@186
    invoke-direct {v7, p0, v12}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$DeathRecipient;)V

    #@189
    .line 526
    .local v7, "deathRecipient":Lcom/android/server/wm/WindowState$DeathRecipient;
    move/from16 v0, p7

    #@18b
    iput v0, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    #@18d
    .line 527
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@18f
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@191
    and-int/lit16 v12, v12, 0x80

    #@193
    if-eqz v12, :cond_1

    #@195
    const/4 v12, 0x1

    #@196
    :goto_0
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@198
    .line 532
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@19b
    move-result-object v12

    #@19c
    const/4 v13, 0x0

    #@19d
    invoke-interface {v12, v7, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a0
    .line 546
    iput-object v7, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    #@1a2
    .line 548
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1a4
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1a6
    const/16 v13, 0x3e8

    #@1a8
    if-lt v12, v13, :cond_b

    #@1aa
    .line 549
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1ac
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1ae
    const/16 v13, 0x7cf

    #@1b0
    if-gt v12, v13, :cond_b

    #@1b2
    .line 552
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1b4
    .line 553
    move-object/from16 v0, p5

    #@1b6
    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1b8
    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1ba
    .line 552
    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@1bd
    move-result v12

    #@1be
    mul-int/lit16 v12, v12, 0x2710

    #@1c0
    add-int/lit16 v12, v12, 0x3e8

    #@1c2
    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@1c4
    .line 555
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1c6
    move-object/from16 v0, p8

    #@1c8
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1ca
    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    #@1cd
    move-result v12

    #@1ce
    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@1d0
    .line 556
    move-object/from16 v0, p5

    #@1d2
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@1d4
    .line 559
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@1d6
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@1d8
    .line 560
    .local v6, "childWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    #@1db
    move-result v10

    #@1dc
    .line 561
    .local v10, "numChildWindows":I
    if-nez v10, :cond_2

    #@1de
    .line 562
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    #@1e1
    .line 582
    :cond_0
    :goto_1
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1e3
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1e5
    .line 583
    const/16 v13, 0x3eb

    #@1e7
    .line 582
    if-eq v12, v13, :cond_6

    #@1e9
    const/4 v12, 0x1

    #@1ea
    :goto_2
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@1ec
    .line 584
    move-object/from16 v0, p5

    #@1ee
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1f0
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1f2
    const/16 v13, 0x7db

    #@1f4
    if-eq v12, v13, :cond_7

    #@1f6
    .line 585
    move-object/from16 v0, p5

    #@1f8
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1fa
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1fc
    const/16 v13, 0x7dc

    #@1fe
    if-ne v12, v13, :cond_8

    #@200
    const/4 v12, 0x1

    #@201
    .line 584
    :goto_3
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@203
    .line 586
    move-object/from16 v0, p5

    #@205
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@207
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@209
    const/16 v13, 0x7dd

    #@20b
    if-ne v12, v13, :cond_9

    #@20d
    const/4 v12, 0x1

    #@20e
    :goto_4
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@210
    .line 587
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@212
    if-nez v12, :cond_a

    #@214
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@216
    :goto_5
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@218
    .line 603
    .end local v6    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v10    # "numChildWindows":I
    :goto_6
    move-object v4, p0

    #@219
    .line 604
    .local v4, "appWin":Lcom/android/server/wm/WindowState;
    :goto_7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@21c
    move-result v12

    #@21d
    if-eqz v12, :cond_10

    #@21f
    .line 605
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@221
    goto :goto_7

    #@222
    .line 527
    .end local v4    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v12, 0x0

    #@223
    goto/16 :goto_0

    #@225
    .line 533
    :catch_0
    move-exception v8

    #@226
    .line 534
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v12, 0x0

    #@227
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    #@229
    .line 535
    const/4 v12, 0x0

    #@22a
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@22c
    .line 536
    const/4 v12, 0x0

    #@22d
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@22f
    .line 537
    const/4 v12, 0x0

    #@230
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@232
    .line 538
    const/4 v12, 0x0

    #@233
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@235
    .line 539
    const/4 v12, 0x0

    #@236
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@238
    .line 540
    const/4 v12, 0x0

    #@239
    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@23b
    .line 541
    const/4 v12, 0x0

    #@23c
    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@23e
    .line 542
    const/4 v12, 0x0

    #@23f
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@241
    .line 543
    const/4 v12, 0x0

    #@242
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@244
    .line 544
    return-void

    #@245
    .line 564
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v6    # "childWindows":Lcom/android/server/wm/WindowList;
    .restart local v10    # "numChildWindows":I
    :cond_2
    const/4 v1, 0x0

    #@246
    .line 565
    .local v1, "added":Z
    const/4 v9, 0x0

    #@247
    .local v9, "i":I
    :goto_8
    if-ge v9, v10, :cond_4

    #@249
    .line 566
    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@24c
    move-result-object v12

    #@24d
    check-cast v12, Lcom/android/server/wm/WindowState;

    #@24f
    iget v5, v12, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@251
    .line 567
    .local v5, "childSubLayer":I
    iget v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@253
    if-lt v12, v5, :cond_3

    #@255
    .line 568
    iget v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@257
    if-ne v12, v5, :cond_5

    #@259
    if-gez v5, :cond_5

    #@25b
    .line 572
    :cond_3
    invoke-virtual {v6, v9, p0}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    #@25e
    .line 573
    const/4 v1, 0x1

    #@25f
    .line 577
    .end local v5    # "childSubLayer":I
    :cond_4
    if-nez v1, :cond_0

    #@261
    .line 578
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    #@264
    goto/16 :goto_1

    #@266
    .line 565
    .restart local v5    # "childSubLayer":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    #@268
    goto :goto_8

    #@269
    .line 582
    .end local v1    # "added":Z
    .end local v5    # "childSubLayer":I
    .end local v9    # "i":I
    :cond_6
    const/4 v12, 0x0

    #@26a
    goto :goto_2

    #@26b
    .line 584
    :cond_7
    const/4 v12, 0x1

    #@26c
    goto :goto_3

    #@26d
    .line 585
    :cond_8
    const/4 v12, 0x0

    #@26e
    goto :goto_3

    #@26f
    .line 586
    :cond_9
    const/4 v12, 0x0

    #@270
    goto :goto_4

    #@271
    .line 587
    :cond_a
    const/4 v12, 0x1

    #@272
    goto :goto_5

    #@273
    .line 591
    .end local v6    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v10    # "numChildWindows":I
    :cond_b
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@275
    move-object/from16 v0, p8

    #@277
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@279
    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@27c
    move-result v12

    #@27d
    mul-int/lit16 v12, v12, 0x2710

    #@27f
    add-int/lit16 v12, v12, 0x3e8

    #@281
    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@283
    .line 594
    const/4 v12, 0x0

    #@284
    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@286
    .line 595
    const/4 v12, 0x0

    #@287
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@289
    .line 596
    const/4 v12, 0x0

    #@28a
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@28c
    .line 597
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@28e
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@290
    const/16 v13, 0x7db

    #@292
    if-eq v12, v13, :cond_c

    #@294
    .line 598
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@296
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@298
    const/16 v13, 0x7dc

    #@29a
    if-ne v12, v13, :cond_d

    #@29c
    const/4 v12, 0x1

    #@29d
    .line 597
    :goto_9
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@29f
    .line 599
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2a1
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2a3
    const/16 v13, 0x7dd

    #@2a5
    if-ne v12, v13, :cond_e

    #@2a7
    const/4 v12, 0x1

    #@2a8
    :goto_a
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@2aa
    .line 600
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@2ac
    if-nez v12, :cond_f

    #@2ae
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@2b0
    :goto_b
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@2b2
    goto/16 :goto_6

    #@2b4
    .line 597
    :cond_c
    const/4 v12, 0x1

    #@2b5
    goto :goto_9

    #@2b6
    .line 598
    :cond_d
    const/4 v12, 0x0

    #@2b7
    goto :goto_9

    #@2b8
    .line 599
    :cond_e
    const/4 v12, 0x0

    #@2b9
    goto :goto_a

    #@2ba
    .line 600
    :cond_f
    const/4 v12, 0x1

    #@2bb
    goto :goto_b

    #@2bc
    .line 607
    .restart local v4    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_10
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@2be
    .line 608
    .local v3, "appToken":Lcom/android/server/wm/WindowToken;
    :goto_c
    iget-object v12, v3, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    #@2c0
    if-nez v12, :cond_11

    #@2c2
    .line 609
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2c4
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    #@2c6
    iget-object v13, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    #@2c8
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2cb
    move-result-object v11

    #@2cc
    check-cast v11, Lcom/android/server/wm/WindowToken;

    #@2ce
    .line 610
    .local v11, "parent":Lcom/android/server/wm/WindowToken;
    if-eqz v11, :cond_11

    #@2d0
    if-ne v3, v11, :cond_13

    #@2d2
    .line 615
    .end local v11    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_11
    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@2d4
    .line 616
    iget-object v12, v3, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    #@2d6
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2d8
    .line 617
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2da
    if-eqz v12, :cond_12

    #@2dc
    .line 618
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@2df
    move-result-object v2

    #@2e0
    .line 619
    .local v2, "appDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p10

    #@2e2
    if-eq v0, v2, :cond_14

    #@2e4
    const/4 v12, 0x1

    #@2e5
    :goto_d
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@2e7
    .line 621
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2e9
    iget-boolean v12, v12, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    #@2eb
    if-eqz v12, :cond_12

    #@2ed
    .line 624
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2ef
    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2f1
    const/high16 v14, 0x80000

    #@2f3
    or-int/2addr v13, v14

    #@2f4
    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2f6
    .line 628
    .end local v2    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_12
    new-instance v12, Lcom/android/server/wm/WindowStateAnimator;

    #@2f8
    invoke-direct {v12, p0}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    #@2fb
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2fd
    .line 629
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2ff
    move-object/from16 v0, p8

    #@301
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@303
    iput v13, v12, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@305
    .line 631
    const/4 v12, 0x0

    #@306
    iput v12, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@308
    .line 632
    const/4 v12, 0x0

    #@309
    iput v12, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@30b
    .line 633
    const/4 v12, 0x0

    #@30c
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@30e
    .line 634
    const/4 v12, 0x0

    #@30f
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@311
    .line 635
    const/4 v12, 0x0

    #@312
    iput v12, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@314
    .line 636
    const/4 v12, 0x0

    #@315
    iput v12, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@317
    .line 637
    const/4 v12, 0x0

    #@318
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@31a
    .line 638
    new-instance v13, Lcom/android/server/input/InputWindowHandle;

    #@31c
    .line 639
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@31e
    if-eqz v12, :cond_15

    #@320
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@322
    iget-object v12, v12, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@324
    .line 640
    :goto_e
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@327
    move-result v14

    #@328
    .line 638
    invoke-direct {v13, v12, p0, v14}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    #@32b
    iput-object v13, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@32d
    .line 499
    return-void

    #@32e
    .line 613
    .restart local v11    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_13
    move-object v3, v11

    #@32f
    goto :goto_c

    #@330
    .line 619
    .end local v11    # "parent":Lcom/android/server/wm/WindowToken;
    .restart local v2    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_14
    const/4 v12, 0x0

    #@331
    goto :goto_d

    #@332
    .line 639
    .end local v2    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_15
    const/4 v12, 0x0

    #@333
    goto :goto_e
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "outRegion"    # Landroid/graphics/Region;
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "inset"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2187
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@7
    iget v2, p2, Landroid/graphics/Rect;->top:I

    #@9
    add-int/2addr v1, v2

    #@a
    .line 2188
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@c
    iget v3, p2, Landroid/graphics/Rect;->right:I

    #@e
    sub-int/2addr v2, v3

    #@f
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@11
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    #@13
    sub-int/2addr v3, v4

    #@14
    .line 2186
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    #@17
    .line 2185
    return-void
.end method

.method private dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 12
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2381
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v10, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizing:Z

    #@8
    .line 2383
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@a
    .line 2384
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@d
    move-result-object v9

    #@e
    .line 2385
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@10
    invoke-interface {v1, p0}, Landroid/view/WindowManagerPolicy;->isNavBarForcedShownLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    #@13
    move-result v11

    #@14
    move-object v1, p1

    #@15
    move-object v2, p2

    #@16
    move-object v3, p3

    #@17
    move-object/from16 v4, p4

    #@19
    move-object/from16 v5, p5

    #@1b
    move-object/from16 v6, p6

    #@1d
    move/from16 v7, p7

    #@1f
    move-object/from16 v8, p8

    #@21
    .line 2383
    invoke-interface/range {v0 .. v11}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;ZZ)V

    #@24
    .line 2386
    const/4 v0, 0x1

    #@25
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    #@27
    .line 2380
    return-void

    #@28
    .line 2381
    :cond_0
    const/4 v10, 0x1

    #@29
    .local v10, "forceRelayout":Z
    goto :goto_0
.end method

.method private getMergedConfig(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "outConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2277
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    #@b
    move-result v3

    #@c
    if-lez v3, :cond_0

    #@e
    .line 2278
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@10
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    #@12
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/content/res/Configuration;

    #@18
    invoke-virtual {p1, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@1b
    .line 2279
    return-void

    #@1c
    .line 2281
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@1f
    move-result-object v2

    #@20
    .line 2282
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_2

    #@22
    .line 2283
    iget-object v0, v2, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@24
    .line 2285
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@26
    iget-object v1, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@28
    .line 2286
    .local v1, "serviceConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@2b
    .line 2287
    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@2d
    if-eq v0, v3, :cond_1

    #@2f
    .line 2288
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@32
    .line 2276
    :cond_1
    return-void

    #@33
    .line 2284
    .end local v0    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v1    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_2
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@35
    .restart local v0    # "overrideConfig":Landroid/content/res/Configuration;
    goto :goto_0
.end method

.method private isVisibleUnchecked()Z
    .locals 1

    #@0
    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    :goto_0
    return v0

    #@e
    .line 1164
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@10
    if-nez v0, :cond_0

    #@12
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@14
    if-nez v0, :cond_0

    #@16
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@18
    if-eqz v0, :cond_2

    #@1a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@1c
    goto :goto_0

    #@1d
    :cond_2
    const/4 v0, 0x1

    #@1e
    goto :goto_0
.end method

.method private shouldSaveSurface()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2003
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@3
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 2005
    return v3

    #@8
    .line 2008
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@a
    if-nez v2, :cond_1

    #@c
    .line 2009
    return v3

    #@d
    .line 2012
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@f
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@11
    and-int/lit16 v2, v2, 0x2000

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 2016
    return v3

    #@16
    .line 2019
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 2021
    return v3

    #@1d
    .line 2024
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@20
    move-result-object v0

    #@21
    .line 2025
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_4

    #@23
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inHomeStack()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_5

    #@29
    .line 2028
    :cond_4
    return v3

    #@2a
    .line 2031
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    #@2d
    move-result-object v1

    #@2e
    .line 2032
    .local v1, "taskTop":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_6

    #@30
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@32
    if-eq v1, v2, :cond_6

    #@34
    .line 2034
    return v3

    #@35
    .line 2037
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    #@37
    if-eqz v2, :cond_7

    #@39
    .line 2040
    return v3

    #@3a
    .line 2047
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3c
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->shouldSaveSurface()Z

    #@3f
    move-result v2

    #@40
    return v2
.end method

.method private subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "layoutFrame"    # Landroid/graphics/Rect;
    .param p3, "insetFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 668
    iget v4, p3, Landroid/graphics/Rect;->left:I

    #@3
    iget v5, p2, Landroid/graphics/Rect;->left:I

    #@5
    iget v6, p4, Landroid/graphics/Rect;->left:I

    #@7
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@a
    move-result v5

    #@b
    sub-int/2addr v4, v5

    #@c
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v1

    #@10
    .line 669
    .local v1, "left":I
    iget v4, p3, Landroid/graphics/Rect;->top:I

    #@12
    iget v5, p2, Landroid/graphics/Rect;->top:I

    #@14
    iget v6, p4, Landroid/graphics/Rect;->top:I

    #@16
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@19
    move-result v5

    #@1a
    sub-int/2addr v4, v5

    #@1b
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    #@1e
    move-result v3

    #@1f
    .line 670
    .local v3, "top":I
    iget v4, p2, Landroid/graphics/Rect;->right:I

    #@21
    iget v5, p4, Landroid/graphics/Rect;->right:I

    #@23
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@26
    move-result v4

    #@27
    iget v5, p3, Landroid/graphics/Rect;->right:I

    #@29
    sub-int/2addr v4, v5

    #@2a
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v2

    #@2e
    .line 671
    .local v2, "right":I
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    #@30
    iget v5, p4, Landroid/graphics/Rect;->bottom:I

    #@32
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@35
    move-result v4

    #@36
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    #@38
    sub-int/2addr v4, v5

    #@39
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    #@3c
    move-result v0

    #@3d
    .line 672
    .local v0, "bottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    #@40
    .line 667
    return-void
.end method

.method private updateConfiguration()Landroid/content/res/Configuration;
    .locals 2

    #@0
    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    #@3
    move-result v0

    #@4
    .line 2267
    .local v0, "configChanged":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@6
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->getMergedConfig(Landroid/content/res/Configuration;)V

    #@9
    .line 2268
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@c
    .line 2273
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@e
    return-object v1
.end method


# virtual methods
.method adjustStartingWindowFlags()V
    .locals 5

    #@0
    .prologue
    .line 1744
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4
    const/4 v3, 0x1

    #@5
    if-ne v2, v3, :cond_0

    #@7
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1745
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@d
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1749
    const v0, 0x480001

    #@14
    .line 1751
    .local v0, "mask":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@16
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@18
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1a
    .line 1752
    .local v1, "sa":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1c
    const v3, -0x480002

    #@1f
    and-int/2addr v2, v3

    #@20
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@22
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@24
    const v4, 0x480001

    #@27
    and-int/2addr v3, v4

    #@28
    or-int/2addr v2, v3

    #@29
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2b
    .line 1743
    .end local v0    # "mask":I
    .end local v1    # "sa":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method applyAdjustForImeIfNeeded()V
    .locals 2

    #@0
    .prologue
    .line 1654
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1655
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@6
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@c
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1656
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@14
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskStack;->applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V

    #@17
    .line 1653
    :cond_0
    return-void
.end method

.method applyDimLayerIfNeeded()V
    .locals 4

    #@0
    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    .line 1579
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    #@4
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1580
    return-void

    #@9
    .line 1583
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@b
    if-nez v1, :cond_2

    #@d
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 1585
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@13
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1b
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DimLayerController;->applyDimAbove(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V

    #@1e
    .line 1574
    :cond_1
    :goto_0
    return-void

    #@1f
    .line 1586
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@21
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@23
    and-int/lit8 v1, v1, 0x2

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 1587
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@29
    if-eqz v1, :cond_1

    #@2b
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@2d
    if-nez v1, :cond_1

    #@2f
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isVisibleUnchecked()Z

    #@32
    move-result v1

    #@33
    .line 1586
    if-eqz v1, :cond_1

    #@35
    .line 1588
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@37
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@3c
    move-result-object v2

    #@3d
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@3f
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DimLayerController;->applyDimBehind(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V

    #@42
    goto :goto_0
.end method

.method applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2747
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v12

    #@4
    .line 2748
    .local v12, "pw":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    #@7
    move-result v11

    #@8
    .line 2749
    .local v11, "ph":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@b
    move-result-object v13

    #@c
    .line 2750
    .local v13, "task":Lcom/android/server/wm/Task;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    #@f
    move-result v10

    #@10
    .line 2751
    .local v10, "nonFullscreenTask":Z
    move-object/from16 v0, p0

    #@12
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@14
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@16
    and-int/lit16 v1, v1, 0x200

    #@18
    if-eqz v1, :cond_4

    #@1a
    const/4 v9, 0x1

    #@1b
    .line 2760
    .local v9, "noLimits":Z
    :goto_0
    if-eqz v13, :cond_5

    #@1d
    if-eqz v10, :cond_5

    #@1f
    .line 2761
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_0

    #@25
    if-eqz v9, :cond_6

    #@27
    :cond_0
    const/4 v8, 0x0

    #@28
    .line 2765
    .local v8, "fitToDisplay":Z
    :goto_1
    move-object/from16 v0, p0

    #@2a
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2c
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2e
    and-int/lit16 v1, v1, 0x4000

    #@30
    if-eqz v1, :cond_b

    #@32
    .line 2766
    move-object/from16 v0, p0

    #@34
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@36
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@38
    if-gez v1, :cond_7

    #@3a
    .line 2767
    move v2, v12

    #@3b
    .line 2773
    .local v2, "w":I
    :goto_2
    move-object/from16 v0, p0

    #@3d
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@3f
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@41
    if-gez v1, :cond_9

    #@43
    .line 2774
    move v3, v11

    #@44
    .line 2797
    .local v3, "h":I
    :goto_3
    move-object/from16 v0, p0

    #@46
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@48
    if-eqz v1, :cond_10

    #@4a
    .line 2798
    move-object/from16 v0, p0

    #@4c
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4e
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@50
    int-to-float v1, v1

    #@51
    move-object/from16 v0, p0

    #@53
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@55
    mul-float v14, v1, v4

    #@57
    .line 2799
    .local v14, "x":F
    move-object/from16 v0, p0

    #@59
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@5b
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@5d
    int-to-float v1, v1

    #@5e
    move-object/from16 v0, p0

    #@60
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@62
    mul-float v15, v1, v4

    #@64
    .line 2805
    .local v15, "y":F
    :goto_4
    if-eqz v10, :cond_1

    #@66
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    #@69
    move-result v1

    #@6a
    if-eqz v1, :cond_11

    #@6c
    .line 2813
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    #@6e
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@70
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@72
    .line 2814
    move-object/from16 v0, p0

    #@74
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@76
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@78
    int-to-float v5, v12

    #@79
    mul-float/2addr v4, v5

    #@7a
    add-float/2addr v4, v14

    #@7b
    float-to-int v5, v4

    #@7c
    .line 2815
    move-object/from16 v0, p0

    #@7e
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@80
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@82
    int-to-float v6, v11

    #@83
    mul-float/2addr v4, v6

    #@84
    add-float/2addr v4, v15

    #@85
    float-to-int v6, v4

    #@86
    move-object/from16 v0, p0

    #@88
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@8a
    move-object/from16 v4, p1

    #@8c
    .line 2813
    invoke-static/range {v1 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    #@8f
    .line 2818
    if-eqz v8, :cond_2

    #@91
    .line 2819
    move-object/from16 v0, p0

    #@93
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@95
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@9b
    move-object/from16 v0, p2

    #@9d
    invoke-static {v1, v0, v4}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@a0
    .line 2824
    :cond_2
    move-object/from16 v0, p0

    #@a2
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@a4
    move-object/from16 v0, p0

    #@a6
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@a8
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@ab
    .line 2825
    move-object/from16 v0, p0

    #@ad
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@af
    if-eqz v1, :cond_3

    #@b1
    .line 2827
    move-object/from16 v0, p0

    #@b3
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@b5
    move-object/from16 v0, p0

    #@b7
    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@b9
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    #@bc
    .line 2746
    :cond_3
    return-void

    #@bd
    .line 2751
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v8    # "fitToDisplay":Z
    .end local v9    # "noLimits":Z
    .end local v14    # "x":F
    .end local v15    # "y":F
    :cond_4
    const/4 v9, 0x0

    #@be
    .restart local v9    # "noLimits":Z
    goto/16 :goto_0

    #@c0
    .line 2760
    :cond_5
    const/4 v8, 0x1

    #@c1
    .restart local v8    # "fitToDisplay":Z
    goto/16 :goto_1

    #@c3
    .line 2761
    .end local v8    # "fitToDisplay":Z
    :cond_6
    const/4 v8, 0x1

    #@c4
    .restart local v8    # "fitToDisplay":Z
    goto/16 :goto_1

    #@c6
    .line 2768
    :cond_7
    move-object/from16 v0, p0

    #@c8
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@ca
    if-eqz v1, :cond_8

    #@cc
    .line 2769
    move-object/from16 v0, p0

    #@ce
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@d0
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@d2
    int-to-float v1, v1

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@d7
    mul-float/2addr v1, v4

    #@d8
    const/high16 v4, 0x3f000000    # 0.5f

    #@da
    add-float/2addr v1, v4

    #@db
    float-to-int v2, v1

    #@dc
    .restart local v2    # "w":I
    goto/16 :goto_2

    #@de
    .line 2771
    .end local v2    # "w":I
    :cond_8
    move-object/from16 v0, p0

    #@e0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@e2
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@e4
    .restart local v2    # "w":I
    goto/16 :goto_2

    #@e6
    .line 2775
    :cond_9
    move-object/from16 v0, p0

    #@e8
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@ea
    if-eqz v1, :cond_a

    #@ec
    .line 2776
    move-object/from16 v0, p0

    #@ee
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@f0
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@f2
    int-to-float v1, v1

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@f7
    mul-float/2addr v1, v4

    #@f8
    const/high16 v4, 0x3f000000    # 0.5f

    #@fa
    add-float/2addr v1, v4

    #@fb
    float-to-int v3, v1

    #@fc
    .restart local v3    # "h":I
    goto/16 :goto_3

    #@fe
    .line 2778
    .end local v3    # "h":I
    :cond_a
    move-object/from16 v0, p0

    #@100
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@102
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@104
    .restart local v3    # "h":I
    goto/16 :goto_3

    #@106
    .line 2781
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_b
    move-object/from16 v0, p0

    #@108
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10a
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@10c
    const/4 v4, -0x1

    #@10d
    if-ne v1, v4, :cond_c

    #@10f
    .line 2782
    move v2, v12

    #@110
    .line 2788
    .restart local v2    # "w":I
    :goto_6
    move-object/from16 v0, p0

    #@112
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@114
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@116
    const/4 v4, -0x1

    #@117
    if-ne v1, v4, :cond_e

    #@119
    .line 2789
    move v3, v11

    #@11a
    .restart local v3    # "h":I
    goto/16 :goto_3

    #@11c
    .line 2783
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_c
    move-object/from16 v0, p0

    #@11e
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@120
    if-eqz v1, :cond_d

    #@122
    .line 2784
    move-object/from16 v0, p0

    #@124
    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@126
    int-to-float v1, v1

    #@127
    move-object/from16 v0, p0

    #@129
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@12b
    mul-float/2addr v1, v4

    #@12c
    const/high16 v4, 0x3f000000    # 0.5f

    #@12e
    add-float/2addr v1, v4

    #@12f
    float-to-int v2, v1

    #@130
    .restart local v2    # "w":I
    goto :goto_6

    #@131
    .line 2786
    .end local v2    # "w":I
    :cond_d
    move-object/from16 v0, p0

    #@133
    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@135
    .restart local v2    # "w":I
    goto :goto_6

    #@136
    .line 2790
    :cond_e
    move-object/from16 v0, p0

    #@138
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@13a
    if-eqz v1, :cond_f

    #@13c
    .line 2791
    move-object/from16 v0, p0

    #@13e
    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@140
    int-to-float v1, v1

    #@141
    move-object/from16 v0, p0

    #@143
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@145
    mul-float/2addr v1, v4

    #@146
    const/high16 v4, 0x3f000000    # 0.5f

    #@148
    add-float/2addr v1, v4

    #@149
    float-to-int v3, v1

    #@14a
    .restart local v3    # "h":I
    goto/16 :goto_3

    #@14c
    .line 2793
    .end local v3    # "h":I
    :cond_f
    move-object/from16 v0, p0

    #@14e
    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@150
    .restart local v3    # "h":I
    goto/16 :goto_3

    #@152
    .line 2801
    :cond_10
    move-object/from16 v0, p0

    #@154
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@156
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@158
    int-to-float v14, v1

    #@159
    .line 2802
    .restart local v14    # "x":F
    move-object/from16 v0, p0

    #@15b
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@15d
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@15f
    int-to-float v15, v1

    #@160
    .restart local v15    # "y":F
    goto/16 :goto_4

    #@162
    .line 2808
    :cond_11
    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    #@165
    move-result v2

    #@166
    .line 2809
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    #@169
    move-result v3

    #@16a
    goto/16 :goto_5
.end method

.method applyScrollIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1648
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@6
    .line 1649
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->applyScrollToWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    #@9
    .line 1646
    :cond_0
    return-void
.end method

.method attach()V
    .locals 1

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    #@5
    .line 643
    return-void
.end method

.method canReceiveKeys()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1832
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1833
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@9
    if-nez v1, :cond_0

    #@b
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 1832
    :cond_0
    :goto_0
    return v0

    #@10
    .line 1834
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@12
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@14
    and-int/lit8 v1, v1, 0x8

    #@16
    if-nez v1, :cond_0

    #@18
    .line 1835
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1e
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    #@21
    move-result v1

    #@22
    .line 1832
    if-eqz v1, :cond_0

    #@24
    .line 1836
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAdjustedForMinimizedDock()Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_0

    #@2a
    const/4 v0, 0x1

    #@2b
    goto :goto_0
.end method

.method canRestoreSurface()Z
    .locals 1

    #@0
    .prologue
    .line 2112
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method checkPolicyVisibilityChange()V
    .locals 2

    #@0
    .prologue
    .line 1694
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@4
    if-eq v0, v1, :cond_1

    #@6
    .line 1699
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@8
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@a
    .line 1700
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    #@d
    .line 1701
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@f
    if-nez v0, :cond_1

    #@11
    .line 1702
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@15
    if-ne v0, p0, :cond_0

    #@17
    .line 1705
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19
    const/4 v1, 0x1

    #@1a
    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@1c
    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    #@21
    .line 1693
    :cond_1
    return-void
.end method

.method clearAnimatingWithSavedSurface()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2128
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2133
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@7
    .line 2134
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 2136
    :cond_0
    return v1
.end method

.method clearHasSavedSurface()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2120
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@3
    .line 2121
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@5
    .line 2122
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2123
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@b
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    #@e
    .line 2119
    :cond_0
    return-void
.end method

.method public clearVisibleBeforeClientHidden()V
    .locals 1

    #@0
    .prologue
    .line 1995
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@3
    .line 1994
    return-void
.end method

.method computeDragResizing()Z
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 2472
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@6
    move-result-object v0

    #@7
    .line 2473
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_0

    #@9
    .line 2474
    return v1

    #@a
    .line 2476
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@c
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    #@e
    if-ne v3, v4, :cond_1

    #@10
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@12
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    #@14
    if-eq v3, v4, :cond_2

    #@16
    .line 2479
    :cond_1
    return v1

    #@17
    .line 2481
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_3

    #@1d
    .line 2482
    return v2

    #@1e
    .line 2489
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@20
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@22
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_5

    #@28
    .line 2490
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2a
    if-eqz v3, :cond_4

    #@2c
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2e
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@30
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_5

    #@36
    .line 2489
    :cond_4
    :goto_0
    return v1

    #@37
    .line 2491
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_4

    #@3d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    #@40
    move-result v3

    #@41
    if-nez v3, :cond_4

    #@43
    move v1, v2

    #@44
    goto :goto_0
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 36
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 678
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@4
    move/from16 v30, v0

    #@6
    if-eqz v30, :cond_0

    #@8
    move-object/from16 v0, p0

    #@a
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@c
    move/from16 v30, v0

    #@e
    if-nez v30, :cond_c

    #@10
    move-object/from16 v0, p0

    #@12
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    #@14
    move/from16 v30, v0

    #@16
    if-eqz v30, :cond_c

    #@18
    .line 685
    :cond_0
    const/16 v30, 0x1

    #@1a
    move/from16 v0, v30

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    #@20
    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@23
    move-result-object v26

    #@24
    .line 688
    .local v26, "task":Lcom/android/server/wm/Task;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    #@27
    move-result v30

    #@28
    if-eqz v30, :cond_d

    #@2a
    const/4 v10, 0x0

    #@2b
    .line 689
    .local v10, "fullscreenTask":Z
    :goto_0
    if-eqz v26, :cond_e

    #@2d
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/Task;->isFloating()Z

    #@30
    move-result v29

    #@31
    .line 694
    :goto_1
    if-eqz v10, :cond_f

    #@33
    .line 695
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@37
    move-object/from16 v30, v0

    #@39
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    #@3c
    .line 710
    :goto_2
    if-nez v10, :cond_1

    #@3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    #@41
    move-result v30

    #@42
    if-eqz v30, :cond_10

    #@44
    .line 712
    :cond_1
    move-object/from16 v0, p0

    #@46
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@48
    move-object/from16 v30, v0

    #@4a
    move-object/from16 v0, v30

    #@4c
    move-object/from16 v1, p1

    #@4e
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@51
    .line 713
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@55
    move-object/from16 v30, v0

    #@57
    move-object/from16 v0, v30

    #@59
    move-object/from16 v1, p2

    #@5b
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5e
    .line 714
    move-object/from16 v16, p2

    #@60
    .line 715
    .local v16, "layoutDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v15, p1

    #@62
    .line 716
    .local v15, "layoutContainingFrame":Landroid/graphics/Rect;
    const/16 v17, 0x0

    #@64
    .line 717
    .local v17, "layoutXDiff":I
    const/16 v18, 0x0

    #@66
    .line 766
    .local v18, "layoutYDiff":I
    :goto_3
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@6a
    move-object/from16 v30, v0

    #@6c
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    #@6f
    move-result v25

    #@70
    .line 767
    .local v25, "pw":I
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@74
    move-object/from16 v30, v0

    #@76
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    #@79
    move-result v24

    #@7a
    .line 769
    .local v24, "ph":I
    move-object/from16 v0, p0

    #@7c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    #@7e
    move-object/from16 v30, v0

    #@80
    move-object/from16 v0, v30

    #@82
    move-object/from16 v1, p1

    #@84
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v30

    #@88
    if-nez v30, :cond_2

    #@8a
    .line 772
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    #@8e
    move-object/from16 v30, v0

    #@90
    move-object/from16 v0, v30

    #@92
    move-object/from16 v1, p1

    #@94
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@97
    .line 773
    const/16 v30, 0x1

    #@99
    move/from16 v0, v30

    #@9b
    move-object/from16 v1, p0

    #@9d
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@9f
    .line 775
    :cond_2
    move-object/from16 v0, p0

    #@a1
    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@a3
    move/from16 v30, v0

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@a9
    move/from16 v31, v0

    #@ab
    move/from16 v0, v30

    #@ad
    move/from16 v1, v31

    #@af
    if-ne v0, v1, :cond_3

    #@b1
    move-object/from16 v0, p0

    #@b3
    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@b5
    move/from16 v30, v0

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget v0, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@bb
    move/from16 v31, v0

    #@bd
    move/from16 v0, v30

    #@bf
    move/from16 v1, v31

    #@c1
    if-eq v0, v1, :cond_4

    #@c3
    .line 776
    :cond_3
    move-object/from16 v0, p0

    #@c5
    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@c7
    move/from16 v30, v0

    #@c9
    move/from16 v0, v30

    #@cb
    move-object/from16 v1, p0

    #@cd
    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@cf
    .line 777
    move-object/from16 v0, p0

    #@d1
    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@d3
    move/from16 v30, v0

    #@d5
    move/from16 v0, v30

    #@d7
    move-object/from16 v1, p0

    #@d9
    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@db
    .line 778
    const/16 v30, 0x1

    #@dd
    move/from16 v0, v30

    #@df
    move-object/from16 v1, p0

    #@e1
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@e3
    .line 781
    :cond_4
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@e7
    move-object/from16 v30, v0

    #@e9
    move-object/from16 v0, v30

    #@eb
    move-object/from16 v1, p3

    #@ed
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@f0
    .line 782
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@f4
    move-object/from16 v30, v0

    #@f6
    move-object/from16 v0, v30

    #@f8
    move-object/from16 v1, p4

    #@fa
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@fd
    .line 783
    move-object/from16 v0, p0

    #@ff
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@101
    move-object/from16 v30, v0

    #@103
    move-object/from16 v0, v30

    #@105
    move-object/from16 v1, p5

    #@107
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@10a
    .line 784
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@10e
    move-object/from16 v30, v0

    #@110
    move-object/from16 v0, v30

    #@112
    move-object/from16 v1, p6

    #@114
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@117
    .line 785
    move-object/from16 v0, p0

    #@119
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@11b
    move-object/from16 v30, v0

    #@11d
    move-object/from16 v0, v30

    #@11f
    move-object/from16 v1, p7

    #@121
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@124
    .line 786
    if-eqz p8, :cond_1a

    #@126
    const/4 v12, 0x1

    #@127
    .line 787
    .local v12, "hasOutsets":Z
    :goto_4
    if-eqz v12, :cond_5

    #@129
    .line 788
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@12d
    move-object/from16 v30, v0

    #@12f
    move-object/from16 v0, v30

    #@131
    move-object/from16 v1, p8

    #@133
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@136
    .line 791
    :cond_5
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@13a
    move-object/from16 v30, v0

    #@13c
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    #@13f
    move-result v11

    #@140
    .line 792
    .local v11, "fw":I
    move-object/from16 v0, p0

    #@142
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@144
    move-object/from16 v30, v0

    #@146
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    #@149
    move-result v8

    #@14a
    .line 794
    .local v8, "fh":I
    move-object/from16 v0, p0

    #@14c
    move-object/from16 v1, v16

    #@14e
    invoke-virtual {v0, v15, v1}, Lcom/android/server/wm/WindowState;->applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@151
    .line 797
    if-eqz v12, :cond_1b

    #@153
    .line 798
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@157
    move-object/from16 v30, v0

    #@159
    move-object/from16 v0, p0

    #@15b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@15d
    move-object/from16 v31, v0

    #@15f
    move-object/from16 v0, v31

    #@161
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@163
    move/from16 v31, v0

    #@165
    move-object/from16 v0, p0

    #@167
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@169
    move-object/from16 v32, v0

    #@16b
    move-object/from16 v0, v32

    #@16d
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@16f
    move/from16 v32, v0

    #@171
    sub-int v31, v31, v32

    #@173
    const/16 v32, 0x0

    #@175
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@178
    move-result v31

    #@179
    .line 799
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@17d
    move-object/from16 v32, v0

    #@17f
    move-object/from16 v0, v32

    #@181
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@183
    move/from16 v32, v0

    #@185
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@189
    move-object/from16 v33, v0

    #@18b
    move-object/from16 v0, v33

    #@18d
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@18f
    move/from16 v33, v0

    #@191
    sub-int v32, v32, v33

    #@193
    const/16 v33, 0x0

    #@195
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    #@198
    move-result v32

    #@199
    .line 800
    move-object/from16 v0, p0

    #@19b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@19d
    move-object/from16 v33, v0

    #@19f
    move-object/from16 v0, v33

    #@1a1
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@1a3
    move/from16 v33, v0

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@1a9
    move-object/from16 v34, v0

    #@1ab
    move-object/from16 v0, v34

    #@1ad
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@1af
    move/from16 v34, v0

    #@1b1
    sub-int v33, v33, v34

    #@1b3
    const/16 v34, 0x0

    #@1b5
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    #@1b8
    move-result v33

    #@1b9
    .line 801
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@1bd
    move-object/from16 v34, v0

    #@1bf
    move-object/from16 v0, v34

    #@1c1
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@1c3
    move/from16 v34, v0

    #@1c5
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@1c9
    move-object/from16 v35, v0

    #@1cb
    move-object/from16 v0, v35

    #@1cd
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@1cf
    move/from16 v35, v0

    #@1d1
    sub-int v34, v34, v35

    #@1d3
    const/16 v35, 0x0

    #@1d5
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    #@1d8
    move-result v34

    #@1d9
    .line 798
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@1dc
    .line 808
    :goto_5
    if-eqz v29, :cond_6

    #@1de
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@1e2
    move-object/from16 v30, v0

    #@1e4
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->isEmpty()Z

    #@1e7
    move-result v30

    #@1e8
    if-eqz v30, :cond_1c

    #@1ea
    .line 827
    :cond_6
    move-object/from16 v0, p0

    #@1ec
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1ee
    move-object/from16 v30, v0

    #@1f0
    move-object/from16 v0, v30

    #@1f2
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1f4
    move/from16 v30, v0

    #@1f6
    const/16 v31, 0x7f2

    #@1f8
    move/from16 v0, v30

    #@1fa
    move/from16 v1, v31

    #@1fc
    if-ne v0, v1, :cond_1d

    #@1fe
    .line 828
    move-object/from16 v0, p0

    #@200
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@202
    move-object/from16 v30, v0

    #@204
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    #@207
    move-result-object v30

    #@208
    move-object/from16 v0, p0

    #@20a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@20c
    move-object/from16 v31, v0

    #@20e
    invoke-virtual/range {v30 .. v31}, Lcom/android/server/wm/DockedStackDividerController;->positionDockedStackedDivider(Landroid/graphics/Rect;)V

    #@211
    .line 829
    move-object/from16 v0, p0

    #@213
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@215
    move-object/from16 v30, v0

    #@217
    move-object/from16 v0, p0

    #@219
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@21b
    move-object/from16 v31, v0

    #@21d
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@220
    .line 830
    move-object/from16 v0, p0

    #@222
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@224
    move-object/from16 v30, v0

    #@226
    move-object/from16 v0, p0

    #@228
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@22a
    move-object/from16 v31, v0

    #@22c
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@22f
    move-result v30

    #@230
    if-nez v30, :cond_7

    #@232
    .line 831
    const/16 v30, 0x1

    #@234
    move/from16 v0, v30

    #@236
    move-object/from16 v1, p0

    #@238
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    #@23a
    .line 850
    :cond_7
    :goto_6
    if-eqz v10, :cond_8

    #@23c
    if-eqz v29, :cond_1e

    #@23e
    .line 859
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    #@240
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@242
    move-object/from16 v30, v0

    #@244
    move-object/from16 v0, v30

    #@246
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@248
    move/from16 v30, v0

    #@24a
    const/16 v31, 0x7f2

    #@24c
    move/from16 v0, v30

    #@24e
    move/from16 v1, v31

    #@250
    if-ne v0, v1, :cond_1f

    #@252
    .line 862
    move-object/from16 v0, p0

    #@254
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@256
    move-object/from16 v30, v0

    #@258
    move-object/from16 v0, p0

    #@25a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@25c
    move-object/from16 v31, v0

    #@25e
    move-object/from16 v0, v31

    #@260
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@262
    move/from16 v31, v0

    #@264
    move-object/from16 v0, p0

    #@266
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@268
    move-object/from16 v32, v0

    #@26a
    move-object/from16 v0, v32

    #@26c
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@26e
    move/from16 v32, v0

    #@270
    sub-int v31, v31, v32

    #@272
    const/16 v32, 0x0

    #@274
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@277
    move-result v31

    #@278
    .line 863
    move-object/from16 v0, p0

    #@27a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@27c
    move-object/from16 v32, v0

    #@27e
    move-object/from16 v0, v32

    #@280
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@282
    move/from16 v32, v0

    #@284
    move-object/from16 v0, p0

    #@286
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@288
    move-object/from16 v33, v0

    #@28a
    move-object/from16 v0, v33

    #@28c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@28e
    move/from16 v33, v0

    #@290
    sub-int v32, v32, v33

    #@292
    const/16 v33, 0x0

    #@294
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    #@297
    move-result v32

    #@298
    .line 864
    move-object/from16 v0, p0

    #@29a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@29c
    move-object/from16 v33, v0

    #@29e
    move-object/from16 v0, v33

    #@2a0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@2a2
    move/from16 v33, v0

    #@2a4
    move-object/from16 v0, p0

    #@2a6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@2a8
    move-object/from16 v34, v0

    #@2aa
    move-object/from16 v0, v34

    #@2ac
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@2ae
    move/from16 v34, v0

    #@2b0
    sub-int v33, v33, v34

    #@2b2
    const/16 v34, 0x0

    #@2b4
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    #@2b7
    move-result v33

    #@2b8
    .line 865
    move-object/from16 v0, p0

    #@2ba
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@2bc
    move-object/from16 v34, v0

    #@2be
    move-object/from16 v0, v34

    #@2c0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@2c2
    move/from16 v34, v0

    #@2c4
    move-object/from16 v0, p0

    #@2c6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@2c8
    move-object/from16 v35, v0

    #@2ca
    move-object/from16 v0, v35

    #@2cc
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@2ce
    move/from16 v35, v0

    #@2d0
    sub-int v34, v34, v35

    #@2d2
    const/16 v35, 0x0

    #@2d4
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    #@2d7
    move-result v34

    #@2d8
    .line 862
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@2db
    .line 869
    move-object/from16 v0, p0

    #@2dd
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@2df
    move-object/from16 v30, v0

    #@2e1
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    #@2e4
    .line 870
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@2e8
    move-object/from16 v30, v0

    #@2ea
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    #@2ed
    .line 900
    :goto_8
    move-object/from16 v0, p0

    #@2ef
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2f1
    move-object/from16 v30, v0

    #@2f3
    move/from16 v0, v17

    #@2f5
    neg-int v0, v0

    #@2f6
    move/from16 v31, v0

    #@2f8
    move/from16 v0, v18

    #@2fa
    neg-int v0, v0

    #@2fb
    move/from16 v32, v0

    #@2fd
    invoke-virtual/range {v30 .. v32}, Landroid/graphics/Rect;->offset(II)V

    #@300
    .line 901
    move-object/from16 v0, p0

    #@302
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@304
    move-object/from16 v30, v0

    #@306
    move/from16 v0, v17

    #@308
    neg-int v0, v0

    #@309
    move/from16 v31, v0

    #@30b
    move/from16 v0, v18

    #@30d
    neg-int v0, v0

    #@30e
    move/from16 v32, v0

    #@310
    invoke-virtual/range {v30 .. v32}, Landroid/graphics/Rect;->offset(II)V

    #@313
    .line 902
    move-object/from16 v0, p0

    #@315
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@317
    move-object/from16 v30, v0

    #@319
    move/from16 v0, v17

    #@31b
    neg-int v0, v0

    #@31c
    move/from16 v31, v0

    #@31e
    move/from16 v0, v18

    #@320
    neg-int v0, v0

    #@321
    move/from16 v32, v0

    #@323
    invoke-virtual/range {v30 .. v32}, Landroid/graphics/Rect;->offset(II)V

    #@326
    .line 903
    move-object/from16 v0, p0

    #@328
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@32a
    move-object/from16 v30, v0

    #@32c
    move/from16 v0, v17

    #@32e
    neg-int v0, v0

    #@32f
    move/from16 v31, v0

    #@331
    move/from16 v0, v18

    #@333
    neg-int v0, v0

    #@334
    move/from16 v32, v0

    #@336
    invoke-virtual/range {v30 .. v32}, Landroid/graphics/Rect;->offset(II)V

    #@339
    .line 904
    move-object/from16 v0, p0

    #@33b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@33d
    move-object/from16 v30, v0

    #@33f
    move/from16 v0, v17

    #@341
    neg-int v0, v0

    #@342
    move/from16 v31, v0

    #@344
    move/from16 v0, v18

    #@346
    neg-int v0, v0

    #@347
    move/from16 v32, v0

    #@349
    invoke-virtual/range {v30 .. v32}, Landroid/graphics/Rect;->offset(II)V

    #@34c
    .line 906
    move-object/from16 v0, p0

    #@34e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@350
    move-object/from16 v30, v0

    #@352
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@356
    move-object/from16 v31, v0

    #@358
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@35b
    .line 907
    move-object/from16 v0, p0

    #@35d
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@35f
    move/from16 v30, v0

    #@361
    if-eqz v30, :cond_9

    #@363
    .line 911
    move-object/from16 v0, p0

    #@365
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@367
    move-object/from16 v30, v0

    #@369
    move-object/from16 v0, p0

    #@36b
    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@36d
    move/from16 v31, v0

    #@36f
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->scale(F)V

    #@372
    .line 912
    move-object/from16 v0, p0

    #@374
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@376
    move-object/from16 v30, v0

    #@378
    move-object/from16 v0, p0

    #@37a
    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@37c
    move/from16 v31, v0

    #@37e
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->scale(F)V

    #@381
    .line 913
    move-object/from16 v0, p0

    #@383
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@385
    move-object/from16 v30, v0

    #@387
    move-object/from16 v0, p0

    #@389
    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@38b
    move/from16 v31, v0

    #@38d
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->scale(F)V

    #@390
    .line 914
    move-object/from16 v0, p0

    #@392
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@394
    move-object/from16 v30, v0

    #@396
    move-object/from16 v0, p0

    #@398
    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@39a
    move/from16 v31, v0

    #@39c
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->scale(F)V

    #@39f
    .line 915
    move-object/from16 v0, p0

    #@3a1
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@3a3
    move-object/from16 v30, v0

    #@3a5
    move-object/from16 v0, p0

    #@3a7
    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@3a9
    move/from16 v31, v0

    #@3ab
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->scale(F)V

    #@3ae
    .line 919
    move-object/from16 v0, p0

    #@3b0
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@3b2
    move-object/from16 v30, v0

    #@3b4
    move-object/from16 v0, p0

    #@3b6
    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@3b8
    move/from16 v31, v0

    #@3ba
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->scale(F)V

    #@3bd
    .line 922
    :cond_9
    move-object/from16 v0, p0

    #@3bf
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@3c1
    move/from16 v30, v0

    #@3c3
    if-eqz v30, :cond_b

    #@3c5
    move-object/from16 v0, p0

    #@3c7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3c9
    move-object/from16 v30, v0

    #@3cb
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    #@3ce
    move-result v30

    #@3cf
    move/from16 v0, v30

    #@3d1
    if-ne v11, v0, :cond_a

    #@3d3
    move-object/from16 v0, p0

    #@3d5
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3d7
    move-object/from16 v30, v0

    #@3d9
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    #@3dc
    move-result v30

    #@3dd
    move/from16 v0, v30

    #@3df
    if-eq v8, v0, :cond_b

    #@3e1
    .line 923
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3e4
    move-result-object v5

    #@3e5
    .line 924
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v5, :cond_b

    #@3e7
    .line 925
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@3ea
    move-result-object v6

    #@3eb
    .line 926
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    #@3ed
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3ef
    move-object/from16 v30, v0

    #@3f1
    move-object/from16 v0, v30

    #@3f3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@3f5
    move-object/from16 v30, v0

    #@3f7
    .line 927
    iget v0, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    #@3f9
    move/from16 v31, v0

    #@3fb
    iget v0, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    #@3fd
    move/from16 v32, v0

    #@3ff
    const/16 v33, 0x0

    #@401
    .line 926
    move-object/from16 v0, v30

    #@403
    move-object/from16 v1, p0

    #@405
    move/from16 v2, v31

    #@407
    move/from16 v3, v32

    #@409
    move/from16 v4, v33

    #@40b
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    #@40e
    .line 677
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_b
    return-void

    #@40f
    .line 683
    .end local v8    # "fh":I
    .end local v10    # "fullscreenTask":Z
    .end local v11    # "fw":I
    .end local v12    # "hasOutsets":Z
    .end local v15    # "layoutContainingFrame":Landroid/graphics/Rect;
    .end local v16    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .end local v17    # "layoutXDiff":I
    .end local v18    # "layoutYDiff":I
    .end local v24    # "ph":I
    .end local v25    # "pw":I
    .end local v26    # "task":Lcom/android/server/wm/Task;
    :cond_c
    return-void

    #@410
    .line 688
    .restart local v26    # "task":Lcom/android/server/wm/Task;
    :cond_d
    const/4 v10, 0x1

    #@411
    .restart local v10    # "fullscreenTask":Z
    goto/16 :goto_0

    #@413
    .line 689
    :cond_e
    const/16 v29, 0x0

    #@415
    .local v29, "windowsAreFloating":Z
    goto/16 :goto_1

    #@417
    .line 697
    .end local v29    # "windowsAreFloating":Z
    :cond_f
    move-object/from16 v0, p0

    #@419
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@41b
    move-object/from16 v30, v0

    #@41d
    move-object/from16 v0, v26

    #@41f
    move-object/from16 v1, v30

    #@421
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getTempInsetBounds(Landroid/graphics/Rect;)V

    #@424
    goto/16 :goto_2

    #@426
    .line 719
    :cond_10
    move-object/from16 v0, p0

    #@428
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@42a
    move-object/from16 v30, v0

    #@42c
    move-object/from16 v0, v26

    #@42e
    move-object/from16 v1, v30

    #@430
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    #@433
    .line 720
    move-object/from16 v0, p0

    #@435
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@437
    move-object/from16 v30, v0

    #@439
    if-eqz v30, :cond_11

    #@43b
    move-object/from16 v0, p0

    #@43d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@43f
    move-object/from16 v30, v0

    #@441
    move-object/from16 v0, v30

    #@443
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@445
    move-object/from16 v30, v0

    #@447
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@44a
    move-result v30

    #@44b
    if-eqz v30, :cond_15

    #@44d
    .line 728
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    #@44f
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@451
    move-object/from16 v30, v0

    #@453
    move-object/from16 v0, v30

    #@455
    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    #@457
    .line 730
    .local v14, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_12

    #@459
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    #@45c
    move-result v30

    #@45d
    if-eqz v30, :cond_12

    #@45f
    move-object/from16 v0, p0

    #@461
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@463
    move-object/from16 v30, v0

    #@465
    move-object/from16 v0, v30

    #@467
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    #@469
    move-object/from16 v30, v0

    #@46b
    move-object/from16 v0, v30

    #@46d
    move-object/from16 v1, p0

    #@46f
    if-ne v0, v1, :cond_12

    #@471
    .line 731
    if-eqz v29, :cond_16

    #@473
    move-object/from16 v0, p0

    #@475
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@477
    move-object/from16 v30, v0

    #@479
    move-object/from16 v0, v30

    #@47b
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@47d
    move/from16 v30, v0

    #@47f
    move-object/from16 v0, p4

    #@481
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@483
    move/from16 v31, v0

    #@485
    move/from16 v0, v30

    #@487
    move/from16 v1, v31

    #@489
    if-le v0, v1, :cond_16

    #@48b
    .line 734
    move-object/from16 v0, p0

    #@48d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@48f
    move-object/from16 v30, v0

    #@491
    move-object/from16 v0, v30

    #@493
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@495
    move/from16 v31, v0

    #@497
    move-object/from16 v0, p0

    #@499
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@49b
    move-object/from16 v32, v0

    #@49d
    move-object/from16 v0, v32

    #@49f
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4a1
    move/from16 v32, v0

    #@4a3
    move-object/from16 v0, p4

    #@4a5
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4a7
    move/from16 v33, v0

    #@4a9
    sub-int v32, v32, v33

    #@4ab
    sub-int v31, v31, v32

    #@4ad
    move/from16 v0, v31

    #@4af
    move-object/from16 v1, v30

    #@4b1
    iput v0, v1, Landroid/graphics/Rect;->top:I

    #@4b3
    .line 743
    :cond_12
    :goto_a
    if-eqz v29, :cond_13

    #@4b5
    .line 747
    move-object/from16 v0, p0

    #@4b7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@4b9
    move-object/from16 v30, v0

    #@4bb
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->isEmpty()Z

    #@4be
    move-result v30

    #@4bf
    if-eqz v30, :cond_13

    #@4c1
    .line 748
    move-object/from16 v0, p0

    #@4c3
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@4c5
    move-object/from16 v30, v0

    #@4c7
    move-object/from16 v0, v30

    #@4c9
    move-object/from16 v1, p4

    #@4cb
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4ce
    .line 751
    :cond_13
    move-object/from16 v0, p0

    #@4d0
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@4d2
    move-object/from16 v30, v0

    #@4d4
    move-object/from16 v0, p0

    #@4d6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@4d8
    move-object/from16 v31, v0

    #@4da
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4dd
    .line 752
    move-object/from16 v0, p0

    #@4df
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@4e1
    move-object/from16 v30, v0

    #@4e3
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->isEmpty()Z

    #@4e6
    move-result v30

    #@4e7
    if-nez v30, :cond_17

    #@4e9
    move-object/from16 v0, p0

    #@4eb
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@4ed
    move-object/from16 v30, v0

    #@4ef
    move-object/from16 v0, v30

    #@4f1
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4f3
    move/from16 v30, v0

    #@4f5
    move-object/from16 v0, p0

    #@4f7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@4f9
    move-object/from16 v31, v0

    #@4fb
    move-object/from16 v0, v31

    #@4fd
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@4ff
    move/from16 v31, v0

    #@501
    sub-int v17, v30, v31

    #@503
    .line 753
    .restart local v17    # "layoutXDiff":I
    :goto_b
    move-object/from16 v0, p0

    #@505
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@507
    move-object/from16 v30, v0

    #@509
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->isEmpty()Z

    #@50c
    move-result v30

    #@50d
    if-nez v30, :cond_18

    #@50f
    move-object/from16 v0, p0

    #@511
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@513
    move-object/from16 v30, v0

    #@515
    move-object/from16 v0, v30

    #@517
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@519
    move/from16 v30, v0

    #@51b
    move-object/from16 v0, p0

    #@51d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@51f
    move-object/from16 v31, v0

    #@521
    move-object/from16 v0, v31

    #@523
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@525
    move/from16 v31, v0

    #@527
    sub-int v18, v30, v31

    #@529
    .line 754
    .restart local v18    # "layoutYDiff":I
    :goto_c
    move-object/from16 v0, p0

    #@52b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@52d
    move-object/from16 v30, v0

    #@52f
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->isEmpty()Z

    #@532
    move-result v30

    #@533
    if-nez v30, :cond_19

    #@535
    move-object/from16 v0, p0

    #@537
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@539
    .line 755
    .restart local v15    # "layoutContainingFrame":Landroid/graphics/Rect;
    :goto_d
    move-object/from16 v0, p0

    #@53b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@53d
    move-object/from16 v30, v0

    #@53f
    move-object/from16 v0, p0

    #@541
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@543
    move-object/from16 v31, v0

    #@545
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@548
    move-result-object v31

    #@549
    move-object/from16 v0, v31

    #@54b
    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@54d
    move/from16 v31, v0

    #@54f
    .line 756
    move-object/from16 v0, p0

    #@551
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@553
    move-object/from16 v32, v0

    #@555
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@558
    move-result-object v32

    #@559
    move-object/from16 v0, v32

    #@55b
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@55d
    move/from16 v32, v0

    #@55f
    .line 755
    const/16 v33, 0x0

    #@561
    const/16 v34, 0x0

    #@563
    move-object/from16 v0, v30

    #@565
    move/from16 v1, v33

    #@567
    move/from16 v2, v34

    #@569
    move/from16 v3, v31

    #@56b
    move/from16 v4, v32

    #@56d
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@570
    .line 757
    move-object/from16 v0, p0

    #@572
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@574
    move-object/from16 v30, v0

    #@576
    move-object/from16 v0, p0

    #@578
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@57a
    move-object/from16 v31, v0

    #@57c
    move-object/from16 v0, p0

    #@57e
    move-object/from16 v1, v30

    #@580
    move-object/from16 v2, p2

    #@582
    move-object/from16 v3, v31

    #@584
    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@587
    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    #@58a
    move-result v30

    #@58b
    if-nez v30, :cond_14

    #@58d
    .line 759
    move-object/from16 v0, p0

    #@58f
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@591
    move-object/from16 v30, v0

    #@593
    move-object/from16 v0, p0

    #@595
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@597
    move-object/from16 v31, v0

    #@599
    move-object/from16 v0, p0

    #@59b
    move-object/from16 v1, v30

    #@59d
    move-object/from16 v2, p1

    #@59f
    move-object/from16 v3, v31

    #@5a1
    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@5a4
    .line 760
    move-object/from16 v0, p0

    #@5a6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@5a8
    move-object/from16 v30, v0

    #@5aa
    move-object/from16 v0, p0

    #@5ac
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@5ae
    move-object/from16 v31, v0

    #@5b0
    move-object/from16 v0, p0

    #@5b2
    move-object/from16 v1, v30

    #@5b4
    move-object/from16 v2, p1

    #@5b6
    move-object/from16 v3, v31

    #@5b8
    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@5bb
    .line 762
    :cond_14
    move-object/from16 v16, p2

    #@5bd
    .line 763
    .restart local v16    # "layoutDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    #@5bf
    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@5c2
    goto/16 :goto_3

    #@5c4
    .line 724
    .end local v14    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v15    # "layoutContainingFrame":Landroid/graphics/Rect;
    .end local v16    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .end local v17    # "layoutXDiff":I
    .end local v18    # "layoutYDiff":I
    :cond_15
    move-object/from16 v0, p0

    #@5c6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@5c8
    move-object/from16 v30, v0

    #@5ca
    move-object/from16 v0, v30

    #@5cc
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    #@5ce
    move-object/from16 v30, v0

    #@5d0
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    #@5d3
    move-result-object v9

    #@5d4
    check-cast v9, Landroid/graphics/Rect;

    #@5d6
    .line 725
    .local v9, "frozen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@5d8
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@5da
    move-object/from16 v30, v0

    #@5dc
    move-object/from16 v0, p0

    #@5de
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@5e0
    move-object/from16 v31, v0

    #@5e2
    move-object/from16 v0, v31

    #@5e4
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@5e6
    move/from16 v31, v0

    #@5e8
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    #@5eb
    move-result v32

    #@5ec
    add-int v31, v31, v32

    #@5ee
    move/from16 v0, v31

    #@5f0
    move-object/from16 v1, v30

    #@5f2
    iput v0, v1, Landroid/graphics/Rect;->right:I

    #@5f4
    .line 726
    move-object/from16 v0, p0

    #@5f6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@5f8
    move-object/from16 v30, v0

    #@5fa
    move-object/from16 v0, p0

    #@5fc
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@5fe
    move-object/from16 v31, v0

    #@600
    move-object/from16 v0, v31

    #@602
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@604
    move/from16 v31, v0

    #@606
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    #@609
    move-result v32

    #@60a
    add-int v31, v31, v32

    #@60c
    move/from16 v0, v31

    #@60e
    move-object/from16 v1, v30

    #@610
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    #@612
    goto/16 :goto_9

    #@614
    .line 735
    .end local v9    # "frozen":Landroid/graphics/Rect;
    .restart local v14    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_16
    move-object/from16 v0, p0

    #@616
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@618
    move-object/from16 v30, v0

    #@61a
    move-object/from16 v0, v30

    #@61c
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@61e
    move/from16 v30, v0

    #@620
    move-object/from16 v0, p1

    #@622
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@624
    move/from16 v31, v0

    #@626
    move/from16 v0, v30

    #@628
    move/from16 v1, v31

    #@62a
    if-le v0, v1, :cond_12

    #@62c
    .line 739
    move-object/from16 v0, p0

    #@62e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@630
    move-object/from16 v30, v0

    #@632
    move-object/from16 v0, p1

    #@634
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@636
    move/from16 v31, v0

    #@638
    move/from16 v0, v31

    #@63a
    move-object/from16 v1, v30

    #@63c
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    #@63e
    goto/16 :goto_a

    #@640
    .line 752
    :cond_17
    const/16 v17, 0x0

    #@642
    .restart local v17    # "layoutXDiff":I
    goto/16 :goto_b

    #@644
    .line 753
    :cond_18
    const/16 v18, 0x0

    #@646
    .restart local v18    # "layoutYDiff":I
    goto/16 :goto_c

    #@648
    .line 754
    :cond_19
    move-object/from16 v0, p0

    #@64a
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@64c
    .restart local v15    # "layoutContainingFrame":Landroid/graphics/Rect;
    goto/16 :goto_d

    #@64e
    .line 786
    .end local v14    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v16    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .restart local v24    # "ph":I
    .restart local v25    # "pw":I
    :cond_1a
    const/4 v12, 0x0

    #@64f
    goto/16 :goto_4

    #@651
    .line 803
    .restart local v8    # "fh":I
    .restart local v11    # "fw":I
    .restart local v12    # "hasOutsets":Z
    :cond_1b
    move-object/from16 v0, p0

    #@653
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@655
    move-object/from16 v30, v0

    #@657
    const/16 v31, 0x0

    #@659
    const/16 v32, 0x0

    #@65b
    const/16 v33, 0x0

    #@65d
    const/16 v34, 0x0

    #@65f
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@662
    goto/16 :goto_5

    #@664
    .line 812
    :cond_1c
    move-object/from16 v0, p0

    #@666
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@668
    move-object/from16 v30, v0

    #@66a
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    #@66d
    move-result v30

    #@66e
    move-object/from16 v0, p0

    #@670
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@672
    move-object/from16 v31, v0

    #@674
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    #@677
    move-result v31

    #@678
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    #@67b
    move-result v13

    #@67c
    .line 813
    .local v13, "height":I
    move-object/from16 v0, p0

    #@67e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@680
    move-object/from16 v30, v0

    #@682
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    #@685
    move-result v30

    #@686
    move-object/from16 v0, p0

    #@688
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@68a
    move-object/from16 v31, v0

    #@68c
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    #@68f
    move-result v31

    #@690
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    #@693
    move-result v28

    #@694
    .line 814
    .local v28, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@697
    move-result-object v30

    #@698
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@69b
    move-result-object v7

    #@69c
    .line 816
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v30, 0x20

    #@69e
    .line 815
    move/from16 v0, v30

    #@6a0
    invoke-static {v0, v7}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@6a3
    move-result v20

    #@6a4
    .line 818
    .local v20, "minVisibleHeight":I
    const/16 v30, 0x30

    #@6a6
    .line 817
    move/from16 v0, v30

    #@6a8
    invoke-static {v0, v7}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@6ab
    move-result v21

    #@6ac
    .line 819
    .local v21, "minVisibleWidth":I
    move-object/from16 v0, p0

    #@6ae
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@6b0
    move-object/from16 v30, v0

    #@6b2
    move-object/from16 v0, v30

    #@6b4
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@6b6
    move/from16 v30, v0

    #@6b8
    .line 820
    move-object/from16 v0, p0

    #@6ba
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@6bc
    move-object/from16 v31, v0

    #@6be
    move-object/from16 v0, v31

    #@6c0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@6c2
    move/from16 v31, v0

    #@6c4
    move-object/from16 v0, p0

    #@6c6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@6c8
    move-object/from16 v32, v0

    #@6ca
    move-object/from16 v0, v32

    #@6cc
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@6ce
    move/from16 v32, v0

    #@6d0
    sub-int v32, v32, v20

    #@6d2
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    #@6d5
    move-result v31

    #@6d6
    .line 819
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@6d9
    move-result v27

    #@6da
    .line 821
    .local v27, "top":I
    move-object/from16 v0, p0

    #@6dc
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@6de
    move-object/from16 v30, v0

    #@6e0
    move-object/from16 v0, v30

    #@6e2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@6e4
    move/from16 v30, v0

    #@6e6
    add-int v30, v30, v21

    #@6e8
    sub-int v30, v30, v28

    #@6ea
    .line 822
    move-object/from16 v0, p0

    #@6ec
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@6ee
    move-object/from16 v31, v0

    #@6f0
    move-object/from16 v0, v31

    #@6f2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@6f4
    move/from16 v31, v0

    #@6f6
    move-object/from16 v0, p0

    #@6f8
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@6fa
    move-object/from16 v32, v0

    #@6fc
    move-object/from16 v0, v32

    #@6fe
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@700
    move/from16 v32, v0

    #@702
    sub-int v32, v32, v21

    #@704
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    #@707
    move-result v31

    #@708
    .line 821
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@70b
    move-result v19

    #@70c
    .line 823
    .local v19, "left":I
    move-object/from16 v0, p0

    #@70e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@710
    move-object/from16 v30, v0

    #@712
    add-int v31, v19, v28

    #@714
    add-int v32, v27, v13

    #@716
    move-object/from16 v0, v30

    #@718
    move/from16 v1, v19

    #@71a
    move/from16 v2, v27

    #@71c
    move/from16 v3, v31

    #@71e
    move/from16 v4, v32

    #@720
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@723
    .line 824
    move-object/from16 v0, p0

    #@725
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@727
    move-object/from16 v30, v0

    #@729
    move-object/from16 v0, p0

    #@72b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@72d
    move-object/from16 v31, v0

    #@72f
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@732
    .line 825
    move-object/from16 v0, p0

    #@734
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@736
    move-object/from16 v30, v0

    #@738
    move-object/from16 v0, p0

    #@73a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@73c
    move-object/from16 v31, v0

    #@73e
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@741
    .line 826
    move-object/from16 v0, p0

    #@743
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@745
    move-object/from16 v30, v0

    #@747
    move-object/from16 v0, p0

    #@749
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@74b
    move-object/from16 v31, v0

    #@74d
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@750
    goto/16 :goto_6

    #@752
    .line 834
    .end local v7    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v13    # "height":I
    .end local v19    # "left":I
    .end local v20    # "minVisibleHeight":I
    .end local v21    # "minVisibleWidth":I
    .end local v27    # "top":I
    .end local v28    # "width":I
    :cond_1d
    move-object/from16 v0, p0

    #@754
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@756
    move-object/from16 v30, v0

    #@758
    move-object/from16 v0, p0

    #@75a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@75c
    move-object/from16 v31, v0

    #@75e
    move-object/from16 v0, v31

    #@760
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@762
    move/from16 v31, v0

    #@764
    move-object/from16 v0, p0

    #@766
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@768
    move-object/from16 v32, v0

    #@76a
    move-object/from16 v0, v32

    #@76c
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@76e
    move/from16 v32, v0

    #@770
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@773
    move-result v31

    #@774
    .line 835
    move-object/from16 v0, p0

    #@776
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@778
    move-object/from16 v32, v0

    #@77a
    move-object/from16 v0, v32

    #@77c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@77e
    move/from16 v32, v0

    #@780
    move-object/from16 v0, p0

    #@782
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@784
    move-object/from16 v33, v0

    #@786
    move-object/from16 v0, v33

    #@788
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@78a
    move/from16 v33, v0

    #@78c
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    #@78f
    move-result v32

    #@790
    .line 836
    move-object/from16 v0, p0

    #@792
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@794
    move-object/from16 v33, v0

    #@796
    move-object/from16 v0, v33

    #@798
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@79a
    move/from16 v33, v0

    #@79c
    move-object/from16 v0, p0

    #@79e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@7a0
    move-object/from16 v34, v0

    #@7a2
    move-object/from16 v0, v34

    #@7a4
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@7a6
    move/from16 v34, v0

    #@7a8
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    #@7ab
    move-result v33

    #@7ac
    .line 837
    move-object/from16 v0, p0

    #@7ae
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@7b0
    move-object/from16 v34, v0

    #@7b2
    move-object/from16 v0, v34

    #@7b4
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@7b6
    move/from16 v34, v0

    #@7b8
    move-object/from16 v0, p0

    #@7ba
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@7bc
    move-object/from16 v35, v0

    #@7be
    move-object/from16 v0, v35

    #@7c0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@7c2
    move/from16 v35, v0

    #@7c4
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    #@7c7
    move-result v34

    #@7c8
    .line 834
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@7cb
    .line 839
    move-object/from16 v0, p0

    #@7cd
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@7cf
    move-object/from16 v30, v0

    #@7d1
    move-object/from16 v0, p0

    #@7d3
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@7d5
    move-object/from16 v31, v0

    #@7d7
    move-object/from16 v0, v31

    #@7d9
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@7db
    move/from16 v31, v0

    #@7dd
    move-object/from16 v0, p0

    #@7df
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@7e1
    move-object/from16 v32, v0

    #@7e3
    move-object/from16 v0, v32

    #@7e5
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@7e7
    move/from16 v32, v0

    #@7e9
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@7ec
    move-result v31

    #@7ed
    .line 840
    move-object/from16 v0, p0

    #@7ef
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@7f1
    move-object/from16 v32, v0

    #@7f3
    move-object/from16 v0, v32

    #@7f5
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@7f7
    move/from16 v32, v0

    #@7f9
    move-object/from16 v0, p0

    #@7fb
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@7fd
    move-object/from16 v33, v0

    #@7ff
    move-object/from16 v0, v33

    #@801
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@803
    move/from16 v33, v0

    #@805
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    #@808
    move-result v32

    #@809
    .line 841
    move-object/from16 v0, p0

    #@80b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@80d
    move-object/from16 v33, v0

    #@80f
    move-object/from16 v0, v33

    #@811
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@813
    move/from16 v33, v0

    #@815
    move-object/from16 v0, p0

    #@817
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@819
    move-object/from16 v34, v0

    #@81b
    move-object/from16 v0, v34

    #@81d
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@81f
    move/from16 v34, v0

    #@821
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    #@824
    move-result v33

    #@825
    .line 842
    move-object/from16 v0, p0

    #@827
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@829
    move-object/from16 v34, v0

    #@82b
    move-object/from16 v0, v34

    #@82d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@82f
    move/from16 v34, v0

    #@831
    move-object/from16 v0, p0

    #@833
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@835
    move-object/from16 v35, v0

    #@837
    move-object/from16 v0, v35

    #@839
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@83b
    move/from16 v35, v0

    #@83d
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    #@840
    move-result v34

    #@841
    .line 839
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@844
    .line 844
    move-object/from16 v0, p0

    #@846
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@848
    move-object/from16 v30, v0

    #@84a
    move-object/from16 v0, p0

    #@84c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@84e
    move-object/from16 v31, v0

    #@850
    move-object/from16 v0, v31

    #@852
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@854
    move/from16 v31, v0

    #@856
    move-object/from16 v0, p0

    #@858
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@85a
    move-object/from16 v32, v0

    #@85c
    move-object/from16 v0, v32

    #@85e
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@860
    move/from16 v32, v0

    #@862
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@865
    move-result v31

    #@866
    .line 845
    move-object/from16 v0, p0

    #@868
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@86a
    move-object/from16 v32, v0

    #@86c
    move-object/from16 v0, v32

    #@86e
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@870
    move/from16 v32, v0

    #@872
    move-object/from16 v0, p0

    #@874
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@876
    move-object/from16 v33, v0

    #@878
    move-object/from16 v0, v33

    #@87a
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@87c
    move/from16 v33, v0

    #@87e
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    #@881
    move-result v32

    #@882
    .line 846
    move-object/from16 v0, p0

    #@884
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@886
    move-object/from16 v33, v0

    #@888
    move-object/from16 v0, v33

    #@88a
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@88c
    move/from16 v33, v0

    #@88e
    move-object/from16 v0, p0

    #@890
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@892
    move-object/from16 v34, v0

    #@894
    move-object/from16 v0, v34

    #@896
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@898
    move/from16 v34, v0

    #@89a
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    #@89d
    move-result v33

    #@89e
    .line 847
    move-object/from16 v0, p0

    #@8a0
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@8a2
    move-object/from16 v34, v0

    #@8a4
    move-object/from16 v0, v34

    #@8a6
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@8a8
    move/from16 v34, v0

    #@8aa
    move-object/from16 v0, p0

    #@8ac
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@8ae
    move-object/from16 v35, v0

    #@8b0
    move-object/from16 v0, v35

    #@8b2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@8b4
    move/from16 v35, v0

    #@8b6
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    #@8b9
    move-result v34

    #@8ba
    .line 844
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@8bd
    goto/16 :goto_6

    #@8bf
    .line 853
    :cond_1e
    move-object/from16 v0, p0

    #@8c1
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@8c3
    move-object/from16 v30, v0

    #@8c5
    move-object/from16 v0, p0

    #@8c7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@8c9
    move-object/from16 v31, v0

    #@8cb
    move-object/from16 v0, v31

    #@8cd
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@8cf
    move/from16 v31, v0

    #@8d1
    iget v0, v15, Landroid/graphics/Rect;->left:I

    #@8d3
    move/from16 v32, v0

    #@8d5
    sub-int v31, v31, v32

    #@8d7
    const/16 v32, 0x0

    #@8d9
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@8dc
    move-result v31

    #@8dd
    .line 854
    move-object/from16 v0, p0

    #@8df
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@8e1
    move-object/from16 v32, v0

    #@8e3
    move-object/from16 v0, v32

    #@8e5
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@8e7
    move/from16 v32, v0

    #@8e9
    iget v0, v15, Landroid/graphics/Rect;->top:I

    #@8eb
    move/from16 v33, v0

    #@8ed
    sub-int v32, v32, v33

    #@8ef
    const/16 v33, 0x0

    #@8f1
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    #@8f4
    move-result v32

    #@8f5
    .line 855
    iget v0, v15, Landroid/graphics/Rect;->right:I

    #@8f7
    move/from16 v33, v0

    #@8f9
    move-object/from16 v0, p0

    #@8fb
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@8fd
    move-object/from16 v34, v0

    #@8ff
    move-object/from16 v0, v34

    #@901
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@903
    move/from16 v34, v0

    #@905
    sub-int v33, v33, v34

    #@907
    const/16 v34, 0x0

    #@909
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    #@90c
    move-result v33

    #@90d
    .line 856
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    #@90f
    move/from16 v34, v0

    #@911
    move-object/from16 v0, p0

    #@913
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@915
    move-object/from16 v35, v0

    #@917
    move-object/from16 v0, v35

    #@919
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@91b
    move/from16 v35, v0

    #@91d
    sub-int v34, v34, v35

    #@91f
    const/16 v35, 0x0

    #@921
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    #@924
    move-result v34

    #@925
    .line 853
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@928
    goto/16 :goto_7

    #@92a
    .line 872
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@92d
    move-result-object v30

    #@92e
    move-object/from16 v0, p0

    #@930
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@932
    move-object/from16 v31, v0

    #@934
    invoke-virtual/range {v30 .. v31}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@937
    .line 875
    if-nez v10, :cond_20

    #@939
    move-object/from16 v0, p0

    #@93b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@93d
    move-object/from16 v30, v0

    #@93f
    move-object/from16 v0, v30

    #@941
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@943
    move/from16 v30, v0

    #@945
    move-object/from16 v0, p0

    #@947
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@949
    move-object/from16 v31, v0

    #@94b
    move-object/from16 v0, v31

    #@94d
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@94f
    move/from16 v31, v0

    #@951
    move/from16 v0, v30

    #@953
    move/from16 v1, v31

    #@955
    if-le v0, v1, :cond_20

    #@957
    const/16 v23, 0x1

    #@959
    .line 876
    .local v23, "overrideRightInset":Z
    :goto_e
    if-nez v10, :cond_21

    #@95b
    move-object/from16 v0, p0

    #@95d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@95f
    move-object/from16 v30, v0

    #@961
    move-object/from16 v0, v30

    #@963
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@965
    move/from16 v30, v0

    #@967
    move-object/from16 v0, p0

    #@969
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@96b
    move-object/from16 v31, v0

    #@96d
    move-object/from16 v0, v31

    #@96f
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@971
    move/from16 v31, v0

    #@973
    move/from16 v0, v30

    #@975
    move/from16 v1, v31

    #@977
    if-le v0, v1, :cond_21

    #@979
    const/16 v22, 0x1

    #@97b
    .line 877
    .local v22, "overrideBottomInset":Z
    :goto_f
    move-object/from16 v0, p0

    #@97d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@97f
    move-object/from16 v32, v0

    #@981
    move-object/from16 v0, p0

    #@983
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@985
    move-object/from16 v30, v0

    #@987
    move-object/from16 v0, v30

    #@989
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@98b
    move/from16 v30, v0

    #@98d
    move-object/from16 v0, p0

    #@98f
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@991
    move-object/from16 v31, v0

    #@993
    move-object/from16 v0, v31

    #@995
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@997
    move/from16 v31, v0

    #@999
    sub-int v33, v30, v31

    #@99b
    .line 878
    move-object/from16 v0, p0

    #@99d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@99f
    move-object/from16 v30, v0

    #@9a1
    move-object/from16 v0, v30

    #@9a3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@9a5
    move/from16 v30, v0

    #@9a7
    move-object/from16 v0, p0

    #@9a9
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@9ab
    move-object/from16 v31, v0

    #@9ad
    move-object/from16 v0, v31

    #@9af
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@9b1
    move/from16 v31, v0

    #@9b3
    sub-int v34, v30, v31

    #@9b5
    .line 879
    if-eqz v23, :cond_22

    #@9b7
    move-object/from16 v0, p0

    #@9b9
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@9bb
    move-object/from16 v30, v0

    #@9bd
    move-object/from16 v0, v30

    #@9bf
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@9c1
    move/from16 v30, v0

    #@9c3
    move-object/from16 v0, p0

    #@9c5
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@9c7
    move-object/from16 v31, v0

    #@9c9
    move-object/from16 v0, v31

    #@9cb
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@9cd
    move/from16 v31, v0

    #@9cf
    sub-int v30, v30, v31

    #@9d1
    move/from16 v31, v30

    #@9d3
    .line 881
    :goto_10
    if-eqz v22, :cond_23

    #@9d5
    move-object/from16 v0, p0

    #@9d7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@9d9
    move-object/from16 v30, v0

    #@9db
    move-object/from16 v0, v30

    #@9dd
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@9df
    move/from16 v30, v0

    #@9e1
    move-object/from16 v0, p0

    #@9e3
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@9e5
    move-object/from16 v35, v0

    #@9e7
    move-object/from16 v0, v35

    #@9e9
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@9eb
    move/from16 v35, v0

    #@9ed
    sub-int v30, v30, v35

    #@9ef
    .line 877
    :goto_11
    move-object/from16 v0, v32

    #@9f1
    move/from16 v1, v33

    #@9f3
    move/from16 v2, v34

    #@9f5
    move/from16 v3, v31

    #@9f7
    move/from16 v4, v30

    #@9f9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@9fc
    .line 884
    move-object/from16 v0, p0

    #@9fe
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@a00
    move-object/from16 v32, v0

    #@a02
    move-object/from16 v0, p0

    #@a04
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@a06
    move-object/from16 v30, v0

    #@a08
    move-object/from16 v0, v30

    #@a0a
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@a0c
    move/from16 v30, v0

    #@a0e
    move-object/from16 v0, p0

    #@a10
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@a12
    move-object/from16 v31, v0

    #@a14
    move-object/from16 v0, v31

    #@a16
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@a18
    move/from16 v31, v0

    #@a1a
    sub-int v33, v30, v31

    #@a1c
    .line 885
    move-object/from16 v0, p0

    #@a1e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@a20
    move-object/from16 v30, v0

    #@a22
    move-object/from16 v0, v30

    #@a24
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@a26
    move/from16 v30, v0

    #@a28
    move-object/from16 v0, p0

    #@a2a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@a2c
    move-object/from16 v31, v0

    #@a2e
    move-object/from16 v0, v31

    #@a30
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@a32
    move/from16 v31, v0

    #@a34
    sub-int v34, v30, v31

    #@a36
    .line 886
    if-eqz v23, :cond_24

    #@a38
    move-object/from16 v0, p0

    #@a3a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@a3c
    move-object/from16 v30, v0

    #@a3e
    move-object/from16 v0, v30

    #@a40
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@a42
    move/from16 v30, v0

    #@a44
    move-object/from16 v0, p0

    #@a46
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@a48
    move-object/from16 v31, v0

    #@a4a
    move-object/from16 v0, v31

    #@a4c
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@a4e
    move/from16 v31, v0

    #@a50
    sub-int v30, v30, v31

    #@a52
    move/from16 v31, v30

    #@a54
    .line 888
    :goto_12
    if-eqz v22, :cond_25

    #@a56
    move-object/from16 v0, p0

    #@a58
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@a5a
    move-object/from16 v30, v0

    #@a5c
    move-object/from16 v0, v30

    #@a5e
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@a60
    move/from16 v30, v0

    #@a62
    move-object/from16 v0, p0

    #@a64
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@a66
    move-object/from16 v35, v0

    #@a68
    move-object/from16 v0, v35

    #@a6a
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@a6c
    move/from16 v35, v0

    #@a6e
    sub-int v30, v30, v35

    #@a70
    .line 884
    :goto_13
    move-object/from16 v0, v32

    #@a72
    move/from16 v1, v33

    #@a74
    move/from16 v2, v34

    #@a76
    move/from16 v3, v31

    #@a78
    move/from16 v4, v30

    #@a7a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@a7d
    .line 891
    move-object/from16 v0, p0

    #@a7f
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@a81
    move-object/from16 v32, v0

    #@a83
    move-object/from16 v0, p0

    #@a85
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@a87
    move-object/from16 v30, v0

    #@a89
    move-object/from16 v0, v30

    #@a8b
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@a8d
    move/from16 v30, v0

    #@a8f
    move-object/from16 v0, p0

    #@a91
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@a93
    move-object/from16 v31, v0

    #@a95
    move-object/from16 v0, v31

    #@a97
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@a99
    move/from16 v31, v0

    #@a9b
    sub-int v30, v30, v31

    #@a9d
    const/16 v31, 0x0

    #@a9f
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@aa2
    move-result v33

    #@aa3
    .line 892
    move-object/from16 v0, p0

    #@aa5
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@aa7
    move-object/from16 v30, v0

    #@aa9
    move-object/from16 v0, v30

    #@aab
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@aad
    move/from16 v30, v0

    #@aaf
    move-object/from16 v0, p0

    #@ab1
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@ab3
    move-object/from16 v31, v0

    #@ab5
    move-object/from16 v0, v31

    #@ab7
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@ab9
    move/from16 v31, v0

    #@abb
    sub-int v30, v30, v31

    #@abd
    const/16 v31, 0x0

    #@abf
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@ac2
    move-result v34

    #@ac3
    .line 893
    if-eqz v23, :cond_26

    #@ac5
    move-object/from16 v0, p0

    #@ac7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@ac9
    move-object/from16 v30, v0

    #@acb
    move-object/from16 v0, v30

    #@acd
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@acf
    move/from16 v30, v0

    #@ad1
    move-object/from16 v0, p0

    #@ad3
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@ad5
    move-object/from16 v31, v0

    #@ad7
    move-object/from16 v0, v31

    #@ad9
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@adb
    move/from16 v31, v0

    #@add
    sub-int v30, v30, v31

    #@adf
    const/16 v31, 0x0

    #@ae1
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@ae4
    move-result v30

    #@ae5
    move/from16 v31, v30

    #@ae7
    .line 895
    :goto_14
    if-eqz v22, :cond_27

    #@ae9
    move-object/from16 v0, p0

    #@aeb
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@aed
    move-object/from16 v30, v0

    #@aef
    move-object/from16 v0, v30

    #@af1
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@af3
    move/from16 v30, v0

    #@af5
    move-object/from16 v0, p0

    #@af7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@af9
    move-object/from16 v35, v0

    #@afb
    move-object/from16 v0, v35

    #@afd
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@aff
    move/from16 v35, v0

    #@b01
    sub-int v30, v30, v35

    #@b03
    const/16 v35, 0x0

    #@b05
    move/from16 v0, v30

    #@b07
    move/from16 v1, v35

    #@b09
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b0c
    move-result v30

    #@b0d
    .line 891
    :goto_15
    move-object/from16 v0, v32

    #@b0f
    move/from16 v1, v33

    #@b11
    move/from16 v2, v34

    #@b13
    move/from16 v3, v31

    #@b15
    move/from16 v4, v30

    #@b17
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@b1a
    goto/16 :goto_8

    #@b1c
    .line 875
    .end local v22    # "overrideBottomInset":Z
    .end local v23    # "overrideRightInset":Z
    :cond_20
    const/16 v23, 0x0

    #@b1e
    .restart local v23    # "overrideRightInset":Z
    goto/16 :goto_e

    #@b20
    .line 876
    :cond_21
    const/16 v22, 0x0

    #@b22
    .restart local v22    # "overrideBottomInset":Z
    goto/16 :goto_f

    #@b24
    .line 880
    :cond_22
    move-object/from16 v0, p0

    #@b26
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b28
    move-object/from16 v30, v0

    #@b2a
    move-object/from16 v0, v30

    #@b2c
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@b2e
    move/from16 v30, v0

    #@b30
    move-object/from16 v0, p0

    #@b32
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@b34
    move-object/from16 v31, v0

    #@b36
    move-object/from16 v0, v31

    #@b38
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@b3a
    move/from16 v31, v0

    #@b3c
    sub-int v30, v30, v31

    #@b3e
    move/from16 v31, v30

    #@b40
    goto/16 :goto_10

    #@b42
    .line 882
    :cond_23
    move-object/from16 v0, p0

    #@b44
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b46
    move-object/from16 v30, v0

    #@b48
    move-object/from16 v0, v30

    #@b4a
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@b4c
    move/from16 v30, v0

    #@b4e
    move-object/from16 v0, p0

    #@b50
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@b52
    move-object/from16 v35, v0

    #@b54
    move-object/from16 v0, v35

    #@b56
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@b58
    move/from16 v35, v0

    #@b5a
    sub-int v30, v30, v35

    #@b5c
    goto/16 :goto_11

    #@b5e
    .line 887
    :cond_24
    move-object/from16 v0, p0

    #@b60
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b62
    move-object/from16 v30, v0

    #@b64
    move-object/from16 v0, v30

    #@b66
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@b68
    move/from16 v30, v0

    #@b6a
    move-object/from16 v0, p0

    #@b6c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@b6e
    move-object/from16 v31, v0

    #@b70
    move-object/from16 v0, v31

    #@b72
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@b74
    move/from16 v31, v0

    #@b76
    sub-int v30, v30, v31

    #@b78
    move/from16 v31, v30

    #@b7a
    goto/16 :goto_12

    #@b7c
    .line 889
    :cond_25
    move-object/from16 v0, p0

    #@b7e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b80
    move-object/from16 v30, v0

    #@b82
    move-object/from16 v0, v30

    #@b84
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@b86
    move/from16 v30, v0

    #@b88
    move-object/from16 v0, p0

    #@b8a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@b8c
    move-object/from16 v35, v0

    #@b8e
    move-object/from16 v0, v35

    #@b90
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@b92
    move/from16 v35, v0

    #@b94
    sub-int v30, v30, v35

    #@b96
    goto/16 :goto_13

    #@b98
    .line 894
    :cond_26
    move-object/from16 v0, p0

    #@b9a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b9c
    move-object/from16 v30, v0

    #@b9e
    move-object/from16 v0, v30

    #@ba0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@ba2
    move/from16 v30, v0

    #@ba4
    move-object/from16 v0, p0

    #@ba6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@ba8
    move-object/from16 v31, v0

    #@baa
    move-object/from16 v0, v31

    #@bac
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@bae
    move/from16 v31, v0

    #@bb0
    sub-int v30, v30, v31

    #@bb2
    const/16 v31, 0x0

    #@bb4
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@bb7
    move-result v30

    #@bb8
    move/from16 v31, v30

    #@bba
    goto/16 :goto_14

    #@bbc
    .line 896
    :cond_27
    move-object/from16 v0, p0

    #@bbe
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@bc0
    move-object/from16 v30, v0

    #@bc2
    move-object/from16 v0, v30

    #@bc4
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@bc6
    move/from16 v30, v0

    #@bc8
    move-object/from16 v0, p0

    #@bca
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@bcc
    move-object/from16 v35, v0

    #@bce
    move-object/from16 v0, v35

    #@bd0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@bd2
    move/from16 v35, v0

    #@bd4
    sub-int v30, v30, v35

    #@bd6
    const/16 v35, 0x0

    #@bd8
    move/from16 v0, v30

    #@bda
    move/from16 v1, v35

    #@bdc
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@bdf
    move-result v30

    #@be0
    goto/16 :goto_15
.end method

.method cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 2215
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v1

    #@4
    .line 2216
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 2220
    iget-object v0, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@e
    .line 2221
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_1

    #@10
    .line 2222
    return-void

    #@11
    .line 2217
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    return-void

    #@12
    .line 2225
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@14
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@17
    .line 2226
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@19
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@1b
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@1e
    .line 2214
    return-void
.end method

.method destroyOrSaveSurface()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2053
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->shouldSaveSurface()Z

    #@4
    move-result v0

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@7
    .line 2054
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 2060
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@d
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@f
    sget-object v2, Lcom/android/server/wm/WindowState;->sEmptyRegion:Landroid/graphics/Region;

    #@11
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Session;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    #@14
    .line 2062
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@16
    const-string/jumbo v1, "saved surface"

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@1c
    .line 2063
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1e
    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@20
    .line 2064
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@23
    .line 2068
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@25
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 2069
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->disconnectInTransaction()V

    #@30
    .line 2071
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@32
    .line 2077
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@34
    .line 2052
    return-void

    #@35
    .line 2073
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@37
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@3a
    goto :goto_0
.end method

.method destroySavedSurface()V
    .locals 1

    #@0
    .prologue
    .line 2081
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2085
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@9
    .line 2087
    :cond_0
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@c
    .line 2080
    return-void
.end method

.method disposeInputChannel()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1556
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1557
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->dispose()V

    #@a
    .line 1558
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    #@c
    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1563
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@14
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    #@19
    .line 1564
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@1b
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@1e
    .line 1565
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@20
    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 1568
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@26
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@29
    .line 1569
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@2b
    .line 1571
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@2d
    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@2f
    .line 1555
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    #@0
    .prologue
    const/high16 v7, -0x80000000

    #@2
    const/high16 v6, 0x3f800000    # 1.0f

    #@4
    const/high16 v5, -0x40800000    # -1.0f

    #@6
    const/4 v2, 0x0

    #@7
    .line 2520
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@a
    move-result-object v1

    #@b
    .line 2521
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    const-string/jumbo v3, "mDisplayId="

    #@11
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@17
    move-result v3

    #@18
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@1b
    .line 2522
    if-eqz v1, :cond_0

    #@1d
    .line 2523
    const-string/jumbo v3, " stackId="

    #@20
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    iget v3, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@25
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@28
    .line 2525
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 2526
    const-string/jumbo v3, " mNotOnAppsDisplay="

    #@2f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@34
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@37
    .line 2528
    :cond_1
    const-string/jumbo v3, " mSession="

    #@3a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@3f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@42
    .line 2529
    const-string/jumbo v3, " mClient="

    #@45
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@4a
    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@51
    .line 2530
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54
    const-string/jumbo v3, "mOwnerUid="

    #@57
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a
    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@5c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@5f
    .line 2531
    const-string/jumbo v3, " mShowToOwnerOnly="

    #@62
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    #@67
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@6a
    .line 2532
    const-string/jumbo v3, " package="

    #@6d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@72
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@74
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    .line 2533
    const-string/jumbo v3, " appop="

    #@7a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    iget v3, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    #@7f
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 2534
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@89
    const-string/jumbo v3, "mAttrs="

    #@8c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8f
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@91
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@94
    .line 2535
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@97
    const-string/jumbo v3, "Requested w="

    #@9a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9d
    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@9f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@a2
    .line 2536
    const-string/jumbo v3, " h="

    #@a5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@aa
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@ad
    .line 2537
    const-string/jumbo v3, " mLayoutSeq="

    #@b0
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    #@b5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    #@b8
    .line 2538
    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@ba
    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@bc
    if-ne v3, v4, :cond_2

    #@be
    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@c0
    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@c2
    if-eq v3, v4, :cond_3

    #@c4
    .line 2539
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    const-string/jumbo v3, "LastRequested w="

    #@ca
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@cf
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@d2
    .line 2540
    const-string/jumbo v3, " h="

    #@d5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@da
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    #@dd
    .line 2542
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@e0
    move-result v3

    #@e1
    if-nez v3, :cond_4

    #@e3
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@e5
    if-eqz v3, :cond_5

    #@e7
    .line 2543
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ea
    const-string/jumbo v3, "mAttachedWindow="

    #@ed
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@f2
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@f5
    .line 2544
    const-string/jumbo v3, " mLayoutAttached="

    #@f8
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fb
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@fd
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@100
    .line 2546
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@102
    if-nez v3, :cond_6

    #@104
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@106
    if-nez v3, :cond_6

    #@108
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@10a
    if-eqz v3, :cond_7

    #@10c
    .line 2547
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10f
    const-string/jumbo v3, "mIsImWindow="

    #@112
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@115
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@117
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@11a
    .line 2548
    const-string/jumbo v3, " mIsWallpaper="

    #@11d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@122
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@125
    .line 2549
    const-string/jumbo v3, " mIsFloatingLayer="

    #@128
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12b
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@12d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@130
    .line 2550
    const-string/jumbo v3, " mWallpaperVisible="

    #@133
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@138
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@13b
    .line 2552
    :cond_7
    if-eqz p3, :cond_9

    #@13d
    .line 2553
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@140
    const-string/jumbo v3, "mBaseLayer="

    #@143
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@146
    iget v3, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@148
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@14b
    .line 2554
    const-string/jumbo v3, " mSubLayer="

    #@14e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@151
    iget v3, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@153
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@156
    .line 2555
    const-string/jumbo v3, " mAnimLayer="

    #@159
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15c
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@15e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@161
    const-string/jumbo v3, "+"

    #@164
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@167
    .line 2556
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@169
    if-eqz v3, :cond_29

    #@16b
    .line 2557
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@16d
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@16f
    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@171
    .line 2556
    :cond_8
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@174
    .line 2559
    const-string/jumbo v2, "="

    #@177
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@17c
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@17e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@181
    .line 2560
    const-string/jumbo v2, " mLastLayer="

    #@184
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@187
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@189
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    #@18b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@18e
    .line 2562
    :cond_9
    if-eqz p3, :cond_c

    #@190
    .line 2563
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@193
    const-string/jumbo v2, "mToken="

    #@196
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@199
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@19b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19e
    .line 2564
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a1
    const-string/jumbo v2, "mRootToken="

    #@1a4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@1a9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1ac
    .line 2565
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1ae
    if-eqz v2, :cond_a

    #@1b0
    .line 2566
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b3
    const-string/jumbo v2, "mAppToken="

    #@1b6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b9
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1bb
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1be
    .line 2567
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c1
    const-string/jumbo v2, " isAnimatingWithSavedSurface()="

    #@1c4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c7
    .line 2568
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    #@1ca
    move-result v2

    #@1cb
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@1ce
    .line 2569
    const-string/jumbo v2, " mAppDied="

    #@1d1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d4
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    #@1d6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@1d9
    .line 2571
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1db
    if-eqz v2, :cond_b

    #@1dd
    .line 2572
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e0
    const-string/jumbo v2, "mTargetAppToken="

    #@1e3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e6
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1e8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1eb
    .line 2574
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ee
    const-string/jumbo v2, "mViewVisibility=0x"

    #@1f1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f4
    .line 2575
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@1f6
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1f9
    move-result-object v2

    #@1fa
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fd
    .line 2576
    const-string/jumbo v2, " mHaveFrame="

    #@200
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@203
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    #@205
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@208
    .line 2577
    const-string/jumbo v2, " mObscured="

    #@20b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    #@210
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@213
    .line 2578
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@216
    const-string/jumbo v2, "mSeq="

    #@219
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21c
    iget v2, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    #@21e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@221
    .line 2579
    const-string/jumbo v2, " mSystemUiVisibility=0x"

    #@224
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@227
    .line 2580
    iget v2, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    #@229
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22c
    move-result-object v2

    #@22d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@230
    .line 2582
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@232
    if-eqz v2, :cond_d

    #@234
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@236
    if-eqz v2, :cond_d

    #@238
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@23a
    if-eqz v2, :cond_d

    #@23c
    .line 2583
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@23e
    .line 2582
    if-eqz v2, :cond_e

    #@240
    .line 2584
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@243
    const-string/jumbo v2, "mPolicyVisibility="

    #@246
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@249
    .line 2585
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@24b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@24e
    .line 2586
    const-string/jumbo v2, " mPolicyVisibilityAfterAnim="

    #@251
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@254
    .line 2587
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@256
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@259
    .line 2588
    const-string/jumbo v2, " mAppOpVisibility="

    #@25c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25f
    .line 2589
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@261
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@264
    .line 2590
    const-string/jumbo v2, " mAttachedHidden="

    #@267
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@26c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@26f
    .line 2592
    :cond_e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@271
    if-eqz v2, :cond_f

    #@273
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@275
    if-eqz v2, :cond_10

    #@277
    .line 2593
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27a
    const-string/jumbo v2, "mRelayoutCalled="

    #@27d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@280
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@282
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@285
    .line 2594
    const-string/jumbo v2, " mLayoutNeeded="

    #@288
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@28d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@290
    .line 2596
    :cond_10
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@292
    if-nez v2, :cond_11

    #@294
    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@296
    if-eqz v2, :cond_12

    #@298
    .line 2597
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29b
    const-string/jumbo v2, "Offsets x="

    #@29e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a1
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@2a3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@2a6
    .line 2598
    const-string/jumbo v2, " y="

    #@2a9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ac
    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@2ae
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@2b1
    .line 2600
    :cond_12
    if-eqz p3, :cond_15

    #@2b3
    .line 2601
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b6
    const-string/jumbo v2, "mGivenContentInsets="

    #@2b9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bc
    .line 2602
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@2be
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@2c1
    .line 2603
    const-string/jumbo v2, " mGivenVisibleInsets="

    #@2c4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c7
    .line 2604
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@2c9
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@2cc
    .line 2605
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2cf
    .line 2606
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@2d1
    if-nez v2, :cond_13

    #@2d3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    #@2d5
    if-eqz v2, :cond_14

    #@2d7
    .line 2607
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2da
    const-string/jumbo v2, "mTouchableInsets="

    #@2dd
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e0
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@2e2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@2e5
    .line 2608
    const-string/jumbo v2, " mGivenInsetsPending="

    #@2e8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2eb
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    #@2ed
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@2f0
    .line 2609
    new-instance v0, Landroid/graphics/Region;

    #@2f2
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@2f5
    .line 2610
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@2f8
    .line 2611
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fb
    const-string/jumbo v2, "touchable region="

    #@2fe
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@301
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@304
    .line 2613
    .end local v0    # "region":Landroid/graphics/Region;
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@307
    const-string/jumbo v2, "mMergedConfiguration="

    #@30a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30d
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@30f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@312
    .line 2615
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@315
    const-string/jumbo v2, "mHasSurface="

    #@318
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@31d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@320
    .line 2616
    const-string/jumbo v2, " mShownPosition="

    #@323
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@326
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@328
    invoke-virtual {v2, p1}, Landroid/graphics/Point;->printShortString(Ljava/io/PrintWriter;)V

    #@32b
    .line 2617
    const-string/jumbo v2, " isReadyForDisplay()="

    #@32e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@331
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    #@334
    move-result v2

    #@335
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@338
    .line 2618
    const-string/jumbo v2, " hasSavedSurface()="

    #@33b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    #@341
    move-result v2

    #@342
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@345
    .line 2619
    const-string/jumbo v2, " mWindowRemovalAllowed="

    #@348
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    #@34d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@350
    .line 2620
    if-eqz p3, :cond_16

    #@352
    .line 2621
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@355
    const-string/jumbo v2, "mFrame="

    #@358
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35b
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@35d
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@360
    .line 2622
    const-string/jumbo v2, " last="

    #@363
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@366
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@368
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@36b
    .line 2623
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@36e
    .line 2625
    :cond_16
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@370
    if-eqz v2, :cond_17

    #@372
    .line 2626
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@375
    const-string/jumbo v2, "mCompatFrame="

    #@378
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37b
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@37d
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@380
    .line 2627
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@383
    .line 2629
    :cond_17
    if-eqz p3, :cond_18

    #@385
    .line 2630
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@388
    const-string/jumbo v2, "Frames: containing="

    #@38b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38e
    .line 2631
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@390
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@393
    .line 2632
    const-string/jumbo v2, " parent="

    #@396
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@399
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    #@39b
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@39e
    .line 2633
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3a1
    .line 2634
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a4
    const-string/jumbo v2, "    display="

    #@3a7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3aa
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@3ac
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3af
    .line 2635
    const-string/jumbo v2, " overscan="

    #@3b2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b5
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@3b7
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3ba
    .line 2636
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3bd
    .line 2637
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c0
    const-string/jumbo v2, "    content="

    #@3c3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c6
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@3c8
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3cb
    .line 2638
    const-string/jumbo v2, " visible="

    #@3ce
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@3d3
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3d6
    .line 2639
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3d9
    .line 2640
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3dc
    const-string/jumbo v2, "    decor="

    #@3df
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@3e4
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3e7
    .line 2641
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3ea
    .line 2642
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ed
    const-string/jumbo v2, "    outset="

    #@3f0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@3f5
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3f8
    .line 2643
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3fb
    .line 2644
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3fe
    const-string/jumbo v2, "Cur insets: overscan="

    #@401
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@404
    .line 2645
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@406
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@409
    .line 2646
    const-string/jumbo v2, " content="

    #@40c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@411
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@414
    .line 2647
    const-string/jumbo v2, " visible="

    #@417
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@41c
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@41f
    .line 2648
    const-string/jumbo v2, " stable="

    #@422
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@425
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@427
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@42a
    .line 2649
    const-string/jumbo v2, " surface="

    #@42d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@430
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@432
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@434
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@437
    .line 2650
    const-string/jumbo v2, " outsets="

    #@43a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43d
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@43f
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@442
    .line 2651
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@445
    .line 2652
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@448
    const-string/jumbo v2, "Lst insets: overscan="

    #@44b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44e
    .line 2653
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    #@450
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@453
    .line 2654
    const-string/jumbo v2, " content="

    #@456
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@459
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@45b
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@45e
    .line 2655
    const-string/jumbo v2, " visible="

    #@461
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@464
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    #@466
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@469
    .line 2656
    const-string/jumbo v2, " stable="

    #@46c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    #@471
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@474
    .line 2657
    const-string/jumbo v2, " physical="

    #@477
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@47c
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@47f
    .line 2658
    const-string/jumbo v2, " outset="

    #@482
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@485
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@487
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@48a
    .line 2659
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@48d
    .line 2661
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@490
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@492
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@495
    const-string/jumbo v2, ":"

    #@498
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49b
    .line 2662
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@49d
    new-instance v3, Ljava/lang/StringBuilder;

    #@49f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a2
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a5
    move-result-object v3

    #@4a6
    const-string/jumbo v4, "  "

    #@4a9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ac
    move-result-object v3

    #@4ad
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b0
    move-result-object v3

    #@4b1
    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@4b4
    .line 2663
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@4b6
    if-nez v2, :cond_19

    #@4b8
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@4ba
    if-nez v2, :cond_19

    #@4bc
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@4be
    if-nez v2, :cond_19

    #@4c0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    #@4c2
    if-eqz v2, :cond_1a

    #@4c4
    .line 2664
    :cond_19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c7
    const-string/jumbo v2, "mAnimatingExit="

    #@4ca
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4cd
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@4cf
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4d2
    .line 2665
    const-string/jumbo v2, " mRemoveOnExit="

    #@4d5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d8
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@4da
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4dd
    .line 2666
    const-string/jumbo v2, " mDestroying="

    #@4e0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@4e5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4e8
    .line 2667
    const-string/jumbo v2, " mRemoved="

    #@4eb
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ee
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    #@4f0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@4f3
    .line 2669
    :cond_1a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@4f5
    if-nez v2, :cond_1b

    #@4f7
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@4f9
    if-nez v2, :cond_1b

    #@4fb
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@4fd
    if-eqz v2, :cond_1c

    #@4ff
    .line 2670
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@502
    const-string/jumbo v2, "mOrientationChanging="

    #@505
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@508
    .line 2671
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@50a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@50d
    .line 2672
    const-string/jumbo v2, " mAppFreezing="

    #@510
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@513
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@515
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@518
    .line 2673
    const-string/jumbo v2, " mTurnOnScreen="

    #@51b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@520
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@523
    .line 2675
    :cond_1c
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@525
    if-eqz v2, :cond_1d

    #@527
    .line 2676
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52a
    const-string/jumbo v2, "mLastFreezeDuration="

    #@52d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@530
    .line 2677
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@532
    int-to-long v2, v2

    #@533
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@536
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@539
    .line 2679
    :cond_1d
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@53b
    cmpl-float v2, v2, v6

    #@53d
    if-nez v2, :cond_1e

    #@53f
    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@541
    cmpl-float v2, v2, v6

    #@543
    if-eqz v2, :cond_1f

    #@545
    .line 2680
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@548
    const-string/jumbo v2, "mHScale="

    #@54b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54e
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@550
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    #@553
    .line 2681
    const-string/jumbo v2, " mVScale="

    #@556
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@559
    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@55b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    #@55e
    .line 2683
    :cond_1f
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@560
    cmpl-float v2, v2, v5

    #@562
    if-nez v2, :cond_20

    #@564
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@566
    cmpl-float v2, v2, v5

    #@568
    if-eqz v2, :cond_21

    #@56a
    .line 2684
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56d
    const-string/jumbo v2, "mWallpaperX="

    #@570
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@573
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@575
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    #@578
    .line 2685
    const-string/jumbo v2, " mWallpaperY="

    #@57b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57e
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@580
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    #@583
    .line 2687
    :cond_21
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@585
    cmpl-float v2, v2, v5

    #@587
    if-nez v2, :cond_22

    #@589
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@58b
    cmpl-float v2, v2, v5

    #@58d
    if-eqz v2, :cond_23

    #@58f
    .line 2688
    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@592
    const-string/jumbo v2, "mWallpaperXStep="

    #@595
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@598
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@59a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    #@59d
    .line 2689
    const-string/jumbo v2, " mWallpaperYStep="

    #@5a0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a3
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@5a5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    #@5a8
    .line 2691
    :cond_23
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@5aa
    if-ne v2, v7, :cond_24

    #@5ac
    .line 2692
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@5ae
    if-eq v2, v7, :cond_25

    #@5b0
    .line 2693
    :cond_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b3
    const-string/jumbo v2, "mWallpaperDisplayOffsetX="

    #@5b6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b9
    .line 2694
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@5bb
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@5be
    .line 2695
    const-string/jumbo v2, " mWallpaperDisplayOffsetY="

    #@5c1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c4
    .line 2696
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@5c6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@5c9
    .line 2698
    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@5cb
    if-eqz v2, :cond_26

    #@5cd
    .line 2699
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d0
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d5
    const-string/jumbo v3, "mDrawLock="

    #@5d8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5db
    move-result-object v2

    #@5dc
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@5de
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e1
    move-result-object v2

    #@5e2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e5
    move-result-object v2

    #@5e6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5e9
    .line 2701
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@5ec
    move-result v2

    #@5ed
    if-eqz v2, :cond_27

    #@5ef
    .line 2702
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f2
    new-instance v2, Ljava/lang/StringBuilder;

    #@5f4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5f7
    const-string/jumbo v3, "isDragResizing="

    #@5fa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fd
    move-result-object v2

    #@5fe
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@601
    move-result v3

    #@602
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@605
    move-result-object v2

    #@606
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@609
    move-result-object v2

    #@60a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@60d
    .line 2704
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    #@610
    move-result v2

    #@611
    if-eqz v2, :cond_28

    #@613
    .line 2705
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@616
    new-instance v2, Ljava/lang/StringBuilder;

    #@618
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@61b
    const-string/jumbo v3, "computeDragResizing="

    #@61e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@621
    move-result-object v2

    #@622
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    #@625
    move-result v3

    #@626
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@629
    move-result-object v2

    #@62a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62d
    move-result-object v2

    #@62e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@631
    .line 2519
    :cond_28
    return-void

    #@632
    .line 2558
    :cond_29
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@634
    if-eqz v3, :cond_8

    #@636
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@638
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@63a
    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@63c
    goto/16 :goto_0
.end method

.method getAnimLayerAdjustment()I
    .locals 1

    #@0
    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1465
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@8
    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@a
    return v0

    #@b
    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1467
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@11
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@13
    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@15
    return v0

    #@16
    .line 1470
    :cond_1
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1041
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    #@9
    :cond_0
    return-object v0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2
    return-object v0
.end method

.method getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "frame"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2360
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    #@a
    move-result v1

    #@b
    .line 2361
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStackId()I

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->useWindowFrameForBackdrop(I)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 2364
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@1a
    move-result-object v0

    #@1b
    .line 2365
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@1d
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@1f
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@21
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@24
    .line 2366
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@26
    return-object v2

    #@27
    .line 2360
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    const/4 v1, 0x1

    #@28
    .local v1, "resizing":Z
    goto :goto_0

    #@29
    .line 2362
    .end local v1    # "resizing":Z
    :cond_1
    return-object p1
.end method

.method public getBaseType()I
    .locals 2

    #@0
    .prologue
    .line 1032
    move-object v0, p0

    #@1
    .line 1033
    .local v0, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1034
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@9
    goto :goto_0

    #@a
    .line 1036
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@c
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@e
    return v1
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;
    .locals 2

    #@0
    .prologue
    .line 1593
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1594
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@6
    .line 1595
    return-object v0

    #@7
    .line 1597
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    #@0
    .prologue
    .line 1060
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 1061
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@a
    return-object v1

    #@b
    .line 1063
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@e
    move-result-object v0

    #@f
    .line 1064
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_2

    #@11
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@13
    :goto_0
    return-object v1

    #@14
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@17
    move-result-object v1

    #@18
    goto :goto_0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getDisplayId()I
    .locals 2

    #@0
    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3
    move-result-object v0

    #@4
    .line 1074
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    #@6
    .line 1075
    const/4 v1, -0x1

    #@7
    return v1

    #@8
    .line 1077
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1068
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@4
    move-result-object v0

    #@5
    .line 1069
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    #@0
    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    #@2
    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    #@0
    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1131
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    #@8
    .line 1130
    :goto_0
    return-wide v0

    #@9
    .line 1132
    :cond_0
    const-wide v0, 0x12a05f200L

    #@e
    goto :goto_0
.end method

.method public getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 6
    .param p1, "bottom"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 994
    const/4 v0, -0x1

    #@3
    .line 995
    .local v0, "index":I
    move-object v2, p0

    #@4
    .line 996
    .local v2, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    #@7
    move-result-object v1

    #@8
    .line 998
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    :goto_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 999
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@12
    if-ne v5, v3, :cond_0

    #@14
    :goto_1
    return v3

    #@15
    :cond_0
    move v3, v4

    #@16
    goto :goto_1

    #@17
    .line 1003
    :cond_1
    if-ne v2, p1, :cond_2

    #@19
    .line 1004
    return v4

    #@1a
    .line 1009
    :cond_2
    if-gez v0, :cond_3

    #@1c
    .line 1010
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    #@1f
    move-result v0

    #@20
    .line 1012
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@22
    .line 1013
    if-gez v0, :cond_4

    #@24
    .line 1014
    return v4

    #@25
    .line 1016
    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    .end local v2    # "ws":Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@2b
    .restart local v2    # "ws":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public getOverscanFrameLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getOwningUid()I
    .locals 1

    #@0
    .prologue
    .line 652
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@2
    return v0
.end method

.method getResizeMode()I
    .locals 1

    #@0
    .prologue
    .line 2468
    iget v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    #@2
    return v0
.end method

.method public getShownPositionLw()Landroid/graphics/Point;
    .locals 1

    #@0
    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@2
    return-object v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1085
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@4
    move-result-object v0

    #@5
    .line 1086
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@7
    .line 1087
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1088
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@d
    return-object v1

    #@e
    .line 1093
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@12
    const/16 v3, 0x7d0

    #@14
    if-lt v2, v3, :cond_1

    #@16
    .line 1094
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@18
    if-eqz v2, :cond_1

    #@1a
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    #@1f
    move-result-object v1

    #@20
    .line 1093
    :cond_1
    return-object v1
.end method

.method public getStackId()I
    .locals 2

    #@0
    .prologue
    .line 2371
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@3
    move-result-object v0

    #@4
    .line 2372
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    #@6
    .line 2373
    const/4 v1, -0x1

    #@7
    return v1

    #@8
    .line 2375
    :cond_0
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@a
    return v1
.end method

.method public getSurfaceLayer()I
    .locals 1

    #@0
    .prologue
    .line 1027
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@2
    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    #@0
    .prologue
    .line 1022
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    #@2
    return v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1081
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@9
    :cond_0
    return-object v0
.end method

.method getTouchableRegion(Landroid/graphics/Region;I)I
    .locals 7
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1661
    and-int/lit8 v4, p2, 0x28

    #@3
    if-nez v4, :cond_0

    #@5
    const/4 v3, 0x1

    #@6
    .line 1662
    .local v3, "modal":Z
    :cond_0
    if-eqz v3, :cond_3

    #@8
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@a
    if-eqz v4, :cond_3

    #@c
    .line 1664
    or-int/lit8 p2, p2, 0x20

    #@e
    .line 1670
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@11
    move-result-object v1

    #@12
    .line 1671
    .local v1, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    if-eqz v1, :cond_2

    #@14
    .line 1672
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@16
    invoke-interface {v1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    #@19
    .line 1676
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 1679
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@26
    move-result-object v2

    #@27
    .line 1681
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v4, 0x1e

    #@29
    .line 1680
    invoke-static {v4, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@2c
    move-result v0

    #@2d
    .line 1682
    .local v0, "delta":I
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@2f
    neg-int v5, v0

    #@30
    neg-int v6, v0

    #@31
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    #@34
    .line 1684
    .end local v0    # "delta":I
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@36
    invoke-virtual {p1, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@39
    .line 1685
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    #@3c
    .line 1690
    .end local v1    # "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :goto_1
    return p2

    #@3d
    .line 1674
    .restart local v1    # "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@3f
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    #@42
    goto :goto_0

    #@43
    .line 1688
    .end local v1    # "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@46
    goto :goto_1
.end method

.method getTouchableRegion(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "outRegion"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 2192
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    .line 2193
    .local v0, "frame":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 2196
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@a
    .line 2211
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    #@d
    .line 2191
    return-void

    #@e
    .line 2199
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@10
    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@13
    goto :goto_0

    #@14
    .line 2202
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@16
    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@19
    goto :goto_0

    #@1a
    .line 2205
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    #@1c
    .line 2206
    .local v1, "givenTouchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@1f
    .line 2207
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@21
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@23
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    #@26
    goto :goto_0

    #@27
    .line 2193
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getVisibleBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v2

    #@4
    .line 1103
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_3

    #@6
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    #@9
    move-result v0

    #@a
    .line 1104
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@d
    .line 1105
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    #@12
    .line 1106
    if-eqz v0, :cond_0

    #@14
    .line 1107
    iget-object v1, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@16
    .line 1108
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_4

    #@18
    .line 1109
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@1d
    .line 1115
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@22
    .line 1116
    if-eqz v0, :cond_1

    #@24
    .line 1117
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@26
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@29
    .line 1120
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_5

    #@2f
    .line 1121
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@31
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@34
    .line 1122
    if-eqz v0, :cond_2

    #@36
    .line 1123
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@38
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@3b
    .line 1125
    :cond_2
    return-void

    #@3c
    .line 1103
    :cond_3
    const/4 v0, 0x0

    #@3d
    .local v0, "intersectWithStackBounds":Z
    goto :goto_0

    #@3e
    .line 1111
    .end local v0    # "intersectWithStackBounds":Z
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    const/4 v0, 0x0

    #@3f
    .restart local v0    # "intersectWithStackBounds":Z
    goto :goto_1

    #@40
    .line 1101
    .end local v0    # "intersectWithStackBounds":Z
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_5
    return-void
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2230
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@4
    move-result-object v0

    #@5
    .line 2231
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@b
    move-result-object v1

    #@c
    goto :goto_0
.end method

.method getWindowTag()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 2715
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    .line 2716
    .local v0, "tag":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v1

    #@c
    if-gtz v1, :cond_1

    #@e
    .line 2717
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10
    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@12
    .line 2719
    :cond_1
    return-object v0
.end method

.method public hasAppShownWindows()Z
    .locals 1

    #@0
    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    #@8
    if-nez v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@c
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public hasDrawnLw()Z
    .locals 2

    #@0
    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method hasJustMovedInStack()Z
    .locals 1

    #@0
    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mJustMovedInStack:Z

    #@2
    return v0
.end method

.method hasMoved()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1397
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@4
    if-eqz v2, :cond_1

    #@6
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@8
    if-nez v2, :cond_0

    #@a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1398
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@10
    if-eqz v2, :cond_3

    #@12
    :cond_1
    move v0, v1

    #@13
    .line 1397
    :cond_2
    :goto_0
    return v0

    #@14
    .line 1398
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@19
    move-result v2

    #@1a
    .line 1397
    if-eqz v2, :cond_1

    #@1c
    .line 1399
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@1e
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@20
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@22
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@24
    if-ne v2, v3, :cond_4

    #@26
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@28
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@2a
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@2c
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@2e
    if-eq v2, v3, :cond_1

    #@30
    .line 1400
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@32
    if-eqz v2, :cond_2

    #@34
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@36
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_2

    #@3c
    move v0, v1

    #@3d
    goto :goto_0
.end method

.method hasSavedSurface()Z
    .locals 1

    #@0
    .prologue
    .line 2116
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@2
    return v0
.end method

.method public hideLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    #@0
    .prologue
    .line 1887
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method hideLw(ZZ)Z
    .locals 5
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1891
    if-eqz p1, :cond_0

    #@4
    .line 1892
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1893
    const/4 p1, 0x0

    #@d
    .line 1896
    .end local p1    # "doAnimation":Z
    :cond_0
    if-eqz p1, :cond_1

    #@f
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@11
    .line 1898
    .local v0, "current":Z
    :goto_0
    if-nez v0, :cond_2

    #@13
    .line 1900
    return v3

    #@14
    .line 1897
    .end local v0    # "current":Z
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@16
    goto :goto_0

    #@17
    .line 1902
    .restart local v0    # "current":Z
    :cond_2
    if-eqz p1, :cond_3

    #@19
    .line 1903
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1b
    const/4 v2, 0x2

    #@1c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    #@1f
    .line 1904
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@21
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@23
    if-nez v1, :cond_3

    #@25
    .line 1905
    const/4 p1, 0x0

    #@26
    .line 1908
    :cond_3
    if-eqz p1, :cond_6

    #@28
    .line 1909
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@2a
    .line 1924
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    #@2c
    .line 1925
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@31
    .line 1927
    :cond_5
    return v4

    #@32
    .line 1912
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@34
    .line 1913
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@36
    .line 1917
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@38
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    #@3b
    .line 1918
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3d
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@3f
    if-ne v1, p0, :cond_4

    #@41
    .line 1921
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@43
    iput-boolean v4, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@45
    goto :goto_1
.end method

.method inDockedWorkspace()Z
    .locals 2

    #@0
    .prologue
    .line 1631
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1632
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inDockedWorkspace()Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method inFreeformWorkspace()Z
    .locals 2

    #@0
    .prologue
    .line 2413
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 2414
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method inPinnedWorkspace()Z
    .locals 2

    #@0
    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1638
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inPinnedWorkspace()Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method isAdjustedForMinimizedDock()Z
    .locals 1

    #@0
    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1438
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@c
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@e
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@10
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDock()Z

    #@13
    move-result v0

    #@14
    .line 1437
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    #@0
    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@2
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method isAnimatingInvisibleWithSavedSurface()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1985
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1986
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@7
    if-nez v0, :cond_1

    #@9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    #@b
    .line 1985
    :cond_0
    :goto_0
    return v0

    #@c
    .line 1986
    :cond_1
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public isAnimatingLw()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1340
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1341
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@a
    if-eqz v2, :cond_1

    #@c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@e
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@10
    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1340
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 1341
    goto :goto_0
.end method

.method isAnimatingWithSavedSurface()Z
    .locals 1

    #@0
    .prologue
    .line 1981
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@2
    return v0
.end method

.method isChildWindow()Z
    .locals 1

    #@0
    .prologue
    .line 2832
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method isClosing()Z
    .locals 2

    #@0
    .prologue
    .line 1977
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    #@8
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@a
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method isConfigChanged()Z
    .locals 3

    #@0
    .prologue
    .line 1420
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpConfig:Landroid/content/res/Configuration;

    #@2
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->getMergedConfig(Landroid/content/res/Configuration;)V

    #@5
    .line 1424
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@7
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@9
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_1

    #@f
    .line 1425
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpConfig:Landroid/content/res/Configuration;

    #@11
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@13
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    const/4 v0, 0x1

    #@1a
    .line 1427
    .local v0, "configChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1c
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@1e
    and-int/lit16 v1, v1, 0x400

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 1429
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@24
    or-int/2addr v1, v0

    #@25
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@27
    .line 1430
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@29
    .line 1433
    .end local v0    # "configChanged":Z
    :cond_0
    return v0

    #@2a
    .line 1424
    :cond_1
    const/4 v0, 0x1

    #@2b
    .restart local v0    # "configChanged":Z
    goto :goto_0

    #@2c
    .line 1425
    .end local v0    # "configChanged":Z
    :cond_2
    const/4 v0, 0x0

    #@2d
    .restart local v0    # "configChanged":Z
    goto :goto_0
.end method

.method public isDefaultDisplay()Z
    .locals 2

    #@0
    .prologue
    .line 2141
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3
    move-result-object v0

    #@4
    .line 2142
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    #@6
    .line 2144
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 2146
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    #@a
    return v1
.end method

.method public isDimming()Z
    .locals 3

    #@0
    .prologue
    .line 2151
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@3
    move-result-object v0

    #@4
    .line 2152
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    if-eqz v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2153
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@c
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@e
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@10
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DimLayerController;->isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z

    #@13
    move-result v1

    #@14
    .line 2152
    :goto_0
    return v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public isDisplayedLw()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1327
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@4
    .line 1328
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_3

    #@a
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@c
    if-eqz v3, :cond_3

    #@e
    .line 1329
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@10
    if-nez v3, :cond_0

    #@12
    .line 1330
    if-eqz v0, :cond_1

    #@14
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 1331
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1a
    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@1c
    .line 1329
    if-nez v3, :cond_1

    #@1e
    .line 1332
    if-eqz v0, :cond_2

    #@20
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@22
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 1328
    :cond_1
    :goto_0
    return v1

    #@27
    :cond_2
    move v1, v2

    #@28
    .line 1332
    goto :goto_0

    #@29
    :cond_3
    move v1, v2

    #@2a
    .line 1328
    goto :goto_0
.end method

.method isDockedInEffect()Z
    .locals 2

    #@0
    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1643
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method isDockedResizing()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2516
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    #@9
    move-result v2

    #@a
    if-ne v2, v0, :cond_0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    goto :goto_0
.end method

.method isDragResizeChanged()Z
    .locals 2

    #@0
    .prologue
    .line 2424
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    #@2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    #@5
    move-result v1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method isDragResizing()Z
    .locals 1

    #@0
    .prologue
    .line 2512
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    #@2
    return v0
.end method

.method isDragResizingChangeReported()Z
    .locals 1

    #@0
    .prologue
    .line 2431
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    #@2
    return v0
.end method

.method public isDrawFinishedLw()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1361
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@8
    if-eqz v2, :cond_2

    #@a
    :cond_0
    move v0, v1

    #@b
    :cond_1
    :goto_0
    return v0

    #@c
    .line 1362
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@e
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@10
    const/4 v3, 0x2

    #@11
    if-eq v2, v3, :cond_1

    #@13
    .line 1363
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@15
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@17
    const/4 v3, 0x3

    #@18
    if-eq v2, v3, :cond_1

    #@1a
    .line 1364
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1c
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@1e
    const/4 v3, 0x4

    #@1f
    if-eq v2, v3, :cond_1

    #@21
    move v0, v1

    #@22
    goto :goto_0
.end method

.method public isDrawnLw()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1373
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@8
    if-eqz v2, :cond_2

    #@a
    :cond_0
    move v0, v1

    #@b
    :cond_1
    :goto_0
    return v0

    #@c
    .line 1374
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@e
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@10
    const/4 v3, 0x3

    #@11
    if-eq v2, v3, :cond_1

    #@13
    .line 1375
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@15
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@17
    const/4 v3, 0x4

    #@18
    if-eq v2, v3, :cond_1

    #@1a
    move v0, v1

    #@1b
    goto :goto_0
.end method

.method public isFocused()Z
    .locals 2

    #@0
    .prologue
    .line 2407
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 2408
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-ne v0, p0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    monitor-exit v1

    #@d
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0

    #@10
    .line 2407
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method isFrameFullscreen(Landroid/view/DisplayInfo;)Z
    .locals 3
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1415
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@5
    if-gtz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@9
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@b
    if-gtz v1, :cond_0

    #@d
    .line 1416
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@f
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@11
    iget v2, p1, Landroid/view/DisplayInfo;->appWidth:I

    #@13
    if-lt v1, v2, :cond_0

    #@15
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@17
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@19
    iget v2, p1, Landroid/view/DisplayInfo;->appHeight:I

    #@1b
    if-lt v1, v2, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 1415
    :cond_0
    return v0
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    #@0
    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    .line 1347
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@4
    const/16 v2, 0x8

    #@6
    if-eq v1, v2, :cond_3

    #@8
    .line 1348
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@a
    if-eqz v1, :cond_3

    #@c
    .line 1349
    if-nez v0, :cond_0

    #@e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@10
    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@12
    .line 1347
    if-nez v1, :cond_3

    #@14
    .line 1350
    :cond_0
    if-eqz v0, :cond_1

    #@16
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@18
    .line 1347
    if-nez v1, :cond_3

    #@1a
    .line 1351
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@1c
    .line 1347
    if-nez v1, :cond_3

    #@1e
    .line 1352
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@20
    if-eqz v1, :cond_2

    #@22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 1353
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@2a
    .line 1347
    :goto_0
    return v1

    #@2b
    :cond_3
    const/4 v1, 0x1

    #@2c
    goto :goto_0
.end method

.method isHiddenFromUserLocked()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2162
    move-object v0, p0

    #@2
    .line 2163
    .local v0, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 2164
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@a
    goto :goto_0

    #@b
    .line 2166
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@d
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@f
    const/16 v3, 0x7d0

    #@11
    if-ge v2, v3, :cond_1

    #@13
    .line 2167
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@15
    if-eqz v2, :cond_1

    #@17
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@19
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    #@1b
    .line 2166
    if-eqz v2, :cond_1

    #@1d
    .line 2172
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@1f
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@21
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@23
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@25
    if-gt v2, v3, :cond_1

    #@27
    .line 2173
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@29
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@2b
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@2d
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@2f
    if-gt v2, v3, :cond_1

    #@31
    .line 2174
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@33
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@35
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@37
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@39
    if-lt v2, v3, :cond_1

    #@3b
    .line 2175
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3d
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@3f
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@41
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    #@43
    if-lt v2, v3, :cond_1

    #@45
    .line 2177
    return v1

    #@46
    .line 2181
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    #@48
    if-eqz v2, :cond_2

    #@4a
    .line 2182
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4c
    iget v3, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@4e
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@51
    move-result v3

    #@52
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_3

    #@58
    .line 2181
    :cond_2
    :goto_1
    return v1

    #@59
    .line 2182
    :cond_3
    const/4 v1, 0x1

    #@5a
    goto :goto_1
.end method

.method isIdentityMatrix(FFFF)Z
    .locals 6
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    #@0
    .prologue
    const v5, 0x3f800054    # 1.00001f

    #@3
    const v4, 0x3f7fff58    # 0.99999f

    #@6
    const v3, 0x358637bd    # 1.0E-6f

    #@9
    const v2, -0x4a79c843    # -1.0E-6f

    #@c
    const/4 v1, 0x0

    #@d
    .line 1141
    cmpg-float v0, p1, v4

    #@f
    if-ltz v0, :cond_0

    #@11
    cmpl-float v0, p1, v5

    #@13
    if-lez v0, :cond_1

    #@15
    :cond_0
    return v1

    #@16
    .line 1142
    :cond_1
    cmpg-float v0, p4, v4

    #@18
    if-ltz v0, :cond_2

    #@1a
    cmpl-float v0, p4, v5

    #@1c
    if-lez v0, :cond_3

    #@1e
    :cond_2
    return v1

    #@1f
    .line 1143
    :cond_3
    cmpg-float v0, p2, v2

    #@21
    if-ltz v0, :cond_4

    #@23
    cmpl-float v0, p2, v3

    #@25
    if-lez v0, :cond_5

    #@27
    :cond_4
    return v1

    #@28
    .line 1144
    :cond_5
    cmpg-float v0, p3, v2

    #@2a
    if-ltz v0, :cond_6

    #@2c
    cmpl-float v0, p3, v3

    #@2e
    if-lez v0, :cond_7

    #@30
    :cond_6
    return v1

    #@31
    .line 1145
    :cond_7
    const/4 v0, 0x1

    #@32
    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2419
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@4
    move-result-object v0

    #@5
    .line 2420
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreen()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v1

    #@e
    :cond_1
    const/4 v1, 0x1

    #@f
    goto :goto_0
.end method

.method isInteresting()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1282
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    #@8
    if-eqz v2, :cond_2

    #@a
    :cond_0
    move v0, v1

    #@b
    :cond_1
    :goto_0
    return v0

    #@c
    .line 1283
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@e
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@10
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    #@12
    if-eqz v2, :cond_1

    #@14
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@16
    if-eqz v2, :cond_1

    #@18
    move v0, v1

    #@19
    goto :goto_0
.end method

.method isObscuringFullscreen(Landroid/view/DisplayInfo;)Z
    .locals 3
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1404
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@4
    move-result-object v0

    #@5
    .line 1405
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@7
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@d
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1408
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->isFrameFullscreen(Landroid/view/DisplayInfo;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 1411
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 1406
    :cond_1
    return v2

    #@22
    .line 1409
    :cond_2
    return v2
.end method

.method isOnScreen()Z
    .locals 1

    #@0
    .prologue
    .line 1241
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreenIgnoringKeyguard()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method isOnScreenIgnoringKeyguard()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1249
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1250
    :cond_0
    return v2

    #@b
    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@d
    .line 1253
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_5

    #@f
    .line 1254
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@11
    if-nez v3, :cond_2

    #@13
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 1255
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@19
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@1b
    if-eqz v3, :cond_4

    #@1d
    .line 1254
    :cond_3
    :goto_0
    return v1

    #@1e
    .line 1255
    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@20
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@22
    if-nez v3, :cond_3

    #@24
    move v1, v2

    #@25
    goto :goto_0

    #@26
    .line 1257
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@28
    if-eqz v3, :cond_6

    #@2a
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2c
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@2e
    if-eqz v3, :cond_7

    #@30
    :cond_6
    :goto_1
    return v1

    #@31
    :cond_7
    move v1, v2

    #@32
    goto :goto_1
.end method

.method isOpaqueDrawn()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1386
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@4
    if-nez v2, :cond_2

    #@6
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@8
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    #@a
    const/4 v3, -0x1

    #@b
    if-ne v2, v3, :cond_2

    #@d
    .line 1388
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@10
    move-result v2

    #@11
    .line 1386
    if-eqz v2, :cond_3

    #@13
    .line 1388
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@15
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@17
    if-nez v2, :cond_3

    #@19
    .line 1389
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1b
    if-eqz v2, :cond_1

    #@1d
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1f
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@21
    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@23
    if-nez v2, :cond_4

    #@25
    .line 1386
    :cond_1
    :goto_0
    return v0

    #@26
    .line 1387
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@28
    if-eqz v2, :cond_3

    #@2a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@2c
    .line 1386
    if-nez v2, :cond_0

    #@2e
    :cond_3
    move v0, v1

    #@2f
    goto :goto_0

    #@30
    :cond_4
    move v0, v1

    #@31
    .line 1389
    goto :goto_0
.end method

.method isPotentialDragTarget()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1219
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    .line 1220
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@e
    if-eqz v1, :cond_0

    #@10
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@12
    if-eqz v1, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    goto :goto_0
.end method

.method isReadyForDisplay()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1291
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@4
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@c
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1292
    return v1

    #@13
    .line 1294
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@19
    if-eqz v2, :cond_1

    #@1b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@1d
    if-eqz v2, :cond_3

    #@1f
    :cond_1
    move v0, v1

    #@20
    :cond_2
    :goto_0
    return v0

    #@21
    .line 1295
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@23
    if-nez v2, :cond_4

    #@25
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@27
    if-nez v2, :cond_4

    #@29
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@2b
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 1296
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@31
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@33
    if-nez v2, :cond_2

    #@35
    .line 1297
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@37
    if-eqz v2, :cond_5

    #@39
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3b
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3d
    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@3f
    if-nez v2, :cond_2

    #@41
    :cond_5
    move v0, v1

    #@42
    goto :goto_0
.end method

.method isReadyForDisplayIgnoringKeyguard()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1305
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@4
    iget-boolean v3, v3, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@c
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 1306
    return v1

    #@13
    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@15
    .line 1309
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    #@17
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@19
    if-eqz v3, :cond_3

    #@1b
    .line 1314
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@1d
    if-eqz v3, :cond_2

    #@1f
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@21
    if-eqz v3, :cond_4

    #@23
    :cond_2
    :goto_0
    return v1

    #@24
    .line 1312
    :cond_3
    return v1

    #@25
    .line 1315
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@27
    if-nez v3, :cond_5

    #@29
    iget v3, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@2b
    if-nez v3, :cond_5

    #@2d
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@2f
    iget-boolean v3, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@31
    if-eqz v3, :cond_6

    #@33
    .line 1316
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@35
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@37
    if-eqz v3, :cond_7

    #@39
    :cond_6
    move v1, v2

    #@3a
    .line 1315
    goto :goto_0

    #@3b
    .line 1317
    :cond_7
    if-eqz v0, :cond_2

    #@3d
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3f
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@41
    if-eqz v3, :cond_2

    #@43
    .line 1318
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@45
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_2

    #@4b
    move v1, v2

    #@4c
    goto :goto_0
.end method

.method isResizedWhileNotDragResizing()Z
    .locals 1

    #@0
    .prologue
    .line 2456
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizing:Z

    #@2
    return v0
.end method

.method isResizedWhileNotDragResizingReported()Z
    .locals 1

    #@0
    .prologue
    .line 2464
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizingReported:Z

    #@2
    return v0
.end method

.method public isVisibleLw()Z
    .locals 1

    #@0
    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isVisibleUnchecked()Z

    #@f
    move-result v0

    #@10
    goto :goto_0
.end method

.method isVisibleNow()Z
    .locals 2

    #@0
    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@2
    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@8
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@a
    const/4 v1, 0x3

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 1210
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isVisibleUnchecked()Z

    #@10
    move-result v0

    #@11
    .line 1209
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method isVisibleOrAdding()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1228
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3
    .line 1229
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@5
    if-nez v2, :cond_0

    #@7
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@9
    if-nez v2, :cond_1

    #@b
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@d
    if-nez v2, :cond_1

    #@f
    .line 1230
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@11
    .line 1229
    if-eqz v2, :cond_1

    #@13
    .line 1230
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 1229
    :cond_1
    :goto_0
    return v1

    #@18
    .line 1231
    :cond_2
    if-eqz v0, :cond_3

    #@1a
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@1c
    if-nez v2, :cond_1

    #@1e
    .line 1232
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@20
    if-nez v2, :cond_1

    #@22
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@24
    if-nez v2, :cond_1

    #@26
    const/4 v1, 0x1

    #@27
    goto :goto_0
.end method

.method public isVisibleOrBehindKeyguardLw()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1184
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@3
    iget-boolean v3, v3, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@b
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 1185
    return v2

    #@12
    .line 1187
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14
    .line 1188
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_3

    #@16
    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@18
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@1a
    if-eqz v3, :cond_3

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 1189
    .local v0, "animating":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@1f
    if-eqz v3, :cond_1

    #@21
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@23
    if-eqz v3, :cond_4

    #@25
    :cond_1
    :goto_1
    move v0, v2

    #@26
    .end local v0    # "animating":Z
    :cond_2
    :goto_2
    return v0

    #@27
    .line 1188
    :cond_3
    const/4 v0, 0x0

    #@28
    .restart local v0    # "animating":Z
    goto :goto_0

    #@29
    .line 1189
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@2b
    if-nez v3, :cond_1

    #@2d
    .line 1190
    if-nez v1, :cond_8

    #@2f
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@31
    .line 1189
    if-eqz v3, :cond_1

    #@33
    .line 1191
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@35
    if-nez v2, :cond_6

    #@37
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@39
    if-nez v2, :cond_6

    #@3b
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@3d
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@3f
    if-eqz v2, :cond_7

    #@41
    .line 1192
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@43
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@45
    if-eqz v2, :cond_2

    #@47
    .line 1191
    :cond_7
    const/4 v0, 0x1

    #@48
    goto :goto_2

    #@49
    .line 1190
    :cond_8
    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@4b
    if-eqz v3, :cond_5

    #@4d
    goto :goto_1
.end method

.method public isVoiceInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isWinVisibleLw()Z
    .locals 1

    #@0
    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@c
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@e
    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1201
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isVisibleUnchecked()Z

    #@15
    move-result v0

    #@16
    .line 1200
    :goto_0
    return v0

    #@17
    :cond_1
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method layoutInParentFrame()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2836
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@9
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@b
    const/high16 v2, 0x10000

    #@d
    and-int/2addr v1, v2

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method makeInputChannelName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 2711
    const-string/jumbo v1, " "

    #@14
    .line 2710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 2711
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    #@1b
    move-result-object v1

    #@1c
    .line 2710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method maybeRemoveReplacedWindow()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1601
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1602
    return-void

    #@7
    .line 1604
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@9
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@e
    move-result v3

    #@f
    add-int/lit8 v1, v3, -0x1

    #@11
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    #@13
    .line 1605
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@15
    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@17
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@1d
    .line 1606
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@1f
    if-eqz v3, :cond_2

    #@21
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@23
    if-ne v3, p0, :cond_2

    #@25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_2

    #@2b
    .line 1608
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDimming()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 1609
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->transferDimToReplacement()V

    #@34
    .line 1611
    :cond_1
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@36
    .line 1612
    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@38
    .line 1613
    .local v0, "animateReplacingWindow":Z
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@3a
    .line 1614
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    #@3c
    .line 1615
    iput-object v5, v2, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@3e
    .line 1616
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    #@40
    .line 1617
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@42
    if-nez v3, :cond_3

    #@44
    if-eqz v0, :cond_3

    #@46
    .line 1604
    .end local v0    # "animateReplacingWindow":Z
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@48
    goto :goto_0

    #@49
    .line 1618
    .restart local v0    # "animateReplacingWindow":Z
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4b
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    #@4e
    goto :goto_1

    #@4f
    .line 1600
    .end local v0    # "animateReplacingWindow":Z
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    return-void
.end method

.method mightAffectAllDrawn(Z)Z
    .locals 4
    .param p1, "visibleOnly"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1270
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@4
    if-eqz v3, :cond_4

    #@6
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@8
    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@a
    if-eqz v3, :cond_4

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    .line 1272
    .local v0, "isViewVisible":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreenIgnoringKeyguard()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    if-eqz p1, :cond_2

    #@15
    if-nez v0, :cond_2

    #@17
    .line 1273
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@19
    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    #@1b
    if-ne v3, v2, :cond_3

    #@1d
    .line 1274
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@1f
    if-eqz v3, :cond_6

    #@21
    .line 1272
    :cond_3
    :goto_1
    return v1

    #@22
    .line 1271
    .end local v0    # "isViewVisible":Z
    :cond_4
    iget v3, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@24
    if-nez v3, :cond_0

    #@26
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    #@28
    if-eqz v3, :cond_5

    #@2a
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "isViewVisible":Z
    goto :goto_0

    #@2c
    .end local v0    # "isViewVisible":Z
    :cond_5
    const/4 v0, 0x1

    #@2d
    .restart local v0    # "isViewVisible":Z
    goto :goto_0

    #@2e
    .line 1274
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@30
    if-nez v3, :cond_3

    #@32
    move v1, v2

    #@33
    goto :goto_1
.end method

.method notifyMovedInStack()V
    .locals 1

    #@0
    .prologue
    .line 1500
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mJustMovedInStack:Z

    #@3
    .line 1499
    return-void
.end method

.method openInputChannel(Landroid/view/InputChannel;)V
    .locals 5
    .param p1, "outInputChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1534
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1535
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v3, "Window already has an input channel."

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 1537
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->makeInputChannelName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 1538
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@16
    move-result-object v0

    #@17
    .line 1539
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    aget-object v2, v0, v3

    #@19
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@1b
    .line 1540
    const/4 v2, 0x1

    #@1c
    aget-object v2, v0, v2

    #@1e
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@20
    .line 1541
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@22
    aget-object v3, v0, v3

    #@24
    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@26
    .line 1542
    if-eqz p1, :cond_1

    #@28
    .line 1543
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@2a
    invoke-virtual {v2, p1}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    #@2d
    .line 1544
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@2f
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    #@32
    .line 1545
    iput-object v4, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@34
    .line 1552
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@36
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@38
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@3a
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@3c
    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    #@3f
    .line 1533
    return-void

    #@40
    .line 1550
    :cond_1
    new-instance v2, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    #@42
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@44
    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;-><init>(Lcom/android/server/wm/WindowState;Landroid/view/InputChannel;)V

    #@47
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    #@49
    goto :goto_0
.end method

.method public pokeDrawLockLw(J)V
    .locals 5
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 1948
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 1949
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1953
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    .line 1954
    .local v0, "tag":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@12
    .line 1955
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Window:"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    const/16 v3, 0x80

    #@28
    .line 1954
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@2b
    move-result-object v1

    #@2c
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@2e
    .line 1956
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@30
    const/4 v2, 0x0

    #@31
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@34
    .line 1957
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@36
    new-instance v2, Landroid/os/WorkSource;

    #@38
    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@3a
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@3c
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@3e
    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    #@41
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@44
    .line 1964
    .end local v0    # "tag":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@46
    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@49
    .line 1947
    :cond_1
    return-void
.end method

.method prelayout()V
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 1149
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    #@a
    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@c
    .line 1151
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@e
    div-float v0, v1, v0

    #@10
    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@12
    .line 1148
    :goto_0
    return-void

    #@13
    .line 1153
    :cond_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@15
    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@17
    goto :goto_0
.end method

.method prepareWindowToDisplayDuringRelayout(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "outConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1724
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@3
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@5
    and-int/lit16 v1, v1, 0xf0

    #@7
    .line 1725
    const/16 v2, 0x10

    #@9
    .line 1724
    if-ne v1, v2, :cond_0

    #@b
    .line 1726
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@d
    .line 1728
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@15
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 1729
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    #@20
    .line 1731
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@22
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@24
    const/high16 v2, 0x200000

    #@26
    and-int/2addr v1, v2

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 1733
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@2b
    .line 1735
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 1736
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->updateConfiguration()Landroid/content/res/Configuration;

    #@34
    move-result-object v0

    #@35
    .line 1739
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@38
    .line 1723
    .end local v0    # "newConfig":Landroid/content/res/Configuration;
    :cond_3
    return-void
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    #@0
    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 2391
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 2392
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@b
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@10
    .line 2394
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@12
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 2389
    return-void

    #@17
    .line 2390
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method removeLocked()V
    .locals 4

    #@0
    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    #@3
    .line 1444
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1446
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@b
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    #@10
    .line 1448
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@12
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    #@15
    .line 1449
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@17
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@1a
    .line 1450
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    #@1f
    .line 1452
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@21
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    #@27
    const/4 v3, 0x0

    #@28
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 1441
    :goto_0
    return-void

    #@2c
    .line 1453
    :catch_0
    move-exception v0

    #@2d
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public reportFocusChangedSerialized(ZZ)V
    .locals 5
    .param p1, "focused"    # Z
    .param p2, "inTouchMode"    # Z

    #@0
    .prologue
    .line 2240
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@2
    invoke-interface {v4, p1, p2}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 2243
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@7
    if-eqz v4, :cond_2

    #@9
    .line 2244
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@e
    move-result v0

    #@f
    .line 2245
    .local v0, "N":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    #@12
    .line 2246
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@14
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/view/IWindowFocusObserver;

    #@1a
    .line 2248
    .local v3, "obs":Landroid/view/IWindowFocusObserver;
    if-eqz p1, :cond_0

    #@1c
    .line 2249
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    #@1e
    invoke-interface {v4}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v3, v4}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    #@25
    .line 2245
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_1

    #@28
    .line 2251
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    #@2a
    invoke-interface {v4}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@2d
    move-result-object v4

    #@2e
    invoke-interface {v3, v4}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@31
    goto :goto_2

    #@32
    .line 2253
    :catch_0
    move-exception v1

    #@33
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@34
    .line 2256
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "obs":Landroid/view/IWindowFocusObserver;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@36
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@39
    .line 2238
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_2
    return-void

    #@3a
    .line 2241
    :catch_1
    move-exception v1

    #@3b
    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method reportResized()V
    .locals 14

    #@0
    .prologue
    .line 2293
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "wm.reportResized_"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-wide/16 v12, 0x20

    #@1a
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1d
    .line 2297
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->updateConfiguration()Landroid/content/res/Configuration;

    #@26
    move-result-object v9

    #@27
    .line 2301
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@29
    .line 2302
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    #@2b
    .line 2303
    .local v3, "overscanInsets":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@2d
    .line 2304
    .local v4, "contentInsets":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    #@2f
    .line 2305
    .local v5, "visibleInsets":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    #@31
    .line 2306
    .local v6, "stableInsets":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@33
    .line 2307
    .local v7, "outsets":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@35
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@37
    const/4 v1, 0x1

    #@38
    if-ne v0, v1, :cond_2

    #@3a
    const/4 v8, 0x1

    #@3b
    .line 2308
    .local v8, "reportDraw":Z
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@3d
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@3f
    const/4 v1, 0x3

    #@40
    if-eq v0, v1, :cond_3

    #@42
    .line 2309
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@44
    instance-of v0, v0, Landroid/view/IWindow$Stub;

    #@46
    .line 2308
    if-eqz v0, :cond_3

    #@48
    .line 2311
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4a
    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@4c
    new-instance v0, Lcom/android/server/wm/WindowState$2;

    #@4e
    move-object v1, p0

    #@4f
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    #@52
    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    #@55
    .line 2328
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@57
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@59
    if-eqz v0, :cond_0

    #@5b
    .line 2329
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@5e
    move-result v0

    #@5f
    if-nez v0, :cond_0

    #@61
    .line 2330
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@63
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@65
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    #@68
    .line 2333
    :cond_0
    const/4 v0, 0x0

    #@69
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    #@6b
    .line 2334
    const/4 v0, 0x0

    #@6c
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    #@6e
    .line 2335
    const/4 v0, 0x0

    #@6f
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    #@71
    .line 2336
    const/4 v0, 0x0

    #@72
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    #@74
    .line 2337
    const/4 v0, 0x0

    #@75
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@77
    .line 2338
    const/4 v0, 0x1

    #@78
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizingReported:Z

    #@7a
    .line 2339
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@7c
    const/4 v1, 0x0

    #@7d
    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7f
    .line 2350
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v3    # "overscanInsets":Landroid/graphics/Rect;
    .end local v4    # "contentInsets":Landroid/graphics/Rect;
    .end local v5    # "visibleInsets":Landroid/graphics/Rect;
    .end local v6    # "stableInsets":Landroid/graphics/Rect;
    .end local v7    # "outsets":Landroid/graphics/Rect;
    .end local v8    # "reportDraw":Z
    :goto_3
    const-wide/16 v0, 0x20

    #@81
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@84
    .line 2292
    return-void

    #@85
    .line 2297
    :cond_1
    const/4 v9, 0x0

    #@86
    .local v9, "newConfig":Landroid/content/res/Configuration;
    goto :goto_0

    #@87
    .line 2307
    .end local v9    # "newConfig":Landroid/content/res/Configuration;
    .restart local v2    # "frame":Landroid/graphics/Rect;
    .restart local v3    # "overscanInsets":Landroid/graphics/Rect;
    .restart local v4    # "contentInsets":Landroid/graphics/Rect;
    .restart local v5    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v6    # "stableInsets":Landroid/graphics/Rect;
    .restart local v7    # "outsets":Landroid/graphics/Rect;
    :cond_2
    const/4 v8, 0x0

    #@88
    .restart local v8    # "reportDraw":Z
    goto :goto_1

    #@89
    :cond_3
    move-object v1, p0

    #@8a
    .line 2323
    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@8d
    goto :goto_2

    #@8e
    .line 2340
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v3    # "overscanInsets":Landroid/graphics/Rect;
    .end local v4    # "contentInsets":Landroid/graphics/Rect;
    .end local v5    # "visibleInsets":Landroid/graphics/Rect;
    .end local v6    # "stableInsets":Landroid/graphics/Rect;
    .end local v7    # "outsets":Landroid/graphics/Rect;
    .end local v8    # "reportDraw":Z
    :catch_0
    move-exception v10

    #@8f
    .line 2341
    .local v10, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    #@90
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@92
    .line 2342
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@95
    move-result-wide v0

    #@96
    .line 2343
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@98
    iget-wide v12, v11, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    #@9a
    .line 2342
    sub-long/2addr v0, v12

    #@9b
    long-to-int v0, v0

    #@9c
    iput v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@9e
    .line 2345
    sget-object v0, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    #@a0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v11, "Failed to report \'resized\' to the client of "

    #@a8
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    .line 2346
    const-string/jumbo v11, ", removing this window."

    #@b3
    .line 2345
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v1

    #@bb
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    .line 2347
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    #@c2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c5
    .line 2348
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@c9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@cc
    goto :goto_3
.end method

.method requestUpdateWallpaperIfNeeded()V
    .locals 2

    #@0
    .prologue
    .line 2859
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@6
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@8
    const/high16 v1, 0x100000

    #@a
    and-int/2addr v0, v1

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2860
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@f
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@11
    or-int/lit8 v1, v1, 0x4

    #@13
    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@15
    .line 2861
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@17
    const/4 v1, 0x1

    #@18
    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@1a
    .line 2862
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@21
    .line 2858
    :cond_0
    return-void
.end method

.method resetDragResizingChangeReported()V
    .locals 1

    #@0
    .prologue
    .line 2438
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    #@3
    .line 2437
    return-void
.end method

.method resetJustMovedInStack()V
    .locals 1

    #@0
    .prologue
    .line 1516
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mJustMovedInStack:Z

    #@3
    .line 1515
    return-void
.end method

.method resetReplacing()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2853
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@3
    .line 2854
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@6
    .line 2855
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@8
    .line 2852
    return-void
.end method

.method restoreSavedSurface()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2091
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2092
    return-void

    #@6
    .line 2094
    :cond_0
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@9
    .line 2095
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 2096
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@12
    .line 2097
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@14
    const/4 v1, 0x3

    #@15
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@17
    .line 2098
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@19
    .line 2090
    :goto_0
    return-void

    #@1a
    .line 2107
    :cond_1
    sget-object v0, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Failed to restore saved surface: surface gone! "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    goto :goto_0
.end method

.method scheduleAnimationIfDimming()V
    .locals 3

    #@0
    .prologue
    .line 1475
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1476
    return-void

    #@5
    .line 1478
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@8
    move-result-object v0

    #@9
    .line 1479
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    if-eqz v0, :cond_1

    #@b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@d
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@f
    .line 1480
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@11
    .line 1479
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DimLayerController;->isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1482
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@1c
    .line 1474
    :cond_1
    return-void
.end method

.method public setAppOpVisibilityLw(Z)V
    .locals 2
    .param p1, "state"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1931
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 1932
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@7
    .line 1933
    if-eqz p1, :cond_1

    #@9
    .line 1940
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    #@c
    .line 1930
    :cond_0
    :goto_0
    return-void

    #@d
    .line 1942
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@10
    goto :goto_0
.end method

.method setDisplayLayoutNeeded()V
    .locals 2

    #@0
    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1626
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@6
    const/4 v1, 0x1

    #@7
    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@9
    .line 1624
    :cond_0
    return-void
.end method

.method setDragResizing()V
    .locals 3

    #@0
    .prologue
    .line 2496
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    #@3
    move-result v0

    #@4
    .line 2497
    .local v0, "resizing":Z
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    #@6
    if-ne v0, v2, :cond_0

    #@8
    .line 2498
    return-void

    #@9
    .line 2500
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    #@b
    .line 2501
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@e
    move-result-object v1

    #@f
    .line 2502
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1

    #@11
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 2503
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDragResizeMode()I

    #@1a
    move-result v2

    #@1b
    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    #@1d
    .line 2495
    :goto_0
    return-void

    #@1e
    .line 2505
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    #@20
    if-eqz v2, :cond_2

    #@22
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@24
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@26
    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 2506
    const/4 v2, 0x1

    #@2d
    .line 2505
    :goto_1
    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    #@2f
    goto :goto_0

    #@30
    .line 2507
    :cond_2
    const/4 v2, 0x0

    #@31
    goto :goto_1
.end method

.method setHasSurface(Z)V
    .locals 0
    .param p1, "hasSurface"    # Z

    #@0
    .prologue
    .line 1460
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@2
    .line 1459
    return-void
.end method

.method setInsetsChanged()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1050
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    #@4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    #@6
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_0
    or-int/2addr v0, v3

    #@10
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    #@12
    .line 1051
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    #@14
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@16
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@18
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    move v0, v1

    #@1f
    :goto_1
    or-int/2addr v0, v3

    #@20
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    #@22
    .line 1052
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    #@24
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    #@26
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@28
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_3

    #@2e
    move v0, v1

    #@2f
    :goto_2
    or-int/2addr v0, v3

    #@30
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    #@32
    .line 1053
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    #@34
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    #@36
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@38
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_4

    #@3e
    move v0, v1

    #@3f
    :goto_3
    or-int/2addr v0, v3

    #@40
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    #@42
    .line 1054
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@44
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@46
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@48
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_5

    #@4e
    :goto_4
    or-int/2addr v0, v1

    #@4f
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@51
    .line 1055
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    #@53
    if-nez v0, :cond_0

    #@55
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    #@57
    if-nez v0, :cond_0

    #@59
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    #@5b
    if-nez v0, :cond_0

    #@5d
    .line 1056
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@5f
    .line 1055
    :cond_0
    return v2

    #@60
    :cond_1
    move v0, v2

    #@61
    .line 1050
    goto :goto_0

    #@62
    :cond_2
    move v0, v2

    #@63
    .line 1051
    goto :goto_1

    #@64
    :cond_3
    move v0, v2

    #@65
    .line 1052
    goto :goto_2

    #@66
    :cond_4
    move v0, v2

    #@67
    .line 1053
    goto :goto_3

    #@68
    :cond_5
    move v1, v2

    #@69
    .line 1054
    goto :goto_4
.end method

.method setReplacing(Z)V
    .locals 2
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 2840
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@4
    const v1, 0x8000

    #@7
    and-int/2addr v0, v1

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2841
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@c
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@e
    const/4 v1, 0x3

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 2844
    :cond_0
    return-void

    #@12
    .line 2847
    :cond_1
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@15
    .line 2848
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@18
    .line 2849
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@1a
    .line 2839
    return-void
.end method

.method setRequestedSize(II)V
    .locals 1
    .param p1, "requestedWidth"    # I
    .param p2, "requestedHeight"    # I

    #@0
    .prologue
    .line 1716
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@6
    if-eq v0, p2, :cond_1

    #@8
    .line 1717
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@b
    .line 1718
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@d
    .line 1719
    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@f
    .line 1715
    :cond_1
    return-void
.end method

.method setResizedWhileNotDragResizing(Z)V
    .locals 1
    .param p1, "resizedWhileNotDragResizing"    # Z

    #@0
    .prologue
    .line 2446
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizing:Z

    #@2
    .line 2447
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizingReported:Z

    #@7
    .line 2445
    return-void

    #@8
    .line 2447
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public setShowToOwnerOnlyLocked(Z)V
    .locals 0
    .param p1, "showToOwnerOnly"    # Z

    #@0
    .prologue
    .line 2157
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    #@2
    .line 2156
    return-void
.end method

.method public setVisibleBeforeClientHidden()V
    .locals 2

    #@0
    .prologue
    .line 1990
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@2
    .line 1991
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@8
    .line 1990
    :goto_0
    or-int/2addr v0, v1

    #@9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@b
    .line 1989
    return-void

    #@c
    .line 1991
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method setWindowScale(II)V
    .locals 4
    .param p1, "requestedWidth"    # I
    .param p2, "requestedHeight"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/high16 v2, 0x3f800000    # 1.0f

    #@3
    .line 1757
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@5
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@7
    and-int/lit16 v1, v1, 0x4000

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 1759
    .local v0, "scaledWindow":Z
    :cond_0
    if-eqz v0, :cond_3

    #@e
    .line 1763
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@12
    if-eq v1, p1, :cond_2

    #@14
    .line 1764
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@16
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@18
    int-to-float v1, v1

    #@19
    int-to-float v3, p1

    #@1a
    div-float/2addr v1, v3

    #@1b
    .line 1763
    :goto_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@1d
    .line 1765
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1f
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@21
    if-eq v1, p2, :cond_1

    #@23
    .line 1766
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@25
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@27
    int-to-float v1, v1

    #@28
    int-to-float v2, p2

    #@29
    div-float v2, v1, v2

    #@2b
    .line 1765
    :cond_1
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@2d
    .line 1756
    :goto_1
    return-void

    #@2e
    :cond_2
    move v1, v2

    #@2f
    .line 1764
    goto :goto_0

    #@30
    .line 1768
    :cond_3
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@32
    iput v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@34
    goto :goto_1
.end method

.method shouldBeReplacedWithChildren()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2900
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@9
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@b
    const/4 v2, 0x2

    #@c
    if-ne v1, v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method shouldKeepVisibleDeadAppWindow()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1809
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@9
    if-nez v2, :cond_1

    #@b
    .line 1811
    :cond_0
    return v1

    #@c
    .line 1809
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@e
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@10
    if-nez v2, :cond_0

    #@12
    .line 1814
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@14
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@16
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@18
    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v3

    #@1c
    if-eq v2, v3, :cond_2

    #@1e
    .line 1817
    return v1

    #@1f
    .line 1820
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@21
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@23
    const/4 v3, 0x3

    #@24
    if-ne v2, v3, :cond_3

    #@26
    .line 1823
    return v1

    #@27
    .line 1826
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@2a
    move-result-object v0

    #@2b
    .line 1827
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_4

    #@2d
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@2f
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->keepVisibleDeadAppWindowOnScreen(I)Z

    #@32
    move-result v1

    #@33
    :cond_4
    return v1
.end method

.method public showLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    #@0
    .prologue
    .line 1846
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method showLw(ZZ)Z
    .locals 3
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1850
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1851
    return v2

    #@9
    .line 1853
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1855
    return v2

    #@e
    .line 1857
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@10
    if-eqz v0, :cond_2

    #@12
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1859
    return v2

    #@17
    .line 1862
    :cond_2
    if-eqz p1, :cond_3

    #@19
    .line 1865
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_6

    #@21
    .line 1866
    const/4 p1, 0x0

    #@22
    .line 1874
    .end local p1    # "doAnimation":Z
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@24
    .line 1875
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@26
    .line 1876
    if-eqz p1, :cond_4

    #@28
    .line 1877
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2a
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    #@2d
    .line 1879
    :cond_4
    if-eqz p2, :cond_5

    #@2f
    .line 1880
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@31
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@34
    .line 1882
    :cond_5
    return v1

    #@35
    .line 1867
    .restart local p1    # "doAnimation":Z
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@37
    if-eqz v0, :cond_3

    #@39
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@3b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@3d
    if-nez v0, :cond_3

    #@3f
    .line 1871
    const/4 p1, 0x0

    #@40
    .local p1, "doAnimation":Z
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2724
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    .line 2725
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    #@a
    if-eq v1, v0, :cond_2

    #@c
    .line 2726
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    #@e
    .line 2727
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@10
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    #@12
    .line 2728
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Window{"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@21
    move-result v2

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 2729
    const-string/jumbo v2, " u"

    #@2d
    .line 2728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 2729
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@33
    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    #@35
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@38
    move-result v2

    #@39
    .line 2728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 2730
    const-string/jumbo v2, " "

    #@40
    .line 2728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 2730
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    #@46
    .line 2728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 2730
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@4c
    if-eqz v1, :cond_3

    #@4e
    const-string/jumbo v1, " EXITING}"

    #@51
    .line 2728
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    #@5b
    .line 2732
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    #@5d
    return-object v1

    #@5e
    .line 2725
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    #@60
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@62
    if-eq v1, v2, :cond_1

    #@64
    goto :goto_0

    #@65
    .line 2730
    :cond_3
    const-string/jumbo v1, "}"

    #@68
    goto :goto_1
.end method

.method transferDimToReplacement()V
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2883
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@4
    move-result-object v0

    #@5
    .line 2884
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    if-eqz v0, :cond_1

    #@7
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 2885
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@d
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@f
    .line 2886
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@11
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@13
    .line 2887
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@15
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@17
    and-int/lit8 v4, v4, 0x2

    #@19
    if-eqz v4, :cond_0

    #@1b
    const/4 v1, 0x1

    #@1c
    .line 2885
    :cond_0
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    #@1f
    .line 2882
    :cond_1
    return-void
.end method

.method transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2736
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@3
    cmpl-float v0, v0, v2

    #@5
    if-ltz v0, :cond_0

    #@7
    .line 2737
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@9
    int-to-float v0, v0

    #@a
    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@c
    div-float/2addr v0, v1

    #@d
    float-to-int v0, v0

    #@e
    iput v0, p1, Landroid/graphics/Rect;->left:I

    #@10
    .line 2738
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@12
    int-to-float v0, v0

    #@13
    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@15
    div-float/2addr v0, v1

    #@16
    float-to-double v0, v0

    #@17
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@1a
    move-result-wide v0

    #@1b
    double-to-int v0, v0

    #@1c
    iput v0, p1, Landroid/graphics/Rect;->right:I

    #@1e
    .line 2740
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@20
    cmpl-float v0, v0, v2

    #@22
    if-ltz v0, :cond_1

    #@24
    .line 2741
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@26
    int-to-float v0, v0

    #@27
    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@29
    div-float/2addr v0, v1

    #@2a
    float-to-int v0, v0

    #@2b
    iput v0, p1, Landroid/graphics/Rect;->top:I

    #@2d
    .line 2742
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@2f
    int-to-float v0, v0

    #@30
    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@32
    div-float/2addr v0, v1

    #@33
    float-to-double v0, v0

    #@34
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    #@37
    move-result-wide v0

    #@38
    double-to-int v0, v0

    #@39
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@3b
    .line 2735
    :cond_1
    return-void
.end method

.method translateToWindowX(F)F
    .locals 2
    .param p1, "x"    # F

    #@0
    .prologue
    .line 2867
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@4
    int-to-float v1, v1

    #@5
    sub-float v0, p1, v1

    #@7
    .line 2868
    .local v0, "winX":F
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2869
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@d
    mul-float/2addr v0, v1

    #@e
    .line 2871
    :cond_0
    return v0
.end method

.method translateToWindowY(F)F
    .locals 2
    .param p1, "y"    # F

    #@0
    .prologue
    .line 2875
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@4
    int-to-float v1, v1

    #@5
    sub-float v0, p1, v1

    #@7
    .line 2876
    .local v0, "winY":F
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2877
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@d
    mul-float/2addr v0, v1

    #@e
    .line 2879
    :cond_0
    return v0
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    #@0
    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 2400
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2401
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 2398
    return-void

    #@10
    .line 2399
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public wasVisibleBeforeClientHidden()Z
    .locals 1

    #@0
    .prologue
    .line 1999
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@2
    return v0
.end method
