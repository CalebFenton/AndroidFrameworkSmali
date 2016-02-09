.class final Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$DeathRecipient;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WindowState"


# instance fields
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

.field final mCompatFrame:Landroid/graphics/Rect;

.field private mConfigHasChanged:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field final mDecorFrame:Landroid/graphics/Rect;

.field mDestroying:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mDrawLock:Landroid/os/PowerManager$WakeLock;

.field mEnforceSizeCompat:Z

.field mExiting:Z

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

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mInvGlobalScale:F

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field final mLastContentInsets:Landroid/graphics/Rect;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastFreezeDuration:I

.field mLastHScale:F

.field final mLastOutsets:Landroid/graphics/Rect;

.field final mLastOverscanInsets:Landroid/graphics/Rect;

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastStableInsets:Landroid/graphics/Rect;

.field final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mNotOnAppsDisplay:Z

.field mObscured:Z

.field mOrientationChanging:Z

.field final mOutsetFrame:Landroid/graphics/Rect;

.field final mOutsets:Landroid/graphics/Rect;

.field mOutsetsChanged:Z

.field private mOverrideConfig:Landroid/content/res/Configuration;

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

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/wm/WindowToken;

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field final mShownFrame:Landroid/graphics/RectF;

.field final mStableFrame:Landroid/graphics/Rect;

.field final mStableInsets:Landroid/graphics/Rect;

.field mStableInsetsChanged:Z

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field final mSystemDecorRect:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mTmpMatrix:Landroid/graphics/Matrix;

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

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field final mWindowId:Landroid/view/IWindowId;

.field mXOffset:I

.field mYOffset:I


# direct methods
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
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    new-instance v12, Landroid/view/WindowManager$LayoutParams;

    #@5
    invoke-direct {v12}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@8
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a
    .line 100
    new-instance v12, Lcom/android/server/wm/WindowList;

    #@c
    invoke-direct {v12}, Lcom/android/server/wm/WindowList;-><init>()V

    #@f
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@11
    .line 111
    const/4 v12, 0x1

    #@12
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@14
    .line 112
    const/4 v12, 0x1

    #@15
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@17
    .line 113
    const/4 v12, 0x1

    #@18
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@1a
    .line 134
    const/4 v12, -0x1

    #@1b
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    #@1d
    .line 136
    sget-object v12, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@1f
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    #@21
    .line 137
    sget-object v12, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@23
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    #@25
    .line 147
    new-instance v12, Landroid/graphics/RectF;

    #@27
    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    #@2a
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@2c
    .line 153
    new-instance v12, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@31
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@33
    .line 154
    new-instance v12, Landroid/graphics/Rect;

    #@35
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@38
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    #@3a
    .line 162
    new-instance v12, Landroid/graphics/Rect;

    #@3c
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@3f
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@41
    .line 163
    new-instance v12, Landroid/graphics/Rect;

    #@43
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@46
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@48
    .line 170
    new-instance v12, Landroid/graphics/Rect;

    #@4a
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@4d
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@4f
    .line 171
    new-instance v12, Landroid/graphics/Rect;

    #@51
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@54
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    #@56
    .line 178
    new-instance v12, Landroid/graphics/Rect;

    #@58
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@5b
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@5d
    .line 179
    new-instance v12, Landroid/graphics/Rect;

    #@5f
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@62
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    #@64
    .line 186
    new-instance v12, Landroid/graphics/Rect;

    #@66
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@69
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@6b
    .line 187
    new-instance v12, Landroid/graphics/Rect;

    #@6d
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@70
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@72
    .line 188
    const/4 v12, 0x0

    #@73
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@75
    .line 200
    new-instance v12, Landroid/graphics/Rect;

    #@77
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@7a
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@7c
    .line 206
    new-instance v12, Landroid/graphics/Rect;

    #@7e
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@81
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@83
    .line 211
    new-instance v12, Landroid/graphics/Region;

    #@85
    invoke-direct {v12}, Landroid/graphics/Region;-><init>()V

    #@88
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    #@8a
    .line 219
    const/4 v12, 0x0

    #@8b
    iput v12, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@8d
    .line 225
    new-instance v12, Landroid/graphics/Rect;

    #@8f
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@92
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@94
    .line 226
    new-instance v12, Landroid/graphics/Rect;

    #@96
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@99
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    #@9b
    .line 229
    const/high16 v12, 0x3f800000    # 1.0f

    #@9d
    iput v12, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@9f
    .line 230
    const/high16 v12, 0x3f800000    # 1.0f

    #@a1
    iput v12, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@a3
    .line 231
    const/high16 v12, 0x3f800000    # 1.0f

    #@a5
    iput v12, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@a7
    const/high16 v12, 0x3f800000    # 1.0f

    #@a9
    iput v12, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@ab
    .line 232
    const/high16 v12, 0x3f800000    # 1.0f

    #@ad
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    #@af
    const/high16 v12, 0x3f800000    # 1.0f

    #@b1
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    #@b3
    .line 233
    new-instance v12, Landroid/graphics/Matrix;

    #@b5
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    #@b8
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    #@ba
    .line 236
    new-instance v12, Landroid/graphics/Rect;

    #@bc
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@bf
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@c1
    .line 237
    new-instance v12, Landroid/graphics/Rect;

    #@c3
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@c6
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@c8
    .line 240
    new-instance v12, Landroid/graphics/Rect;

    #@ca
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@cd
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@cf
    .line 242
    new-instance v12, Landroid/graphics/Rect;

    #@d1
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@d4
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@d6
    .line 244
    new-instance v12, Landroid/graphics/Rect;

    #@d8
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@db
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    #@dd
    .line 248
    new-instance v12, Landroid/graphics/Rect;

    #@df
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@e2
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@e4
    .line 254
    new-instance v12, Landroid/graphics/Rect;

    #@e6
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@e9
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@eb
    .line 258
    new-instance v12, Landroid/graphics/Rect;

    #@ed
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@f0
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@f2
    .line 262
    new-instance v12, Landroid/graphics/Rect;

    #@f4
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@f7
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@f9
    .line 266
    new-instance v12, Landroid/graphics/Rect;

    #@fb
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@fe
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@100
    .line 270
    new-instance v12, Landroid/graphics/Rect;

    #@102
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@105
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@107
    .line 274
    new-instance v12, Landroid/graphics/Rect;

    #@109
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    #@10c
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@10e
    .line 280
    const/high16 v12, -0x40800000    # -1.0f

    #@110
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@112
    .line 281
    const/high16 v12, -0x40800000    # -1.0f

    #@114
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@116
    .line 285
    const/high16 v12, -0x40800000    # -1.0f

    #@118
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@11a
    .line 286
    const/high16 v12, -0x40800000    # -1.0f

    #@11c
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@11e
    .line 290
    const/high16 v12, -0x80000000

    #@120
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@122
    .line 291
    const/high16 v12, -0x80000000

    #@124
    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@126
    .line 353
    const/4 v12, 0x0

    #@127
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@129
    .line 355
    const/4 v12, 0x0

    #@12a
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@12c
    .line 373
    move-object/from16 v0, p1

    #@12e
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@130
    .line 374
    move-object/from16 v0, p2

    #@132
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@134
    .line 375
    move-object/from16 v0, p3

    #@136
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@138
    .line 376
    move/from16 v0, p6

    #@13a
    iput v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    #@13c
    .line 377
    move-object/from16 v0, p4

    #@13e
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@140
    .line 378
    move-object/from16 v0, p2

    #@142
    iget v12, v0, Lcom/android/server/wm/Session;->mUid:I

    #@144
    iput v12, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@146
    .line 379
    new-instance v12, Lcom/android/server/wm/WindowState$1;

    #@148
    invoke-direct {v12, p0}, Lcom/android/server/wm/WindowState$1;-><init>(Lcom/android/server/wm/WindowState;)V

    #@14b
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    #@14d
    .line 393
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@14f
    move-object/from16 v0, p8

    #@151
    invoke-virtual {v12, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    #@154
    .line 394
    move/from16 v0, p9

    #@156
    iput v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@158
    .line 395
    move-object/from16 v0, p10

    #@15a
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@15c
    .line 396
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@15e
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@160
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@162
    .line 397
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@164
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@166
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    #@168
    .line 398
    new-instance v7, Lcom/android/server/wm/WindowState$DeathRecipient;

    #@16a
    const/4 v12, 0x0

    #@16b
    invoke-direct {v7, p0, v12}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$DeathRecipient;)V

    #@16e
    .line 399
    .local v7, "deathRecipient":Lcom/android/server/wm/WindowState$DeathRecipient;
    move/from16 v0, p7

    #@170
    iput v0, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    #@172
    .line 400
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@174
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@176
    and-int/lit16 v12, v12, 0x80

    #@178
    if-eqz v12, :cond_1

    #@17a
    const/4 v12, 0x1

    #@17b
    :goto_0
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@17d
    .line 405
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@180
    move-result-object v12

    #@181
    const/4 v13, 0x0

    #@182
    invoke-interface {v12, v7, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@185
    .line 419
    iput-object v7, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    #@187
    .line 421
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@189
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@18b
    const/16 v13, 0x3e8

    #@18d
    if-lt v12, v13, :cond_b

    #@18f
    .line 422
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@191
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@193
    const/16 v13, 0x7cf

    #@195
    if-gt v12, v13, :cond_b

    #@197
    .line 425
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@199
    .line 426
    move-object/from16 v0, p5

    #@19b
    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@19d
    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    #@19f
    .line 425
    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@1a2
    move-result v12

    #@1a3
    mul-int/lit16 v12, v12, 0x2710

    #@1a5
    add-int/lit16 v12, v12, 0x3e8

    #@1a7
    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@1a9
    .line 428
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@1ab
    move-object/from16 v0, p8

    #@1ad
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1af
    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    #@1b2
    move-result v12

    #@1b3
    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@1b5
    .line 429
    move-object/from16 v0, p5

    #@1b7
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@1b9
    .line 432
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@1bb
    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@1bd
    .line 433
    .local v6, "childWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    #@1c0
    move-result v10

    #@1c1
    .line 434
    .local v10, "numChildWindows":I
    if-nez v10, :cond_2

    #@1c3
    .line 435
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    #@1c6
    .line 455
    :cond_0
    :goto_1
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1c8
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1ca
    .line 456
    const/16 v13, 0x3eb

    #@1cc
    .line 455
    if-eq v12, v13, :cond_6

    #@1ce
    const/4 v12, 0x1

    #@1cf
    :goto_2
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@1d1
    .line 457
    move-object/from16 v0, p5

    #@1d3
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1d5
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1d7
    const/16 v13, 0x7db

    #@1d9
    if-eq v12, v13, :cond_7

    #@1db
    .line 458
    move-object/from16 v0, p5

    #@1dd
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1df
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1e1
    const/16 v13, 0x7dc

    #@1e3
    if-ne v12, v13, :cond_8

    #@1e5
    const/4 v12, 0x1

    #@1e6
    .line 457
    :goto_3
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@1e8
    .line 459
    move-object/from16 v0, p5

    #@1ea
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1ec
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@1ee
    const/16 v13, 0x7dd

    #@1f0
    if-ne v12, v13, :cond_9

    #@1f2
    const/4 v12, 0x1

    #@1f3
    :goto_4
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@1f5
    .line 460
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@1f7
    if-nez v12, :cond_a

    #@1f9
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@1fb
    :goto_5
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@1fd
    .line 476
    .end local v6    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v10    # "numChildWindows":I
    :goto_6
    move-object v4, p0

    #@1fe
    .line 477
    .local v4, "appWin":Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v12, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@200
    if-eqz v12, :cond_10

    #@202
    .line 478
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@204
    goto :goto_7

    #@205
    .line 400
    .end local v4    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v12, 0x0

    #@206
    goto/16 :goto_0

    #@208
    .line 406
    :catch_0
    move-exception v8

    #@209
    .line 407
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v12, 0x0

    #@20a
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    #@20c
    .line 408
    const/4 v12, 0x0

    #@20d
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@20f
    .line 409
    const/4 v12, 0x0

    #@210
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@212
    .line 410
    const/4 v12, 0x0

    #@213
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@215
    .line 411
    const/4 v12, 0x0

    #@216
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@218
    .line 412
    const/4 v12, 0x0

    #@219
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@21b
    .line 413
    const/4 v12, 0x0

    #@21c
    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@21e
    .line 414
    const/4 v12, 0x0

    #@21f
    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@221
    .line 415
    const/4 v12, 0x0

    #@222
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@224
    .line 416
    const/4 v12, 0x0

    #@225
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@227
    .line 417
    return-void

    #@228
    .line 437
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v6    # "childWindows":Lcom/android/server/wm/WindowList;
    .restart local v10    # "numChildWindows":I
    :cond_2
    const/4 v1, 0x0

    #@229
    .line 438
    .local v1, "added":Z
    const/4 v9, 0x0

    #@22a
    .local v9, "i":I
    :goto_8
    if-ge v9, v10, :cond_4

    #@22c
    .line 439
    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@22f
    move-result-object v12

    #@230
    check-cast v12, Lcom/android/server/wm/WindowState;

    #@232
    iget v5, v12, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@234
    .line 440
    .local v5, "childSubLayer":I
    iget v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@236
    if-lt v12, v5, :cond_3

    #@238
    .line 441
    iget v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@23a
    if-ne v12, v5, :cond_5

    #@23c
    if-gez v5, :cond_5

    #@23e
    .line 445
    :cond_3
    invoke-virtual {v6, v9, p0}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    #@241
    .line 446
    const/4 v1, 0x1

    #@242
    .line 450
    .end local v5    # "childSubLayer":I
    :cond_4
    if-nez v1, :cond_0

    #@244
    .line 451
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    #@247
    goto/16 :goto_1

    #@249
    .line 438
    .restart local v5    # "childSubLayer":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    #@24b
    goto :goto_8

    #@24c
    .line 455
    .end local v1    # "added":Z
    .end local v5    # "childSubLayer":I
    .end local v9    # "i":I
    :cond_6
    const/4 v12, 0x0

    #@24d
    goto :goto_2

    #@24e
    .line 457
    :cond_7
    const/4 v12, 0x1

    #@24f
    goto :goto_3

    #@250
    .line 458
    :cond_8
    const/4 v12, 0x0

    #@251
    goto :goto_3

    #@252
    .line 459
    :cond_9
    const/4 v12, 0x0

    #@253
    goto :goto_4

    #@254
    .line 460
    :cond_a
    const/4 v12, 0x1

    #@255
    goto :goto_5

    #@256
    .line 464
    .end local v6    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v10    # "numChildWindows":I
    :cond_b
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@258
    move-object/from16 v0, p8

    #@25a
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    #@25c
    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@25f
    move-result v12

    #@260
    mul-int/lit16 v12, v12, 0x2710

    #@262
    add-int/lit16 v12, v12, 0x3e8

    #@264
    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@266
    .line 467
    const/4 v12, 0x0

    #@267
    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@269
    .line 468
    const/4 v12, 0x0

    #@26a
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@26c
    .line 469
    const/4 v12, 0x0

    #@26d
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@26f
    .line 470
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@271
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@273
    const/16 v13, 0x7db

    #@275
    if-eq v12, v13, :cond_c

    #@277
    .line 471
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@279
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@27b
    const/16 v13, 0x7dc

    #@27d
    if-ne v12, v13, :cond_d

    #@27f
    const/4 v12, 0x1

    #@280
    .line 470
    :goto_9
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@282
    .line 472
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@284
    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    #@286
    const/16 v13, 0x7dd

    #@288
    if-ne v12, v13, :cond_e

    #@28a
    const/4 v12, 0x1

    #@28b
    :goto_a
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@28d
    .line 473
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@28f
    if-nez v12, :cond_f

    #@291
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@293
    :goto_b
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@295
    goto/16 :goto_6

    #@297
    .line 470
    :cond_c
    const/4 v12, 0x1

    #@298
    goto :goto_9

    #@299
    .line 471
    :cond_d
    const/4 v12, 0x0

    #@29a
    goto :goto_9

    #@29b
    .line 472
    :cond_e
    const/4 v12, 0x0

    #@29c
    goto :goto_a

    #@29d
    .line 473
    :cond_f
    const/4 v12, 0x1

    #@29e
    goto :goto_b

    #@29f
    .line 480
    .restart local v4    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_10
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@2a1
    .line 481
    .local v3, "appToken":Lcom/android/server/wm/WindowToken;
    :goto_c
    iget-object v12, v3, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    #@2a3
    if-nez v12, :cond_11

    #@2a5
    .line 482
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2a7
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    #@2a9
    iget-object v13, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    #@2ab
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2ae
    move-result-object v11

    #@2af
    check-cast v11, Lcom/android/server/wm/WindowToken;

    #@2b1
    .line 483
    .local v11, "parent":Lcom/android/server/wm/WindowToken;
    if-eqz v11, :cond_11

    #@2b3
    if-ne v3, v11, :cond_13

    #@2b5
    .line 488
    .end local v11    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_11
    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@2b7
    .line 489
    iget-object v12, v3, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    #@2b9
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2bb
    .line 490
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2bd
    if-eqz v12, :cond_12

    #@2bf
    .line 491
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@2c2
    move-result-object v2

    #@2c3
    .line 492
    .local v2, "appDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p10

    #@2c5
    if-eq v0, v2, :cond_14

    #@2c7
    const/4 v12, 0x1

    #@2c8
    :goto_d
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@2ca
    .line 494
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2cc
    iget-boolean v12, v12, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    #@2ce
    if-eqz v12, :cond_12

    #@2d0
    .line 497
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2d2
    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2d4
    const/high16 v14, 0x80000

    #@2d6
    or-int/2addr v13, v14

    #@2d7
    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@2d9
    .line 501
    .end local v2    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_12
    new-instance v12, Lcom/android/server/wm/WindowStateAnimator;

    #@2db
    invoke-direct {v12, p0}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    #@2de
    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2e0
    .line 502
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2e2
    move-object/from16 v0, p8

    #@2e4
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@2e6
    iput v13, v12, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    #@2e8
    .line 504
    const/4 v12, 0x0

    #@2e9
    iput v12, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@2eb
    .line 505
    const/4 v12, 0x0

    #@2ec
    iput v12, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@2ee
    .line 506
    const/4 v12, 0x0

    #@2ef
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@2f1
    .line 507
    const/4 v12, 0x0

    #@2f2
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@2f4
    .line 508
    const/4 v12, 0x0

    #@2f5
    iput v12, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@2f7
    .line 509
    const/4 v12, 0x0

    #@2f8
    iput v12, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@2fa
    .line 510
    const/4 v12, 0x0

    #@2fb
    iput v12, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@2fd
    .line 511
    new-instance v13, Lcom/android/server/input/InputWindowHandle;

    #@2ff
    .line 512
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@301
    if-eqz v12, :cond_15

    #@303
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@305
    iget-object v12, v12, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@307
    .line 513
    :goto_e
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@30a
    move-result v14

    #@30b
    .line 511
    invoke-direct {v13, v12, p0, v14}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    #@30e
    iput-object v13, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@310
    .line 372
    return-void

    #@311
    .line 486
    .restart local v11    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_13
    move-object v3, v11

    #@312
    goto :goto_c

    #@313
    .line 492
    .end local v11    # "parent":Lcom/android/server/wm/WindowToken;
    .restart local v2    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_14
    const/4 v12, 0x0

    #@314
    goto :goto_d

    #@315
    .line 512
    .end local v2    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_15
    const/4 v12, 0x0

    #@316
    goto :goto_e
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "outRegion"    # Landroid/graphics/Region;
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "inset"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1430
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
    .line 1431
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
    .line 1429
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    #@17
    .line 1428
    return-void
.end method

.method private setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newOverrideConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    #@2
    .line 1180
    iput-object p2, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    #@4
    .line 1181
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@7
    .line 1178
    return-void
.end method


# virtual methods
.method attach()V
    .locals 1

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    #@5
    .line 516
    return-void
.end method

.method public final canReceiveKeys()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1229
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1230
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1231
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@d
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    and-int/lit8 v1, v1, 0x8

    #@11
    if-nez v1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 1229
    :cond_0
    return v0
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 21
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
    .line 536
    const/4 v1, 0x1

    #@1
    move-object/from16 v0, p0

    #@3
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    #@5
    .line 538
    move-object/from16 v0, p0

    #@7
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@9
    if-eqz v1, :cond_b

    #@b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@e
    move-result-object v17

    #@f
    .line 539
    :goto_0
    if-eqz v17, :cond_0

    #@11
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_c

    #@17
    :cond_0
    const/4 v14, 0x0

    #@18
    .line 540
    .local v14, "nonFullscreenStack":Z
    :goto_1
    if-eqz v14, :cond_d

    #@1a
    .line 541
    move-object/from16 v0, p0

    #@1c
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@1e
    move-object/from16 v0, v17

    #@20
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@23
    .line 542
    move-object/from16 v0, p0

    #@25
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@27
    iget-object v13, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    #@29
    .line 543
    .local v13, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v13, :cond_1

    #@2b
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@35
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    #@37
    move-object/from16 v0, p0

    #@39
    if-ne v1, v0, :cond_1

    #@3b
    .line 544
    move-object/from16 v0, p0

    #@3d
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@3f
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@41
    move-object/from16 v0, p4

    #@43
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@45
    if-le v1, v4, :cond_1

    #@47
    .line 546
    move-object/from16 v0, p0

    #@49
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@4b
    iget v4, v1, Landroid/graphics/Rect;->top:I

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@51
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@53
    move-object/from16 v0, p4

    #@55
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #@57
    sub-int/2addr v5, v6

    #@58
    sub-int/2addr v4, v5

    #@59
    iput v4, v1, Landroid/graphics/Rect;->top:I

    #@5b
    .line 550
    :cond_1
    move-object/from16 v0, p0

    #@5d
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@5f
    move-object/from16 v0, p4

    #@61
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@64
    move-result v1

    #@65
    if-nez v1, :cond_2

    #@67
    .line 551
    move-object/from16 v0, p0

    #@69
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@6b
    move-object/from16 v0, p4

    #@6d
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@70
    .line 553
    :cond_2
    move-object/from16 v0, p0

    #@72
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@74
    move-object/from16 v0, p0

    #@76
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@78
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7b
    .line 559
    .end local v13    # "imeWin":Lcom/android/server/wm/WindowState;
    :goto_2
    move-object/from16 v0, p0

    #@7d
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@7f
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@82
    move-result v16

    #@83
    .line 560
    .local v16, "pw":I
    move-object/from16 v0, p0

    #@85
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@87
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@8a
    move-result v15

    #@8b
    .line 563
    .local v15, "ph":I
    move-object/from16 v0, p0

    #@8d
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@8f
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@91
    and-int/lit16 v1, v1, 0x4000

    #@93
    if-eqz v1, :cond_12

    #@95
    .line 564
    move-object/from16 v0, p0

    #@97
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@99
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@9b
    if-gez v1, :cond_e

    #@9d
    .line 565
    move/from16 v2, v16

    #@9f
    .line 571
    .local v2, "w":I
    :goto_3
    move-object/from16 v0, p0

    #@a1
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a3
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@a5
    if-gez v1, :cond_10

    #@a7
    .line 572
    move v3, v15

    #@a8
    .line 595
    .local v3, "h":I
    :goto_4
    move-object/from16 v0, p0

    #@aa
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    #@ac
    move-object/from16 v0, p1

    #@ae
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v1

    #@b2
    if-nez v1, :cond_3

    #@b4
    .line 598
    move-object/from16 v0, p0

    #@b6
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    #@b8
    move-object/from16 v0, p1

    #@ba
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@bd
    .line 599
    const/4 v1, 0x1

    #@be
    move-object/from16 v0, p0

    #@c0
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@c2
    .line 601
    :cond_3
    move-object/from16 v0, p0

    #@c4
    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget v4, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@ca
    if-ne v1, v4, :cond_4

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@d0
    move-object/from16 v0, p0

    #@d2
    iget v4, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@d4
    if-eq v1, v4, :cond_5

    #@d6
    .line 602
    :cond_4
    move-object/from16 v0, p0

    #@d8
    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@da
    move-object/from16 v0, p0

    #@dc
    iput v1, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@de
    .line 603
    move-object/from16 v0, p0

    #@e0
    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@e2
    move-object/from16 v0, p0

    #@e4
    iput v1, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@e6
    .line 604
    const/4 v1, 0x1

    #@e7
    move-object/from16 v0, p0

    #@e9
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@eb
    .line 607
    :cond_5
    move-object/from16 v0, p0

    #@ed
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@ef
    move-object/from16 v0, p3

    #@f1
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@f4
    .line 608
    move-object/from16 v0, p0

    #@f6
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@f8
    move-object/from16 v0, p4

    #@fa
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@fd
    .line 609
    move-object/from16 v0, p0

    #@ff
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@101
    move-object/from16 v0, p5

    #@103
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@106
    .line 610
    move-object/from16 v0, p0

    #@108
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@10a
    move-object/from16 v0, p6

    #@10c
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@10f
    .line 611
    move-object/from16 v0, p0

    #@111
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@113
    move-object/from16 v0, p7

    #@115
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@118
    .line 612
    if-eqz p8, :cond_17

    #@11a
    const/4 v12, 0x1

    #@11b
    .line 613
    .local v12, "hasOutsets":Z
    :goto_5
    if-eqz v12, :cond_6

    #@11d
    .line 614
    move-object/from16 v0, p0

    #@11f
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@121
    move-object/from16 v0, p8

    #@123
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@126
    .line 617
    :cond_6
    move-object/from16 v0, p0

    #@128
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@12a
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@12d
    move-result v11

    #@12e
    .line 618
    .local v11, "fw":I
    move-object/from16 v0, p0

    #@130
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@132
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@135
    move-result v10

    #@136
    .line 621
    .local v10, "fh":I
    move-object/from16 v0, p0

    #@138
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@13a
    if-eqz v1, :cond_18

    #@13c
    .line 622
    move-object/from16 v0, p0

    #@13e
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@140
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@142
    int-to-float v1, v1

    #@143
    move-object/from16 v0, p0

    #@145
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@147
    mul-float v18, v1, v4

    #@149
    .line 623
    .local v18, "x":F
    move-object/from16 v0, p0

    #@14b
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@14d
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@14f
    int-to-float v1, v1

    #@150
    move-object/from16 v0, p0

    #@152
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@154
    mul-float v19, v1, v4

    #@156
    .line 629
    .local v19, "y":F
    :goto_6
    if-eqz v14, :cond_7

    #@158
    .line 632
    move/from16 v0, v16

    #@15a
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@15d
    move-result v2

    #@15e
    .line 633
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    #@161
    move-result v3

    #@162
    .line 636
    :cond_7
    move-object/from16 v0, p0

    #@164
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@166
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@168
    move-object/from16 v0, p0

    #@16a
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@16c
    .line 637
    move-object/from16 v0, p0

    #@16e
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@170
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    #@172
    move/from16 v0, v16

    #@174
    int-to-float v6, v0

    #@175
    mul-float/2addr v5, v6

    #@176
    add-float v5, v5, v18

    #@178
    float-to-int v5, v5

    #@179
    .line 638
    move-object/from16 v0, p0

    #@17b
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@17d
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    #@17f
    int-to-float v7, v15

    #@180
    mul-float/2addr v6, v7

    #@181
    add-float v6, v6, v19

    #@183
    float-to-int v6, v6

    #@184
    move-object/from16 v0, p0

    #@186
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@188
    .line 636
    invoke-static/range {v1 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    #@18b
    .line 641
    move-object/from16 v0, p0

    #@18d
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@18f
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@191
    move-object/from16 v0, p0

    #@193
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@195
    move-object/from16 v0, p0

    #@197
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@199
    invoke-static {v1, v4, v5}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@19c
    .line 644
    if-eqz v12, :cond_19

    #@19e
    .line 645
    move-object/from16 v0, p0

    #@1a0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@1a6
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@1a8
    move-object/from16 v0, p0

    #@1aa
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@1ac
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@1ae
    sub-int/2addr v4, v5

    #@1af
    const/4 v5, 0x0

    #@1b0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@1b3
    move-result v4

    #@1b4
    .line 646
    move-object/from16 v0, p0

    #@1b6
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@1b8
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@1be
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@1c0
    sub-int/2addr v5, v6

    #@1c1
    const/4 v6, 0x0

    #@1c2
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@1c5
    move-result v5

    #@1c6
    .line 647
    move-object/from16 v0, p0

    #@1c8
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@1ca
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@1cc
    move-object/from16 v0, p0

    #@1ce
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@1d0
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@1d2
    sub-int/2addr v6, v7

    #@1d3
    const/4 v7, 0x0

    #@1d4
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@1d7
    move-result v6

    #@1d8
    .line 648
    move-object/from16 v0, p0

    #@1da
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@1dc
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@1de
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@1e2
    move-object/from16 v20, v0

    #@1e4
    move-object/from16 v0, v20

    #@1e6
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@1e8
    move/from16 v20, v0

    #@1ea
    sub-int v7, v7, v20

    #@1ec
    const/16 v20, 0x0

    #@1ee
    move/from16 v0, v20

    #@1f0
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    #@1f3
    move-result v7

    #@1f4
    .line 645
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@1f7
    .line 655
    :goto_7
    move-object/from16 v0, p0

    #@1f9
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@1ff
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@201
    move-object/from16 v0, p0

    #@203
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@205
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@207
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@20a
    move-result v4

    #@20b
    .line 656
    move-object/from16 v0, p0

    #@20d
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@20f
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@211
    move-object/from16 v0, p0

    #@213
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@215
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@217
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@21a
    move-result v5

    #@21b
    .line 657
    move-object/from16 v0, p0

    #@21d
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@21f
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@221
    move-object/from16 v0, p0

    #@223
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@225
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@227
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@22a
    move-result v6

    #@22b
    .line 658
    move-object/from16 v0, p0

    #@22d
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@22f
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@231
    move-object/from16 v0, p0

    #@233
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@235
    move-object/from16 v20, v0

    #@237
    move-object/from16 v0, v20

    #@239
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@23b
    move/from16 v20, v0

    #@23d
    move/from16 v0, v20

    #@23f
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    #@242
    move-result v7

    #@243
    .line 655
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@246
    .line 660
    move-object/from16 v0, p0

    #@248
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@24a
    move-object/from16 v0, p0

    #@24c
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@24e
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@250
    move-object/from16 v0, p0

    #@252
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@254
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@256
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@259
    move-result v4

    #@25a
    .line 661
    move-object/from16 v0, p0

    #@25c
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@25e
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@260
    move-object/from16 v0, p0

    #@262
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@264
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@266
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@269
    move-result v5

    #@26a
    .line 662
    move-object/from16 v0, p0

    #@26c
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@26e
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@270
    move-object/from16 v0, p0

    #@272
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@274
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@276
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@279
    move-result v6

    #@27a
    .line 663
    move-object/from16 v0, p0

    #@27c
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@27e
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@280
    move-object/from16 v0, p0

    #@282
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@284
    move-object/from16 v20, v0

    #@286
    move-object/from16 v0, v20

    #@288
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@28a
    move/from16 v20, v0

    #@28c
    move/from16 v0, v20

    #@28e
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    #@291
    move-result v7

    #@292
    .line 660
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@295
    .line 665
    move-object/from16 v0, p0

    #@297
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@299
    move-object/from16 v0, p0

    #@29b
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@29d
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@29f
    move-object/from16 v0, p0

    #@2a1
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2a3
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@2a5
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@2a8
    move-result v4

    #@2a9
    .line 666
    move-object/from16 v0, p0

    #@2ab
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@2ad
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@2af
    move-object/from16 v0, p0

    #@2b1
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2b3
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@2b5
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@2b8
    move-result v5

    #@2b9
    .line 667
    move-object/from16 v0, p0

    #@2bb
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@2bd
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@2bf
    move-object/from16 v0, p0

    #@2c1
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2c3
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@2c5
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@2c8
    move-result v6

    #@2c9
    .line 668
    move-object/from16 v0, p0

    #@2cb
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@2cd
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@2cf
    move-object/from16 v0, p0

    #@2d1
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2d3
    move-object/from16 v20, v0

    #@2d5
    move-object/from16 v0, v20

    #@2d7
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@2d9
    move/from16 v20, v0

    #@2db
    move/from16 v0, v20

    #@2dd
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    #@2e0
    move-result v7

    #@2e1
    .line 665
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@2e4
    .line 670
    move-object/from16 v0, p0

    #@2e6
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@2e8
    move-object/from16 v0, p0

    #@2ea
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@2ec
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@2ee
    move-object/from16 v0, p0

    #@2f0
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2f2
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@2f4
    sub-int/2addr v4, v5

    #@2f5
    const/4 v5, 0x0

    #@2f6
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@2f9
    move-result v4

    #@2fa
    .line 671
    move-object/from16 v0, p0

    #@2fc
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@2fe
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@300
    move-object/from16 v0, p0

    #@302
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@304
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@306
    sub-int/2addr v5, v6

    #@307
    const/4 v6, 0x0

    #@308
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@30b
    move-result v5

    #@30c
    .line 672
    move-object/from16 v0, p0

    #@30e
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@310
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@312
    move-object/from16 v0, p0

    #@314
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@316
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@318
    sub-int/2addr v6, v7

    #@319
    const/4 v7, 0x0

    #@31a
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@31d
    move-result v6

    #@31e
    .line 673
    move-object/from16 v0, p0

    #@320
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@322
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@324
    move-object/from16 v0, p0

    #@326
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@328
    move-object/from16 v20, v0

    #@32a
    move-object/from16 v0, v20

    #@32c
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@32e
    move/from16 v20, v0

    #@330
    sub-int v7, v7, v20

    #@332
    const/16 v20, 0x0

    #@334
    move/from16 v0, v20

    #@336
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    #@339
    move-result v7

    #@33a
    .line 670
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@33d
    .line 675
    move-object/from16 v0, p0

    #@33f
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@341
    move-object/from16 v0, p0

    #@343
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@345
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@347
    move-object/from16 v0, p0

    #@349
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@34b
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@34d
    sub-int/2addr v4, v5

    #@34e
    .line 676
    move-object/from16 v0, p0

    #@350
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@352
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@354
    move-object/from16 v0, p0

    #@356
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@358
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@35a
    sub-int/2addr v5, v6

    #@35b
    .line 677
    move-object/from16 v0, p0

    #@35d
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@35f
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@361
    move-object/from16 v0, p0

    #@363
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@365
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@367
    sub-int/2addr v6, v7

    #@368
    .line 678
    move-object/from16 v0, p0

    #@36a
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@36c
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@36e
    move-object/from16 v0, p0

    #@370
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@372
    move-object/from16 v20, v0

    #@374
    move-object/from16 v0, v20

    #@376
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@378
    move/from16 v20, v0

    #@37a
    sub-int v7, v7, v20

    #@37c
    .line 675
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@37f
    .line 680
    move-object/from16 v0, p0

    #@381
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@383
    move-object/from16 v0, p0

    #@385
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@387
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@389
    move-object/from16 v0, p0

    #@38b
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@38d
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@38f
    sub-int/2addr v4, v5

    #@390
    .line 681
    move-object/from16 v0, p0

    #@392
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@394
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@396
    move-object/from16 v0, p0

    #@398
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@39a
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@39c
    sub-int/2addr v5, v6

    #@39d
    .line 682
    move-object/from16 v0, p0

    #@39f
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3a1
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@3a3
    move-object/from16 v0, p0

    #@3a5
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@3a7
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@3a9
    sub-int/2addr v6, v7

    #@3aa
    .line 683
    move-object/from16 v0, p0

    #@3ac
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3ae
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@3b0
    move-object/from16 v0, p0

    #@3b2
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@3b4
    move-object/from16 v20, v0

    #@3b6
    move-object/from16 v0, v20

    #@3b8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@3ba
    move/from16 v20, v0

    #@3bc
    sub-int v7, v7, v20

    #@3be
    .line 680
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@3c1
    .line 685
    move-object/from16 v0, p0

    #@3c3
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@3c5
    move-object/from16 v0, p0

    #@3c7
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@3c9
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@3cb
    move-object/from16 v0, p0

    #@3cd
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3cf
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@3d1
    sub-int/2addr v4, v5

    #@3d2
    const/4 v5, 0x0

    #@3d3
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@3d6
    move-result v4

    #@3d7
    .line 686
    move-object/from16 v0, p0

    #@3d9
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@3db
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@3dd
    move-object/from16 v0, p0

    #@3df
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3e1
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@3e3
    sub-int/2addr v5, v6

    #@3e4
    const/4 v6, 0x0

    #@3e5
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    #@3e8
    move-result v5

    #@3e9
    .line 687
    move-object/from16 v0, p0

    #@3eb
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3ed
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@3ef
    move-object/from16 v0, p0

    #@3f1
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@3f3
    iget v7, v7, Landroid/graphics/Rect;->right:I

    #@3f5
    sub-int/2addr v6, v7

    #@3f6
    const/4 v7, 0x0

    #@3f7
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@3fa
    move-result v6

    #@3fb
    .line 688
    move-object/from16 v0, p0

    #@3fd
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3ff
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@401
    move-object/from16 v0, p0

    #@403
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    #@405
    move-object/from16 v20, v0

    #@407
    move-object/from16 v0, v20

    #@409
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@40b
    move/from16 v20, v0

    #@40d
    sub-int v7, v7, v20

    #@40f
    const/16 v20, 0x0

    #@411
    move/from16 v0, v20

    #@413
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    #@416
    move-result v7

    #@417
    .line 685
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@41a
    .line 690
    move-object/from16 v0, p0

    #@41c
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@41e
    move-object/from16 v0, p0

    #@420
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@422
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@425
    .line 691
    move-object/from16 v0, p0

    #@427
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@429
    if-eqz v1, :cond_8

    #@42b
    .line 695
    move-object/from16 v0, p0

    #@42d
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@42f
    move-object/from16 v0, p0

    #@431
    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@433
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    #@436
    .line 696
    move-object/from16 v0, p0

    #@438
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@43a
    move-object/from16 v0, p0

    #@43c
    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@43e
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    #@441
    .line 697
    move-object/from16 v0, p0

    #@443
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@445
    move-object/from16 v0, p0

    #@447
    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@449
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    #@44c
    .line 698
    move-object/from16 v0, p0

    #@44e
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@450
    move-object/from16 v0, p0

    #@452
    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@454
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    #@457
    .line 699
    move-object/from16 v0, p0

    #@459
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@45b
    move-object/from16 v0, p0

    #@45d
    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@45f
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    #@462
    .line 703
    move-object/from16 v0, p0

    #@464
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@466
    move-object/from16 v0, p0

    #@468
    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@46a
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    #@46d
    .line 706
    :cond_8
    move-object/from16 v0, p0

    #@46f
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@471
    if-eqz v1, :cond_a

    #@473
    move-object/from16 v0, p0

    #@475
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@477
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@47a
    move-result v1

    #@47b
    if-ne v11, v1, :cond_9

    #@47d
    move-object/from16 v0, p0

    #@47f
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@481
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@484
    move-result v1

    #@485
    if-eq v10, v1, :cond_a

    #@487
    .line 707
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@48a
    move-result-object v8

    #@48b
    .line 708
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v8, :cond_a

    #@48d
    .line 709
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@490
    move-result-object v9

    #@491
    .line 710
    .local v9, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    #@493
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@495
    .line 711
    iget v4, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    #@497
    iget v5, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    #@499
    const/4 v6, 0x0

    #@49a
    .line 710
    move-object/from16 v0, p0

    #@49c
    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    #@49f
    .line 535
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v9    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_a
    return-void

    #@4a0
    .line 538
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v10    # "fh":I
    .end local v11    # "fw":I
    .end local v12    # "hasOutsets":Z
    .end local v14    # "nonFullscreenStack":Z
    .end local v15    # "ph":I
    .end local v16    # "pw":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    :cond_b
    const/16 v17, 0x0

    #@4a2
    .local v17, "stack":Lcom/android/server/wm/TaskStack;
    goto/16 :goto_0

    #@4a4
    .line 539
    .end local v17    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_c
    const/4 v14, 0x1

    #@4a5
    .restart local v14    # "nonFullscreenStack":Z
    goto/16 :goto_1

    #@4a7
    .line 555
    :cond_d
    move-object/from16 v0, p0

    #@4a9
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@4ab
    move-object/from16 v0, p1

    #@4ad
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4b0
    .line 556
    move-object/from16 v0, p0

    #@4b2
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@4b4
    move-object/from16 v0, p2

    #@4b6
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4b9
    goto/16 :goto_2

    #@4bb
    .line 566
    .restart local v15    # "ph":I
    .restart local v16    # "pw":I
    :cond_e
    move-object/from16 v0, p0

    #@4bd
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@4bf
    if-eqz v1, :cond_f

    #@4c1
    .line 567
    move-object/from16 v0, p0

    #@4c3
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4c5
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@4c7
    int-to-float v1, v1

    #@4c8
    move-object/from16 v0, p0

    #@4ca
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@4cc
    mul-float/2addr v1, v4

    #@4cd
    const/high16 v4, 0x3f000000    # 0.5f

    #@4cf
    add-float/2addr v1, v4

    #@4d0
    float-to-int v2, v1

    #@4d1
    .restart local v2    # "w":I
    goto/16 :goto_3

    #@4d3
    .line 569
    .end local v2    # "w":I
    :cond_f
    move-object/from16 v0, p0

    #@4d5
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4d7
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@4d9
    .restart local v2    # "w":I
    goto/16 :goto_3

    #@4db
    .line 573
    :cond_10
    move-object/from16 v0, p0

    #@4dd
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@4df
    if-eqz v1, :cond_11

    #@4e1
    .line 574
    move-object/from16 v0, p0

    #@4e3
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4e5
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@4e7
    int-to-float v1, v1

    #@4e8
    move-object/from16 v0, p0

    #@4ea
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@4ec
    mul-float/2addr v1, v4

    #@4ed
    const/high16 v4, 0x3f000000    # 0.5f

    #@4ef
    add-float/2addr v1, v4

    #@4f0
    float-to-int v3, v1

    #@4f1
    .restart local v3    # "h":I
    goto/16 :goto_4

    #@4f3
    .line 576
    .end local v3    # "h":I
    :cond_11
    move-object/from16 v0, p0

    #@4f5
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4f7
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@4f9
    .restart local v3    # "h":I
    goto/16 :goto_4

    #@4fb
    .line 579
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_12
    move-object/from16 v0, p0

    #@4fd
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4ff
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    #@501
    const/4 v4, -0x1

    #@502
    if-ne v1, v4, :cond_13

    #@504
    .line 580
    move/from16 v2, v16

    #@506
    .line 586
    .restart local v2    # "w":I
    :goto_8
    move-object/from16 v0, p0

    #@508
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@50a
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    #@50c
    const/4 v4, -0x1

    #@50d
    if-ne v1, v4, :cond_15

    #@50f
    .line 587
    move v3, v15

    #@510
    .restart local v3    # "h":I
    goto/16 :goto_4

    #@512
    .line 581
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_13
    move-object/from16 v0, p0

    #@514
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@516
    if-eqz v1, :cond_14

    #@518
    .line 582
    move-object/from16 v0, p0

    #@51a
    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@51c
    int-to-float v1, v1

    #@51d
    move-object/from16 v0, p0

    #@51f
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@521
    mul-float/2addr v1, v4

    #@522
    const/high16 v4, 0x3f000000    # 0.5f

    #@524
    add-float/2addr v1, v4

    #@525
    float-to-int v2, v1

    #@526
    .restart local v2    # "w":I
    goto :goto_8

    #@527
    .line 584
    .end local v2    # "w":I
    :cond_14
    move-object/from16 v0, p0

    #@529
    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@52b
    .restart local v2    # "w":I
    goto :goto_8

    #@52c
    .line 588
    :cond_15
    move-object/from16 v0, p0

    #@52e
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@530
    if-eqz v1, :cond_16

    #@532
    .line 589
    move-object/from16 v0, p0

    #@534
    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@536
    int-to-float v1, v1

    #@537
    move-object/from16 v0, p0

    #@539
    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@53b
    mul-float/2addr v1, v4

    #@53c
    const/high16 v4, 0x3f000000    # 0.5f

    #@53e
    add-float/2addr v1, v4

    #@53f
    float-to-int v3, v1

    #@540
    .restart local v3    # "h":I
    goto/16 :goto_4

    #@542
    .line 591
    .end local v3    # "h":I
    :cond_16
    move-object/from16 v0, p0

    #@544
    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@546
    .restart local v3    # "h":I
    goto/16 :goto_4

    #@548
    .line 612
    :cond_17
    const/4 v12, 0x0

    #@549
    .restart local v12    # "hasOutsets":Z
    goto/16 :goto_5

    #@54b
    .line 625
    .restart local v10    # "fh":I
    .restart local v11    # "fw":I
    :cond_18
    move-object/from16 v0, p0

    #@54d
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@54f
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@551
    int-to-float v0, v1

    #@552
    move/from16 v18, v0

    #@554
    .line 626
    .restart local v18    # "x":F
    move-object/from16 v0, p0

    #@556
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@558
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    #@55a
    int-to-float v0, v1

    #@55b
    move/from16 v19, v0

    #@55d
    .restart local v19    # "y":F
    goto/16 :goto_6

    #@55f
    .line 650
    :cond_19
    move-object/from16 v0, p0

    #@561
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@563
    const/4 v4, 0x0

    #@564
    const/4 v5, 0x0

    #@565
    const/4 v6, 0x0

    #@566
    const/4 v7, 0x0

    #@567
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    #@56a
    goto/16 :goto_7
.end method

.method disposeInputChannel()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1194
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1195
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@9
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    #@e
    .line 1197
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@10
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@13
    .line 1198
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@15
    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@17
    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@19
    .line 1193
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
    .line 1579
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@a
    move-result-object v1

    #@b
    .line 1580
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
    .line 1581
    if-eqz v1, :cond_0

    #@1d
    .line 1582
    const-string/jumbo v3, " stackId="

    #@20
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    iget v3, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@25
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@28
    .line 1584
    :cond_0
    const-string/jumbo v3, " mSession="

    #@2b
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@30
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@33
    .line 1585
    const-string/jumbo v3, " mClient="

    #@36
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@3b
    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@42
    .line 1586
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    const-string/jumbo v3, "mOwnerUid="

    #@48
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@4d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@50
    .line 1587
    const-string/jumbo v3, " mShowToOwnerOnly="

    #@53
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    #@58
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@5b
    .line 1588
    const-string/jumbo v3, " package="

    #@5e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@61
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@63
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@65
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@68
    .line 1589
    const-string/jumbo v3, " appop="

    #@6b
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    iget v3, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    #@70
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@77
    .line 1590
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    const-string/jumbo v3, "mAttrs="

    #@7d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@82
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@85
    .line 1591
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@88
    const-string/jumbo v3, "Requested w="

    #@8b
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@90
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@93
    .line 1592
    const-string/jumbo v3, " h="

    #@96
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@9b
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@9e
    .line 1593
    const-string/jumbo v3, " mLayoutSeq="

    #@a1
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a4
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    #@a6
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    #@a9
    .line 1594
    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    #@ab
    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@ad
    if-ne v3, v4, :cond_1

    #@af
    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    #@b1
    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@b3
    if-eq v3, v4, :cond_2

    #@b5
    .line 1595
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b8
    const-string/jumbo v3, "LastRequested w="

    #@bb
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@be
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    #@c0
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@c3
    .line 1596
    const-string/jumbo v3, " h="

    #@c6
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c9
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    #@cb
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    #@ce
    .line 1598
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@d0
    if-nez v3, :cond_3

    #@d2
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@d4
    if-eqz v3, :cond_4

    #@d6
    .line 1599
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d9
    const-string/jumbo v3, "mAttachedWindow="

    #@dc
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@df
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@e1
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@e4
    .line 1600
    const-string/jumbo v3, " mLayoutAttached="

    #@e7
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ea
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    #@ec
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@ef
    .line 1602
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@f1
    if-nez v3, :cond_5

    #@f3
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@f5
    if-nez v3, :cond_5

    #@f7
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@f9
    if-eqz v3, :cond_6

    #@fb
    .line 1603
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fe
    const-string/jumbo v3, "mIsImWindow="

    #@101
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@104
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@106
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@109
    .line 1604
    const-string/jumbo v3, " mIsWallpaper="

    #@10c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10f
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@111
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@114
    .line 1605
    const-string/jumbo v3, " mIsFloatingLayer="

    #@117
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11a
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    #@11c
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@11f
    .line 1606
    const-string/jumbo v3, " mWallpaperVisible="

    #@122
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@125
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    #@127
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@12a
    .line 1608
    :cond_6
    if-eqz p3, :cond_8

    #@12c
    .line 1609
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12f
    const-string/jumbo v3, "mBaseLayer="

    #@132
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@135
    iget v3, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@137
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@13a
    .line 1610
    const-string/jumbo v3, " mSubLayer="

    #@13d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@140
    iget v3, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    #@142
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@145
    .line 1611
    const-string/jumbo v3, " mAnimLayer="

    #@148
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14b
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@14d
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    #@150
    const-string/jumbo v3, "+"

    #@153
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@156
    .line 1612
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@158
    if-eqz v3, :cond_27

    #@15a
    .line 1613
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@15c
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@15e
    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@160
    .line 1612
    :cond_7
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@163
    .line 1615
    const-string/jumbo v2, "="

    #@166
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@169
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@16b
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@16d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@170
    .line 1616
    const-string/jumbo v2, " mLastLayer="

    #@173
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@176
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@178
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    #@17a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@17d
    .line 1618
    :cond_8
    if-eqz p3, :cond_b

    #@17f
    .line 1619
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@182
    const-string/jumbo v2, "mToken="

    #@185
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@188
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    #@18a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@18d
    .line 1620
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@190
    const-string/jumbo v2, "mRootToken="

    #@193
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@196
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@198
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19b
    .line 1621
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@19d
    if-eqz v2, :cond_9

    #@19f
    .line 1622
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a2
    const-string/jumbo v2, "mAppToken="

    #@1a5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a8
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1aa
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1ad
    .line 1624
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1af
    if-eqz v2, :cond_a

    #@1b1
    .line 1625
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b4
    const-string/jumbo v2, "mTargetAppToken="

    #@1b7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ba
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1bc
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1bf
    .line 1627
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c2
    const-string/jumbo v2, "mViewVisibility=0x"

    #@1c5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c8
    .line 1628
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@1ca
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1cd
    move-result-object v2

    #@1ce
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d1
    .line 1629
    const-string/jumbo v2, " mHaveFrame="

    #@1d4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d7
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    #@1d9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@1dc
    .line 1630
    const-string/jumbo v2, " mObscured="

    #@1df
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    #@1e4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@1e7
    .line 1631
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ea
    const-string/jumbo v2, "mSeq="

    #@1ed
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f0
    iget v2, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    #@1f2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@1f5
    .line 1632
    const-string/jumbo v2, " mSystemUiVisibility=0x"

    #@1f8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fb
    .line 1633
    iget v2, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    #@1fd
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@200
    move-result-object v2

    #@201
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@204
    .line 1635
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@206
    if-eqz v2, :cond_c

    #@208
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@20a
    if-eqz v2, :cond_c

    #@20c
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@20e
    if-eqz v2, :cond_c

    #@210
    .line 1636
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@212
    .line 1635
    if-eqz v2, :cond_d

    #@214
    .line 1637
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@217
    const-string/jumbo v2, "mPolicyVisibility="

    #@21a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21d
    .line 1638
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@21f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@222
    .line 1639
    const-string/jumbo v2, " mPolicyVisibilityAfterAnim="

    #@225
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@228
    .line 1640
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@22a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@22d
    .line 1641
    const-string/jumbo v2, " mAppOpVisibility="

    #@230
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@233
    .line 1642
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@235
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@238
    .line 1643
    const-string/jumbo v2, " mAttachedHidden="

    #@23b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@240
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@243
    .line 1645
    :cond_d
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@245
    if-eqz v2, :cond_e

    #@247
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@249
    if-eqz v2, :cond_f

    #@24b
    .line 1646
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24e
    const-string/jumbo v2, "mRelayoutCalled="

    #@251
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@254
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@256
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@259
    .line 1647
    const-string/jumbo v2, " mLayoutNeeded="

    #@25c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25f
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    #@261
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@264
    .line 1649
    :cond_f
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@266
    if-nez v2, :cond_10

    #@268
    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@26a
    if-eqz v2, :cond_11

    #@26c
    .line 1650
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26f
    const-string/jumbo v2, "Offsets x="

    #@272
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@275
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@277
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@27a
    .line 1651
    const-string/jumbo v2, " y="

    #@27d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@280
    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@282
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@285
    .line 1653
    :cond_11
    if-eqz p3, :cond_14

    #@287
    .line 1654
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28a
    const-string/jumbo v2, "mGivenContentInsets="

    #@28d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@290
    .line 1655
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@292
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@295
    .line 1656
    const-string/jumbo v2, " mGivenVisibleInsets="

    #@298
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29b
    .line 1657
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@29d
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@2a0
    .line 1658
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2a3
    .line 1659
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@2a5
    if-nez v2, :cond_12

    #@2a7
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    #@2a9
    if-eqz v2, :cond_13

    #@2ab
    .line 1660
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ae
    const-string/jumbo v2, "mTouchableInsets="

    #@2b1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b4
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@2b6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@2b9
    .line 1661
    const-string/jumbo v2, " mGivenInsetsPending="

    #@2bc
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2bf
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    #@2c1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@2c4
    .line 1662
    new-instance v0, Landroid/graphics/Region;

    #@2c6
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@2c9
    .line 1663
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    #@2cc
    .line 1664
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2cf
    const-string/jumbo v2, "touchable region="

    #@2d2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2d8
    .line 1666
    .end local v0    # "region":Landroid/graphics/Region;
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2db
    const-string/jumbo v2, "mConfiguration="

    #@2de
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    #@2e3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2e6
    .line 1667
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    #@2e8
    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@2ea
    if-eq v2, v3, :cond_14

    #@2ec
    .line 1668
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ef
    const-string/jumbo v2, "mOverrideConfig="

    #@2f2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f5
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    #@2f7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2fa
    .line 1671
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2fd
    const-string/jumbo v2, "mHasSurface="

    #@300
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@303
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@305
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@308
    .line 1672
    const-string/jumbo v2, " mShownFrame="

    #@30b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30e
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@310
    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->printShortString(Ljava/io/PrintWriter;)V

    #@313
    .line 1673
    const-string/jumbo v2, " isReadyForDisplay()="

    #@316
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@319
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    #@31c
    move-result v2

    #@31d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@320
    .line 1674
    if-eqz p3, :cond_16

    #@322
    .line 1675
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@325
    const-string/jumbo v2, "mFrame="

    #@328
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32b
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@32d
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@330
    .line 1676
    const-string/jumbo v2, " last="

    #@333
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@336
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@338
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@33b
    .line 1677
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@33e
    .line 1678
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@341
    const-string/jumbo v2, "mSystemDecorRect="

    #@344
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@347
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    #@349
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@34c
    .line 1679
    const-string/jumbo v2, " last="

    #@34f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@352
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    #@354
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@357
    .line 1680
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@359
    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    #@35b
    if-eqz v2, :cond_15

    #@35d
    .line 1681
    const-string/jumbo v2, " mLastClipRect="

    #@360
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@363
    .line 1682
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@365
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    #@367
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@36a
    .line 1684
    :cond_15
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@36d
    .line 1686
    :cond_16
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@36f
    if-eqz v2, :cond_17

    #@371
    .line 1687
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@374
    const-string/jumbo v2, "mCompatFrame="

    #@377
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    #@37c
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@37f
    .line 1688
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@382
    .line 1690
    :cond_17
    if-eqz p3, :cond_18

    #@384
    .line 1691
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@387
    const-string/jumbo v2, "Frames: containing="

    #@38a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38d
    .line 1692
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    #@38f
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@392
    .line 1693
    const-string/jumbo v2, " parent="

    #@395
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@398
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    #@39a
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@39d
    .line 1694
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3a0
    .line 1695
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a3
    const-string/jumbo v2, "    display="

    #@3a6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3a9
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@3ab
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3ae
    .line 1696
    const-string/jumbo v2, " overscan="

    #@3b1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b4
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@3b6
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3b9
    .line 1697
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3bc
    .line 1698
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3bf
    const-string/jumbo v2, "    content="

    #@3c2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c5
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@3c7
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3ca
    .line 1699
    const-string/jumbo v2, " visible="

    #@3cd
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@3d2
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3d5
    .line 1700
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3d8
    .line 1701
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3db
    const-string/jumbo v2, "    decor="

    #@3de
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    #@3e3
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3e6
    .line 1702
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3e9
    .line 1703
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3ec
    const-string/jumbo v2, "    outset="

    #@3ef
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    #@3f4
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@3f7
    .line 1704
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@3fa
    .line 1705
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3fd
    const-string/jumbo v2, "Cur insets: overscan="

    #@400
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@403
    .line 1706
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    #@405
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@408
    .line 1707
    const-string/jumbo v2, " content="

    #@40b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40e
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    #@410
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@413
    .line 1708
    const-string/jumbo v2, " visible="

    #@416
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@419
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@41b
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@41e
    .line 1709
    const-string/jumbo v2, " stable="

    #@421
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@424
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    #@426
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@429
    .line 1710
    const-string/jumbo v2, " outsets="

    #@42c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    #@431
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@434
    .line 1711
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@437
    .line 1712
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43a
    const-string/jumbo v2, "Lst insets: overscan="

    #@43d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@440
    .line 1713
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    #@442
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@445
    .line 1714
    const-string/jumbo v2, " content="

    #@448
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@44b
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@44d
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@450
    .line 1715
    const-string/jumbo v2, " visible="

    #@453
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@456
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    #@458
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@45b
    .line 1716
    const-string/jumbo v2, " stable="

    #@45e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@461
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    #@463
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@466
    .line 1717
    const-string/jumbo v2, " physical="

    #@469
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@46e
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@471
    .line 1718
    const-string/jumbo v2, " outset="

    #@474
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@477
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@479
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@47c
    .line 1719
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@47f
    .line 1721
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@482
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@484
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@487
    const-string/jumbo v2, ":"

    #@48a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48d
    .line 1722
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@48f
    new-instance v3, Ljava/lang/StringBuilder;

    #@491
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@494
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@497
    move-result-object v3

    #@498
    const-string/jumbo v4, "  "

    #@49b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49e
    move-result-object v3

    #@49f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a2
    move-result-object v3

    #@4a3
    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    #@4a6
    .line 1723
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@4a8
    if-nez v2, :cond_19

    #@4aa
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@4ac
    if-nez v2, :cond_19

    #@4ae
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@4b0
    if-nez v2, :cond_19

    #@4b2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    #@4b4
    if-eqz v2, :cond_1a

    #@4b6
    .line 1724
    :cond_19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b9
    const-string/jumbo v2, "mExiting="

    #@4bc
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4bf
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@4c1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4c4
    .line 1725
    const-string/jumbo v2, " mRemoveOnExit="

    #@4c7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4ca
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    #@4cc
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4cf
    .line 1726
    const-string/jumbo v2, " mDestroying="

    #@4d2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d5
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@4d7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4da
    .line 1727
    const-string/jumbo v2, " mRemoved="

    #@4dd
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    #@4e2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@4e5
    .line 1729
    :cond_1a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@4e7
    if-nez v2, :cond_1b

    #@4e9
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@4eb
    if-nez v2, :cond_1b

    #@4ed
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@4ef
    if-eqz v2, :cond_1c

    #@4f1
    .line 1730
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f4
    const-string/jumbo v2, "mOrientationChanging="

    #@4f7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4fa
    .line 1731
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@4fc
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@4ff
    .line 1732
    const-string/jumbo v2, " mAppFreezing="

    #@502
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@505
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    #@507
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@50a
    .line 1733
    const-string/jumbo v2, " mTurnOnScreen="

    #@50d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@510
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    #@512
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@515
    .line 1735
    :cond_1c
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@517
    if-eqz v2, :cond_1d

    #@519
    .line 1736
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51c
    const-string/jumbo v2, "mLastFreezeDuration="

    #@51f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@522
    .line 1737
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@524
    int-to-long v2, v2

    #@525
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    #@528
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@52b
    .line 1739
    :cond_1d
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@52d
    cmpl-float v2, v2, v6

    #@52f
    if-nez v2, :cond_1e

    #@531
    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@533
    cmpl-float v2, v2, v6

    #@535
    if-eqz v2, :cond_1f

    #@537
    .line 1740
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53a
    const-string/jumbo v2, "mHScale="

    #@53d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@540
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    #@542
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    #@545
    .line 1741
    const-string/jumbo v2, " mVScale="

    #@548
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@54b
    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    #@54d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    #@550
    .line 1743
    :cond_1f
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@552
    cmpl-float v2, v2, v5

    #@554
    if-nez v2, :cond_20

    #@556
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@558
    cmpl-float v2, v2, v5

    #@55a
    if-eqz v2, :cond_21

    #@55c
    .line 1744
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@55f
    const-string/jumbo v2, "mWallpaperX="

    #@562
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@565
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    #@567
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    #@56a
    .line 1745
    const-string/jumbo v2, " mWallpaperY="

    #@56d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@570
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    #@572
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    #@575
    .line 1747
    :cond_21
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@577
    cmpl-float v2, v2, v5

    #@579
    if-nez v2, :cond_22

    #@57b
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@57d
    cmpl-float v2, v2, v5

    #@57f
    if-eqz v2, :cond_23

    #@581
    .line 1748
    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@584
    const-string/jumbo v2, "mWallpaperXStep="

    #@587
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@58a
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    #@58c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    #@58f
    .line 1749
    const-string/jumbo v2, " mWallpaperYStep="

    #@592
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@595
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    #@597
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    #@59a
    .line 1751
    :cond_23
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@59c
    if-ne v2, v7, :cond_24

    #@59e
    .line 1752
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@5a0
    if-eq v2, v7, :cond_25

    #@5a2
    .line 1753
    :cond_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5a5
    const-string/jumbo v2, "mWallpaperDisplayOffsetX="

    #@5a8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5ab
    .line 1754
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    #@5ad
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@5b0
    .line 1755
    const-string/jumbo v2, " mWallpaperDisplayOffsetY="

    #@5b3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5b6
    .line 1756
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    #@5b8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@5bb
    .line 1758
    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@5bd
    if-eqz v2, :cond_26

    #@5bf
    .line 1759
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c2
    new-instance v2, Ljava/lang/StringBuilder;

    #@5c4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c7
    const-string/jumbo v3, "mDrawLock="

    #@5ca
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cd
    move-result-object v2

    #@5ce
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@5d0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d3
    move-result-object v2

    #@5d4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d7
    move-result-object v2

    #@5d8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5db
    .line 1578
    :cond_26
    return-void

    #@5dc
    .line 1614
    :cond_27
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@5de
    if-eqz v3, :cond_7

    #@5e0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@5e2
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@5e4
    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@5e6
    goto/16 :goto_0
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 825
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
    .line 773
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2
    return-object v0
.end method

.method public getBaseType()I
    .locals 2

    #@0
    .prologue
    .line 816
    move-object v0, p0

    #@1
    .line 817
    .local v0, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 818
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@7
    goto :goto_0

    #@8
    .line 820
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@c
    return v1
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    #@0
    .prologue
    .line 844
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 845
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@a
    return-object v1

    #@b
    .line 847
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@e
    move-result-object v0

    #@f
    .line 848
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
    .line 738
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getDisplayId()I
    .locals 2

    #@0
    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3
    move-result-object v0

    #@4
    .line 853
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    #@6
    .line 854
    const/4 v1, -0x1

    #@7
    return v1

    #@8
    .line 856
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    #@0
    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    #@2
    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    #@0
    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 887
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@6
    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    #@8
    .line 886
    :goto_0
    return-wide v0

    #@9
    .line 888
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
    .line 778
    const/4 v0, -0x1

    #@3
    .line 779
    .local v0, "index":I
    move-object v2, p0

    #@4
    .line 780
    .local v2, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    #@7
    move-result-object v1

    #@8
    .line 782
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    :goto_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@a
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 783
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
    .line 787
    :cond_1
    if-ne v2, p1, :cond_2

    #@19
    .line 788
    return v4

    #@1a
    .line 793
    :cond_2
    if-gez v0, :cond_3

    #@1c
    .line 794
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    #@1f
    move-result v0

    #@20
    .line 796
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@22
    .line 797
    if-gez v0, :cond_4

    #@24
    .line 798
    return v4

    #@25
    .line 800
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
    .line 743
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 530
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
    .line 525
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@2
    return v0
.end method

.method public getShownFrameLw()Landroid/graphics/RectF;
    .locals 1

    #@0
    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    #@2
    return-object v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .locals 5

    #@0
    .prologue
    .line 860
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    if-nez v2, :cond_0

    #@4
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    #@8
    .line 861
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    :goto_0
    if-eqz v1, :cond_2

    #@a
    .line 862
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@c
    .line 863
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_3

    #@e
    .line 864
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 865
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@14
    return-object v2

    #@15
    .line 860
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@17
    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_0

    #@18
    .line 867
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    const-string/jumbo v2, "WindowState"

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "getStack: mStack null for task="

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 873
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@34
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    #@37
    move-result-object v2

    #@38
    return-object v2

    #@39
    .line 869
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_3
    const-string/jumbo v2, "WindowState"

    #@3c
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "getStack: "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    const-string/jumbo v4, " couldn\'t find task for "

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    .line 870
    const-string/jumbo v4, " Callers="

    #@5a
    .line 869
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    .line 870
    const/4 v4, 0x4

    #@5f
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    .line 869
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    goto :goto_1
.end method

.method getStackBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@3
    move-result-object v0

    #@4
    .line 878
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    #@6
    .line 879
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@9
    .line 880
    return-void

    #@a
    .line 882
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@c
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@f
    .line 876
    return-void
.end method

.method public getSurfaceLayer()I
    .locals 1

    #@0
    .prologue
    .line 811
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@2
    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    #@0
    .prologue
    .line 806
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    #@2
    return v0
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "outRegion"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2
    .line 1436
    .local v0, "frame":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 1439
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@a
    .line 1434
    :goto_0
    return-void

    #@b
    .line 1442
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    #@d
    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@10
    goto :goto_0

    #@11
    .line 1445
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    #@13
    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@16
    goto :goto_0

    #@17
    .line 1448
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    #@19
    .line 1449
    .local v1, "givenTouchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@1c
    .line 1450
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@1e
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@20
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    #@23
    goto :goto_0

    #@24
    .line 1436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 753
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
    .line 1457
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@4
    move-result-object v0

    #@5
    .line 1458
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

.method public hasAppShownWindows()Z
    .locals 1

    #@0
    .prologue
    .line 893
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
    .line 1236
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

.method hasMoved()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1130
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@c
    if-eqz v2, :cond_2

    #@e
    :cond_0
    move v0, v1

    #@f
    :cond_1
    :goto_0
    return v0

    #@10
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@12
    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    #@14
    if-nez v2, :cond_0

    #@16
    .line 1131
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@18
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@1b
    move-result v2

    #@1c
    .line 1130
    if-eqz v2, :cond_0

    #@1e
    .line 1131
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@20
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@22
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@24
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@26
    if-ne v2, v3, :cond_3

    #@28
    .line 1132
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2a
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@2c
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    #@2e
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@30
    if-eq v2, v3, :cond_0

    #@32
    .line 1133
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@34
    if-eqz v2, :cond_1

    #@36
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@38
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_1

    #@3e
    move v0, v1

    #@3f
    goto :goto_0
.end method

.method public hideLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    #@0
    .prologue
    .line 1282
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
    .line 1286
    if-eqz p1, :cond_0

    #@4
    .line 1287
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1288
    const/4 p1, 0x0

    #@d
    .line 1291
    .end local p1    # "doAnimation":Z
    :cond_0
    if-eqz p1, :cond_1

    #@f
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@11
    .line 1293
    .local v0, "current":Z
    :goto_0
    if-nez v0, :cond_2

    #@13
    .line 1295
    return v3

    #@14
    .line 1292
    .end local v0    # "current":Z
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@16
    .restart local v0    # "current":Z
    goto :goto_0

    #@17
    .line 1297
    :cond_2
    if-eqz p1, :cond_3

    #@19
    .line 1298
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1b
    const/4 v2, 0x2

    #@1c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    #@1f
    .line 1299
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@21
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@23
    if-nez v1, :cond_3

    #@25
    .line 1300
    const/4 p1, 0x0

    #@26
    .line 1303
    :cond_3
    if-eqz p1, :cond_6

    #@28
    .line 1304
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@2a
    .line 1319
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    #@2c
    .line 1320
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@31
    .line 1322
    :cond_5
    return v4

    #@32
    .line 1307
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@34
    .line 1308
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@36
    .line 1312
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@38
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    #@3b
    .line 1313
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3d
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    #@3f
    if-ne v1, p0, :cond_4

    #@41
    .line 1316
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@43
    iput-boolean v4, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    #@45
    goto :goto_1
.end method

.method public isAlive()Z
    .locals 1

    #@0
    .prologue
    .line 1371
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

.method public isAnimatingLw()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1076
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1077
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
    .line 1076
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 1077
    goto :goto_0
.end method

.method isClosing()Z
    .locals 2

    #@0
    .prologue
    .line 1375
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

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
    .locals 5

    #@0
    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@3
    move-result-object v3

    #@4
    .line 1144
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_1

    #@6
    iget-object v1, v3, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@8
    .line 1145
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a
    iget-object v2, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@c
    .line 1147
    .local v2, "serviceConfig":Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    #@e
    if-eq v4, v2, :cond_2

    #@10
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    #@12
    invoke-virtual {v4, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_2

    #@18
    const/4 v0, 0x1

    #@19
    .line 1150
    .local v0, "configChanged":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1b
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@1d
    and-int/lit16 v4, v4, 0x400

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 1152
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@23
    or-int/2addr v4, v0

    #@24
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@26
    .line 1153
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    #@28
    .line 1156
    .end local v0    # "configChanged":Z
    :cond_0
    return v0

    #@29
    .line 1144
    .end local v1    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v2    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_1
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@2b
    .restart local v1    # "overrideConfig":Landroid/content/res/Configuration;
    goto :goto_0

    #@2c
    .line 1148
    .restart local v2    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    #@2e
    if-eq v4, v1, :cond_3

    #@30
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    #@32
    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_4

    #@38
    :cond_3
    const/4 v0, 0x0

    #@39
    .restart local v0    # "configChanged":Z
    goto :goto_1

    #@3a
    .end local v0    # "configChanged":Z
    :cond_4
    const/4 v0, 0x1

    #@3b
    .restart local v0    # "configChanged":Z
    goto :goto_1
.end method

.method public isDefaultDisplay()Z
    .locals 2

    #@0
    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3
    move-result-object v0

    #@4
    .line 1381
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    #@6
    .line 1383
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 1385
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    #@a
    return v1
.end method

.method public isDimming()Z
    .locals 2

    #@0
    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@3
    move-result-object v0

    #@4
    .line 1391
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    #@6
    .line 1392
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 1394
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@a
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public isDisplayedLw()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1063
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@4
    .line 1064
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
    .line 1065
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@10
    if-nez v3, :cond_0

    #@12
    .line 1066
    if-eqz v0, :cond_1

    #@14
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 1067
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@1a
    iget-boolean v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@1c
    .line 1065
    if-nez v3, :cond_1

    #@1e
    .line 1068
    if-eqz v0, :cond_2

    #@20
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@22
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 1064
    :cond_1
    :goto_0
    return v1

    #@27
    :cond_2
    move v1, v2

    #@28
    .line 1068
    goto :goto_0

    #@29
    :cond_3
    move v1, v2

    #@2a
    .line 1064
    goto :goto_0
.end method

.method public isDrawFinishedLw()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1097
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
    .line 1098
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@e
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@10
    const/4 v3, 0x2

    #@11
    if-eq v2, v3, :cond_1

    #@13
    .line 1099
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@15
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@17
    const/4 v3, 0x3

    #@18
    if-eq v2, v3, :cond_1

    #@1a
    .line 1100
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
    .line 1109
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
    .line 1110
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@e
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@10
    const/4 v3, 0x3

    #@11
    if-eq v2, v3, :cond_1

    #@13
    .line 1111
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
    .line 1573
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 1574
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
    .line 1573
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method isFullscreen(II)Z
    .locals 2
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1137
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
    .line 1138
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@f
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@11
    if-lt v1, p1, :cond_0

    #@13
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@15
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@17
    if-lt v1, p2, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    .line 1137
    :cond_0
    return v0
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    #@0
    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2
    .line 1083
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@4
    const/16 v2, 0x8

    #@6
    if-eq v1, v2, :cond_3

    #@8
    .line 1084
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    #@a
    if-eqz v1, :cond_3

    #@c
    .line 1085
    if-nez v0, :cond_0

    #@e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@10
    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@12
    .line 1083
    if-nez v1, :cond_3

    #@14
    .line 1086
    :cond_0
    if-eqz v0, :cond_1

    #@16
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@18
    if-nez v1, :cond_3

    #@1a
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    #@1c
    .line 1083
    if-nez v1, :cond_3

    #@1e
    .line 1087
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@20
    .line 1083
    if-nez v1, :cond_3

    #@22
    .line 1088
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@24
    if-eqz v1, :cond_2

    #@26
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 1089
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@2e
    .line 1083
    :goto_0
    return v1

    #@2f
    :cond_3
    const/4 v1, 0x1

    #@30
    goto :goto_0
.end method

.method isHiddenFromUserLocked()Z
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1403
    move-object v2, p0

    #@3
    .line 1404
    .local v2, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 1405
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@9
    goto :goto_0

    #@a
    .line 1407
    :cond_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@c
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    #@e
    const/16 v6, 0x7d0

    #@10
    if-ge v5, v6, :cond_2

    #@12
    .line 1408
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14
    if-eqz v5, :cond_2

    #@16
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@18
    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    #@1a
    .line 1407
    if-eqz v5, :cond_2

    #@1c
    .line 1411
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@1f
    move-result-object v0

    #@20
    .line 1412
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_1

    #@22
    .line 1413
    return v4

    #@23
    .line 1415
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@26
    move-result-object v1

    #@27
    .line 1416
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@29
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@2b
    if-gtz v5, :cond_2

    #@2d
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@2f
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@31
    if-gtz v5, :cond_2

    #@33
    .line 1417
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@35
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@37
    iget v6, v1, Landroid/view/DisplayInfo;->appWidth:I

    #@39
    if-lt v5, v6, :cond_2

    #@3b
    .line 1418
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@3d
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@3f
    iget v6, v1, Landroid/view/DisplayInfo;->appHeight:I

    #@41
    if-lt v5, v6, :cond_2

    #@43
    .line 1420
    return v3

    #@44
    .line 1424
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_2
    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    #@46
    if-eqz v5, :cond_3

    #@48
    .line 1425
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4a
    iget v6, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@4c
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    #@4f
    move-result v6

    #@50
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_4

    #@56
    .line 1424
    :cond_3
    :goto_1
    return v3

    #@57
    :cond_4
    move v3, v4

    #@58
    .line 1425
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
    .line 897
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
    .line 898
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
    .line 899
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
    .line 900
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
    .line 901
    :cond_7
    const/4 v0, 0x1

    #@32
    return v0
.end method

.method isOnScreen()Z
    .locals 1

    #@0
    .prologue
    .line 1000
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
    .line 1008
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 1009
    :cond_0
    return v2

    #@b
    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@d
    .line 1012
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_5

    #@f
    .line 1013
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@11
    if-nez v3, :cond_2

    #@13
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@15
    if-eqz v3, :cond_3

    #@17
    .line 1014
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@19
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@1b
    if-eqz v3, :cond_4

    #@1d
    .line 1013
    :cond_3
    :goto_0
    return v1

    #@1e
    .line 1014
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
    .line 1016
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
    .line 1119
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    #@6
    const/4 v3, -0x1

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 1120
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@b
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@d
    const/16 v3, 0x7dd

    #@f
    if-ne v2, v3, :cond_3

    #@11
    .line 1121
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    #@14
    move-result v2

    #@15
    .line 1119
    if-eqz v2, :cond_3

    #@17
    .line 1121
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@19
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@1b
    if-nez v2, :cond_3

    #@1d
    .line 1122
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@1f
    if-eqz v2, :cond_1

    #@21
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@23
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@25
    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@27
    if-nez v2, :cond_2

    #@29
    .line 1119
    :cond_1
    :goto_0
    return v0

    #@2a
    :cond_2
    move v0, v1

    #@2b
    .line 1122
    goto :goto_0

    #@2c
    :cond_3
    move v0, v1

    #@2d
    .line 1119
    goto :goto_0
.end method

.method isPotentialDragTarget()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 978
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
    .line 979
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
    .line 1024
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@4
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1025
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@c
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@f
    move-result v2

    #@10
    .line 1024
    if-eqz v2, :cond_0

    #@12
    .line 1026
    return v1

    #@13
    .line 1028
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
    .line 1029
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@23
    if-nez v2, :cond_4

    #@25
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@27
    if-nez v2, :cond_4

    #@29
    .line 1030
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@2b
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 1031
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@31
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@33
    if-nez v2, :cond_2

    #@35
    .line 1032
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
    .line 1040
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
    .line 1041
    return v1

    #@13
    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@15
    .line 1044
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_1

    #@17
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@19
    if-eqz v3, :cond_3

    #@1b
    .line 1049
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
    .line 1047
    :cond_3
    return v1

    #@25
    .line 1050
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@27
    if-nez v3, :cond_5

    #@29
    iget v3, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@2b
    if-nez v3, :cond_5

    #@2d
    .line 1051
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@2f
    iget-boolean v3, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@31
    if-eqz v3, :cond_6

    #@33
    .line 1052
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
    .line 1050
    goto :goto_0

    #@3b
    .line 1053
    :cond_7
    if-eqz v0, :cond_2

    #@3d
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@3f
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@41
    if-eqz v3, :cond_2

    #@43
    .line 1054
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

.method public isVisibleLw()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 920
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3
    .line 921
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@d
    if-eqz v2, :cond_1

    #@f
    :cond_0
    :goto_0
    return v1

    #@10
    .line 922
    :cond_1
    if-eqz v0, :cond_2

    #@12
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@14
    if-nez v2, :cond_0

    #@16
    .line 923
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@18
    if-nez v2, :cond_0

    #@1a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@1c
    if-nez v2, :cond_0

    #@1e
    const/4 v1, 0x1

    #@1f
    goto :goto_0
.end method

.method isVisibleNow()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 967
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    .line 968
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@10
    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@12
    if-eqz v1, :cond_2

    #@14
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@16
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@18
    const/4 v2, 0x3

    #@19
    if-ne v1, v2, :cond_0

    #@1b
    .line 969
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@1d
    if-nez v1, :cond_0

    #@1f
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@21
    if-nez v1, :cond_0

    #@23
    const/4 v0, 0x1

    #@24
    goto :goto_0
.end method

.method isVisibleOrAdding()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 987
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3
    .line 988
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
    .line 989
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@11
    .line 988
    if-eqz v2, :cond_1

    #@13
    .line 989
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 988
    :cond_1
    :goto_0
    return v1

    #@18
    .line 990
    :cond_2
    if-eqz v0, :cond_3

    #@1a
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@1c
    if-nez v2, :cond_1

    #@1e
    .line 991
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

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
    .line 936
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@3
    iget-boolean v3, v3, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 937
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@b
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    #@e
    move-result v3

    #@f
    .line 936
    if-eqz v3, :cond_0

    #@11
    .line 938
    return v2

    #@12
    .line 940
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14
    .line 941
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_3

    #@16
    .line 942
    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@18
    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    #@1a
    if-eqz v3, :cond_3

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 943
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
    .line 942
    :cond_3
    const/4 v0, 0x0

    #@28
    .restart local v0    # "animating":Z
    goto :goto_0

    #@29
    .line 943
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@2b
    if-nez v3, :cond_1

    #@2d
    .line 944
    if-nez v1, :cond_8

    #@2f
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@31
    .line 943
    if-eqz v3, :cond_1

    #@33
    .line 945
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@35
    if-nez v2, :cond_6

    #@37
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    #@39
    if-nez v2, :cond_6

    #@3b
    .line 946
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    #@3d
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    #@3f
    if-eqz v2, :cond_7

    #@41
    .line 947
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@43
    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@45
    if-eqz v2, :cond_2

    #@47
    .line 945
    :cond_7
    const/4 v0, 0x1

    #@48
    goto :goto_2

    #@49
    .line 944
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
    .line 830
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
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 956
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@3
    .line 957
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    #@d
    if-eqz v2, :cond_1

    #@f
    :cond_0
    :goto_0
    return v1

    #@10
    .line 958
    :cond_1
    if-eqz v0, :cond_2

    #@12
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@14
    if-eqz v2, :cond_2

    #@16
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@18
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    #@1a
    .line 957
    if-eqz v2, :cond_0

    #@1c
    .line 959
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@1e
    if-nez v2, :cond_0

    #@20
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    #@22
    if-nez v2, :cond_0

    #@24
    const/4 v1, 0x1

    #@25
    goto :goto_0
.end method

.method makeInputChannelName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1764
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
    .line 1765
    const-string/jumbo v1, " "

    #@14
    .line 1764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 1765
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@1a
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@1d
    move-result-object v1

    #@1e
    .line 1764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public pokeDrawLockLw(J)V
    .locals 5
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 1344
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 1348
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@c
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    .line 1349
    .local v0, "tag":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    #@12
    .line 1350
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@14
    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@16
    .line 1352
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@18
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@1a
    .line 1353
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Window:"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    const/16 v3, 0x80

    #@30
    .line 1352
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@36
    .line 1354
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@38
    const/4 v2, 0x0

    #@39
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@3c
    .line 1355
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@3e
    new-instance v2, Landroid/os/WorkSource;

    #@40
    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    #@42
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@44
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@46
    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    #@49
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@4c
    .line 1362
    .end local v0    # "tag":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    #@4e
    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    #@51
    .line 1342
    :cond_2
    return-void
.end method

.method prelayout()V
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 905
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 906
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@8
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    #@a
    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@c
    .line 907
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@e
    div-float v0, v1, v0

    #@10
    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@12
    .line 904
    :goto_0
    return-void

    #@13
    .line 909
    :cond_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    #@15
    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@17
    goto :goto_0
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    #@0
    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 1557
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1558
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@b
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@10
    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@12
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 1555
    return-void

    #@17
    .line 1556
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
    .line 1160
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    #@3
    .line 1162
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1164
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    #@9
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@b
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    #@e
    .line 1166
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@10
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    #@13
    .line 1167
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@15
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    #@18
    .line 1168
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@1a
    invoke-virtual {v1}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    #@1d
    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@1f
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    #@25
    const/4 v3, 0x0

    #@26
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1159
    :goto_0
    return-void

    #@2a
    .line 1171
    :catch_0
    move-exception v0

    #@2b
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public reportFocusChangedSerialized(ZZ)V
    .locals 5
    .param p1, "focused"    # Z
    .param p2, "inTouchMode"    # Z

    #@0
    .prologue
    .line 1467
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@2
    invoke-interface {v4, p1, p2}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@5
    .line 1470
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@7
    if-eqz v4, :cond_2

    #@9
    .line 1471
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@e
    move-result v0

    #@f
    .line 1472
    .local v0, "N":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    #@12
    .line 1473
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@14
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/view/IWindowFocusObserver;

    #@1a
    .line 1475
    .local v3, "obs":Landroid/view/IWindowFocusObserver;
    if-eqz p1, :cond_0

    #@1c
    .line 1476
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    #@1e
    invoke-interface {v4}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v3, v4}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    #@25
    .line 1472
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_1

    #@28
    .line 1478
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
    .line 1480
    :catch_0
    move-exception v1

    #@33
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@34
    .line 1483
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "obs":Landroid/view/IWindowFocusObserver;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@36
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@39
    .line 1465
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_2
    return-void

    #@3a
    .line 1468
    :catch_1
    move-exception v1

    #@3b
    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method reportResized()V
    .locals 18

    #@0
    .prologue
    .line 1491
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    #@3
    move-result v12

    #@4
    .line 1492
    .local v12, "configChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@7
    move-result-object v15

    #@8
    .line 1494
    .local v15, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v15, :cond_1

    #@a
    iget-object v14, v15, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@c
    .line 1500
    .local v14, "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    move-object/from16 v0, p0

    #@e
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@12
    move-object/from16 v0, p0

    #@14
    invoke-direct {v0, v2, v14}, Lcom/android/server/wm/WindowState;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    #@17
    .line 1504
    move-object/from16 v0, p0

    #@19
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@1b
    .line 1505
    .local v4, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@1d
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    #@1f
    .line 1506
    .local v5, "overscanInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@21
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@23
    .line 1507
    .local v6, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@25
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    #@27
    .line 1508
    .local v7, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@29
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    #@2b
    .line 1509
    .local v8, "stableInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@2d
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    #@2f
    .line 1510
    .local v9, "outsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@33
    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@35
    const/4 v3, 0x1

    #@36
    if-ne v2, v3, :cond_2

    #@38
    const/4 v10, 0x1

    #@39
    .line 1511
    .local v10, "reportDraw":Z
    :goto_1
    if-eqz v12, :cond_3

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    #@3f
    .line 1512
    :goto_2
    move-object/from16 v0, p0

    #@41
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@43
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    #@45
    const/4 v3, 0x3

    #@46
    if-eq v2, v3, :cond_4

    #@48
    .line 1513
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@4c
    instance-of v2, v2, Landroid/view/IWindow$Stub;

    #@4e
    .line 1512
    if-eqz v2, :cond_4

    #@50
    .line 1515
    move-object/from16 v0, p0

    #@52
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@54
    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@56
    move-object/from16 v16, v0

    #@58
    new-instance v2, Lcom/android/server/wm/WindowState$2;

    #@5a
    move-object/from16 v3, p0

    #@5c
    invoke-direct/range {v2 .. v11}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    #@5f
    move-object/from16 v0, v16

    #@61
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    #@64
    .line 1532
    :goto_3
    move-object/from16 v0, p0

    #@66
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@68
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@6a
    if-eqz v2, :cond_0

    #@6c
    .line 1533
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@6f
    move-result v2

    #@70
    if-nez v2, :cond_0

    #@72
    .line 1534
    move-object/from16 v0, p0

    #@74
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@76
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@78
    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    #@7b
    .line 1537
    :cond_0
    const/4 v2, 0x0

    #@7c
    move-object/from16 v0, p0

    #@7e
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    #@80
    .line 1538
    const/4 v2, 0x0

    #@81
    move-object/from16 v0, p0

    #@83
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    #@85
    .line 1539
    const/4 v2, 0x0

    #@86
    move-object/from16 v0, p0

    #@88
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    #@8a
    .line 1540
    const/4 v2, 0x0

    #@8b
    move-object/from16 v0, p0

    #@8d
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    #@8f
    .line 1541
    const/4 v2, 0x0

    #@90
    move-object/from16 v0, p0

    #@92
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@94
    .line 1542
    move-object/from16 v0, p0

    #@96
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@98
    const/4 v3, 0x0

    #@99
    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    #@9b
    .line 1487
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "overscanInsets":Landroid/graphics/Rect;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v7    # "visibleInsets":Landroid/graphics/Rect;
    .end local v8    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "outsets":Landroid/graphics/Rect;
    .end local v10    # "reportDraw":Z
    .end local v12    # "configChanged":Z
    .end local v14    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v15    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_4
    return-void

    #@9c
    .line 1494
    .restart local v12    # "configChanged":Z
    .restart local v15    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    sget-object v14, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@9e
    .restart local v14    # "overrideConfig":Landroid/content/res/Configuration;
    goto/16 :goto_0

    #@a0
    .line 1510
    .restart local v4    # "frame":Landroid/graphics/Rect;
    .restart local v5    # "overscanInsets":Landroid/graphics/Rect;
    .restart local v6    # "contentInsets":Landroid/graphics/Rect;
    .restart local v7    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v8    # "stableInsets":Landroid/graphics/Rect;
    .restart local v9    # "outsets":Landroid/graphics/Rect;
    :cond_2
    const/4 v10, 0x0

    #@a1
    .restart local v10    # "reportDraw":Z
    goto :goto_1

    #@a2
    .line 1511
    :cond_3
    const/4 v11, 0x0

    #@a3
    .local v11, "newConfig":Landroid/content/res/Configuration;
    goto :goto_2

    #@a4
    .line 1527
    .end local v11    # "newConfig":Landroid/content/res/Configuration;
    :cond_4
    move-object/from16 v0, p0

    #@a6
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@a8
    invoke-interface/range {v3 .. v11}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@ab
    goto :goto_3

    #@ac
    .line 1543
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "overscanInsets":Landroid/graphics/Rect;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v7    # "visibleInsets":Landroid/graphics/Rect;
    .end local v8    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "outsets":Landroid/graphics/Rect;
    .end local v10    # "reportDraw":Z
    .end local v12    # "configChanged":Z
    .end local v14    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v15    # "stack":Lcom/android/server/wm/TaskStack;
    :catch_0
    move-exception v13

    #@ad
    .line 1544
    .local v13, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    #@b2
    .line 1545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b5
    move-result-wide v2

    #@b6
    .line 1546
    move-object/from16 v0, p0

    #@b8
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ba
    move-object/from16 v16, v0

    #@bc
    move-object/from16 v0, v16

    #@be
    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    #@c0
    move-wide/from16 v16, v0

    #@c2
    .line 1545
    sub-long v2, v2, v16

    #@c4
    long-to-int v2, v2

    #@c5
    move-object/from16 v0, p0

    #@c7
    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    #@c9
    .line 1548
    const-string/jumbo v2, "WindowState"

    #@cc
    new-instance v3, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v16, "Failed to report \'resized\' to the client of "

    #@d4
    move-object/from16 v0, v16

    #@d6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v3

    #@da
    move-object/from16 v0, p0

    #@dc
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v3

    #@e0
    .line 1549
    const-string/jumbo v16, ", removing this window."

    #@e3
    .line 1548
    move-object/from16 v0, v16

    #@e5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v3

    #@e9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v3

    #@ed
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f0
    .line 1550
    move-object/from16 v0, p0

    #@f2
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@f4
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    #@f6
    move-object/from16 v0, p0

    #@f8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@fb
    .line 1551
    move-object/from16 v0, p0

    #@fd
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ff
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    #@102
    goto :goto_4
.end method

.method public setAppOpVisibilityLw(Z)V
    .locals 2
    .param p1, "state"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1326
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 1327
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@7
    .line 1328
    if-eqz p1, :cond_1

    #@9
    .line 1335
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    #@c
    .line 1325
    :cond_0
    :goto_0
    return-void

    #@d
    .line 1337
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    #@10
    goto :goto_0
.end method

.method setInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1186
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Window already has an input channel."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1189
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    #@f
    .line 1190
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@11
    iput-object p1, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@13
    .line 1184
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
    .line 834
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
    .line 835
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
    .line 836
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
    .line 837
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
    .line 838
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
    .line 839
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
    .line 840
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    #@5f
    .line 839
    :cond_0
    return v2

    #@60
    :cond_1
    move v0, v2

    #@61
    .line 834
    goto :goto_0

    #@62
    :cond_2
    move v0, v2

    #@63
    .line 835
    goto :goto_1

    #@64
    :cond_3
    move v0, v2

    #@65
    .line 836
    goto :goto_2

    #@66
    :cond_4
    move v0, v2

    #@67
    .line 837
    goto :goto_3

    #@68
    :cond_5
    move v1, v2

    #@69
    .line 838
    goto :goto_4
.end method

.method public setShowToOwnerOnlyLocked(Z)V
    .locals 0
    .param p1, "showToOwnerOnly"    # Z

    #@0
    .prologue
    .line 1398
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    #@2
    .line 1397
    return-void
.end method

.method public showLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    #@0
    .prologue
    .line 1241
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
    .line 1245
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1246
    return v2

    #@9
    .line 1248
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1250
    return v2

    #@e
    .line 1252
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@10
    if-eqz v0, :cond_2

    #@12
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1254
    return v2

    #@17
    .line 1257
    :cond_2
    if-eqz p1, :cond_3

    #@19
    .line 1260
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_6

    #@21
    .line 1261
    const/4 p1, 0x0

    #@22
    .line 1269
    .end local p1    # "doAnimation":Z
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    #@24
    .line 1270
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    #@26
    .line 1271
    if-eqz p1, :cond_4

    #@28
    .line 1272
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2a
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    #@2d
    .line 1274
    :cond_4
    if-eqz p2, :cond_5

    #@2f
    .line 1275
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@31
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    #@34
    .line 1277
    :cond_5
    return v1

    #@35
    .line 1262
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
    .line 1266
    const/4 p1, 0x0

    #@40
    .local p1, "doAnimation":Z
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1770
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    .line 1771
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v1

    #@c
    if-gtz v1, :cond_1

    #@e
    .line 1772
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@10
    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    #@12
    .line 1774
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    #@14
    if-eqz v1, :cond_2

    #@16
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    #@18
    if-eq v1, v0, :cond_4

    #@1a
    .line 1775
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    #@1c
    .line 1776
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@1e
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    #@20
    .line 1777
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Window{"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@2f
    move-result v2

    #@30
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 1778
    const-string/jumbo v2, " u"

    #@3b
    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 1778
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@41
    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    #@43
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@46
    move-result v2

    #@47
    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    .line 1779
    const-string/jumbo v2, " "

    #@4e
    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 1779
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    #@54
    .line 1777
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    .line 1779
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@5a
    if-eqz v1, :cond_5

    #@5c
    const-string/jumbo v1, " EXITING}"

    #@5f
    .line 1777
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    #@69
    .line 1781
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    #@6b
    return-object v1

    #@6c
    .line 1774
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    #@6e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    #@70
    if-eq v1, v2, :cond_3

    #@72
    goto :goto_0

    #@73
    .line 1779
    :cond_5
    const-string/jumbo v1, "}"

    #@76
    goto :goto_1
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    #@0
    .prologue
    .line 1565
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 1566
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1567
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    #@b
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 1564
    return-void

    #@10
    .line 1565
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method
