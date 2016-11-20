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

.field mFrameSizeChanged:Z

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

.field mLastVisibleLayoutRotation:I

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

.field mPermanentlyHidden:Z

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

.field mSeamlesslyRotated:Z

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
    .line 122
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    #@5
    .line 337
    new-instance v0, Landroid/graphics/Rect;

    #@7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@a
    sput-object v0, Lcom/android/server/wm/WindowState;->sTmpRect:Landroid/graphics/Rect;

    #@c
    .line 2085
    new-instance v0, Landroid/graphics/Region;

    #@e
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@11
    sput-object v0, Lcom/android/server/wm/WindowState;->sEmptyRegion:Landroid/graphics/Region;

    #@13
    .line 121
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
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 152
    new-instance v12, Landroid/view/WindowManager$LayoutParams;

    #@5
    invoke-direct {v12}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@8
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a
    .line 155
    new-instance v12, Lcom/android/server/wm/WindowList;

    #@c
    invoke-direct {v12}, Lcom/android/server/wm/WindowList;-><init>()V

    #@f
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@11
    .line 166
    const/4 v12, 0x1

    #@12
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@14
    .line 167
    const/4 v12, 0x1

    #@15
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@17
    .line 168
    const/4 v12, 0x1

    #@18
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@1a
    .line 193
    const/4 v12, -0x1

    #@1b
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    #@1d
    .line 195
    new-instance v12, Landroid/content/res/Configuration;

    #@1f
    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    #@22
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mTmpConfig:Landroid/content/res/Configuration;

    #@24
    .line 199
    new-instance v12, Landroid/content/res/Configuration;

    #@26
    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    #@29
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@2b
    .line 208
    new-instance v12, Landroid/graphics/Point;

    #@2d
    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    #@30
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@32
    .line 214
    new-instance v12, Landroid/graphics/Rect;

    #@34
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@37
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@39
    .line 215
    new-instance v12, Landroid/graphics/Rect;

    #@3b
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@3e
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    #@40
    .line 223
    new-instance v12, Landroid/graphics/Rect;

    #@42
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@45
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@47
    .line 224
    new-instance v12, Landroid/graphics/Rect;

    #@49
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@4c
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@4e
    .line 231
    new-instance v12, Landroid/graphics/Rect;

    #@50
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@53
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@55
    .line 232
    new-instance v12, Landroid/graphics/Rect;

    #@57
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@5a
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    #@5c
    .line 239
    new-instance v12, Landroid/graphics/Rect;

    #@5e
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@61
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@63
    .line 240
    new-instance v12, Landroid/graphics/Rect;

    #@65
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@68
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    #@6a
    .line 247
    new-instance v12, Landroid/graphics/Rect;

    #@6c
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@6f
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@71
    .line 248
    new-instance v12, Landroid/graphics/Rect;

    #@73
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@76
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@78
    .line 249
    const/4 v12, 0x0

    #@79
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@7b
    .line 261
    new-instance v12, Landroid/graphics/Rect;

    #@7d
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@80
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@82
    .line 267
    new-instance v12, Landroid/graphics/Rect;

    #@84
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@87
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@89
    .line 272
    new-instance v12, Landroid/graphics/Region;

    #@8b
    invoke-direct {v12}, Landroid/graphics/Region;-><init>()V

    #@8e
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    #@90
    .line 280
    const/4 v12, 0x0

    #@91
    iput v12, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@93
    .line 283
    const/high16 v12, 0x3f800000    # 1.0f

    #@95
    iput v12, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@97
    .line 284
    const/high16 v12, 0x3f800000    # 1.0f

    #@99
    iput v12, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@9b
    .line 285
    const/high16 v12, 0x3f800000    # 1.0f

    #@9d
    iput v12, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@9f
    const/high16 v12, 0x3f800000    # 1.0f

    #@a1
    iput v12, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@a3
    .line 286
    const/high16 v12, 0x3f800000    # 1.0f

    #@a5
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    #@a7
    const/high16 v12, 0x3f800000    # 1.0f

    #@a9
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    #@ab
    .line 287
    new-instance v12, Landroid/graphics/Matrix;

    #@ad
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    #@b0
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    #@b2
    .line 290
    new-instance v12, Landroid/graphics/Rect;

    #@b4
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@b7
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b9
    .line 291
    new-instance v12, Landroid/graphics/Rect;

    #@bb
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@be
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@c0
    .line 292
    const/4 v12, 0x0

    #@c1
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    #@c3
    .line 295
    new-instance v12, Landroid/graphics/Rect;

    #@c5
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@c8
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@ca
    .line 297
    new-instance v12, Landroid/graphics/Rect;

    #@cc
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@cf
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@d1
    .line 299
    new-instance v12, Landroid/graphics/Rect;

    #@d3
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@d6
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    #@d8
    .line 303
    new-instance v12, Landroid/graphics/Rect;

    #@da
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@dd
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@df
    .line 309
    new-instance v12, Landroid/graphics/Rect;

    #@e1
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@e4
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@e6
    .line 313
    new-instance v12, Landroid/graphics/Rect;

    #@e8
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@eb
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@ed
    .line 317
    new-instance v12, Landroid/graphics/Rect;

    #@ef
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@f2
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@f4
    .line 321
    new-instance v12, Landroid/graphics/Rect;

    #@f6
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@f9
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@fb
    .line 325
    new-instance v12, Landroid/graphics/Rect;

    #@fd
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@100
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@102
    .line 329
    new-instance v12, Landroid/graphics/Rect;

    #@104
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@107
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@109
    .line 335
    new-instance v12, Landroid/graphics/Rect;

    #@10b
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@10e
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@110
    .line 343
    const/high16 v12, -0x40800000    # -1.0f

    #@112
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@114
    .line 344
    const/high16 v12, -0x40800000    # -1.0f

    #@116
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@118
    .line 348
    const/high16 v12, -0x40800000    # -1.0f

    #@11a
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@11c
    .line 349
    const/high16 v12, -0x40800000    # -1.0f

    #@11e
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@120
    .line 353
    const/high16 v12, -0x80000000

    #@122
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@124
    .line 354
    const/high16 v12, -0x80000000

    #@126
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@128
    .line 404
    const/4 v12, -0x1

    #@129
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    #@12b
    .line 439
    const/4 v12, 0x0

    #@12c
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@12e
    .line 441
    const/4 v12, 0x0

    #@12f
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@131
    .line 449
    const/4 v12, 0x0

    #@132
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@134
    .line 464
    const/4 v12, 0x0

    #@135
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@137
    .line 466
    const/4 v12, 0x0

    #@138
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    #@13a
    .line 468
    const/4 v12, 0x0

    #@13b
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@13d
    .line 471
    const/4 v12, 0x0

    #@13e
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@140
    .line 476
    const/4 v12, 0x0

    #@141
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    #@143
    .line 489
    new-instance v12, Landroid/graphics/Rect;

    #@145
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@148
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@14a
    .line 499
    const/4 v12, 0x0

    #@14b
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    #@14d
    .line 514
    const/4 v12, 0x0

    #@14e
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    #@150
    .line 519
    move-object/from16 v0, p1

    #@152
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@154
    .line 520
    move-object/from16 v0, p2

    #@156
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@158
    .line 521
    move-object/from16 v0, p3

    #@15a
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@15c
    .line 522
    move/from16 v0, p6

    #@15e
    iput v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    #@160
    .line 523
    move-object/from16 v0, p4

    #@162
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@164
    .line 524
    move-object/from16 v0, p2

    #@166
    iget v12, v0, Lcom/android/server/wm/Session;->mUid:I

    #@168
    iput v12, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@16a
    .line 525
    new-instance v12, Lcom/android/server/wm/WindowState$1;

    #@16c
    invoke-direct {v12, p0}, Lcom/android/server/wm/WindowState$1;-><init>(Lcom/android/server/wm/WindowState;)V

    #@16f
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    #@171
    .line 539
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@173
    move-object/from16 v0, p8

    #@175
    invoke-virtual {v12, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@178
    .line 540
    move/from16 v0, p9

    #@17a
    iput v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@17c
    .line 541
    move-object/from16 v0, p10

    #@17e
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@180
    .line 542
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@182
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@184
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@186
    .line 543
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@188
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@18a
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    #@18c
    .line 544
    new-instance v7, Lcom/android/server/wm/WindowState$DeathRecipient;

    #@18e
    const/4 v12, 0x0

    #@18f
    invoke-direct {v7, p0, v12}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$DeathRecipient;)V

    #@192
    .line 545
    .local v7, "deathRecipient":Lcom/android/server/wm/WindowState$DeathRecipient;
    move/from16 v0, p7

    #@194
    iput v0, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    #@196
    .line 546
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@198
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@19a
    and-int/lit16 v12, v12, 0x80

    #@19c
    if-eqz v12, :cond_1

    #@19e
    const/4 v12, 0x1

    #@19f
    :goto_0
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@1a1
    .line 551
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@1a4
    move-result-object v12

    #@1a5
    const/4 v13, 0x0

    #@1a6
    invoke-interface {v12, v7, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a9
    .line 565
    iput-object v7, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    #@1ab
    .line 567
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1ad
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1af
    const/16 v13, 0x3e8

    #@1b1
    if-lt v12, v13, :cond_b

    #@1b3
    .line 568
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1b5
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1b7
    const/16 v13, 0x7cf

    #@1b9
    if-gt v12, v13, :cond_b

    #@1bb
    .line 571
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1bd
    .line 572
    move-object/from16 v0, p5

    #@1bf
    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1c1
    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1c3
    .line 571
    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@1c6
    move-result v12

    #@1c7
    mul-int/lit16 v12, v12, 0x2710

    #@1c9
    add-int/lit16 v12, v12, 0x3e8

    #@1cb
    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@1cd
    .line 574
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1cf
    move-object/from16 v0, p8

    #@1d1
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1d3
    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    #@1d6
    move-result v12

    #@1d7
    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@1d9
    .line 575
    move-object/from16 v0, p5

    #@1db
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@1dd
    .line 578
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@1df
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@1e1
    .line 579
    .local v6, "childWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    #@1e4
    move-result v10

    #@1e5
    .line 580
    .local v10, "numChildWindows":I
    if-nez v10, :cond_2

    #@1e7
    .line 581
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    #@1ea
    .line 601
    :cond_0
    :goto_1
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1ec
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1ee
    .line 602
    const/16 v13, 0x3eb

    #@1f0
    .line 601
    if-eq v12, v13, :cond_6

    #@1f2
    const/4 v12, 0x1

    #@1f3
    :goto_2
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@1f5
    .line 603
    move-object/from16 v0, p5

    #@1f7
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1f9
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1fb
    const/16 v13, 0x7db

    #@1fd
    if-eq v12, v13, :cond_7

    #@1ff
    .line 604
    move-object/from16 v0, p5

    #@201
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@203
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@205
    const/16 v13, 0x7dc

    #@207
    if-ne v12, v13, :cond_8

    #@209
    const/4 v12, 0x1

    #@20a
    .line 603
    :goto_3
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@20c
    .line 605
    move-object/from16 v0, p5

    #@20e
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@210
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@212
    const/16 v13, 0x7dd

    #@214
    if-ne v12, v13, :cond_9

    #@216
    const/4 v12, 0x1

    #@217
    :goto_4
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@219
    .line 606
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@21b
    if-nez v12, :cond_a

    #@21d
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@21f
    :goto_5
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@221
    .line 622
    .end local v6    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v10    # "numChildWindows":I
    :goto_6
    move-object v4, p0

    #@222
    .line 623
    .local v4, "appWin":Lcom/android/server/wm/WindowState;
    :goto_7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@225
    move-result v12

    #@226
    if-eqz v12, :cond_10

    #@228
    .line 624
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@22a
    goto :goto_7

    #@22b
    .line 546
    .end local v4    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v12, 0x0

    #@22c
    goto/16 :goto_0

    #@22e
    .line 552
    :catch_0
    move-exception v8

    #@22f
    .line 553
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v12, 0x0

    #@230
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    #@232
    .line 554
    const/4 v12, 0x0

    #@233
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@235
    .line 555
    const/4 v12, 0x0

    #@236
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@238
    .line 556
    const/4 v12, 0x0

    #@239
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@23b
    .line 557
    const/4 v12, 0x0

    #@23c
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@23e
    .line 558
    const/4 v12, 0x0

    #@23f
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@241
    .line 559
    const/4 v12, 0x0

    #@242
    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@244
    .line 560
    const/4 v12, 0x0

    #@245
    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@247
    .line 561
    const/4 v12, 0x0

    #@248
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@24a
    .line 562
    const/4 v12, 0x0

    #@24b
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@24d
    .line 563
    return-void

    #@24e
    .line 583
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v6    # "childWindows":Lcom/android/server/wm/WindowList;
    .restart local v10    # "numChildWindows":I
    :cond_2
    const/4 v1, 0x0

    #@24f
    .line 584
    .local v1, "added":Z
    const/4 v9, 0x0

    #@250
    .local v9, "i":I
    :goto_8
    if-ge v9, v10, :cond_4

    #@252
    .line 585
    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@255
    move-result-object v12

    #@256
    check-cast v12, Lcom/android/server/wm/WindowState;

    #@258
    iget v5, v12, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@25a
    .line 586
    .local v5, "childSubLayer":I
    iget v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@25c
    if-lt v12, v5, :cond_3

    #@25e
    .line 587
    iget v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@260
    if-ne v12, v5, :cond_5

    #@262
    if-gez v5, :cond_5

    #@264
    .line 591
    :cond_3
    invoke-virtual {v6, v9, p0}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    #@267
    .line 592
    const/4 v1, 0x1

    #@268
    .line 596
    .end local v5    # "childSubLayer":I
    :cond_4
    if-nez v1, :cond_0

    #@26a
    .line 597
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    #@26d
    goto/16 :goto_1

    #@26f
    .line 584
    .restart local v5    # "childSubLayer":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    #@271
    goto :goto_8

    #@272
    .line 601
    .end local v1    # "added":Z
    .end local v5    # "childSubLayer":I
    .end local v9    # "i":I
    :cond_6
    const/4 v12, 0x0

    #@273
    goto :goto_2

    #@274
    .line 603
    :cond_7
    const/4 v12, 0x1

    #@275
    goto :goto_3

    #@276
    .line 604
    :cond_8
    const/4 v12, 0x0

    #@277
    goto :goto_3

    #@278
    .line 605
    :cond_9
    const/4 v12, 0x0

    #@279
    goto :goto_4

    #@27a
    .line 606
    :cond_a
    const/4 v12, 0x1

    #@27b
    goto :goto_5

    #@27c
    .line 610
    .end local v6    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v10    # "numChildWindows":I
    :cond_b
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@27e
    move-object/from16 v0, p8

    #@280
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@282
    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@285
    move-result v12

    #@286
    mul-int/lit16 v12, v12, 0x2710

    #@288
    add-int/lit16 v12, v12, 0x3e8

    #@28a
    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@28c
    .line 613
    const/4 v12, 0x0

    #@28d
    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@28f
    .line 614
    const/4 v12, 0x0

    #@290
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@292
    .line 615
    const/4 v12, 0x0

    #@293
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@295
    .line 616
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@297
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@299
    const/16 v13, 0x7db

    #@29b
    if-eq v12, v13, :cond_c

    #@29d
    .line 617
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@29f
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2a1
    const/16 v13, 0x7dc

    #@2a3
    if-ne v12, v13, :cond_d

    #@2a5
    const/4 v12, 0x1

    #@2a6
    .line 616
    :goto_9
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@2a8
    .line 618
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2aa
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@2ac
    const/16 v13, 0x7dd

    #@2ae
    if-ne v12, v13, :cond_e

    #@2b0
    const/4 v12, 0x1

    #@2b1
    :goto_a
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@2b3
    .line 619
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@2b5
    if-nez v12, :cond_f

    #@2b7
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@2b9
    :goto_b
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@2bb
    goto/16 :goto_6

    #@2bd
    .line 616
    :cond_c
    const/4 v12, 0x1

    #@2be
    goto :goto_9

    #@2bf
    .line 617
    :cond_d
    const/4 v12, 0x0

    #@2c0
    goto :goto_9

    #@2c1
    .line 618
    :cond_e
    const/4 v12, 0x0

    #@2c2
    goto :goto_a

    #@2c3
    .line 619
    :cond_f
    const/4 v12, 0x1

    #@2c4
    goto :goto_b

    #@2c5
    .line 626
    .restart local v4    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_10
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@2c7
    .line 627
    .local v3, "appToken":Lcom/android/server/wm/WindowToken;
    :goto_c
    iget-object v12, v3, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    #@2c9
    if-nez v12, :cond_11

    #@2cb
    .line 628
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2cd
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    #@2cf
    iget-object v13, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    #@2d1
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d4
    move-result-object v11

    #@2d5
    check-cast v11, Lcom/android/server/wm/WindowToken;

    #@2d7
    .line 629
    .local v11, "parent":Lcom/android/server/wm/WindowToken;
    if-eqz v11, :cond_11

    #@2d9
    if-ne v3, v11, :cond_13

    #@2db
    .line 634
    .end local v11    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_11
    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@2dd
    .line 635
    iget-object v12, v3, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    #@2df
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2e1
    .line 636
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2e3
    if-eqz v12, :cond_12

    #@2e5
    .line 637
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@2e8
    move-result-object v2

    #@2e9
    .line 638
    .local v2, "appDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p10

    #@2eb
    if-eq v0, v2, :cond_14

    #@2ed
    const/4 v12, 0x1

    #@2ee
    :goto_d
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@2f0
    .line 640
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2f2
    iget-boolean v12, v12, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    #@2f4
    if-eqz v12, :cond_12

    #@2f6
    .line 643
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2f8
    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2fa
    const/high16 v14, 0x80000

    #@2fc
    or-int/2addr v13, v14

    #@2fd
    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2ff
    .line 647
    .end local v2    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_12
    new-instance v12, Lcom/android/server/wm/WindowStateAnimator;

    #@301
    invoke-direct {v12, p0}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    #@304
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@306
    .line 648
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@308
    move-object/from16 v0, p8

    #@30a
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@30c
    iput v13, v12, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@30e
    .line 650
    const/4 v12, 0x0

    #@30f
    iput v12, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@311
    .line 651
    const/4 v12, 0x0

    #@312
    iput v12, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@314
    .line 652
    const/4 v12, 0x0

    #@315
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@317
    .line 653
    const/4 v12, 0x0

    #@318
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@31a
    .line 654
    const/4 v12, 0x0

    #@31b
    iput v12, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@31d
    .line 655
    const/4 v12, 0x0

    #@31e
    iput v12, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@320
    .line 656
    const/4 v12, 0x0

    #@321
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@323
    .line 657
    new-instance v13, Lcom/android/server/input/InputWindowHandle;

    #@325
    .line 658
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@327
    if-eqz v12, :cond_15

    #@329
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@32b
    iget-object v12, v12, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@32d
    .line 659
    :goto_e
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@330
    move-result v14

    #@331
    .line 657
    invoke-direct {v13, v12, p0, v14}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    #@334
    iput-object v13, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@336
    .line 518
    return-void

    #@337
    .line 632
    .restart local v11    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_13
    move-object v3, v11

    #@338
    goto :goto_c

    #@339
    .line 638
    .end local v11    # "parent":Lcom/android/server/wm/WindowToken;
    .restart local v2    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_14
    const/4 v12, 0x0

    #@33a
    goto :goto_d

    #@33b
    .line 658
    .end local v2    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_15
    const/4 v12, 0x0

    #@33c
    goto :goto_e
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "outRegion"    # Landroid/graphics/Region;
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "inset"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2234
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
    .line 2235
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
    .line 2233
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    #@17
    .line 2232
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
    .line 2429
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v10, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizing:Z

    #@8
    .line 2431
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@a
    .line 2432
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@d
    move-result-object v9

    #@e
    .line 2433
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
    .line 2431
    invoke-interface/range {v0 .. v11}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;ZZ)V

    #@24
    .line 2434
    const/4 v0, 0x1

    #@25
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    #@27
    .line 2428
    return-void

    #@28
    .line 2429
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
    .line 2324
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
    .line 2325
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
    .line 2326
    return-void

    #@1c
    .line 2328
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@1f
    move-result-object v2

    #@20
    .line 2329
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_2

    #@22
    .line 2330
    iget-object v0, v2, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@24
    .line 2332
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@26
    iget-object v1, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@28
    .line 2333
    .local v1, "serviceConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@2b
    .line 2334
    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@2d
    if-eq v0, v3, :cond_1

    #@2f
    .line 2335
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@32
    .line 2323
    :cond_1
    return-void

    #@33
    .line 2331
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
    .line 1184
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
    .line 1185
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
    .line 2038
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@3
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 2040
    return v3

    #@8
    .line 2043
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@a
    if-nez v2, :cond_1

    #@c
    .line 2044
    return v3

    #@d
    .line 2047
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@f
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@11
    and-int/lit16 v2, v2, 0x2000

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 2051
    return v3

    #@16
    .line 2054
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 2056
    return v3

    #@1d
    .line 2059
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@20
    move-result-object v0

    #@21
    .line 2060
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_4

    #@23
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inHomeStack()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_5

    #@29
    .line 2063
    :cond_4
    return v3

    #@2a
    .line 2066
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    #@2d
    move-result-object v1

    #@2e
    .line 2067
    .local v1, "taskTop":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_6

    #@30
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@32
    if-eq v1, v2, :cond_6

    #@34
    .line 2069
    return v3

    #@35
    .line 2072
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    #@37
    if-eqz v2, :cond_7

    #@39
    .line 2075
    return v3

    #@3a
    .line 2082
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
    .line 687
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
    .line 688
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
    .line 689
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
    .line 690
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
    .line 691
    .local v0, "bottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    #@40
    .line 686
    return-void
.end method

.method private updateConfiguration()Landroid/content/res/Configuration;
    .locals 2

    #@0
    .prologue
    .line 2313
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    #@3
    move-result v0

    #@4
    .line 2314
    .local v0, "configChanged":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@6
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->getMergedConfig(Landroid/content/res/Configuration;)V

    #@9
    .line 2315
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@c
    .line 2320
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@e
    return-object v1
.end method


# virtual methods
.method adjustStartingWindowFlags()V
    .locals 5

    #@0
    .prologue
    .line 1767
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
    .line 1768
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@d
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1772
    const v0, 0x480001

    #@14
    .line 1774
    .local v0, "mask":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@16
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    #@18
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1a
    .line 1775
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
    .line 1766
    .end local v0    # "mask":I
    .end local v1    # "sa":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method applyAdjustForImeIfNeeded()V
    .locals 2

    #@0
    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1678
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
    .line 1679
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@14
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskStack;->applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V

    #@17
    .line 1676
    :cond_0
    return-void
.end method

.method applyDimLayerIfNeeded()V
    .locals 4

    #@0
    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    .line 1602
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    #@4
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1603
    return-void

    #@9
    .line 1606
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@b
    if-nez v1, :cond_2

    #@d
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 1608
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
    .line 1597
    :cond_1
    :goto_0
    return-void

    #@1f
    .line 1609
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@21
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@23
    and-int/lit8 v1, v1, 0x2

    #@25
    if-eqz v1, :cond_1

    #@27
    .line 1610
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
    .line 1609
    if-eqz v1, :cond_1

    #@35
    .line 1611
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
    .line 2796
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    #@3
    move-result v12

    #@4
    .line 2797
    .local v12, "pw":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    #@7
    move-result v11

    #@8
    .line 2798
    .local v11, "ph":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@b
    move-result-object v13

    #@c
    .line 2799
    .local v13, "task":Lcom/android/server/wm/Task;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    #@f
    move-result v10

    #@10
    .line 2800
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
    .line 2809
    .local v9, "noLimits":Z
    :goto_0
    if-eqz v13, :cond_5

    #@1d
    if-eqz v10, :cond_5

    #@1f
    .line 2810
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
    .line 2814
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
    .line 2815
    move-object/from16 v0, p0

    #@34
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@36
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@38
    if-gez v1, :cond_7

    #@3a
    .line 2816
    move v2, v12

    #@3b
    .line 2822
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
    .line 2823
    move v3, v11

    #@44
    .line 2846
    .local v3, "h":I
    :goto_3
    move-object/from16 v0, p0

    #@46
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@48
    if-eqz v1, :cond_10

    #@4a
    .line 2847
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
    .line 2848
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
    .line 2854
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
    .line 2862
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    #@6e
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@70
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@72
    .line 2863
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
    .line 2864
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
    .line 2862
    invoke-static/range {v1 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    #@8f
    .line 2867
    if-eqz v8, :cond_2

    #@91
    .line 2868
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
    .line 2873
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
    .line 2874
    move-object/from16 v0, p0

    #@ad
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@af
    if-eqz v1, :cond_3

    #@b1
    .line 2876
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
    .line 2795
    :cond_3
    return-void

    #@bd
    .line 2800
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
    .line 2809
    :cond_5
    const/4 v8, 0x1

    #@c1
    .restart local v8    # "fitToDisplay":Z
    goto/16 :goto_1

    #@c3
    .line 2810
    .end local v8    # "fitToDisplay":Z
    :cond_6
    const/4 v8, 0x1

    #@c4
    .restart local v8    # "fitToDisplay":Z
    goto/16 :goto_1

    #@c6
    .line 2817
    :cond_7
    move-object/from16 v0, p0

    #@c8
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@ca
    if-eqz v1, :cond_8

    #@cc
    .line 2818
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
    .line 2820
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
    .line 2824
    :cond_9
    move-object/from16 v0, p0

    #@e8
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@ea
    if-eqz v1, :cond_a

    #@ec
    .line 2825
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
    .line 2827
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
    .line 2830
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
    .line 2831
    move v2, v12

    #@110
    .line 2837
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
    .line 2838
    move v3, v11

    #@11a
    .restart local v3    # "h":I
    goto/16 :goto_3

    #@11c
    .line 2832
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_c
    move-object/from16 v0, p0

    #@11e
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@120
    if-eqz v1, :cond_d

    #@122
    .line 2833
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
    .line 2835
    .end local v2    # "w":I
    :cond_d
    move-object/from16 v0, p0

    #@133
    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@135
    .restart local v2    # "w":I
    goto :goto_6

    #@136
    .line 2839
    :cond_e
    move-object/from16 v0, p0

    #@138
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@13a
    if-eqz v1, :cond_f

    #@13c
    .line 2840
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
    .line 2842
    .end local v3    # "h":I
    :cond_f
    move-object/from16 v0, p0

    #@14e
    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@150
    .restart local v3    # "h":I
    goto/16 :goto_3

    #@152
    .line 2850
    :cond_10
    move-object/from16 v0, p0

    #@154
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@156
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@158
    int-to-float v14, v1

    #@159
    .line 2851
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
    .line 2857
    :cond_11
    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    #@165
    move-result v2

    #@166
    .line 2858
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
    .line 1670
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1671
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@6
    .line 1672
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->applyScrollToWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    #@9
    .line 1669
    :cond_0
    return-void
.end method

.method attach()V
    .locals 1

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    #@5
    .line 662
    return-void
.end method

.method canReceiveKeys()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1855
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1856
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@9
    if-nez v1, :cond_0

    #@b
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 1855
    :cond_0
    :goto_0
    return v0

    #@10
    .line 1857
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@12
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@14
    and-int/lit8 v1, v1, 0x8

    #@16
    if-nez v1, :cond_0

    #@18
    .line 1858
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
    .line 1855
    if-eqz v1, :cond_0

    #@24
    .line 1859
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
    .line 2159
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
    .line 1717
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@4
    if-eq v0, v1, :cond_1

    #@6
    .line 1722
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@8
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@a
    .line 1723
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    #@d
    .line 1724
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@f
    if-nez v0, :cond_1

    #@11
    .line 1725
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@13
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@15
    if-ne v0, p0, :cond_0

    #@17
    .line 1728
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19
    const/4 v1, 0x1

    #@1a
    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@1c
    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    #@21
    .line 1716
    :cond_1
    return-void
.end method

.method clearAnimatingWithSavedSurface()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2175
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2180
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@7
    .line 2181
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 2183
    :cond_0
    return v1
.end method

.method clearHasSavedSurface()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2167
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@3
    .line 2168
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@5
    .line 2169
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2170
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@b
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    #@e
    .line 2166
    :cond_0
    return-void
.end method

.method public clearVisibleBeforeClientHidden()V
    .locals 1

    #@0
    .prologue
    .line 2030
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@3
    .line 2029
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
    .line 2520
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@6
    move-result-object v0

    #@7
    .line 2521
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_0

    #@9
    .line 2522
    return v1

    #@a
    .line 2524
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
    .line 2527
    :cond_1
    return v1

    #@17
    .line 2529
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_3

    #@1d
    .line 2530
    return v2

    #@1e
    .line 2537
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
    .line 2538
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
    .line 2537
    :cond_4
    :goto_0
    return v1

    #@37
    .line 2539
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
    .line 697
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
    .line 704
    :cond_0
    const/16 v30, 0x1

    #@1a
    move/from16 v0, v30

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    #@20
    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@23
    move-result-object v26

    #@24
    .line 707
    .local v26, "task":Lcom/android/server/wm/Task;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    #@27
    move-result v30

    #@28
    if-eqz v30, :cond_d

    #@2a
    const/4 v10, 0x0

    #@2b
    .line 708
    .local v10, "fullscreenTask":Z
    :goto_0
    if-eqz v26, :cond_e

    #@2d
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/Task;->isFloating()Z

    #@30
    move-result v29

    #@31
    .line 713
    :goto_1
    if-eqz v10, :cond_f

    #@33
    .line 714
    move-object/from16 v0, p0

    #@35
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    #@37
    move-object/from16 v30, v0

    #@39
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    #@3c
    .line 729
    :goto_2
    if-nez v10, :cond_1

    #@3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    #@41
    move-result v30

    #@42
    if-eqz v30, :cond_10

    #@44
    .line 731
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
    .line 732
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
    .line 733
    move-object/from16 v16, p2

    #@60
    .line 734
    .local v16, "layoutDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v15, p1

    #@62
    .line 735
    .local v15, "layoutContainingFrame":Landroid/graphics/Rect;
    const/16 v17, 0x0

    #@64
    .line 736
    .local v17, "layoutXDiff":I
    const/16 v18, 0x0

    #@66
    .line 785
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
    .line 786
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
    .line 788
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
    .line 791
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
    .line 792
    const/16 v30, 0x1

    #@99
    move/from16 v0, v30

    #@9b
    move-object/from16 v1, p0

    #@9d
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@9f
    .line 794
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
    .line 795
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
    .line 796
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
    .line 797
    const/16 v30, 0x1

    #@dd
    move/from16 v0, v30

    #@df
    move-object/from16 v1, p0

    #@e1
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@e3
    .line 800
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
    .line 801
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
    .line 802
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
    .line 803
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
    .line 804
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
    .line 805
    if-eqz p8, :cond_1a

    #@126
    const/4 v12, 0x1

    #@127
    .line 806
    .local v12, "hasOutsets":Z
    :goto_4
    if-eqz v12, :cond_5

    #@129
    .line 807
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
    .line 810
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
    .line 811
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
    .line 813
    .local v8, "fh":I
    move-object/from16 v0, p0

    #@14c
    move-object/from16 v1, v16

    #@14e
    invoke-virtual {v0, v15, v1}, Lcom/android/server/wm/WindowState;->applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@151
    .line 816
    if-eqz v12, :cond_1b

    #@153
    .line 817
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
    .line 818
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
    .line 819
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
    .line 820
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
    .line 817
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@1dc
    .line 827
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
    .line 846
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
    .line 847
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
    .line 848
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
    .line 849
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
    .line 850
    const/16 v30, 0x1

    #@234
    move/from16 v0, v30

    #@236
    move-object/from16 v1, p0

    #@238
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    #@23a
    .line 869
    :cond_7
    :goto_6
    if-eqz v10, :cond_8

    #@23c
    if-eqz v29, :cond_1e

    #@23e
    .line 878
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
    .line 881
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
    .line 882
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
    .line 883
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
    .line 884
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
    .line 881
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@2db
    .line 888
    move-object/from16 v0, p0

    #@2dd
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@2df
    move-object/from16 v30, v0

    #@2e1
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    #@2e4
    .line 889
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@2e8
    move-object/from16 v30, v0

    #@2ea
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    #@2ed
    .line 919
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
    .line 920
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
    .line 921
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
    .line 922
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
    .line 923
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
    .line 925
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
    .line 926
    move-object/from16 v0, p0

    #@35d
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@35f
    move/from16 v30, v0

    #@361
    if-eqz v30, :cond_9

    #@363
    .line 930
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
    .line 931
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
    .line 932
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
    .line 933
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
    .line 934
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
    .line 938
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
    .line 941
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
    .line 942
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3e4
    move-result-object v5

    #@3e5
    .line 943
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v5, :cond_b

    #@3e7
    .line 944
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@3ea
    move-result-object v6

    #@3eb
    .line 945
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
    .line 946
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
    .line 945
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
    .line 696
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_b
    return-void

    #@40f
    .line 702
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
    .line 707
    .restart local v26    # "task":Lcom/android/server/wm/Task;
    :cond_d
    const/4 v10, 0x1

    #@411
    .restart local v10    # "fullscreenTask":Z
    goto/16 :goto_0

    #@413
    .line 708
    :cond_e
    const/16 v29, 0x0

    #@415
    .local v29, "windowsAreFloating":Z
    goto/16 :goto_1

    #@417
    .line 716
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
    .line 738
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
    .line 739
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
    .line 747
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
    .line 749
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
    .line 750
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
    .line 753
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
    .line 762
    :cond_12
    :goto_a
    if-eqz v29, :cond_13

    #@4b5
    .line 766
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
    .line 767
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
    .line 770
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
    .line 771
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
    .line 772
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
    .line 773
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
    .line 774
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
    .line 775
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
    .line 774
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
    .line 776
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
    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    #@58a
    move-result v30

    #@58b
    if-nez v30, :cond_14

    #@58d
    .line 778
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
    .line 779
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
    .line 781
    :cond_14
    move-object/from16 v16, p2

    #@5bd
    .line 782
    .restart local v16    # "layoutDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    #@5bf
    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@5c2
    goto/16 :goto_3

    #@5c4
    .line 743
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
    .line 744
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
    .line 745
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
    .line 754
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
    .line 758
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
    .line 771
    :cond_17
    const/16 v17, 0x0

    #@642
    .restart local v17    # "layoutXDiff":I
    goto/16 :goto_b

    #@644
    .line 772
    :cond_18
    const/16 v18, 0x0

    #@646
    .restart local v18    # "layoutYDiff":I
    goto/16 :goto_c

    #@648
    .line 773
    :cond_19
    move-object/from16 v0, p0

    #@64a
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@64c
    .restart local v15    # "layoutContainingFrame":Landroid/graphics/Rect;
    goto/16 :goto_d

    #@64e
    .line 805
    .end local v14    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v16    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .restart local v24    # "ph":I
    .restart local v25    # "pw":I
    :cond_1a
    const/4 v12, 0x0

    #@64f
    goto/16 :goto_4

    #@651
    .line 822
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
    .line 831
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
    .line 832
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
    .line 833
    .local v28, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@697
    move-result-object v30

    #@698
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@69b
    move-result-object v7

    #@69c
    .line 835
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v30, 0x20

    #@69e
    .line 834
    move/from16 v0, v30

    #@6a0
    invoke-static {v0, v7}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@6a3
    move-result v30

    #@6a4
    move/from16 v0, v30

    #@6a6
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    #@6a9
    move-result v20

    #@6aa
    .line 837
    .local v20, "minVisibleHeight":I
    const/16 v30, 0x30

    #@6ac
    .line 836
    move/from16 v0, v30

    #@6ae
    invoke-static {v0, v7}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@6b1
    move-result v30

    #@6b2
    move/from16 v0, v28

    #@6b4
    move/from16 v1, v30

    #@6b6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@6b9
    move-result v21

    #@6ba
    .line 838
    .local v21, "minVisibleWidth":I
    move-object/from16 v0, p0

    #@6bc
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@6be
    move-object/from16 v30, v0

    #@6c0
    move-object/from16 v0, v30

    #@6c2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@6c4
    move/from16 v30, v0

    #@6c6
    .line 839
    move-object/from16 v0, p0

    #@6c8
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@6ca
    move-object/from16 v31, v0

    #@6cc
    move-object/from16 v0, v31

    #@6ce
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@6d0
    move/from16 v31, v0

    #@6d2
    move-object/from16 v0, p0

    #@6d4
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@6d6
    move-object/from16 v32, v0

    #@6d8
    move-object/from16 v0, v32

    #@6da
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@6dc
    move/from16 v32, v0

    #@6de
    sub-int v32, v32, v20

    #@6e0
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    #@6e3
    move-result v31

    #@6e4
    .line 838
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@6e7
    move-result v27

    #@6e8
    .line 840
    .local v27, "top":I
    move-object/from16 v0, p0

    #@6ea
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@6ec
    move-object/from16 v30, v0

    #@6ee
    move-object/from16 v0, v30

    #@6f0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@6f2
    move/from16 v30, v0

    #@6f4
    add-int v30, v30, v21

    #@6f6
    sub-int v30, v30, v28

    #@6f8
    .line 841
    move-object/from16 v0, p0

    #@6fa
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@6fc
    move-object/from16 v31, v0

    #@6fe
    move-object/from16 v0, v31

    #@700
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@702
    move/from16 v31, v0

    #@704
    move-object/from16 v0, p0

    #@706
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@708
    move-object/from16 v32, v0

    #@70a
    move-object/from16 v0, v32

    #@70c
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@70e
    move/from16 v32, v0

    #@710
    sub-int v32, v32, v21

    #@712
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    #@715
    move-result v31

    #@716
    .line 840
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@719
    move-result v19

    #@71a
    .line 842
    .local v19, "left":I
    move-object/from16 v0, p0

    #@71c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@71e
    move-object/from16 v30, v0

    #@720
    add-int v31, v19, v28

    #@722
    add-int v32, v27, v13

    #@724
    move-object/from16 v0, v30

    #@726
    move/from16 v1, v19

    #@728
    move/from16 v2, v27

    #@72a
    move/from16 v3, v31

    #@72c
    move/from16 v4, v32

    #@72e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@731
    .line 843
    move-object/from16 v0, p0

    #@733
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@735
    move-object/from16 v30, v0

    #@737
    move-object/from16 v0, p0

    #@739
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@73b
    move-object/from16 v31, v0

    #@73d
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@740
    .line 844
    move-object/from16 v0, p0

    #@742
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@744
    move-object/from16 v30, v0

    #@746
    move-object/from16 v0, p0

    #@748
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@74a
    move-object/from16 v31, v0

    #@74c
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@74f
    .line 845
    move-object/from16 v0, p0

    #@751
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@753
    move-object/from16 v30, v0

    #@755
    move-object/from16 v0, p0

    #@757
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@759
    move-object/from16 v31, v0

    #@75b
    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@75e
    goto/16 :goto_6

    #@760
    .line 853
    .end local v7    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v13    # "height":I
    .end local v19    # "left":I
    .end local v20    # "minVisibleHeight":I
    .end local v21    # "minVisibleWidth":I
    .end local v27    # "top":I
    .end local v28    # "width":I
    :cond_1d
    move-object/from16 v0, p0

    #@762
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@764
    move-object/from16 v30, v0

    #@766
    move-object/from16 v0, p0

    #@768
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@76a
    move-object/from16 v31, v0

    #@76c
    move-object/from16 v0, v31

    #@76e
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@770
    move/from16 v31, v0

    #@772
    move-object/from16 v0, p0

    #@774
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@776
    move-object/from16 v32, v0

    #@778
    move-object/from16 v0, v32

    #@77a
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@77c
    move/from16 v32, v0

    #@77e
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@781
    move-result v31

    #@782
    .line 854
    move-object/from16 v0, p0

    #@784
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@786
    move-object/from16 v32, v0

    #@788
    move-object/from16 v0, v32

    #@78a
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@78c
    move/from16 v32, v0

    #@78e
    move-object/from16 v0, p0

    #@790
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@792
    move-object/from16 v33, v0

    #@794
    move-object/from16 v0, v33

    #@796
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@798
    move/from16 v33, v0

    #@79a
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    #@79d
    move-result v32

    #@79e
    .line 855
    move-object/from16 v0, p0

    #@7a0
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@7a2
    move-object/from16 v33, v0

    #@7a4
    move-object/from16 v0, v33

    #@7a6
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@7a8
    move/from16 v33, v0

    #@7aa
    move-object/from16 v0, p0

    #@7ac
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@7ae
    move-object/from16 v34, v0

    #@7b0
    move-object/from16 v0, v34

    #@7b2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@7b4
    move/from16 v34, v0

    #@7b6
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    #@7b9
    move-result v33

    #@7ba
    .line 856
    move-object/from16 v0, p0

    #@7bc
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@7be
    move-object/from16 v34, v0

    #@7c0
    move-object/from16 v0, v34

    #@7c2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@7c4
    move/from16 v34, v0

    #@7c6
    move-object/from16 v0, p0

    #@7c8
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@7ca
    move-object/from16 v35, v0

    #@7cc
    move-object/from16 v0, v35

    #@7ce
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@7d0
    move/from16 v35, v0

    #@7d2
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    #@7d5
    move-result v34

    #@7d6
    .line 853
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@7d9
    .line 858
    move-object/from16 v0, p0

    #@7db
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@7dd
    move-object/from16 v30, v0

    #@7df
    move-object/from16 v0, p0

    #@7e1
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@7e3
    move-object/from16 v31, v0

    #@7e5
    move-object/from16 v0, v31

    #@7e7
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@7e9
    move/from16 v31, v0

    #@7eb
    move-object/from16 v0, p0

    #@7ed
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@7ef
    move-object/from16 v32, v0

    #@7f1
    move-object/from16 v0, v32

    #@7f3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@7f5
    move/from16 v32, v0

    #@7f7
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@7fa
    move-result v31

    #@7fb
    .line 859
    move-object/from16 v0, p0

    #@7fd
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@7ff
    move-object/from16 v32, v0

    #@801
    move-object/from16 v0, v32

    #@803
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@805
    move/from16 v32, v0

    #@807
    move-object/from16 v0, p0

    #@809
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@80b
    move-object/from16 v33, v0

    #@80d
    move-object/from16 v0, v33

    #@80f
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@811
    move/from16 v33, v0

    #@813
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    #@816
    move-result v32

    #@817
    .line 860
    move-object/from16 v0, p0

    #@819
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@81b
    move-object/from16 v33, v0

    #@81d
    move-object/from16 v0, v33

    #@81f
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@821
    move/from16 v33, v0

    #@823
    move-object/from16 v0, p0

    #@825
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@827
    move-object/from16 v34, v0

    #@829
    move-object/from16 v0, v34

    #@82b
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@82d
    move/from16 v34, v0

    #@82f
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    #@832
    move-result v33

    #@833
    .line 861
    move-object/from16 v0, p0

    #@835
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@837
    move-object/from16 v34, v0

    #@839
    move-object/from16 v0, v34

    #@83b
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@83d
    move/from16 v34, v0

    #@83f
    move-object/from16 v0, p0

    #@841
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@843
    move-object/from16 v35, v0

    #@845
    move-object/from16 v0, v35

    #@847
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@849
    move/from16 v35, v0

    #@84b
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    #@84e
    move-result v34

    #@84f
    .line 858
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@852
    .line 863
    move-object/from16 v0, p0

    #@854
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@856
    move-object/from16 v30, v0

    #@858
    move-object/from16 v0, p0

    #@85a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@85c
    move-object/from16 v31, v0

    #@85e
    move-object/from16 v0, v31

    #@860
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@862
    move/from16 v31, v0

    #@864
    move-object/from16 v0, p0

    #@866
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@868
    move-object/from16 v32, v0

    #@86a
    move-object/from16 v0, v32

    #@86c
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@86e
    move/from16 v32, v0

    #@870
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@873
    move-result v31

    #@874
    .line 864
    move-object/from16 v0, p0

    #@876
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@878
    move-object/from16 v32, v0

    #@87a
    move-object/from16 v0, v32

    #@87c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@87e
    move/from16 v32, v0

    #@880
    move-object/from16 v0, p0

    #@882
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@884
    move-object/from16 v33, v0

    #@886
    move-object/from16 v0, v33

    #@888
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@88a
    move/from16 v33, v0

    #@88c
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    #@88f
    move-result v32

    #@890
    .line 865
    move-object/from16 v0, p0

    #@892
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@894
    move-object/from16 v33, v0

    #@896
    move-object/from16 v0, v33

    #@898
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@89a
    move/from16 v33, v0

    #@89c
    move-object/from16 v0, p0

    #@89e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@8a0
    move-object/from16 v34, v0

    #@8a2
    move-object/from16 v0, v34

    #@8a4
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@8a6
    move/from16 v34, v0

    #@8a8
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->min(II)I

    #@8ab
    move-result v33

    #@8ac
    .line 866
    move-object/from16 v0, p0

    #@8ae
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@8b0
    move-object/from16 v34, v0

    #@8b2
    move-object/from16 v0, v34

    #@8b4
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@8b6
    move/from16 v34, v0

    #@8b8
    move-object/from16 v0, p0

    #@8ba
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@8bc
    move-object/from16 v35, v0

    #@8be
    move-object/from16 v0, v35

    #@8c0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@8c2
    move/from16 v35, v0

    #@8c4
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    #@8c7
    move-result v34

    #@8c8
    .line 863
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@8cb
    goto/16 :goto_6

    #@8cd
    .line 872
    :cond_1e
    move-object/from16 v0, p0

    #@8cf
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@8d1
    move-object/from16 v30, v0

    #@8d3
    move-object/from16 v0, p0

    #@8d5
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@8d7
    move-object/from16 v31, v0

    #@8d9
    move-object/from16 v0, v31

    #@8db
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@8dd
    move/from16 v31, v0

    #@8df
    iget v0, v15, Landroid/graphics/Rect;->left:I

    #@8e1
    move/from16 v32, v0

    #@8e3
    sub-int v31, v31, v32

    #@8e5
    const/16 v32, 0x0

    #@8e7
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    #@8ea
    move-result v31

    #@8eb
    .line 873
    move-object/from16 v0, p0

    #@8ed
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@8ef
    move-object/from16 v32, v0

    #@8f1
    move-object/from16 v0, v32

    #@8f3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@8f5
    move/from16 v32, v0

    #@8f7
    iget v0, v15, Landroid/graphics/Rect;->top:I

    #@8f9
    move/from16 v33, v0

    #@8fb
    sub-int v32, v32, v33

    #@8fd
    const/16 v33, 0x0

    #@8ff
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    #@902
    move-result v32

    #@903
    .line 874
    iget v0, v15, Landroid/graphics/Rect;->right:I

    #@905
    move/from16 v33, v0

    #@907
    move-object/from16 v0, p0

    #@909
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@90b
    move-object/from16 v34, v0

    #@90d
    move-object/from16 v0, v34

    #@90f
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@911
    move/from16 v34, v0

    #@913
    sub-int v33, v33, v34

    #@915
    const/16 v34, 0x0

    #@917
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    #@91a
    move-result v33

    #@91b
    .line 875
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    #@91d
    move/from16 v34, v0

    #@91f
    move-object/from16 v0, p0

    #@921
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@923
    move-object/from16 v35, v0

    #@925
    move-object/from16 v0, v35

    #@927
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@929
    move/from16 v35, v0

    #@92b
    sub-int v34, v34, v35

    #@92d
    const/16 v35, 0x0

    #@92f
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->max(II)I

    #@932
    move-result v34

    #@933
    .line 872
    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    #@936
    goto/16 :goto_7

    #@938
    .line 891
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@93b
    move-result-object v30

    #@93c
    move-object/from16 v0, p0

    #@93e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@940
    move-object/from16 v31, v0

    #@942
    invoke-virtual/range {v30 .. v31}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@945
    .line 894
    if-nez v10, :cond_20

    #@947
    move-object/from16 v0, p0

    #@949
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@94b
    move-object/from16 v30, v0

    #@94d
    move-object/from16 v0, v30

    #@94f
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@951
    move/from16 v30, v0

    #@953
    move-object/from16 v0, p0

    #@955
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@957
    move-object/from16 v31, v0

    #@959
    move-object/from16 v0, v31

    #@95b
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@95d
    move/from16 v31, v0

    #@95f
    move/from16 v0, v30

    #@961
    move/from16 v1, v31

    #@963
    if-le v0, v1, :cond_20

    #@965
    const/16 v23, 0x1

    #@967
    .line 895
    .local v23, "overrideRightInset":Z
    :goto_e
    if-nez v10, :cond_21

    #@969
    move-object/from16 v0, p0

    #@96b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@96d
    move-object/from16 v30, v0

    #@96f
    move-object/from16 v0, v30

    #@971
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@973
    move/from16 v30, v0

    #@975
    move-object/from16 v0, p0

    #@977
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@979
    move-object/from16 v31, v0

    #@97b
    move-object/from16 v0, v31

    #@97d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@97f
    move/from16 v31, v0

    #@981
    move/from16 v0, v30

    #@983
    move/from16 v1, v31

    #@985
    if-le v0, v1, :cond_21

    #@987
    const/16 v22, 0x1

    #@989
    .line 896
    .local v22, "overrideBottomInset":Z
    :goto_f
    move-object/from16 v0, p0

    #@98b
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@98d
    move-object/from16 v32, v0

    #@98f
    move-object/from16 v0, p0

    #@991
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@993
    move-object/from16 v30, v0

    #@995
    move-object/from16 v0, v30

    #@997
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@999
    move/from16 v30, v0

    #@99b
    move-object/from16 v0, p0

    #@99d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@99f
    move-object/from16 v31, v0

    #@9a1
    move-object/from16 v0, v31

    #@9a3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@9a5
    move/from16 v31, v0

    #@9a7
    sub-int v33, v30, v31

    #@9a9
    .line 897
    move-object/from16 v0, p0

    #@9ab
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@9ad
    move-object/from16 v30, v0

    #@9af
    move-object/from16 v0, v30

    #@9b1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@9b3
    move/from16 v30, v0

    #@9b5
    move-object/from16 v0, p0

    #@9b7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@9b9
    move-object/from16 v31, v0

    #@9bb
    move-object/from16 v0, v31

    #@9bd
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@9bf
    move/from16 v31, v0

    #@9c1
    sub-int v34, v30, v31

    #@9c3
    .line 898
    if-eqz v23, :cond_22

    #@9c5
    move-object/from16 v0, p0

    #@9c7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@9c9
    move-object/from16 v30, v0

    #@9cb
    move-object/from16 v0, v30

    #@9cd
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@9cf
    move/from16 v30, v0

    #@9d1
    move-object/from16 v0, p0

    #@9d3
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@9d5
    move-object/from16 v31, v0

    #@9d7
    move-object/from16 v0, v31

    #@9d9
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@9db
    move/from16 v31, v0

    #@9dd
    sub-int v30, v30, v31

    #@9df
    move/from16 v31, v30

    #@9e1
    .line 900
    :goto_10
    if-eqz v22, :cond_23

    #@9e3
    move-object/from16 v0, p0

    #@9e5
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@9e7
    move-object/from16 v30, v0

    #@9e9
    move-object/from16 v0, v30

    #@9eb
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@9ed
    move/from16 v30, v0

    #@9ef
    move-object/from16 v0, p0

    #@9f1
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@9f3
    move-object/from16 v35, v0

    #@9f5
    move-object/from16 v0, v35

    #@9f7
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@9f9
    move/from16 v35, v0

    #@9fb
    sub-int v30, v30, v35

    #@9fd
    .line 896
    :goto_11
    move-object/from16 v0, v32

    #@9ff
    move/from16 v1, v33

    #@a01
    move/from16 v2, v34

    #@a03
    move/from16 v3, v31

    #@a05
    move/from16 v4, v30

    #@a07
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@a0a
    .line 903
    move-object/from16 v0, p0

    #@a0c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@a0e
    move-object/from16 v32, v0

    #@a10
    move-object/from16 v0, p0

    #@a12
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@a14
    move-object/from16 v30, v0

    #@a16
    move-object/from16 v0, v30

    #@a18
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@a1a
    move/from16 v30, v0

    #@a1c
    move-object/from16 v0, p0

    #@a1e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@a20
    move-object/from16 v31, v0

    #@a22
    move-object/from16 v0, v31

    #@a24
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@a26
    move/from16 v31, v0

    #@a28
    sub-int v33, v30, v31

    #@a2a
    .line 904
    move-object/from16 v0, p0

    #@a2c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@a2e
    move-object/from16 v30, v0

    #@a30
    move-object/from16 v0, v30

    #@a32
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@a34
    move/from16 v30, v0

    #@a36
    move-object/from16 v0, p0

    #@a38
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@a3a
    move-object/from16 v31, v0

    #@a3c
    move-object/from16 v0, v31

    #@a3e
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@a40
    move/from16 v31, v0

    #@a42
    sub-int v34, v30, v31

    #@a44
    .line 905
    if-eqz v23, :cond_24

    #@a46
    move-object/from16 v0, p0

    #@a48
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@a4a
    move-object/from16 v30, v0

    #@a4c
    move-object/from16 v0, v30

    #@a4e
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@a50
    move/from16 v30, v0

    #@a52
    move-object/from16 v0, p0

    #@a54
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@a56
    move-object/from16 v31, v0

    #@a58
    move-object/from16 v0, v31

    #@a5a
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@a5c
    move/from16 v31, v0

    #@a5e
    sub-int v30, v30, v31

    #@a60
    move/from16 v31, v30

    #@a62
    .line 907
    :goto_12
    if-eqz v22, :cond_25

    #@a64
    move-object/from16 v0, p0

    #@a66
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@a68
    move-object/from16 v30, v0

    #@a6a
    move-object/from16 v0, v30

    #@a6c
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@a6e
    move/from16 v30, v0

    #@a70
    move-object/from16 v0, p0

    #@a72
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@a74
    move-object/from16 v35, v0

    #@a76
    move-object/from16 v0, v35

    #@a78
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@a7a
    move/from16 v35, v0

    #@a7c
    sub-int v30, v30, v35

    #@a7e
    .line 903
    :goto_13
    move-object/from16 v0, v32

    #@a80
    move/from16 v1, v33

    #@a82
    move/from16 v2, v34

    #@a84
    move/from16 v3, v31

    #@a86
    move/from16 v4, v30

    #@a88
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@a8b
    .line 910
    move-object/from16 v0, p0

    #@a8d
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@a8f
    move-object/from16 v32, v0

    #@a91
    move-object/from16 v0, p0

    #@a93
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@a95
    move-object/from16 v30, v0

    #@a97
    move-object/from16 v0, v30

    #@a99
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@a9b
    move/from16 v30, v0

    #@a9d
    move-object/from16 v0, p0

    #@a9f
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@aa1
    move-object/from16 v31, v0

    #@aa3
    move-object/from16 v0, v31

    #@aa5
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@aa7
    move/from16 v31, v0

    #@aa9
    sub-int v30, v30, v31

    #@aab
    const/16 v31, 0x0

    #@aad
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@ab0
    move-result v33

    #@ab1
    .line 911
    move-object/from16 v0, p0

    #@ab3
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@ab5
    move-object/from16 v30, v0

    #@ab7
    move-object/from16 v0, v30

    #@ab9
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@abb
    move/from16 v30, v0

    #@abd
    move-object/from16 v0, p0

    #@abf
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@ac1
    move-object/from16 v31, v0

    #@ac3
    move-object/from16 v0, v31

    #@ac5
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@ac7
    move/from16 v31, v0

    #@ac9
    sub-int v30, v30, v31

    #@acb
    const/16 v31, 0x0

    #@acd
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@ad0
    move-result v34

    #@ad1
    .line 912
    if-eqz v23, :cond_26

    #@ad3
    move-object/from16 v0, p0

    #@ad5
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@ad7
    move-object/from16 v30, v0

    #@ad9
    move-object/from16 v0, v30

    #@adb
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@add
    move/from16 v30, v0

    #@adf
    move-object/from16 v0, p0

    #@ae1
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@ae3
    move-object/from16 v31, v0

    #@ae5
    move-object/from16 v0, v31

    #@ae7
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@ae9
    move/from16 v31, v0

    #@aeb
    sub-int v30, v30, v31

    #@aed
    const/16 v31, 0x0

    #@aef
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@af2
    move-result v30

    #@af3
    move/from16 v31, v30

    #@af5
    .line 914
    :goto_14
    if-eqz v22, :cond_27

    #@af7
    move-object/from16 v0, p0

    #@af9
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@afb
    move-object/from16 v30, v0

    #@afd
    move-object/from16 v0, v30

    #@aff
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@b01
    move/from16 v30, v0

    #@b03
    move-object/from16 v0, p0

    #@b05
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@b07
    move-object/from16 v35, v0

    #@b09
    move-object/from16 v0, v35

    #@b0b
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@b0d
    move/from16 v35, v0

    #@b0f
    sub-int v30, v30, v35

    #@b11
    const/16 v35, 0x0

    #@b13
    move/from16 v0, v30

    #@b15
    move/from16 v1, v35

    #@b17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b1a
    move-result v30

    #@b1b
    .line 910
    :goto_15
    move-object/from16 v0, v32

    #@b1d
    move/from16 v1, v33

    #@b1f
    move/from16 v2, v34

    #@b21
    move/from16 v3, v31

    #@b23
    move/from16 v4, v30

    #@b25
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@b28
    goto/16 :goto_8

    #@b2a
    .line 894
    .end local v22    # "overrideBottomInset":Z
    .end local v23    # "overrideRightInset":Z
    :cond_20
    const/16 v23, 0x0

    #@b2c
    .restart local v23    # "overrideRightInset":Z
    goto/16 :goto_e

    #@b2e
    .line 895
    :cond_21
    const/16 v22, 0x0

    #@b30
    .restart local v22    # "overrideBottomInset":Z
    goto/16 :goto_f

    #@b32
    .line 899
    :cond_22
    move-object/from16 v0, p0

    #@b34
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b36
    move-object/from16 v30, v0

    #@b38
    move-object/from16 v0, v30

    #@b3a
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@b3c
    move/from16 v30, v0

    #@b3e
    move-object/from16 v0, p0

    #@b40
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@b42
    move-object/from16 v31, v0

    #@b44
    move-object/from16 v0, v31

    #@b46
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@b48
    move/from16 v31, v0

    #@b4a
    sub-int v30, v30, v31

    #@b4c
    move/from16 v31, v30

    #@b4e
    goto/16 :goto_10

    #@b50
    .line 901
    :cond_23
    move-object/from16 v0, p0

    #@b52
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b54
    move-object/from16 v30, v0

    #@b56
    move-object/from16 v0, v30

    #@b58
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@b5a
    move/from16 v30, v0

    #@b5c
    move-object/from16 v0, p0

    #@b5e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@b60
    move-object/from16 v35, v0

    #@b62
    move-object/from16 v0, v35

    #@b64
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@b66
    move/from16 v35, v0

    #@b68
    sub-int v30, v30, v35

    #@b6a
    goto/16 :goto_11

    #@b6c
    .line 906
    :cond_24
    move-object/from16 v0, p0

    #@b6e
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b70
    move-object/from16 v30, v0

    #@b72
    move-object/from16 v0, v30

    #@b74
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@b76
    move/from16 v30, v0

    #@b78
    move-object/from16 v0, p0

    #@b7a
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@b7c
    move-object/from16 v31, v0

    #@b7e
    move-object/from16 v0, v31

    #@b80
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@b82
    move/from16 v31, v0

    #@b84
    sub-int v30, v30, v31

    #@b86
    move/from16 v31, v30

    #@b88
    goto/16 :goto_12

    #@b8a
    .line 908
    :cond_25
    move-object/from16 v0, p0

    #@b8c
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@b8e
    move-object/from16 v30, v0

    #@b90
    move-object/from16 v0, v30

    #@b92
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@b94
    move/from16 v30, v0

    #@b96
    move-object/from16 v0, p0

    #@b98
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@b9a
    move-object/from16 v35, v0

    #@b9c
    move-object/from16 v0, v35

    #@b9e
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@ba0
    move/from16 v35, v0

    #@ba2
    sub-int v30, v30, v35

    #@ba4
    goto/16 :goto_13

    #@ba6
    .line 913
    :cond_26
    move-object/from16 v0, p0

    #@ba8
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@baa
    move-object/from16 v30, v0

    #@bac
    move-object/from16 v0, v30

    #@bae
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@bb0
    move/from16 v30, v0

    #@bb2
    move-object/from16 v0, p0

    #@bb4
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@bb6
    move-object/from16 v31, v0

    #@bb8
    move-object/from16 v0, v31

    #@bba
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@bbc
    move/from16 v31, v0

    #@bbe
    sub-int v30, v30, v31

    #@bc0
    const/16 v31, 0x0

    #@bc2
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    #@bc5
    move-result v30

    #@bc6
    move/from16 v31, v30

    #@bc8
    goto/16 :goto_14

    #@bca
    .line 915
    :cond_27
    move-object/from16 v0, p0

    #@bcc
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@bce
    move-object/from16 v30, v0

    #@bd0
    move-object/from16 v0, v30

    #@bd2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@bd4
    move/from16 v30, v0

    #@bd6
    move-object/from16 v0, p0

    #@bd8
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@bda
    move-object/from16 v35, v0

    #@bdc
    move-object/from16 v0, v35

    #@bde
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@be0
    move/from16 v35, v0

    #@be2
    sub-int v30, v30, v35

    #@be4
    const/16 v35, 0x0

    #@be6
    move/from16 v0, v30

    #@be8
    move/from16 v1, v35

    #@bea
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@bed
    move-result v30

    #@bee
    goto/16 :goto_15
.end method

.method cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 2262
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v1

    #@4
    .line 2263
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 2267
    iget-object v0, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@e
    .line 2268
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_1

    #@10
    .line 2269
    return-void

    #@11
    .line 2264
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    return-void

    #@12
    .line 2272
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@14
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@17
    .line 2273
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@19
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    #@1b
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@1e
    .line 2261
    return-void
.end method

.method destroyOrSaveSurface()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2088
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->shouldSaveSurface()Z

    #@4
    move-result v0

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@7
    .line 2089
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 2095
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@d
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@f
    sget-object v2, Lcom/android/server/wm/WindowState;->sEmptyRegion:Landroid/graphics/Region;

    #@11
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Session;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    #@14
    .line 2097
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@16
    const-string/jumbo v1, "saved surface"

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    #@1c
    .line 2098
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1e
    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@20
    .line 2099
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@23
    .line 2103
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@25
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 2104
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2b
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@2d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->disconnectInTransaction()V

    #@30
    .line 2106
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@32
    .line 2112
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@34
    .line 2087
    return-void

    #@35
    .line 2108
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@37
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@3a
    goto :goto_0
.end method

.method destroySavedSurface()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2116
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2120
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@a
    .line 2121
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@c
    .line 2123
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@e
    .line 2115
    return-void
.end method

.method disposeInputChannel()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1579
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1580
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->dispose()V

    #@a
    .line 1581
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    #@c
    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1586
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@14
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    #@19
    .line 1587
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@1b
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@1e
    .line 1588
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@20
    .line 1590
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 1591
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@26
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@29
    .line 1592
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@2b
    .line 1594
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@2d
    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@2f
    .line 1578
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
    .line 2568
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@a
    move-result-object v1

    #@b
    .line 2569
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
    .line 2570
    if-eqz v1, :cond_0

    #@1d
    .line 2571
    const-string/jumbo v3, " stackId="

    #@20
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    iget v3, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@25
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@28
    .line 2573
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 2574
    const-string/jumbo v3, " mNotOnAppsDisplay="

    #@2f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@34
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@37
    .line 2576
    :cond_1
    const-string/jumbo v3, " mSession="

    #@3a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@3f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@42
    .line 2577
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
    .line 2578
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
    .line 2579
    const-string/jumbo v3, " mShowToOwnerOnly="

    #@62
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    #@67
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@6a
    .line 2580
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
    .line 2581
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
    .line 2582
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
    .line 2583
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
    .line 2584
    const-string/jumbo v3, " h="

    #@a5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@aa
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@ad
    .line 2585
    const-string/jumbo v3, " mLayoutSeq="

    #@b0
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    #@b5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    #@b8
    .line 2586
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
    .line 2587
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
    .line 2588
    const-string/jumbo v3, " h="

    #@d5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@da
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    #@dd
    .line 2590
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
    .line 2591
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
    .line 2592
    const-string/jumbo v3, " mLayoutAttached="

    #@f8
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fb
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@fd
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@100
    .line 2594
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
    .line 2595
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
    .line 2596
    const-string/jumbo v3, " mIsWallpaper="

    #@11d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@122
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@125
    .line 2597
    const-string/jumbo v3, " mIsFloatingLayer="

    #@128
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12b
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@12d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@130
    .line 2598
    const-string/jumbo v3, " mWallpaperVisible="

    #@133
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@138
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@13b
    .line 2600
    :cond_7
    if-eqz p3, :cond_9

    #@13d
    .line 2601
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
    .line 2602
    const-string/jumbo v3, " mSubLayer="

    #@14e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@151
    iget v3, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@153
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@156
    .line 2603
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
    .line 2604
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@169
    if-eqz v3, :cond_29

    #@16b
    .line 2605
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@16d
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@16f
    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@171
    .line 2604
    :cond_8
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@174
    .line 2607
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
    .line 2608
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
    .line 2610
    :cond_9
    if-eqz p3, :cond_c

    #@190
    .line 2611
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
    .line 2612
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
    .line 2613
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1ae
    if-eqz v2, :cond_a

    #@1b0
    .line 2614
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
    .line 2615
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c1
    const-string/jumbo v2, " isAnimatingWithSavedSurface()="

    #@1c4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c7
    .line 2616
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    #@1ca
    move-result v2

    #@1cb
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@1ce
    .line 2617
    const-string/jumbo v2, " mAppDied="

    #@1d1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d4
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    #@1d6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@1d9
    .line 2619
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1db
    if-eqz v2, :cond_b

    #@1dd
    .line 2620
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
    .line 2622
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ee
    const-string/jumbo v2, "mViewVisibility=0x"

    #@1f1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f4
    .line 2623
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@1f6
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1f9
    move-result-object v2

    #@1fa
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fd
    .line 2624
    const-string/jumbo v2, " mHaveFrame="

    #@200
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@203
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    #@205
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@208
    .line 2625
    const-string/jumbo v2, " mObscured="

    #@20b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    #@210
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@213
    .line 2626
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
    .line 2627
    const-string/jumbo v2, " mSystemUiVisibility=0x"

    #@224
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@227
    .line 2628
    iget v2, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    #@229
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22c
    move-result-object v2

    #@22d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@230
    .line 2630
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
    .line 2631
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@23e
    .line 2630
    if-nez v2, :cond_d

    #@240
    .line 2631
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    #@242
    .line 2630
    if-eqz v2, :cond_e

    #@244
    .line 2632
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@247
    const-string/jumbo v2, "mPolicyVisibility="

    #@24a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24d
    .line 2633
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@24f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@252
    .line 2634
    const-string/jumbo v2, " mPolicyVisibilityAfterAnim="

    #@255
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@258
    .line 2635
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@25a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@25d
    .line 2636
    const-string/jumbo v2, " mAppOpVisibility="

    #@260
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@263
    .line 2637
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@265
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@268
    .line 2638
    const-string/jumbo v2, " mAttachedHidden="

    #@26b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@270
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@273
    .line 2639
    const-string/jumbo v2, " mPermanentlyHidden="

    #@276
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@279
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    #@27b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@27e
    .line 2641
    :cond_e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@280
    if-eqz v2, :cond_f

    #@282
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@284
    if-eqz v2, :cond_10

    #@286
    .line 2642
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@289
    const-string/jumbo v2, "mRelayoutCalled="

    #@28c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28f
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@291
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@294
    .line 2643
    const-string/jumbo v2, " mLayoutNeeded="

    #@297
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@29c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@29f
    .line 2645
    :cond_10
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@2a1
    if-nez v2, :cond_11

    #@2a3
    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@2a5
    if-eqz v2, :cond_12

    #@2a7
    .line 2646
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2aa
    const-string/jumbo v2, "Offsets x="

    #@2ad
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b0
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@2b2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@2b5
    .line 2647
    const-string/jumbo v2, " y="

    #@2b8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bb
    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@2bd
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@2c0
    .line 2649
    :cond_12
    if-eqz p3, :cond_15

    #@2c2
    .line 2650
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c5
    const-string/jumbo v2, "mGivenContentInsets="

    #@2c8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2cb
    .line 2651
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@2cd
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@2d0
    .line 2652
    const-string/jumbo v2, " mGivenVisibleInsets="

    #@2d3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d6
    .line 2653
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@2d8
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@2db
    .line 2654
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2de
    .line 2655
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@2e0
    if-nez v2, :cond_13

    #@2e2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    #@2e4
    if-eqz v2, :cond_14

    #@2e6
    .line 2656
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e9
    const-string/jumbo v2, "mTouchableInsets="

    #@2ec
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ef
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@2f1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@2f4
    .line 2657
    const-string/jumbo v2, " mGivenInsetsPending="

    #@2f7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fa
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    #@2fc
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@2ff
    .line 2658
    new-instance v0, Landroid/graphics/Region;

    #@301
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@304
    .line 2659
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@307
    .line 2660
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30a
    const-string/jumbo v2, "touchable region="

    #@30d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@313
    .line 2662
    .end local v0    # "region":Landroid/graphics/Region;
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@316
    const-string/jumbo v2, "mMergedConfiguration="

    #@319
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@31e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@321
    .line 2664
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@324
    const-string/jumbo v2, "mHasSurface="

    #@327
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@32c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@32f
    .line 2665
    const-string/jumbo v2, " mShownPosition="

    #@332
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@335
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    #@337
    invoke-virtual {v2, p1}, Landroid/graphics/Point;->printShortString(Ljava/io/PrintWriter;)V

    #@33a
    .line 2666
    const-string/jumbo v2, " isReadyForDisplay()="

    #@33d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@340
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    #@343
    move-result v2

    #@344
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@347
    .line 2667
    const-string/jumbo v2, " hasSavedSurface()="

    #@34a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    #@350
    move-result v2

    #@351
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@354
    .line 2668
    const-string/jumbo v2, " mWindowRemovalAllowed="

    #@357
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    #@35c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@35f
    .line 2669
    if-eqz p3, :cond_16

    #@361
    .line 2670
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@364
    const-string/jumbo v2, "mFrame="

    #@367
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@36c
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@36f
    .line 2671
    const-string/jumbo v2, " last="

    #@372
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@375
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@377
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@37a
    .line 2672
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@37d
    .line 2674
    :cond_16
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@37f
    if-eqz v2, :cond_17

    #@381
    .line 2675
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@384
    const-string/jumbo v2, "mCompatFrame="

    #@387
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@38c
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@38f
    .line 2676
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@392
    .line 2678
    :cond_17
    if-eqz p3, :cond_18

    #@394
    .line 2679
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@397
    const-string/jumbo v2, "Frames: containing="

    #@39a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39d
    .line 2680
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@39f
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3a2
    .line 2681
    const-string/jumbo v2, " parent="

    #@3a5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a8
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    #@3aa
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3ad
    .line 2682
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3b0
    .line 2683
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b3
    const-string/jumbo v2, "    display="

    #@3b6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b9
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@3bb
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3be
    .line 2684
    const-string/jumbo v2, " overscan="

    #@3c1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c4
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@3c6
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3c9
    .line 2685
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3cc
    .line 2686
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3cf
    const-string/jumbo v2, "    content="

    #@3d2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d5
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@3d7
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3da
    .line 2687
    const-string/jumbo v2, " visible="

    #@3dd
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@3e2
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3e5
    .line 2688
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3e8
    .line 2689
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3eb
    const-string/jumbo v2, "    decor="

    #@3ee
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@3f3
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3f6
    .line 2690
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3f9
    .line 2691
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3fc
    const-string/jumbo v2, "    outset="

    #@3ff
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@402
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@404
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@407
    .line 2692
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@40a
    .line 2693
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40d
    const-string/jumbo v2, "Cur insets: overscan="

    #@410
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@413
    .line 2694
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@415
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@418
    .line 2695
    const-string/jumbo v2, " content="

    #@41b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@41e
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@420
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@423
    .line 2696
    const-string/jumbo v2, " visible="

    #@426
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@429
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@42b
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@42e
    .line 2697
    const-string/jumbo v2, " stable="

    #@431
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@434
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@436
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@439
    .line 2698
    const-string/jumbo v2, " surface="

    #@43c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@441
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    #@443
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@446
    .line 2699
    const-string/jumbo v2, " outsets="

    #@449
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@44e
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@451
    .line 2700
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@454
    .line 2701
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@457
    const-string/jumbo v2, "Lst insets: overscan="

    #@45a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45d
    .line 2702
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    #@45f
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@462
    .line 2703
    const-string/jumbo v2, " content="

    #@465
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@468
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@46a
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@46d
    .line 2704
    const-string/jumbo v2, " visible="

    #@470
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@473
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    #@475
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@478
    .line 2705
    const-string/jumbo v2, " stable="

    #@47b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47e
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    #@480
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@483
    .line 2706
    const-string/jumbo v2, " physical="

    #@486
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@489
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@48b
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@48e
    .line 2707
    const-string/jumbo v2, " outset="

    #@491
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@494
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@496
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@499
    .line 2708
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@49c
    .line 2710
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4a1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@4a4
    const-string/jumbo v2, ":"

    #@4a7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4aa
    .line 2711
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4ac
    new-instance v3, Ljava/lang/StringBuilder;

    #@4ae
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b1
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b4
    move-result-object v3

    #@4b5
    const-string/jumbo v4, "  "

    #@4b8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bb
    move-result-object v3

    #@4bc
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4bf
    move-result-object v3

    #@4c0
    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@4c3
    .line 2712
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@4c5
    if-nez v2, :cond_19

    #@4c7
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@4c9
    if-nez v2, :cond_19

    #@4cb
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@4cd
    if-nez v2, :cond_19

    #@4cf
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    #@4d1
    if-eqz v2, :cond_1a

    #@4d3
    .line 2713
    :cond_19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d6
    const-string/jumbo v2, "mAnimatingExit="

    #@4d9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4dc
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@4de
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4e1
    .line 2714
    const-string/jumbo v2, " mRemoveOnExit="

    #@4e4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e7
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@4e9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4ec
    .line 2715
    const-string/jumbo v2, " mDestroying="

    #@4ef
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@4f4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4f7
    .line 2716
    const-string/jumbo v2, " mRemoved="

    #@4fa
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4fd
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    #@4ff
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@502
    .line 2718
    :cond_1a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@504
    if-nez v2, :cond_1b

    #@506
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@508
    if-nez v2, :cond_1b

    #@50a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@50c
    if-eqz v2, :cond_1c

    #@50e
    .line 2719
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@511
    const-string/jumbo v2, "mOrientationChanging="

    #@514
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@517
    .line 2720
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@519
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@51c
    .line 2721
    const-string/jumbo v2, " mAppFreezing="

    #@51f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@522
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@524
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@527
    .line 2722
    const-string/jumbo v2, " mTurnOnScreen="

    #@52a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52d
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@52f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@532
    .line 2724
    :cond_1c
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@534
    if-eqz v2, :cond_1d

    #@536
    .line 2725
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@539
    const-string/jumbo v2, "mLastFreezeDuration="

    #@53c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53f
    .line 2726
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@541
    int-to-long v2, v2

    #@542
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@545
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@548
    .line 2728
    :cond_1d
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@54a
    cmpl-float v2, v2, v6

    #@54c
    if-nez v2, :cond_1e

    #@54e
    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@550
    cmpl-float v2, v2, v6

    #@552
    if-eqz v2, :cond_1f

    #@554
    .line 2729
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@557
    const-string/jumbo v2, "mHScale="

    #@55a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55d
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@55f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    #@562
    .line 2730
    const-string/jumbo v2, " mVScale="

    #@565
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@568
    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@56a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    #@56d
    .line 2732
    :cond_1f
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@56f
    cmpl-float v2, v2, v5

    #@571
    if-nez v2, :cond_20

    #@573
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@575
    cmpl-float v2, v2, v5

    #@577
    if-eqz v2, :cond_21

    #@579
    .line 2733
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57c
    const-string/jumbo v2, "mWallpaperX="

    #@57f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@582
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@584
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    #@587
    .line 2734
    const-string/jumbo v2, " mWallpaperY="

    #@58a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58d
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@58f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    #@592
    .line 2736
    :cond_21
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@594
    cmpl-float v2, v2, v5

    #@596
    if-nez v2, :cond_22

    #@598
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@59a
    cmpl-float v2, v2, v5

    #@59c
    if-eqz v2, :cond_23

    #@59e
    .line 2737
    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a1
    const-string/jumbo v2, "mWallpaperXStep="

    #@5a4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a7
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@5a9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    #@5ac
    .line 2738
    const-string/jumbo v2, " mWallpaperYStep="

    #@5af
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b2
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@5b4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    #@5b7
    .line 2740
    :cond_23
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@5b9
    if-ne v2, v7, :cond_24

    #@5bb
    .line 2741
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@5bd
    if-eq v2, v7, :cond_25

    #@5bf
    .line 2742
    :cond_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c2
    const-string/jumbo v2, "mWallpaperDisplayOffsetX="

    #@5c5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c8
    .line 2743
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@5ca
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@5cd
    .line 2744
    const-string/jumbo v2, " mWallpaperDisplayOffsetY="

    #@5d0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d3
    .line 2745
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@5d5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@5d8
    .line 2747
    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@5da
    if-eqz v2, :cond_26

    #@5dc
    .line 2748
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5df
    new-instance v2, Ljava/lang/StringBuilder;

    #@5e1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e4
    const-string/jumbo v3, "mDrawLock="

    #@5e7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ea
    move-result-object v2

    #@5eb
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@5ed
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f0
    move-result-object v2

    #@5f1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f4
    move-result-object v2

    #@5f5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f8
    .line 2750
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@5fb
    move-result v2

    #@5fc
    if-eqz v2, :cond_27

    #@5fe
    .line 2751
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@601
    new-instance v2, Ljava/lang/StringBuilder;

    #@603
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@606
    const-string/jumbo v3, "isDragResizing="

    #@609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60c
    move-result-object v2

    #@60d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    #@610
    move-result v3

    #@611
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@614
    move-result-object v2

    #@615
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@618
    move-result-object v2

    #@619
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@61c
    .line 2753
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    #@61f
    move-result v2

    #@620
    if-eqz v2, :cond_28

    #@622
    .line 2754
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@625
    new-instance v2, Ljava/lang/StringBuilder;

    #@627
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62a
    const-string/jumbo v3, "computeDragResizing="

    #@62d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@630
    move-result-object v2

    #@631
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    #@634
    move-result v3

    #@635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@638
    move-result-object v2

    #@639
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63c
    move-result-object v2

    #@63d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@640
    .line 2567
    :cond_28
    return-void

    #@641
    .line 2606
    :cond_29
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@643
    if-eqz v3, :cond_8

    #@645
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@647
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@649
    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@64b
    goto/16 :goto_0
.end method

.method getAnimLayerAdjustment()I
    .locals 1

    #@0
    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1488
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@8
    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@a
    return v0

    #@b
    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1490
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@11
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@13
    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@15
    return v0

    #@16
    .line 1493
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
    .line 1060
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
    .line 1008
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
    .line 2408
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
    .line 2409
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
    .line 2412
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@1a
    move-result-object v0

    #@1b
    .line 2413
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@1d
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@1f
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@21
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@24
    .line 2414
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@26
    return-object v2

    #@27
    .line 2408
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    const/4 v1, 0x1

    #@28
    .local v1, "resizing":Z
    goto :goto_0

    #@29
    .line 2410
    .end local v1    # "resizing":Z
    :cond_1
    return-object p1
.end method

.method public getBaseType()I
    .locals 2

    #@0
    .prologue
    .line 1051
    move-object v0, p0

    #@1
    .line 1052
    .local v0, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1053
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@9
    goto :goto_0

    #@a
    .line 1055
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
    .line 983
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;
    .locals 2

    #@0
    .prologue
    .line 1616
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1617
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@6
    .line 1618
    return-object v0

    #@7
    .line 1620
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
    .line 1081
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 1082
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@a
    return-object v1

    #@b
    .line 1084
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@e
    move-result-object v0

    #@f
    .line 1085
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
    .line 973
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getDisplayId()I
    .locals 2

    #@0
    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3
    move-result-object v0

    #@4
    .line 1095
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    #@6
    .line 1096
    const/4 v1, -0x1

    #@7
    return v1

    #@8
    .line 1098
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
    .line 1089
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@4
    move-result-object v0

    #@5
    .line 1090
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
    .line 963
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    #@0
    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    #@2
    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    #@0
    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1152
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    #@8
    .line 1151
    :goto_0
    return-wide v0

    #@9
    .line 1153
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
    .line 1013
    const/4 v0, -0x1

    #@3
    .line 1014
    .local v0, "index":I
    move-object v2, p0

    #@4
    .line 1015
    .local v2, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    #@7
    move-result-object v1

    #@8
    .line 1017
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    :goto_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 1018
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
    .line 1022
    :cond_1
    if-ne v2, p1, :cond_2

    #@19
    .line 1023
    return v4

    #@1a
    .line 1028
    :cond_2
    if-gez v0, :cond_3

    #@1c
    .line 1029
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    #@1f
    move-result v0

    #@20
    .line 1031
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@22
    .line 1032
    if-gez v0, :cond_4

    #@24
    .line 1033
    return v4

    #@25
    .line 1035
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
    .line 978
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 676
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
    .line 671
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@2
    return v0
.end method

.method getResizeMode()I
    .locals 1

    #@0
    .prologue
    .line 2516
    iget v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    #@2
    return v0
.end method

.method public getRotationAnimationHint()I
    .locals 1

    #@0
    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2955
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    #@8
    return v0

    #@9
    .line 2957
    :cond_0
    const/4 v0, -0x1

    #@a
    return v0
.end method

.method public getShownPositionLw()Landroid/graphics/Point;
    .locals 1

    #@0
    .prologue
    .line 968
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
    .line 1106
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@4
    move-result-object v0

    #@5
    .line 1107
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    #@7
    .line 1108
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1109
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@d
    return-object v1

    #@e
    .line 1114
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@12
    const/16 v3, 0x7d0

    #@14
    if-lt v2, v3, :cond_1

    #@16
    .line 1115
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
    .line 1114
    :cond_1
    return-object v1
.end method

.method public getStackId()I
    .locals 2

    #@0
    .prologue
    .line 2419
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@3
    move-result-object v0

    #@4
    .line 2420
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    #@6
    .line 2421
    const/4 v1, -0x1

    #@7
    return v1

    #@8
    .line 2423
    :cond_0
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@a
    return v1
.end method

.method public getSurfaceLayer()I
    .locals 1

    #@0
    .prologue
    .line 1046
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@2
    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    #@0
    .prologue
    .line 1041
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
    .line 1102
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
    .line 1684
    and-int/lit8 v4, p2, 0x28

    #@3
    if-nez v4, :cond_0

    #@5
    const/4 v3, 0x1

    #@6
    .line 1685
    .local v3, "modal":Z
    :cond_0
    if-eqz v3, :cond_3

    #@8
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@a
    if-eqz v4, :cond_3

    #@c
    .line 1687
    or-int/lit8 p2, p2, 0x20

    #@e
    .line 1693
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@11
    move-result-object v1

    #@12
    .line 1694
    .local v1, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    if-eqz v1, :cond_2

    #@14
    .line 1695
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@16
    invoke-interface {v1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    #@19
    .line 1699
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 1702
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@26
    move-result-object v2

    #@27
    .line 1704
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v4, 0x1e

    #@29
    .line 1703
    invoke-static {v4, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@2c
    move-result v0

    #@2d
    .line 1705
    .local v0, "delta":I
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@2f
    neg-int v5, v0

    #@30
    neg-int v6, v0

    #@31
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    #@34
    .line 1707
    .end local v0    # "delta":I
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@36
    invoke-virtual {p1, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@39
    .line 1708
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    #@3c
    .line 1713
    .end local v1    # "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :goto_1
    return p2

    #@3d
    .line 1697
    .restart local v1    # "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@3f
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    #@42
    goto :goto_0

    #@43
    .line 1711
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
    .line 2239
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    .line 2240
    .local v0, "frame":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 2243
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@a
    .line 2258
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    #@d
    .line 2238
    return-void

    #@e
    .line 2246
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@10
    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@13
    goto :goto_0

    #@14
    .line 2249
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@16
    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@19
    goto :goto_0

    #@1a
    .line 2252
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    #@1c
    .line 2253
    .local v1, "givenTouchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@1f
    .line 2254
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@21
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@23
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    #@26
    goto :goto_0

    #@27
    .line 2240
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
    .line 1123
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v2

    #@4
    .line 1124
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_3

    #@6
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    #@9
    move-result v0

    #@a
    .line 1125
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    #@d
    .line 1126
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    #@12
    .line 1127
    if-eqz v0, :cond_0

    #@14
    .line 1128
    iget-object v1, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@16
    .line 1129
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_4

    #@18
    .line 1130
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@1d
    .line 1136
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@22
    .line 1137
    if-eqz v0, :cond_1

    #@24
    .line 1138
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@26
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@29
    .line 1141
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_5

    #@2f
    .line 1142
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@31
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@34
    .line 1143
    if-eqz v0, :cond_2

    #@36
    .line 1144
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    #@38
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@3b
    .line 1146
    :cond_2
    return-void

    #@3c
    .line 1124
    :cond_3
    const/4 v0, 0x0

    #@3d
    .local v0, "intersectWithStackBounds":Z
    goto :goto_0

    #@3e
    .line 1132
    .end local v0    # "intersectWithStackBounds":Z
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    const/4 v0, 0x0

    #@3f
    .restart local v0    # "intersectWithStackBounds":Z
    goto :goto_1

    #@40
    .line 1122
    .end local v0    # "intersectWithStackBounds":Z
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_5
    return-void
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 988
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
    .line 2277
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@4
    move-result-object v0

    #@5
    .line 2278
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
    .line 2764
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    .line 2765
    .local v0, "tag":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v1

    #@c
    if-gtz v1, :cond_1

    #@e
    .line 2766
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10
    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@12
    .line 2768
    :cond_1
    return-object v0
.end method

.method public hasAppShownWindows()Z
    .locals 1

    #@0
    .prologue
    .line 1158
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
    .line 1864
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
    .line 1532
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
    .line 1420
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
    .line 1421
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@10
    if-eqz v2, :cond_3

    #@12
    :cond_1
    move v0, v1

    #@13
    .line 1420
    :cond_2
    :goto_0
    return v0

    #@14
    .line 1422
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@16
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@18
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@1a
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@1c
    if-ne v2, v3, :cond_4

    #@1e
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@20
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@22
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@24
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@26
    if-eq v2, v3, :cond_1

    #@28
    .line 1423
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@2a
    if-eqz v2, :cond_2

    #@2c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@2e
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_2

    #@34
    move v0, v1

    #@35
    goto :goto_0
.end method

.method hasSavedSurface()Z
    .locals 1

    #@0
    .prologue
    .line 2163
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@2
    return v0
.end method

.method public hideLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    #@0
    .prologue
    .line 1915
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
    .line 1919
    if-eqz p1, :cond_0

    #@4
    .line 1920
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1921
    const/4 p1, 0x0

    #@d
    .line 1924
    .end local p1    # "doAnimation":Z
    :cond_0
    if-eqz p1, :cond_1

    #@f
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@11
    .line 1926
    .local v0, "current":Z
    :goto_0
    if-nez v0, :cond_2

    #@13
    .line 1928
    return v3

    #@14
    .line 1925
    .end local v0    # "current":Z
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@16
    goto :goto_0

    #@17
    .line 1930
    .restart local v0    # "current":Z
    :cond_2
    if-eqz p1, :cond_3

    #@19
    .line 1931
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1b
    const/4 v2, 0x2

    #@1c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    #@1f
    .line 1932
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@21
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@23
    if-nez v1, :cond_3

    #@25
    .line 1933
    const/4 p1, 0x0

    #@26
    .line 1936
    :cond_3
    if-eqz p1, :cond_6

    #@28
    .line 1937
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@2a
    .line 1952
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    #@2c
    .line 1953
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@31
    .line 1955
    :cond_5
    return v4

    #@32
    .line 1940
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@34
    .line 1941
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@36
    .line 1945
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@38
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    #@3b
    .line 1946
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3d
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@3f
    if-ne v1, p0, :cond_4

    #@41
    .line 1949
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@43
    iput-boolean v4, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@45
    goto :goto_1
.end method

.method public hidePermanentlyLw()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1976
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1977
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    #@7
    .line 1978
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@a
    .line 1975
    :cond_0
    return-void
.end method

.method inDockedWorkspace()Z
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
    .line 2461
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 2462
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
    .line 1660
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1661
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
    .line 1460
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
    .line 1461
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
    .line 1460
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
    .line 2008
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
    .line 2020
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2021
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@7
    if-nez v0, :cond_1

    #@9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    #@b
    .line 2020
    :cond_0
    :goto_0
    return v0

    #@c
    .line 2021
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
    .line 1363
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1364
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
    .line 1363
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 1364
    goto :goto_0
.end method

.method isAnimatingWithSavedSurface()Z
    .locals 1

    #@0
    .prologue
    .line 2016
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@2
    return v0
.end method

.method isChildWindow()Z
    .locals 1

    #@0
    .prologue
    .line 2881
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
    .line 2012
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
    .line 1443
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpConfig:Landroid/content/res/Configuration;

    #@2
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->getMergedConfig(Landroid/content/res/Configuration;)V

    #@5
    .line 1447
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
    .line 1448
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
    .line 1450
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
    .line 1452
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@24
    or-int/2addr v1, v0

    #@25
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@27
    .line 1453
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@29
    .line 1456
    .end local v0    # "configChanged":Z
    :cond_0
    return v0

    #@2a
    .line 1447
    :cond_1
    const/4 v0, 0x1

    #@2b
    .restart local v0    # "configChanged":Z
    goto :goto_0

    #@2c
    .line 1448
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
    .line 2188
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3
    move-result-object v0

    #@4
    .line 2189
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    #@6
    .line 2191
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 2193
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    #@a
    return v1
.end method

.method public isDimming()Z
    .locals 3

    #@0
    .prologue
    .line 2198
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@3
    move-result-object v0

    #@4
    .line 2199
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    if-eqz v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2200
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
    .line 2199
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
    .line 1350
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@4
    .line 1351
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
    .line 1352
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@10
    if-nez v3, :cond_0

    #@12
    .line 1353
    if-eqz v0, :cond_1

    #@14
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 1354
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1a
    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@1c
    .line 1352
    if-nez v3, :cond_1

    #@1e
    .line 1355
    if-eqz v0, :cond_2

    #@20
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@22
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 1351
    :cond_1
    :goto_0
    return v1

    #@27
    :cond_2
    move v1, v2

    #@28
    .line 1355
    goto :goto_0

    #@29
    :cond_3
    move v1, v2

    #@2a
    .line 1351
    goto :goto_0
.end method

.method isDockedInEffect()Z
    .locals 2

    #@0
    .prologue
    .line 1665
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@3
    move-result-object v0

    #@4
    .line 1666
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
    .line 2564
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
    .line 2472
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
    .line 2560
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    #@2
    return v0
.end method

.method isDragResizingChangeReported()Z
    .locals 1

    #@0
    .prologue
    .line 2479
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
    .line 1384
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
    .line 1385
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@e
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@10
    const/4 v3, 0x2

    #@11
    if-eq v2, v3, :cond_1

    #@13
    .line 1386
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@15
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@17
    const/4 v3, 0x3

    #@18
    if-eq v2, v3, :cond_1

    #@1a
    .line 1387
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
    .line 1396
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
    .line 1397
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@e
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@10
    const/4 v3, 0x3

    #@11
    if-eq v2, v3, :cond_1

    #@13
    .line 1398
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
    .line 2455
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 2456
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
    .line 2455
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
    .line 1438
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
    .line 1439
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
    .line 1438
    :cond_0
    return v0
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    #@0
    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    .line 1370
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@4
    const/16 v2, 0x8

    #@6
    if-eq v1, v2, :cond_3

    #@8
    .line 1371
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@a
    if-eqz v1, :cond_3

    #@c
    .line 1372
    if-nez v0, :cond_0

    #@e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@10
    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@12
    .line 1370
    if-nez v1, :cond_3

    #@14
    .line 1373
    :cond_0
    if-eqz v0, :cond_1

    #@16
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@18
    .line 1370
    if-nez v1, :cond_3

    #@1a
    .line 1374
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@1c
    .line 1370
    if-nez v1, :cond_3

    #@1e
    .line 1375
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
    .line 1376
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@2a
    .line 1370
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
    .line 2209
    move-object v0, p0

    #@2
    .line 2210
    .local v0, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 2211
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@a
    goto :goto_0

    #@b
    .line 2213
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@d
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@f
    const/16 v3, 0x7d0

    #@11
    if-ge v2, v3, :cond_1

    #@13
    .line 2214
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@15
    if-eqz v2, :cond_1

    #@17
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@19
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    #@1b
    .line 2213
    if-eqz v2, :cond_1

    #@1d
    .line 2219
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
    .line 2220
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
    .line 2221
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
    .line 2222
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
    .line 2224
    return v1

    #@46
    .line 2228
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    #@48
    if-eqz v2, :cond_2

    #@4a
    .line 2229
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
    .line 2228
    :cond_2
    :goto_1
    return v1

    #@59
    .line 2229
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
    .line 1162
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
    .line 1163
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
    .line 1164
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
    .line 1165
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
    .line 1166
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
    .line 2467
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@4
    move-result-object v0

    #@5
    .line 2468
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
    .line 1304
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
    .line 1305
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
    .line 1427
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@4
    move-result-object v0

    #@5
    .line 1428
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
    .line 1431
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
    .line 1434
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 1429
    :cond_1
    return v2

    #@22
    .line 1432
    :cond_2
    return v2
.end method

.method isOnScreen()Z
    .locals 1

    #@0
    .prologue
    .line 1262
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
    .line 1270
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1271
    :cond_0
    return v2

    #@b
    .line 1273
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@d
    .line 1274
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_5

    #@f
    .line 1275
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@11
    if-nez v3, :cond_2

    #@13
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 1276
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@19
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@1b
    if-eqz v3, :cond_4

    #@1d
    .line 1275
    :cond_3
    :goto_0
    return v1

    #@1e
    .line 1276
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
    .line 1278
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
    .line 1409
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
    .line 1411
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@10
    move-result v2

    #@11
    .line 1409
    if-eqz v2, :cond_3

    #@13
    .line 1411
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@15
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@17
    if-nez v2, :cond_3

    #@19
    .line 1412
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
    .line 1409
    :cond_1
    :goto_0
    return v0

    #@26
    .line 1410
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@28
    if-eqz v2, :cond_3

    #@2a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@2c
    .line 1409
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
    .line 1412
    goto :goto_0
.end method

.method isPotentialDragTarget()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1240
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
    .line 1241
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
    .line 1313
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
    .line 1314
    return v1

    #@13
    .line 1316
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
    .line 1317
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
    .line 1318
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@31
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@33
    if-nez v2, :cond_2

    #@35
    .line 1319
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
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1327
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@3
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@b
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1328
    return v1

    #@12
    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14
    .line 1331
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    #@16
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@18
    if-eqz v2, :cond_3

    #@1a
    .line 1336
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@1c
    if-eqz v2, :cond_2

    #@1e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@20
    if-eqz v2, :cond_4

    #@22
    :cond_2
    :goto_0
    return v1

    #@23
    .line 1334
    :cond_3
    return v1

    #@24
    .line 1337
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@26
    if-nez v1, :cond_5

    #@28
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@2a
    if-nez v1, :cond_5

    #@2c
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@2e
    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@30
    if-eqz v1, :cond_6

    #@32
    .line 1338
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@34
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@36
    if-eqz v1, :cond_7

    #@38
    .line 1337
    :cond_6
    const/4 v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1339
    :cond_7
    if-eqz v0, :cond_8

    #@3c
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3e
    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@40
    if-eqz v1, :cond_8

    #@42
    .line 1340
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@44
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_6

    #@4a
    .line 1341
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    #@4d
    move-result v1

    #@4e
    goto :goto_0
.end method

.method isResizedWhileNotDragResizing()Z
    .locals 1

    #@0
    .prologue
    .line 2504
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizing:Z

    #@2
    return v0
.end method

.method isResizedWhileNotDragResizingReported()Z
    .locals 1

    #@0
    .prologue
    .line 2512
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizingReported:Z

    #@2
    return v0
.end method

.method public isRtl()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2962
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mMergedConfiguration:Landroid/content/res/Configuration;

    #@3
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@6
    move-result v1

    #@7
    if-ne v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isVisibleLw()Z
    .locals 1

    #@0
    .prologue
    .line 1194
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
    .line 1230
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
    .line 1231
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isVisibleUnchecked()Z

    #@10
    move-result v0

    #@11
    .line 1230
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
    .line 1249
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3
    .line 1250
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
    .line 1251
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@11
    .line 1250
    if-eqz v2, :cond_1

    #@13
    .line 1251
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 1250
    :cond_1
    :goto_0
    return v1

    #@18
    .line 1252
    :cond_2
    if-eqz v0, :cond_3

    #@1a
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@1c
    if-nez v2, :cond_1

    #@1e
    .line 1253
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
    .line 1205
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
    .line 1206
    return v2

    #@12
    .line 1208
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14
    .line 1209
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
    .line 1210
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
    .line 1209
    :cond_3
    const/4 v0, 0x0

    #@28
    .restart local v0    # "animating":Z
    goto :goto_0

    #@29
    .line 1210
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@2b
    if-nez v3, :cond_1

    #@2d
    .line 1211
    if-nez v1, :cond_8

    #@2f
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@31
    .line 1210
    if-eqz v3, :cond_1

    #@33
    .line 1212
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
    .line 1213
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@43
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@45
    if-eqz v2, :cond_2

    #@47
    .line 1212
    :cond_7
    const/4 v0, 0x1

    #@48
    goto :goto_2

    #@49
    .line 1211
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
    .line 1065
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
    .line 1221
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
    .line 1222
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isVisibleUnchecked()Z

    #@15
    move-result v0

    #@16
    .line 1221
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
    .line 2885
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
    .line 2759
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
    .line 2760
    const-string/jumbo v1, " "

    #@14
    .line 2759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 2760
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    #@1b
    move-result-object v1

    #@1c
    .line 2759
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
    .line 1624
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1625
    return-void

    #@7
    .line 1627
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
    .line 1628
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
    .line 1629
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
    .line 1631
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDimming()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 1632
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->transferDimToReplacement()V

    #@34
    .line 1634
    :cond_1
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@36
    .line 1635
    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@38
    .line 1636
    .local v0, "animateReplacingWindow":Z
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@3a
    .line 1637
    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    #@3c
    .line 1638
    iput-object v5, v2, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@3e
    .line 1639
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    #@40
    .line 1640
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@42
    if-nez v3, :cond_3

    #@44
    if-eqz v0, :cond_3

    #@46
    .line 1627
    .end local v0    # "animateReplacingWindow":Z
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@48
    goto :goto_0

    #@49
    .line 1641
    .restart local v0    # "animateReplacingWindow":Z
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4b
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    #@4e
    goto :goto_1

    #@4f
    .line 1623
    .end local v0    # "animateReplacingWindow":Z
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    return-void
.end method

.method mightAffectAllDrawn(Z)Z
    .locals 5
    .param p1, "visibleOnly"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1291
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
    .line 1293
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
    .line 1294
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@19
    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    #@1b
    if-ne v3, v2, :cond_6

    #@1d
    .line 1296
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@1f
    if-eqz v3, :cond_7

    #@21
    .line 1293
    :cond_3
    :goto_2
    return v1

    #@22
    .line 1292
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
    .line 1295
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@30
    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    #@32
    const/4 v4, 0x4

    #@33
    if-ne v3, v4, :cond_3

    #@35
    goto :goto_1

    #@36
    .line 1296
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@38
    if-nez v3, :cond_3

    #@3a
    move v1, v2

    #@3b
    goto :goto_2
.end method

.method notifyMovedInStack()V
    .locals 1

    #@0
    .prologue
    .line 1523
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mJustMovedInStack:Z

    #@3
    .line 1522
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
    .line 1557
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 1558
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v3, "Window already has an input channel."

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 1560
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->makeInputChannelName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 1561
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@16
    move-result-object v0

    #@17
    .line 1562
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    aget-object v2, v0, v3

    #@19
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@1b
    .line 1563
    const/4 v2, 0x1

    #@1c
    aget-object v2, v0, v2

    #@1e
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@20
    .line 1564
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@22
    aget-object v3, v0, v3

    #@24
    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@26
    .line 1565
    if-eqz p1, :cond_1

    #@28
    .line 1566
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@2a
    invoke-virtual {v2, p1}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    #@2d
    .line 1567
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@2f
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    #@32
    .line 1568
    iput-object v4, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    #@34
    .line 1575
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
    .line 1556
    return-void

    #@40
    .line 1573
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
    .line 1983
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 1984
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1988
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    .line 1989
    .local v0, "tag":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@12
    .line 1990
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
    .line 1989
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@2b
    move-result-object v1

    #@2c
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@2e
    .line 1991
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@30
    const/4 v2, 0x0

    #@31
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@34
    .line 1992
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
    .line 1999
    .end local v0    # "tag":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@46
    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@49
    .line 1982
    :cond_1
    return-void
.end method

.method prelayout()V
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 1170
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1171
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    #@a
    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@c
    .line 1172
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@e
    div-float v0, v1, v0

    #@10
    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@12
    .line 1169
    :goto_0
    return-void

    #@13
    .line 1174
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
    .line 1747
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@3
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    #@5
    and-int/lit16 v1, v1, 0xf0

    #@7
    .line 1748
    const/16 v2, 0x10

    #@9
    .line 1747
    if-ne v1, v2, :cond_0

    #@b
    .line 1749
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@d
    .line 1751
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
    .line 1752
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    #@20
    .line 1754
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
    .line 1756
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@2b
    .line 1758
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 1759
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->updateConfiguration()Landroid/content/res/Configuration;

    #@34
    move-result-object v0

    #@35
    .line 1762
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@38
    .line 1746
    .end local v0    # "newConfig":Landroid/content/res/Configuration;
    :cond_3
    return-void
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    #@0
    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 2439
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 2440
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@b
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@10
    .line 2442
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@12
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 2437
    return-void

    #@17
    .line 2438
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
    .line 1465
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    #@3
    .line 1467
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1469
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@b
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@d
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    #@10
    .line 1471
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@12
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    #@15
    .line 1472
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@17
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@1a
    .line 1473
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    #@1f
    .line 1475
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
    .line 1464
    :goto_0
    return-void

    #@2c
    .line 1476
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
    .line 2287
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@2
    invoke-interface {v4, p1, p2}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 2290
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@7
    if-eqz v4, :cond_2

    #@9
    .line 2291
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@e
    move-result v0

    #@f
    .line 2292
    .local v0, "N":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    #@12
    .line 2293
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@14
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/view/IWindowFocusObserver;

    #@1a
    .line 2295
    .local v3, "obs":Landroid/view/IWindowFocusObserver;
    if-eqz p1, :cond_0

    #@1c
    .line 2296
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    #@1e
    invoke-interface {v4}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v3, v4}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    #@25
    .line 2292
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_1

    #@28
    .line 2298
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
    .line 2300
    :catch_0
    move-exception v1

    #@33
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@34
    .line 2303
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "obs":Landroid/view/IWindowFocusObserver;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@36
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@39
    .line 2285
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_2
    return-void

    #@3a
    .line 2288
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
    .line 2340
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
    .line 2344
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
    .line 2348
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@29
    .line 2349
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    #@2b
    .line 2350
    .local v3, "overscanInsets":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@2d
    .line 2351
    .local v4, "contentInsets":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    #@2f
    .line 2352
    .local v5, "visibleInsets":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    #@31
    .line 2353
    .local v6, "stableInsets":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@33
    .line 2354
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
    .line 2355
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
    .line 2356
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@44
    instance-of v0, v0, Landroid/view/IWindow$Stub;

    #@46
    .line 2355
    if-eqz v0, :cond_3

    #@48
    .line 2358
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
    .line 2375
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@57
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@59
    if-eqz v0, :cond_0

    #@5b
    .line 2376
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@5e
    move-result v0

    #@5f
    if-nez v0, :cond_0

    #@61
    .line 2377
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@63
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@65
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    #@68
    .line 2380
    :cond_0
    const/4 v0, 0x0

    #@69
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    #@6b
    .line 2381
    const/4 v0, 0x0

    #@6c
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    #@6e
    .line 2382
    const/4 v0, 0x0

    #@6f
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    #@71
    .line 2383
    const/4 v0, 0x0

    #@72
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    #@74
    .line 2384
    const/4 v0, 0x0

    #@75
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@77
    .line 2385
    const/4 v0, 0x0

    #@78
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    #@7a
    .line 2386
    const/4 v0, 0x1

    #@7b
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizingReported:Z

    #@7d
    .line 2387
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@7f
    const/4 v1, 0x0

    #@80
    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@82
    .line 2398
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v3    # "overscanInsets":Landroid/graphics/Rect;
    .end local v4    # "contentInsets":Landroid/graphics/Rect;
    .end local v5    # "visibleInsets":Landroid/graphics/Rect;
    .end local v6    # "stableInsets":Landroid/graphics/Rect;
    .end local v7    # "outsets":Landroid/graphics/Rect;
    .end local v8    # "reportDraw":Z
    :goto_3
    const-wide/16 v0, 0x20

    #@84
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@87
    .line 2339
    return-void

    #@88
    .line 2344
    :cond_1
    const/4 v9, 0x0

    #@89
    .local v9, "newConfig":Landroid/content/res/Configuration;
    goto :goto_0

    #@8a
    .line 2354
    .end local v9    # "newConfig":Landroid/content/res/Configuration;
    .restart local v2    # "frame":Landroid/graphics/Rect;
    .restart local v3    # "overscanInsets":Landroid/graphics/Rect;
    .restart local v4    # "contentInsets":Landroid/graphics/Rect;
    .restart local v5    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v6    # "stableInsets":Landroid/graphics/Rect;
    .restart local v7    # "outsets":Landroid/graphics/Rect;
    :cond_2
    const/4 v8, 0x0

    #@8b
    .restart local v8    # "reportDraw":Z
    goto :goto_1

    #@8c
    :cond_3
    move-object v1, p0

    #@8d
    .line 2370
    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@90
    goto :goto_2

    #@91
    .line 2388
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v3    # "overscanInsets":Landroid/graphics/Rect;
    .end local v4    # "contentInsets":Landroid/graphics/Rect;
    .end local v5    # "visibleInsets":Landroid/graphics/Rect;
    .end local v6    # "stableInsets":Landroid/graphics/Rect;
    .end local v7    # "outsets":Landroid/graphics/Rect;
    .end local v8    # "reportDraw":Z
    :catch_0
    move-exception v10

    #@92
    .line 2389
    .local v10, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    #@93
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@95
    .line 2390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@98
    move-result-wide v0

    #@99
    .line 2391
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9b
    iget-wide v12, v11, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    #@9d
    .line 2390
    sub-long/2addr v0, v12

    #@9e
    long-to-int v0, v0

    #@9f
    iput v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@a1
    .line 2393
    sget-object v0, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    #@a3
    new-instance v1, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v11, "Failed to report \'resized\' to the client of "

    #@ab
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v1

    #@b3
    .line 2394
    const-string/jumbo v11, ", removing this window."

    #@b6
    .line 2393
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v1

    #@ba
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v1

    #@be
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    .line 2395
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    #@c5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c8
    .line 2396
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ca
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@cc
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@cf
    goto :goto_3
.end method

.method requestUpdateWallpaperIfNeeded()V
    .locals 2

    #@0
    .prologue
    .line 2908
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
    .line 2909
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@f
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@11
    or-int/lit8 v1, v1, 0x4

    #@13
    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    #@15
    .line 2910
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@17
    const/4 v1, 0x1

    #@18
    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@1a
    .line 2911
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1c
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    #@21
    .line 2907
    :cond_0
    return-void
.end method

.method resetDragResizingChangeReported()V
    .locals 1

    #@0
    .prologue
    .line 2486
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    #@3
    .line 2485
    return-void
.end method

.method resetJustMovedInStack()V
    .locals 1

    #@0
    .prologue
    .line 1539
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mJustMovedInStack:Z

    #@3
    .line 1538
    return-void
.end method

.method resetReplacing()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2902
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@3
    .line 2903
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@6
    .line 2904
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@8
    .line 2901
    return-void
.end method

.method restoreSavedSurface()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2127
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2128
    return-void

    #@6
    .line 2136
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    #@8
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a
    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    #@c
    if-eq v0, v1, :cond_1

    #@e
    .line 2137
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySavedSurface()V

    #@11
    .line 2138
    return-void

    #@12
    .line 2140
    :cond_1
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceSaved:Z

    #@15
    .line 2142
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@17
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 2143
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    #@1e
    .line 2144
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@20
    const/4 v1, 0x3

    #@21
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@23
    .line 2145
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@25
    .line 2126
    :goto_0
    return-void

    #@26
    .line 2154
    :cond_2
    sget-object v0, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Failed to restore saved surface: surface gone! "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    goto :goto_0
.end method

.method scheduleAnimationIfDimming()V
    .locals 3

    #@0
    .prologue
    .line 1498
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1499
    return-void

    #@5
    .line 1501
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@8
    move-result-object v0

    #@9
    .line 1502
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    if-eqz v0, :cond_1

    #@b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@d
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@f
    .line 1503
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@11
    .line 1502
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DimLayerController;->isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1505
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@19
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@1c
    .line 1497
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
    .line 1959
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 1960
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@7
    .line 1961
    if-eqz p1, :cond_1

    #@9
    .line 1968
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    #@c
    .line 1958
    :cond_0
    :goto_0
    return-void

    #@d
    .line 1970
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@10
    goto :goto_0
.end method

.method setDisplayLayoutNeeded()V
    .locals 2

    #@0
    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1649
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@6
    const/4 v1, 0x1

    #@7
    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@9
    .line 1647
    :cond_0
    return-void
.end method

.method setDragResizing()V
    .locals 3

    #@0
    .prologue
    .line 2544
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    #@3
    move-result v0

    #@4
    .line 2545
    .local v0, "resizing":Z
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    #@6
    if-ne v0, v2, :cond_0

    #@8
    .line 2546
    return-void

    #@9
    .line 2548
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    #@b
    .line 2549
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@e
    move-result-object v1

    #@f
    .line 2550
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1

    #@11
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 2551
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDragResizeMode()I

    #@1a
    move-result v2

    #@1b
    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    #@1d
    .line 2543
    :goto_0
    return-void

    #@1e
    .line 2553
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
    .line 2554
    const/4 v2, 0x1

    #@2d
    .line 2553
    :goto_1
    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    #@2f
    goto :goto_0

    #@30
    .line 2555
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
    .line 1483
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@2
    .line 1482
    return-void
.end method

.method setReplacing(Z)V
    .locals 2
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 2889
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
    .line 2890
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@c
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@e
    const/4 v1, 0x3

    #@f
    if-ne v0, v1, :cond_1

    #@11
    .line 2893
    :cond_0
    return-void

    #@12
    .line 2896
    :cond_1
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@15
    .line 2897
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@18
    .line 2898
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    #@1a
    .line 2888
    return-void
.end method

.method setReportResizeHints()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1069
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
    if-eqz v0, :cond_2

    #@e
    move v0, v1

    #@f
    :goto_0
    or-int/2addr v0, v3

    #@10
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    #@12
    .line 1070
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
    if-eqz v0, :cond_3

    #@1e
    move v0, v1

    #@1f
    :goto_1
    or-int/2addr v0, v3

    #@20
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    #@22
    .line 1071
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
    if-eqz v0, :cond_4

    #@2e
    move v0, v1

    #@2f
    :goto_2
    or-int/2addr v0, v3

    #@30
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    #@32
    .line 1072
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
    if-eqz v0, :cond_5

    #@3e
    move v0, v1

    #@3f
    :goto_3
    or-int/2addr v0, v3

    #@40
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    #@42
    .line 1073
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@44
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@46
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@48
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_6

    #@4e
    move v0, v1

    #@4f
    :goto_4
    or-int/2addr v0, v3

    #@50
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@52
    .line 1074
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    #@54
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@56
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@59
    move-result v3

    #@5a
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@5c
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@5f
    move-result v4

    #@60
    if-ne v3, v4, :cond_7

    #@62
    .line 1075
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@64
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@67
    move-result v3

    #@68
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@6a
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@6d
    move-result v4

    #@6e
    if-eq v3, v4, :cond_0

    #@70
    move v1, v2

    #@71
    .line 1074
    :cond_0
    :goto_5
    or-int/2addr v0, v1

    #@72
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    #@74
    .line 1076
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    #@76
    if-nez v0, :cond_1

    #@78
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    #@7a
    if-nez v0, :cond_1

    #@7c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    #@7e
    if-nez v0, :cond_1

    #@80
    .line 1077
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@82
    .line 1076
    if-nez v0, :cond_1

    #@84
    .line 1077
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    #@86
    .line 1076
    :cond_1
    return v2

    #@87
    :cond_2
    move v0, v2

    #@88
    .line 1069
    goto :goto_0

    #@89
    :cond_3
    move v0, v2

    #@8a
    .line 1070
    goto :goto_1

    #@8b
    :cond_4
    move v0, v2

    #@8c
    .line 1071
    goto :goto_2

    #@8d
    :cond_5
    move v0, v2

    #@8e
    .line 1072
    goto :goto_3

    #@8f
    :cond_6
    move v0, v2

    #@90
    .line 1073
    goto :goto_4

    #@91
    :cond_7
    move v1, v2

    #@92
    .line 1074
    goto :goto_5
.end method

.method setRequestedSize(II)V
    .locals 1
    .param p1, "requestedWidth"    # I
    .param p2, "requestedHeight"    # I

    #@0
    .prologue
    .line 1739
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@6
    if-eq v0, p2, :cond_1

    #@8
    .line 1740
    :cond_0
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@b
    .line 1741
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@d
    .line 1742
    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@f
    .line 1738
    :cond_1
    return-void
.end method

.method setResizedWhileNotDragResizing(Z)V
    .locals 1
    .param p1, "resizedWhileNotDragResizing"    # Z

    #@0
    .prologue
    .line 2494
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizing:Z

    #@2
    .line 2495
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileNotDragResizingReported:Z

    #@7
    .line 2493
    return-void

    #@8
    .line 2495
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
    .line 2204
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    #@2
    .line 2203
    return-void
.end method

.method public setVisibleBeforeClientHidden()V
    .locals 2

    #@0
    .prologue
    .line 2025
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@2
    .line 2026
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingWithSavedSurface:Z

    #@8
    .line 2025
    :goto_0
    or-int/2addr v0, v1

    #@9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@b
    .line 2024
    return-void

    #@c
    .line 2026
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
    .line 1780
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
    .line 1782
    .local v0, "scaledWindow":Z
    :cond_0
    if-eqz v0, :cond_3

    #@e
    .line 1786
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@12
    if-eq v1, p1, :cond_2

    #@14
    .line 1787
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
    .line 1786
    :goto_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@1d
    .line 1788
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1f
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@21
    if-eq v1, p2, :cond_1

    #@23
    .line 1789
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
    .line 1788
    :cond_1
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@2d
    .line 1779
    :goto_1
    return-void

    #@2e
    :cond_2
    move v1, v2

    #@2f
    .line 1787
    goto :goto_0

    #@30
    .line 1791
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
    .line 2949
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
    .line 2950
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@11
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@13
    const/4 v2, 0x4

    #@14
    if-eq v1, v2, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method shouldKeepVisibleDeadAppWindow()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1832
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
    .line 1834
    :cond_0
    return v1

    #@c
    .line 1832
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@e
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@10
    if-nez v2, :cond_0

    #@12
    .line 1837
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
    .line 1840
    return v1

    #@1f
    .line 1843
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@21
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@23
    const/4 v3, 0x3

    #@24
    if-ne v2, v3, :cond_3

    #@26
    .line 1846
    return v1

    #@27
    .line 1849
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@2a
    move-result-object v0

    #@2b
    .line 1850
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
    .line 1869
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
    .line 1873
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1874
    return v2

    #@9
    .line 1876
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1878
    return v2

    #@e
    .line 1880
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 1883
    return v2

    #@13
    .line 1885
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@15
    if-eqz v0, :cond_3

    #@17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@19
    if-eqz v0, :cond_3

    #@1b
    .line 1887
    return v2

    #@1c
    .line 1890
    :cond_3
    if-eqz p1, :cond_4

    #@1e
    .line 1893
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@20
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_7

    #@26
    .line 1894
    const/4 p1, 0x0

    #@27
    .line 1902
    .end local p1    # "doAnimation":Z
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@29
    .line 1903
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@2b
    .line 1904
    if-eqz p1, :cond_5

    #@2d
    .line 1905
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2f
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    #@32
    .line 1907
    :cond_5
    if-eqz p2, :cond_6

    #@34
    .line 1908
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@36
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@39
    .line 1910
    :cond_6
    return v1

    #@3a
    .line 1895
    .restart local p1    # "doAnimation":Z
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@3c
    if-eqz v0, :cond_4

    #@3e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@40
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@42
    if-nez v0, :cond_4

    #@44
    .line 1899
    const/4 p1, 0x0

    #@45
    .local p1, "doAnimation":Z
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2773
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    .line 2774
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    #@a
    if-eq v1, v0, :cond_2

    #@c
    .line 2775
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    #@e
    .line 2776
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@10
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    #@12
    .line 2777
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
    .line 2778
    const-string/jumbo v2, " u"

    #@2d
    .line 2777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 2778
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@33
    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    #@35
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@38
    move-result v2

    #@39
    .line 2777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 2779
    const-string/jumbo v2, " "

    #@40
    .line 2777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 2779
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    #@46
    .line 2777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 2779
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@4c
    if-eqz v1, :cond_3

    #@4e
    const-string/jumbo v1, " EXITING}"

    #@51
    .line 2777
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
    .line 2781
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    #@5d
    return-object v1

    #@5e
    .line 2774
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    #@60
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    #@62
    if-eq v1, v2, :cond_1

    #@64
    goto :goto_0

    #@65
    .line 2779
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
    .line 2932
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimLayerUser()Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@4
    move-result-object v0

    #@5
    .line 2933
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    if-eqz v0, :cond_1

    #@7
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 2934
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@d
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@f
    .line 2935
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mReplacingWindow:Lcom/android/server/wm/WindowState;

    #@11
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@13
    .line 2936
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
    .line 2934
    :cond_0
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    #@1f
    .line 2931
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
    .line 2785
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@3
    cmpl-float v0, v0, v2

    #@5
    if-ltz v0, :cond_0

    #@7
    .line 2786
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
    .line 2787
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
    .line 2789
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@20
    cmpl-float v0, v0, v2

    #@22
    if-ltz v0, :cond_1

    #@24
    .line 2790
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
    .line 2791
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
    .line 2784
    :cond_1
    return-void
.end method

.method translateToWindowX(F)F
    .locals 2
    .param p1, "x"    # F

    #@0
    .prologue
    .line 2916
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@4
    int-to-float v1, v1

    #@5
    sub-float v0, p1, v1

    #@7
    .line 2917
    .local v0, "winX":F
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2918
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@d
    mul-float/2addr v0, v1

    #@e
    .line 2920
    :cond_0
    return v0
.end method

.method translateToWindowY(F)F
    .locals 2
    .param p1, "y"    # F

    #@0
    .prologue
    .line 2924
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@4
    int-to-float v1, v1

    #@5
    sub-float v0, p1, v1

    #@7
    .line 2925
    .local v0, "winY":F
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 2926
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@d
    mul-float/2addr v0, v1

    #@e
    .line 2928
    :cond_0
    return v0
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    #@0
    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 2448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2449
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 2446
    return-void

    #@10
    .line 2447
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
    .line 2034
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasVisibleBeforeClientHidden:Z

    #@2
    return v0
.end method
