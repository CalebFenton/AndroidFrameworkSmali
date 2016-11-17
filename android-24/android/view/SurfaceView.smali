.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$1;,
        Landroid/view/SurfaceView$2;,
        Landroid/view/SurfaceView$3;,
        Landroid/view/SurfaceView$4;,
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
.field final mBackdropFrame:Landroid/graphics/Rect;

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLocation:[I

.field final mNewSurface:Landroid/view/Surface;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private volatile mRtHandlingPositionUpdates:Z

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field final mSurface:Landroid/view/Surface;

.field mSurfaceCreated:Z

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field private mWindowInsetLeft:I

.field private mWindowInsetTop:I

.field mWindowSpaceHeight:I

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowSpaceWidth:I

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 196
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@5
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 97
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@c
    .line 100
    const/4 v0, 0x2

    #@d
    new-array v0, v0, [I

    #@f
    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@11
    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 103
    new-instance v0, Landroid/view/Surface;

    #@1a
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    .line 104
    new-instance v0, Landroid/view/Surface;

    #@21
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@24
    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@26
    .line 105
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@29
    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@2e
    .line 107
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 111
    new-instance v0, Landroid/graphics/Rect;

    #@32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@35
    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@37
    .line 112
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@3e
    .line 113
    new-instance v0, Landroid/graphics/Rect;

    #@40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@43
    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@45
    .line 114
    new-instance v0, Landroid/graphics/Rect;

    #@47
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4a
    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@4c
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@51
    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@53
    .line 116
    new-instance v0, Landroid/graphics/Rect;

    #@55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@58
    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@5a
    .line 117
    new-instance v0, Landroid/graphics/Rect;

    #@5c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5f
    iput-object v0, p0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    #@61
    .line 118
    new-instance v0, Landroid/content/res/Configuration;

    #@63
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@66
    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@68
    .line 124
    const/16 v0, 0x3e9

    #@6a
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@6c
    .line 126
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@6e
    .line 127
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@70
    .line 129
    new-instance v0, Landroid/view/SurfaceView$1;

    #@72
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    #@75
    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@77
    .line 147
    new-instance v0, Landroid/view/SurfaceView$2;

    #@79
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    #@7c
    .line 146
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@7e
    .line 155
    new-instance v0, Landroid/view/SurfaceView$3;

    #@80
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    #@83
    .line 154
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@85
    .line 165
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@87
    .line 166
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@89
    .line 167
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@8b
    .line 168
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@8d
    .line 169
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@8f
    .line 173
    const/4 v0, 0x4

    #@90
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@92
    .line 175
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@94
    .line 176
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@96
    .line 177
    const-wide/16 v0, 0x0

    #@98
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    #@9a
    .line 179
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    #@9c
    .line 180
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@9e
    .line 181
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@a0
    .line 182
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@a2
    .line 183
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@a4
    .line 184
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    #@a6
    .line 185
    new-instance v0, Landroid/graphics/Rect;

    #@a8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@ab
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@ad
    .line 186
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@af
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@b1
    .line 692
    new-instance v0, Landroid/graphics/Rect;

    #@b3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b6
    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@b8
    .line 861
    new-instance v0, Landroid/view/SurfaceView$4;

    #@ba
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    #@bd
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@bf
    .line 197
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    #@c2
    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 201
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 97
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@c
    .line 100
    const/4 v0, 0x2

    #@d
    new-array v0, v0, [I

    #@f
    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@11
    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 103
    new-instance v0, Landroid/view/Surface;

    #@1a
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    .line 104
    new-instance v0, Landroid/view/Surface;

    #@21
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@24
    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@26
    .line 105
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@29
    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@2e
    .line 107
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 111
    new-instance v0, Landroid/graphics/Rect;

    #@32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@35
    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@37
    .line 112
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@3e
    .line 113
    new-instance v0, Landroid/graphics/Rect;

    #@40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@43
    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@45
    .line 114
    new-instance v0, Landroid/graphics/Rect;

    #@47
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4a
    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@4c
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@51
    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@53
    .line 116
    new-instance v0, Landroid/graphics/Rect;

    #@55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@58
    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@5a
    .line 117
    new-instance v0, Landroid/graphics/Rect;

    #@5c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5f
    iput-object v0, p0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    #@61
    .line 118
    new-instance v0, Landroid/content/res/Configuration;

    #@63
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@66
    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@68
    .line 124
    const/16 v0, 0x3e9

    #@6a
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@6c
    .line 126
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@6e
    .line 127
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@70
    .line 129
    new-instance v0, Landroid/view/SurfaceView$1;

    #@72
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    #@75
    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@77
    .line 147
    new-instance v0, Landroid/view/SurfaceView$2;

    #@79
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    #@7c
    .line 146
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@7e
    .line 155
    new-instance v0, Landroid/view/SurfaceView$3;

    #@80
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    #@83
    .line 154
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@85
    .line 165
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@87
    .line 166
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@89
    .line 167
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@8b
    .line 168
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@8d
    .line 169
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@8f
    .line 173
    const/4 v0, 0x4

    #@90
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@92
    .line 175
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@94
    .line 176
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@96
    .line 177
    const-wide/16 v0, 0x0

    #@98
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    #@9a
    .line 179
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    #@9c
    .line 180
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@9e
    .line 181
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@a0
    .line 182
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@a2
    .line 183
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@a4
    .line 184
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    #@a6
    .line 185
    new-instance v0, Landroid/graphics/Rect;

    #@a8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@ab
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@ad
    .line 186
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@af
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@b1
    .line 692
    new-instance v0, Landroid/graphics/Rect;

    #@b3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b6
    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@b8
    .line 861
    new-instance v0, Landroid/view/SurfaceView$4;

    #@ba
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    #@bd
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@bf
    .line 202
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    #@c2
    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 206
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 97
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@c
    .line 100
    const/4 v0, 0x2

    #@d
    new-array v0, v0, [I

    #@f
    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@11
    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 103
    new-instance v0, Landroid/view/Surface;

    #@1a
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    .line 104
    new-instance v0, Landroid/view/Surface;

    #@21
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@24
    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@26
    .line 105
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@29
    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@2e
    .line 107
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 111
    new-instance v0, Landroid/graphics/Rect;

    #@32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@35
    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@37
    .line 112
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@3e
    .line 113
    new-instance v0, Landroid/graphics/Rect;

    #@40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@43
    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@45
    .line 114
    new-instance v0, Landroid/graphics/Rect;

    #@47
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4a
    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@4c
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@51
    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@53
    .line 116
    new-instance v0, Landroid/graphics/Rect;

    #@55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@58
    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@5a
    .line 117
    new-instance v0, Landroid/graphics/Rect;

    #@5c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5f
    iput-object v0, p0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    #@61
    .line 118
    new-instance v0, Landroid/content/res/Configuration;

    #@63
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@66
    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@68
    .line 124
    const/16 v0, 0x3e9

    #@6a
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@6c
    .line 126
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@6e
    .line 127
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@70
    .line 129
    new-instance v0, Landroid/view/SurfaceView$1;

    #@72
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    #@75
    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@77
    .line 147
    new-instance v0, Landroid/view/SurfaceView$2;

    #@79
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    #@7c
    .line 146
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@7e
    .line 155
    new-instance v0, Landroid/view/SurfaceView$3;

    #@80
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    #@83
    .line 154
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@85
    .line 165
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@87
    .line 166
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@89
    .line 167
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@8b
    .line 168
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@8d
    .line 169
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@8f
    .line 173
    const/4 v0, 0x4

    #@90
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@92
    .line 175
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@94
    .line 176
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@96
    .line 177
    const-wide/16 v0, 0x0

    #@98
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    #@9a
    .line 179
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    #@9c
    .line 180
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@9e
    .line 181
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@a0
    .line 182
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@a2
    .line 183
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@a4
    .line 184
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    #@a6
    .line 185
    new-instance v0, Landroid/graphics/Rect;

    #@a8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@ab
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@ad
    .line 186
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@af
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@b1
    .line 692
    new-instance v0, Landroid/graphics/Rect;

    #@b3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b6
    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@b8
    .line 861
    new-instance v0, Landroid/view/SurfaceView$4;

    #@ba
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    #@bd
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@bf
    .line 207
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    #@c2
    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 97
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@c
    .line 100
    const/4 v0, 0x2

    #@d
    new-array v0, v0, [I

    #@f
    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@11
    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 103
    new-instance v0, Landroid/view/Surface;

    #@1a
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    .line 104
    new-instance v0, Landroid/view/Surface;

    #@21
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@24
    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@26
    .line 105
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@29
    .line 108
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@2e
    .line 107
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 111
    new-instance v0, Landroid/graphics/Rect;

    #@32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@35
    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@37
    .line 112
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@3e
    .line 113
    new-instance v0, Landroid/graphics/Rect;

    #@40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@43
    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@45
    .line 114
    new-instance v0, Landroid/graphics/Rect;

    #@47
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4a
    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@4c
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@51
    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@53
    .line 116
    new-instance v0, Landroid/graphics/Rect;

    #@55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@58
    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@5a
    .line 117
    new-instance v0, Landroid/graphics/Rect;

    #@5c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5f
    iput-object v0, p0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    #@61
    .line 118
    new-instance v0, Landroid/content/res/Configuration;

    #@63
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@66
    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@68
    .line 124
    const/16 v0, 0x3e9

    #@6a
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@6c
    .line 126
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@6e
    .line 127
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@70
    .line 129
    new-instance v0, Landroid/view/SurfaceView$1;

    #@72
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    #@75
    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@77
    .line 147
    new-instance v0, Landroid/view/SurfaceView$2;

    #@79
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    #@7c
    .line 146
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@7e
    .line 155
    new-instance v0, Landroid/view/SurfaceView$3;

    #@80
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    #@83
    .line 154
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@85
    .line 165
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@87
    .line 166
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@89
    .line 167
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@8b
    .line 168
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@8d
    .line 169
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@8f
    .line 173
    const/4 v0, 0x4

    #@90
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@92
    .line 175
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@94
    .line 176
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@96
    .line 177
    const-wide/16 v0, 0x0

    #@98
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    #@9a
    .line 179
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    #@9c
    .line 180
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@9e
    .line 181
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@a0
    .line 182
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@a2
    .line 183
    iput v2, p0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@a4
    .line 184
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    #@a6
    .line 185
    new-instance v0, Landroid/graphics/Rect;

    #@a8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@ab
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@ad
    .line 186
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@af
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@b1
    .line 692
    new-instance v0, Landroid/graphics/Rect;

    #@b3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b6
    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@b8
    .line 861
    new-instance v0, Landroid/view/SurfaceView$4;

    #@ba
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    #@bd
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@bf
    .line 212
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    #@c2
    .line 210
    return-void
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    #@0
    .prologue
    .line 778
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 779
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    #@b
    .line 780
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 782
    return-object v0

    #@12
    .line 778
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method private init()V
    .locals 1

    #@0
    .prologue
    .line 216
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    #@4
    .line 215
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 358
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@2
    const/16 v1, 0x3e8

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 360
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    #@8
    and-int/lit16 v0, v0, 0x80

    #@a
    const/16 v1, 0x80

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 362
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@14
    .line 365
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@17
    .line 357
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 346
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@3
    const/16 v1, 0x3e8

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 348
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    #@9
    and-int/lit16 v0, v0, 0x80

    #@b
    if-nez v0, :cond_0

    #@d
    .line 350
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@f
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@12
    .line 353
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@15
    .line 345
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 319
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@3
    const/16 v3, 0x3e8

    #@5
    if-ne v0, v3, :cond_0

    #@7
    .line 320
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 323
    :cond_0
    const/4 v7, 0x1

    #@d
    .line 324
    .local v7, "opaque":Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    #@f
    and-int/lit16 v0, v0, 0x80

    #@11
    if-nez v0, :cond_3

    #@13
    .line 326
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@16
    move-result v7

    #@17
    .line 338
    .end local v7    # "opaque":Z
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@19
    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 339
    const/4 v7, 0x0

    #@20
    .line 341
    :cond_2
    return v7

    #@21
    .line 327
    .restart local v7    # "opaque":Z
    :cond_3
    if-eqz p1, :cond_1

    #@23
    .line 328
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    #@26
    move-result v8

    #@27
    .line 329
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    #@2a
    move-result v6

    #@2b
    .line 330
    .local v6, "h":I
    if-lez v8, :cond_1

    #@2d
    if-lez v6, :cond_1

    #@2f
    .line 331
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@31
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    #@34
    .line 333
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@36
    aget v1, v0, v4

    #@38
    .line 334
    .local v1, "l":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@3a
    const/4 v3, 0x1

    #@3b
    aget v2, v0, v3

    #@3d
    .line 335
    .local v2, "t":I
    add-int v3, v1, v8

    #@3f
    add-int v4, v2, v6

    #@41
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@43
    move-object v0, p1

    #@44
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    #@47
    goto :goto_0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2
    return-object v0
.end method

.method handleGetNewSurface()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 786
    invoke-virtual {p0, v0, v0}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@4
    .line 785
    return-void
.end method

.method public isFixedSize()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 797
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@8
    if-eq v1, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 231
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@5
    .line 232
    iget-object v3, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    #@7
    invoke-interface {v3, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    #@a
    .line 233
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    #@d
    move-result-object v3

    #@e
    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@10
    .line 234
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@12
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    #@15
    move-result-object v4

    #@16
    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@18
    .line 235
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "SurfaceView - "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@39
    .line 236
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    #@3c
    move-result v3

    #@3d
    if-nez v3, :cond_0

    #@3f
    move v1, v2

    #@40
    :cond_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@42
    .line 238
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@44
    if-nez v1, :cond_1

    #@46
    .line 239
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@49
    move-result-object v0

    #@4a
    .line 240
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@4c
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@4f
    .line 241
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@51
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@54
    .line 242
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@56
    .line 230
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 274
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 275
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@9
    move-result-object v1

    #@a
    .line 276
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@c
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@f
    .line 277
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@11
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@14
    .line 278
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@16
    .line 281
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@18
    .line 282
    invoke-virtual {p0, v3, v3}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@1b
    .line 283
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@1d
    .line 284
    iget-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 286
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@23
    iget-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@25
    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 290
    :goto_0
    iput-object v4, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@2a
    .line 292
    :cond_1
    iput-object v4, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@2c
    .line 293
    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@2e
    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@30
    .line 295
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@33
    .line 273
    return-void

    #@34
    .line 287
    :catch_0
    move-exception v0

    #@35
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 300
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@3
    if-ltz v2, :cond_0

    #@5
    .line 301
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@7
    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    #@a
    move-result v1

    #@b
    .line 303
    .local v1, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@d
    if-ltz v2, :cond_1

    #@f
    .line 304
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@11
    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    #@14
    move-result v0

    #@15
    .line 306
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    #@18
    .line 299
    return-void

    #@19
    .line 302
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    #@1c
    move-result v1

    #@1d
    .restart local v1    # "width":I
    goto :goto_0

    #@1e
    .line 305
    :cond_1
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    #@21
    move-result v0

    #@22
    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    #@4
    .line 249
    if-nez p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@9
    .line 250
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@f
    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@11
    .line 251
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@14
    .line 247
    return-void

    #@15
    :cond_0
    move v0, v1

    #@16
    .line 249
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    .line 250
    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    #@4
    move-result v0

    #@5
    .line 313
    .local v0, "result":Z
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@8
    .line 314
    return v0
.end method

.method public setSecure(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    #@0
    .prologue
    .line 422
    if-eqz p1, :cond_0

    #@2
    .line 423
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@4
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@6
    or-int/lit16 v1, v1, 0x2000

    #@8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a
    .line 421
    :goto_0
    return-void

    #@b
    .line 425
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@d
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    and-int/lit16 v1, v1, -0x2001

    #@11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@13
    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 256
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    #@4
    .line 257
    if-nez p1, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@9
    .line 258
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@b
    if-eqz v1, :cond_2

    #@d
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@f
    .line 259
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@11
    if-eq v0, v1, :cond_0

    #@13
    .line 266
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    #@16
    .line 268
    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@18
    .line 269
    invoke-virtual {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@1b
    .line 255
    return-void

    #@1c
    :cond_1
    move v1, v2

    #@1d
    .line 257
    goto :goto_0

    #@1e
    .line 258
    :cond_2
    const/4 v0, 0x0

    #@1f
    .local v0, "newRequestedVisible":Z
    goto :goto_1
.end method

.method public setWindowType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 435
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@2
    .line 434
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    #@0
    .prologue
    .line 380
    if-eqz p1, :cond_0

    #@2
    .line 381
    const/16 v0, 0x3ec

    #@4
    .line 380
    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@6
    .line 379
    return-void

    #@7
    .line 382
    :cond_0
    const/16 v0, 0x3e9

    #@9
    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 3
    .param p1, "onTop"    # Z

    #@0
    .prologue
    .line 399
    if-eqz p1, :cond_0

    #@2
    .line 400
    const/16 v0, 0x3e8

    #@4
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@6
    .line 402
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@8
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a
    const/high16 v2, 0x20000

    #@c
    or-int/2addr v1, v2

    #@d
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@f
    .line 398
    :goto_0
    return-void

    #@10
    .line 404
    :cond_0
    const/16 v0, 0x3e9

    #@12
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@14
    .line 405
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@16
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@18
    const v2, -0x20001

    #@1b
    and-int/2addr v1, v2

    #@1c
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@1e
    goto :goto_0
.end method

.method protected updateWindow(ZZ)V
    .locals 42
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    #@0
    .prologue
    .line 440
    move-object/from16 v0, p0

    #@2
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@4
    if-nez v4, :cond_0

    #@6
    .line 441
    return-void

    #@7
    .line 443
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@a
    move-result-object v39

    #@b
    .line 444
    .local v39, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v39, :cond_1

    #@d
    .line 445
    move-object/from16 v0, v39

    #@f
    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@11
    move-object/from16 v0, p0

    #@13
    iput-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@15
    .line 448
    :cond_1
    move-object/from16 v0, p0

    #@17
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 449
    move-object/from16 v0, p0

    #@1d
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v5, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@23
    invoke-virtual {v4, v5}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    #@26
    .line 452
    :cond_2
    move-object/from16 v0, p0

    #@28
    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@2a
    move/from16 v30, v0

    #@2c
    .line 453
    .local v30, "myWidth":I
    if-gtz v30, :cond_3

    #@2e
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    #@31
    move-result v30

    #@32
    .line 454
    :cond_3
    move-object/from16 v0, p0

    #@34
    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@36
    move/from16 v29, v0

    #@38
    .line 455
    .local v29, "myHeight":I
    if-gtz v29, :cond_4

    #@3a
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    #@3d
    move-result v29

    #@3e
    .line 457
    :cond_4
    move-object/from16 v0, p0

    #@40
    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@42
    if-nez v4, :cond_d

    #@44
    const/16 v24, 0x1

    #@46
    .line 458
    .local v24, "creating":Z
    :goto_0
    move-object/from16 v0, p0

    #@48
    iget v4, v0, Landroid/view/SurfaceView;->mFormat:I

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget v5, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@4e
    if-eq v4, v5, :cond_e

    #@50
    const/16 v27, 0x1

    #@52
    .line 459
    .local v27, "formatChanged":Z
    :goto_1
    move-object/from16 v0, p0

    #@54
    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@56
    move/from16 v0, v30

    #@58
    if-ne v4, v0, :cond_5

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@5e
    move/from16 v0, v29

    #@60
    if-eq v4, v0, :cond_f

    #@62
    :cond_5
    const/16 v35, 0x1

    #@64
    .line 460
    .local v35, "sizeChanged":Z
    :goto_2
    move-object/from16 v0, p0

    #@66
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mVisible:Z

    #@68
    move-object/from16 v0, p0

    #@6a
    iget-boolean v5, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@6c
    if-eq v4, v5, :cond_10

    #@6e
    const/16 v41, 0x1

    #@70
    .line 461
    .local v41, "visibleChanged":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    #@73
    move-result v4

    #@74
    move-object/from16 v0, p0

    #@76
    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@78
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    #@7a
    if-ne v4, v5, :cond_11

    #@7c
    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    #@7f
    move-result v4

    #@80
    move-object/from16 v0, p0

    #@82
    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@84
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    #@86
    if-eq v4, v5, :cond_12

    #@88
    const/16 v28, 0x1

    #@8a
    .line 464
    .local v28, "layoutSizeChanged":Z
    :goto_4
    if-nez p1, :cond_6

    #@8c
    if-nez v24, :cond_6

    #@8e
    if-nez v27, :cond_6

    #@90
    if-nez v35, :cond_6

    #@92
    if-nez v41, :cond_6

    #@94
    .line 465
    move-object/from16 v0, p0

    #@96
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    #@98
    .line 464
    if-nez v4, :cond_6

    #@9a
    .line 465
    move-object/from16 v0, p0

    #@9c
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    #@9e
    .line 464
    if-nez v4, :cond_6

    #@a0
    if-eqz p2, :cond_28

    #@a2
    .line 466
    :cond_6
    move-object/from16 v0, p0

    #@a4
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@a6
    move-object/from16 v0, p0

    #@a8
    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    #@ab
    .line 476
    :try_start_0
    move-object/from16 v0, p0

    #@ad
    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@af
    move/from16 v40, v0

    #@b1
    move/from16 v0, v40

    #@b3
    move-object/from16 v1, p0

    #@b5
    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    #@b7
    .line 477
    .local v40, "visible":Z
    move-object/from16 v0, p0

    #@b9
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@bb
    const/4 v5, 0x0

    #@bc
    aget v4, v4, v5

    #@be
    move-object/from16 v0, p0

    #@c0
    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@c2
    .line 478
    move-object/from16 v0, p0

    #@c4
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@c6
    const/4 v5, 0x1

    #@c7
    aget v4, v4, v5

    #@c9
    move-object/from16 v0, p0

    #@cb
    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@cd
    .line 479
    move/from16 v0, v30

    #@cf
    move-object/from16 v1, p0

    #@d1
    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@d3
    .line 480
    move/from16 v0, v29

    #@d5
    move-object/from16 v1, p0

    #@d7
    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@d9
    .line 481
    move-object/from16 v0, p0

    #@db
    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@dd
    move-object/from16 v0, p0

    #@df
    iput v4, v0, Landroid/view/SurfaceView;->mFormat:I

    #@e1
    .line 486
    move-object/from16 v0, p0

    #@e3
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@e9
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    #@eb
    .line 487
    move-object/from16 v0, p0

    #@ed
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@ef
    move-object/from16 v0, p0

    #@f1
    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@f3
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    #@f5
    .line 488
    move-object/from16 v0, p0

    #@f7
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@f9
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    #@fc
    move-result v5

    #@fd
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    #@ff
    .line 489
    move-object/from16 v0, p0

    #@101
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@103
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    #@106
    move-result v5

    #@107
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    #@109
    .line 490
    move-object/from16 v0, p0

    #@10b
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@10d
    if-eqz v4, :cond_7

    #@10f
    .line 491
    move-object/from16 v0, p0

    #@111
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@113
    move-object/from16 v0, p0

    #@115
    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@117
    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    #@11a
    .line 494
    :cond_7
    move-object/from16 v0, p0

    #@11c
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@11e
    move-object/from16 v0, p0

    #@120
    iget v5, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@122
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    #@124
    .line 495
    move-object/from16 v0, p0

    #@126
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@128
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@12a
    or-int/lit16 v5, v5, 0x4218

    #@12c
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@12e
    .line 502
    if-nez v24, :cond_8

    #@130
    if-eqz p1, :cond_13

    #@132
    .line 506
    :cond_8
    move-object/from16 v0, p0

    #@134
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@136
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@138
    and-int/lit16 v5, v5, -0x2001

    #@13a
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@13c
    .line 510
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    #@13f
    move-result-object v4

    #@140
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@143
    move-result-object v4

    #@144
    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@147
    move-result-object v4

    #@148
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@14b
    move-result v4

    #@14c
    if-nez v4, :cond_9

    #@14e
    .line 511
    move-object/from16 v0, p0

    #@150
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@152
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@154
    or-int/lit16 v5, v5, 0x80

    #@156
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@158
    .line 514
    :cond_9
    move-object/from16 v0, p0

    #@15a
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@15c
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@15e
    const v6, 0x10040

    #@161
    or-int/2addr v5, v6

    #@162
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@164
    .line 517
    move-object/from16 v0, p0

    #@166
    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@168
    if-nez v4, :cond_a

    #@16a
    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    #@16d
    move-result-object v25

    #@16e
    .line 519
    .local v25, "display":Landroid/view/Display;
    new-instance v4, Landroid/view/SurfaceView$MyWindow;

    #@170
    move-object/from16 v0, p0

    #@172
    invoke-direct {v4, v0}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    #@175
    move-object/from16 v0, p0

    #@177
    iput-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@179
    .line 520
    move-object/from16 v0, p0

    #@17b
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget v5, v0, Landroid/view/SurfaceView;->mWindowType:I

    #@181
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    #@183
    .line 521
    move-object/from16 v0, p0

    #@185
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@187
    const v5, 0x800033

    #@18a
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@18c
    .line 522
    move-object/from16 v0, p0

    #@18e
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@190
    move-object/from16 v0, p0

    #@192
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@194
    move-object/from16 v0, p0

    #@196
    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@198
    iget v6, v6, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    #@19a
    move-object/from16 v0, p0

    #@19c
    iget-object v7, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@19e
    .line 523
    move-object/from16 v0, p0

    #@1a0
    iget-boolean v8, v0, Landroid/view/SurfaceView;->mVisible:Z

    #@1a2
    if-eqz v8, :cond_15

    #@1a4
    const/4 v8, 0x0

    #@1a5
    :goto_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getDisplayId()I

    #@1a8
    move-result v9

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iget-object v10, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@1ad
    .line 524
    move-object/from16 v0, p0

    #@1af
    iget-object v11, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@1b1
    .line 522
    invoke-interface/range {v4 .. v11}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@1b4
    .line 532
    .end local v25    # "display":Landroid/view/Display;
    :cond_a
    move-object/from16 v0, p0

    #@1b6
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@1b8
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1bb
    .line 534
    const/4 v4, 0x0

    #@1bc
    :try_start_1
    move-object/from16 v0, p0

    #@1be
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    #@1c0
    .line 535
    move-object/from16 v0, p0

    #@1c2
    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    #@1c4
    move/from16 v34, v0

    #@1c6
    .line 536
    .local v34, "reportDrawNeeded":Z
    const/4 v4, 0x0

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    #@1cb
    .line 537
    if-eqz v40, :cond_16

    #@1cd
    const/4 v4, 0x0

    #@1ce
    :goto_7
    move-object/from16 v0, p0

    #@1d0
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@1d2
    .line 542
    move-object/from16 v0, p0

    #@1d4
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@1d6
    .line 543
    move-object/from16 v0, p0

    #@1d8
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@1da
    move-object/from16 v0, p0

    #@1dc
    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@1de
    iget v6, v6, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iget-object v7, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1e4
    move-object/from16 v0, p0

    #@1e6
    iget v8, v0, Landroid/view/SurfaceView;->mWindowSpaceWidth:I

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iget v9, v0, Landroid/view/SurfaceView;->mWindowSpaceHeight:I

    #@1ec
    .line 544
    if-eqz v40, :cond_17

    #@1ee
    const/4 v10, 0x0

    #@1ef
    .line 546
    :goto_8
    move-object/from16 v0, p0

    #@1f1
    iget-object v12, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@1f3
    move-object/from16 v0, p0

    #@1f5
    iget-object v13, v0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    iget-object v14, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@1fb
    .line 547
    move-object/from16 v0, p0

    #@1fd
    iget-object v15, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@1ff
    move-object/from16 v0, p0

    #@201
    iget-object v0, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@203
    move-object/from16 v16, v0

    #@205
    move-object/from16 v0, p0

    #@207
    iget-object v0, v0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@209
    move-object/from16 v17, v0

    #@20b
    move-object/from16 v0, p0

    #@20d
    iget-object v0, v0, Landroid/view/SurfaceView;->mBackdropFrame:Landroid/graphics/Rect;

    #@20f
    move-object/from16 v18, v0

    #@211
    .line 548
    move-object/from16 v0, p0

    #@213
    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@215
    move-object/from16 v19, v0

    #@217
    move-object/from16 v0, p0

    #@219
    iget-object v0, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@21b
    move-object/from16 v20, v0

    #@21d
    .line 545
    const/4 v11, 0x2

    #@21e
    .line 542
    invoke-interface/range {v4 .. v20}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@221
    move-result v33

    #@222
    .line 549
    .local v33, "relayoutResult":I
    and-int/lit8 v4, v33, 0x2

    #@224
    if-eqz v4, :cond_b

    #@226
    .line 550
    const/16 v34, 0x1

    #@228
    .line 557
    .end local v34    # "reportDrawNeeded":Z
    :cond_b
    move-object/from16 v0, p0

    #@22a
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@22c
    const/4 v5, 0x0

    #@22d
    iput v5, v4, Landroid/graphics/Rect;->left:I

    #@22f
    .line 558
    move-object/from16 v0, p0

    #@231
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@233
    const/4 v5, 0x0

    #@234
    iput v5, v4, Landroid/graphics/Rect;->top:I

    #@236
    .line 559
    move-object/from16 v0, p0

    #@238
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@23a
    if-nez v4, :cond_18

    #@23c
    .line 560
    move-object/from16 v0, p0

    #@23e
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@240
    move-object/from16 v0, p0

    #@242
    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@244
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@247
    move-result v5

    #@248
    iput v5, v4, Landroid/graphics/Rect;->right:I

    #@24a
    .line 561
    move-object/from16 v0, p0

    #@24c
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@24e
    move-object/from16 v0, p0

    #@250
    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@252
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@255
    move-result v5

    #@256
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    #@258
    .line 568
    :goto_9
    move-object/from16 v0, p0

    #@25a
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@25c
    iget v0, v4, Landroid/graphics/Rect;->right:I

    #@25e
    move/from16 v38, v0

    #@260
    .line 569
    .local v38, "surfaceWidth":I
    move-object/from16 v0, p0

    #@262
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@264
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    #@266
    move/from16 v37, v0

    #@268
    .line 570
    .local v37, "surfaceHeight":I
    move-object/from16 v0, p0

    #@26a
    iget v4, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@26c
    move/from16 v0, v38

    #@26e
    if-ne v4, v0, :cond_19

    #@270
    .line 571
    move-object/from16 v0, p0

    #@272
    iget v4, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@274
    move/from16 v0, v37

    #@276
    if-eq v4, v0, :cond_1a

    #@278
    const/16 v32, 0x1

    #@27a
    .line 572
    .local v32, "realSizeChanged":Z
    :goto_a
    move/from16 v0, v38

    #@27c
    move-object/from16 v1, p0

    #@27e
    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@280
    .line 573
    move/from16 v0, v37

    #@282
    move-object/from16 v1, p0

    #@284
    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@286
    .line 575
    :try_start_2
    move-object/from16 v0, p0

    #@288
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@28a
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@28d
    .line 579
    or-int v4, v24, v34

    #@28f
    or-int p2, p2, v4

    #@291
    .line 581
    const/16 v23, 0x0

    #@293
    .line 583
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    and-int/lit8 v4, v33, 0x4

    #@295
    if-eqz v4, :cond_1b

    #@297
    const/16 v36, 0x1

    #@299
    .line 585
    .local v36, "surfaceChanged":Z
    :goto_b
    :try_start_3
    move-object/from16 v0, p0

    #@29b
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@29d
    if-eqz v4, :cond_1c

    #@29f
    if-nez v36, :cond_c

    #@2a1
    if-nez v40, :cond_1c

    #@2a3
    if-eqz v41, :cond_1c

    #@2a5
    .line 586
    :cond_c
    const/4 v4, 0x0

    #@2a6
    move-object/from16 v0, p0

    #@2a8
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@2aa
    .line 587
    move-object/from16 v0, p0

    #@2ac
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@2ae
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@2b1
    move-result v4

    #@2b2
    if-eqz v4, :cond_1c

    #@2b4
    .line 590
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@2b7
    move-result-object v23

    #@2b8
    .line 591
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    const/4 v4, 0x0

    #@2b9
    move-object/from16 v0, v23

    #@2bb
    array-length v5, v0

    #@2bc
    :goto_c
    if-ge v4, v5, :cond_1c

    #@2be
    aget-object v22, v23, v4

    #@2c0
    .line 592
    .local v22, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@2c2
    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@2c4
    move-object/from16 v0, v22

    #@2c6
    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2c9
    .line 591
    add-int/lit8 v4, v4, 0x1

    #@2cb
    goto :goto_c

    #@2cc
    .line 457
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v23    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "creating":Z
    .end local v27    # "formatChanged":Z
    .end local v28    # "layoutSizeChanged":Z
    .end local v32    # "realSizeChanged":Z
    .end local v33    # "relayoutResult":I
    .end local v35    # "sizeChanged":Z
    .end local v36    # "surfaceChanged":Z
    .end local v37    # "surfaceHeight":I
    .end local v38    # "surfaceWidth":I
    .end local v40    # "visible":Z
    .end local v41    # "visibleChanged":Z
    :cond_d
    const/16 v24, 0x0

    #@2ce
    .restart local v24    # "creating":Z
    goto/16 :goto_0

    #@2d0
    .line 458
    :cond_e
    const/16 v27, 0x0

    #@2d2
    .restart local v27    # "formatChanged":Z
    goto/16 :goto_1

    #@2d4
    .line 459
    :cond_f
    const/16 v35, 0x0

    #@2d6
    .restart local v35    # "sizeChanged":Z
    goto/16 :goto_2

    #@2d8
    .line 460
    :cond_10
    const/16 v41, 0x0

    #@2da
    .restart local v41    # "visibleChanged":Z
    goto/16 :goto_3

    #@2dc
    .line 461
    :cond_11
    const/16 v28, 0x1

    #@2de
    .restart local v28    # "layoutSizeChanged":Z
    goto/16 :goto_4

    #@2e0
    .line 462
    .end local v28    # "layoutSizeChanged":Z
    :cond_12
    const/16 v28, 0x0

    #@2e2
    .restart local v28    # "layoutSizeChanged":Z
    goto/16 :goto_4

    #@2e4
    .line 502
    .restart local v40    # "visible":Z
    :cond_13
    :try_start_4
    move-object/from16 v0, p0

    #@2e6
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    #@2e8
    if-nez v4, :cond_8

    #@2ea
    if-nez v35, :cond_8

    #@2ec
    .line 503
    move-object/from16 v0, p0

    #@2ee
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@2f0
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@2f2
    or-int/lit16 v5, v5, 0x2000

    #@2f4
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@2f6
    goto/16 :goto_5

    #@2f8
    .line 646
    .end local v40    # "visible":Z
    :catch_0
    move-exception v26

    #@2f9
    .line 647
    .local v26, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "SurfaceView"

    #@2fc
    const-string/jumbo v5, "Exception from relayout"

    #@2ff
    move-object/from16 v0, v26

    #@301
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@304
    .line 439
    .end local v26    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_d
    return-void

    #@305
    .line 523
    .restart local v25    # "display":Landroid/view/Display;
    .restart local v40    # "visible":Z
    :cond_15
    const/16 v8, 0x8

    #@307
    goto/16 :goto_6

    #@309
    .line 537
    .end local v25    # "display":Landroid/view/Display;
    .restart local v34    # "reportDrawNeeded":Z
    :cond_16
    const/4 v4, 0x1

    #@30a
    goto/16 :goto_7

    #@30c
    .line 544
    :cond_17
    const/16 v10, 0x8

    #@30e
    goto/16 :goto_8

    #@310
    .line 563
    .end local v34    # "reportDrawNeeded":Z
    .restart local v33    # "relayoutResult":I
    :cond_18
    :try_start_5
    move-object/from16 v0, p0

    #@312
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@314
    iget v0, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    #@316
    move/from16 v21, v0

    #@318
    .line 564
    .local v21, "appInvertedScale":F
    move-object/from16 v0, p0

    #@31a
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@31c
    move-object/from16 v0, p0

    #@31e
    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@320
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    #@323
    move-result v5

    #@324
    int-to-float v5, v5

    #@325
    mul-float v5, v5, v21

    #@327
    const/high16 v6, 0x3f000000    # 0.5f

    #@329
    add-float/2addr v5, v6

    #@32a
    float-to-int v5, v5

    #@32b
    iput v5, v4, Landroid/graphics/Rect;->right:I

    #@32d
    .line 565
    move-object/from16 v0, p0

    #@32f
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@331
    move-object/from16 v0, p0

    #@333
    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@335
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    #@338
    move-result v5

    #@339
    int-to-float v5, v5

    #@33a
    mul-float v5, v5, v21

    #@33c
    const/high16 v6, 0x3f000000    # 0.5f

    #@33e
    add-float/2addr v5, v6

    #@33f
    float-to-int v5, v5

    #@340
    iput v5, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@342
    goto/16 :goto_9

    #@344
    .line 574
    .end local v21    # "appInvertedScale":F
    .end local v33    # "relayoutResult":I
    :catchall_0
    move-exception v4

    #@345
    .line 575
    :try_start_6
    move-object/from16 v0, p0

    #@347
    iget-object v5, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@349
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@34c
    .line 574
    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    #@34d
    .line 570
    .restart local v33    # "relayoutResult":I
    .restart local v37    # "surfaceHeight":I
    .restart local v38    # "surfaceWidth":I
    :cond_19
    const/16 v32, 0x1

    #@34f
    .restart local v32    # "realSizeChanged":Z
    goto/16 :goto_a

    #@351
    .line 571
    .end local v32    # "realSizeChanged":Z
    :cond_1a
    const/16 v32, 0x0

    #@353
    .restart local v32    # "realSizeChanged":Z
    goto/16 :goto_a

    #@355
    .line 583
    .local v23, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1b
    const/16 v36, 0x0

    #@357
    .restart local v36    # "surfaceChanged":Z
    goto/16 :goto_b

    #@359
    .line 597
    .end local v23    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1c
    :try_start_7
    move-object/from16 v0, p0

    #@35b
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@35d
    move-object/from16 v0, p0

    #@35f
    iget-object v5, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@361
    invoke-virtual {v4, v5}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    #@364
    .line 598
    if-eqz v40, :cond_25

    #@366
    move-object/from16 v0, p0

    #@368
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@36a
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    #@36d
    move-result v4

    #@36e
    if-eqz v4, :cond_25

    #@370
    .line 599
    move-object/from16 v0, p0

    #@372
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@374
    if-nez v4, :cond_1f

    #@376
    if-nez v36, :cond_1d

    #@378
    if-eqz v41, :cond_1f

    #@37a
    .line 600
    :cond_1d
    const/4 v4, 0x1

    #@37b
    move-object/from16 v0, p0

    #@37d
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@37f
    .line 601
    const/4 v4, 0x1

    #@380
    move-object/from16 v0, p0

    #@382
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@384
    .line 604
    if-nez v23, :cond_1e

    #@386
    .line 605
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@389
    move-result-object v23

    #@38a
    .line 607
    :cond_1e
    const/4 v4, 0x0

    #@38b
    move-object/from16 v0, v23

    #@38d
    array-length v5, v0

    #@38e
    :goto_e
    if-ge v4, v5, :cond_1f

    #@390
    aget-object v22, v23, v4

    #@392
    .line 608
    .restart local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@394
    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@396
    move-object/from16 v0, v22

    #@398
    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@39b
    .line 607
    add-int/lit8 v4, v4, 0x1

    #@39d
    goto :goto_e

    #@39e
    .line 611
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_1f
    if-nez v24, :cond_20

    #@3a0
    if-nez v27, :cond_20

    #@3a2
    if-nez v35, :cond_20

    #@3a4
    if-nez v41, :cond_20

    #@3a6
    if-eqz v32, :cond_22

    #@3a8
    .line 616
    :cond_20
    if-nez v23, :cond_21

    #@3aa
    .line 617
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@3ad
    move-result-object v23

    #@3ae
    .line 619
    :cond_21
    const/4 v4, 0x0

    #@3af
    move-object/from16 v0, v23

    #@3b1
    array-length v5, v0

    #@3b2
    :goto_f
    if-ge v4, v5, :cond_22

    #@3b4
    aget-object v22, v23, v4

    #@3b6
    .line 620
    .restart local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@3b8
    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@3ba
    move-object/from16 v0, p0

    #@3bc
    iget v7, v0, Landroid/view/SurfaceView;->mFormat:I

    #@3be
    move-object/from16 v0, v22

    #@3c0
    move/from16 v1, v30

    #@3c2
    move/from16 v2, v29

    #@3c4
    invoke-interface {v0, v6, v7, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@3c7
    .line 619
    add-int/lit8 v4, v4, 0x1

    #@3c9
    goto :goto_f

    #@3ca
    .line 623
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_22
    if-eqz p2, :cond_25

    #@3cc
    .line 626
    if-nez v23, :cond_23

    #@3ce
    .line 627
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@3d1
    move-result-object v23

    #@3d2
    .line 629
    :cond_23
    const/4 v4, 0x0

    #@3d3
    move-object/from16 v0, v23

    #@3d5
    array-length v5, v0

    #@3d6
    :goto_10
    if-ge v4, v5, :cond_25

    #@3d8
    aget-object v22, v23, v4

    #@3da
    .line 630
    .restart local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v22

    #@3dc
    instance-of v6, v0, Landroid/view/SurfaceHolder$Callback2;

    #@3de
    if-eqz v6, :cond_24

    #@3e0
    .line 631
    check-cast v22, Landroid/view/SurfaceHolder$Callback2;

    #@3e2
    .line 632
    .end local v22    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@3e4
    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@3e6
    .line 631
    move-object/from16 v0, v22

    #@3e8
    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@3eb
    .line 629
    :cond_24
    add-int/lit8 v4, v4, 0x1

    #@3ed
    goto :goto_10

    #@3ee
    .line 638
    :cond_25
    const/4 v4, 0x0

    #@3ef
    :try_start_8
    move-object/from16 v0, p0

    #@3f1
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@3f3
    .line 639
    if-eqz p2, :cond_26

    #@3f5
    .line 642
    move-object/from16 v0, p0

    #@3f7
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@3f9
    move-object/from16 v0, p0

    #@3fb
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@3fd
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@400
    .line 644
    :cond_26
    move-object/from16 v0, p0

    #@402
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@404
    move-object/from16 v0, p0

    #@406
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@408
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    #@40b
    goto/16 :goto_d

    #@40d
    .line 637
    :catchall_1
    move-exception v4

    #@40e
    .line 638
    const/4 v5, 0x0

    #@40f
    move-object/from16 v0, p0

    #@411
    iput-boolean v5, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@413
    .line 639
    if-eqz p2, :cond_27

    #@415
    .line 642
    move-object/from16 v0, p0

    #@417
    iget-object v5, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@419
    move-object/from16 v0, p0

    #@41b
    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@41d
    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@420
    .line 644
    :cond_27
    move-object/from16 v0, p0

    #@422
    iget-object v5, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@424
    move-object/from16 v0, p0

    #@426
    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@428
    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    #@42b
    .line 637
    throw v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    #@42c
    .line 656
    .end local v32    # "realSizeChanged":Z
    .end local v33    # "relayoutResult":I
    .end local v36    # "surfaceChanged":Z
    .end local v37    # "surfaceHeight":I
    .end local v38    # "surfaceWidth":I
    .end local v40    # "visible":Z
    :cond_28
    move-object/from16 v0, p0

    #@42e
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@430
    move-object/from16 v0, p0

    #@432
    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    #@435
    .line 657
    move-object/from16 v0, p0

    #@437
    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@439
    move-object/from16 v0, p0

    #@43b
    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@43d
    const/4 v6, 0x0

    #@43e
    aget v5, v5, v6

    #@440
    if-ne v4, v5, :cond_2c

    #@442
    .line 658
    move-object/from16 v0, p0

    #@444
    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@446
    move-object/from16 v0, p0

    #@448
    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@44a
    const/4 v6, 0x1

    #@44b
    aget v5, v5, v6

    #@44d
    if-eq v4, v5, :cond_2d

    #@44f
    const/16 v31, 0x1

    #@451
    .line 659
    .local v31, "positionChanged":Z
    :goto_11
    if-nez v31, :cond_29

    #@453
    if-eqz v28, :cond_14

    #@455
    .line 660
    :cond_29
    move-object/from16 v0, p0

    #@457
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@459
    const/4 v5, 0x0

    #@45a
    aget v4, v4, v5

    #@45c
    move-object/from16 v0, p0

    #@45e
    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@460
    .line 661
    move-object/from16 v0, p0

    #@462
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@464
    const/4 v5, 0x1

    #@465
    aget v4, v4, v5

    #@467
    move-object/from16 v0, p0

    #@469
    iput v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@46b
    .line 664
    move-object/from16 v0, p0

    #@46d
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@46f
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    #@472
    move-result v5

    #@473
    move-object/from16 v0, p0

    #@475
    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@477
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    #@479
    const/4 v6, 0x0

    #@47a
    aput v5, v4, v6

    #@47c
    .line 665
    move-object/from16 v0, p0

    #@47e
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@480
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    #@483
    move-result v5

    #@484
    move-object/from16 v0, p0

    #@486
    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@488
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    #@48a
    const/4 v6, 0x1

    #@48b
    aput v5, v4, v6

    #@48d
    .line 667
    move-object/from16 v0, p0

    #@48f
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@491
    move-object/from16 v0, p0

    #@493
    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->transformFromViewToWindowSpace([I)V

    #@496
    .line 669
    move-object/from16 v0, p0

    #@498
    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@49a
    move-object/from16 v0, p0

    #@49c
    iget v5, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    #@49e
    move-object/from16 v0, p0

    #@4a0
    iget v6, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    #@4a2
    .line 670
    move-object/from16 v0, p0

    #@4a4
    iget-object v7, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@4a6
    const/4 v8, 0x0

    #@4a7
    aget v7, v7, v8

    #@4a9
    move-object/from16 v0, p0

    #@4ab
    iget-object v8, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@4ad
    const/4 v9, 0x1

    #@4ae
    aget v8, v8, v9

    #@4b0
    .line 669
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@4b3
    .line 672
    move-object/from16 v0, p0

    #@4b5
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@4b7
    if-eqz v4, :cond_2a

    #@4b9
    .line 673
    move-object/from16 v0, p0

    #@4bb
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@4bd
    move-object/from16 v0, p0

    #@4bf
    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@4c1
    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    #@4c4
    .line 676
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    #@4c7
    move-result v4

    #@4c8
    if-eqz v4, :cond_2b

    #@4ca
    move-object/from16 v0, p0

    #@4cc
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@4ce
    if-nez v4, :cond_14

    #@4d0
    .line 682
    :cond_2b
    :try_start_9
    move-object/from16 v0, p0

    #@4d2
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@4d4
    move-object/from16 v0, p0

    #@4d6
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@4d8
    move-object/from16 v0, p0

    #@4da
    iget-object v6, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@4dc
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@4de
    move-object/from16 v0, p0

    #@4e0
    iget-object v7, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@4e2
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@4e4
    .line 683
    move-object/from16 v0, p0

    #@4e6
    iget-object v8, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@4e8
    iget v8, v8, Landroid/graphics/Rect;->right:I

    #@4ea
    move-object/from16 v0, p0

    #@4ec
    iget-object v9, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@4ee
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    #@4f0
    const-wide/16 v10, -0x1

    #@4f2
    move-object/from16 v0, p0

    #@4f4
    iget-object v12, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@4f6
    .line 682
    invoke-interface/range {v4 .. v12}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    #@4f9
    goto/16 :goto_d

    #@4fb
    .line 684
    :catch_1
    move-exception v26

    #@4fc
    .line 685
    .restart local v26    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "SurfaceView"

    #@4ff
    const-string/jumbo v5, "Exception from relayout"

    #@502
    move-object/from16 v0, v26

    #@504
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@507
    goto/16 :goto_d

    #@509
    .line 657
    .end local v26    # "ex":Landroid/os/RemoteException;
    .end local v31    # "positionChanged":Z
    :cond_2c
    const/16 v31, 0x1

    #@50b
    .restart local v31    # "positionChanged":Z
    goto/16 :goto_11

    #@50d
    .line 658
    .end local v31    # "positionChanged":Z
    :cond_2d
    const/16 v31, 0x0

    #@50f
    .restart local v31    # "positionChanged":Z
    goto/16 :goto_11
.end method

.method public final updateWindowPositionRT(JIIII)V
    .locals 15
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    #@0
    .prologue
    .line 700
    iget-object v4, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@2
    .line 701
    .local v4, "session":Landroid/view/IWindowSession;
    iget-object v5, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@4
    .line 702
    .local v5, "window":Landroid/view/SurfaceView$MyWindow;
    if-eqz v4, :cond_0

    #@6
    if-nez v5, :cond_1

    #@8
    .line 704
    :cond_0
    return-void

    #@9
    .line 714
    :cond_1
    const/4 v6, 0x1

    #@a
    iput-boolean v6, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@c
    .line 715
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@e
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@10
    move/from16 v0, p3

    #@12
    if-ne v6, v0, :cond_2

    #@14
    .line 716
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@16
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@18
    move/from16 v0, p4

    #@1a
    if-ne v6, v0, :cond_2

    #@1c
    .line 717
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@1e
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@20
    move/from16 v0, p5

    #@22
    if-ne v6, v0, :cond_2

    #@24
    .line 718
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@26
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@28
    move/from16 v0, p6

    #@2a
    if-ne v6, v0, :cond_2

    #@2c
    .line 719
    return-void

    #@2d
    .line 730
    :cond_2
    :try_start_0
    iget-object v12, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@2f
    move/from16 v6, p3

    #@31
    move/from16 v7, p4

    #@33
    move/from16 v8, p5

    #@35
    move/from16 v9, p6

    #@37
    move-wide/from16 v10, p1

    #@39
    .line 728
    invoke-interface/range {v4 .. v12}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V

    #@3c
    .line 732
    iget-object v6, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@3e
    move/from16 v0, p3

    #@40
    move/from16 v1, p4

    #@42
    move/from16 v2, p5

    #@44
    move/from16 v3, p6

    #@46
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 699
    :goto_0
    return-void

    #@4a
    .line 733
    :catch_0
    move-exception v13

    #@4b
    .line 734
    .local v13, "ex":Landroid/os/RemoteException;
    const-string/jumbo v6, "SurfaceView"

    #@4e
    const-string/jumbo v7, "Exception from repositionChild"

    #@51
    invoke-static {v6, v7, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@54
    goto :goto_0
.end method

.method public final windowPositionLostRT(J)V
    .locals 11
    .param p1, "frameNumber"    # J

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@2
    .line 749
    .local v0, "session":Landroid/view/IWindowSession;
    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@4
    .line 750
    .local v1, "window":Landroid/view/SurfaceView$MyWindow;
    if-eqz v0, :cond_0

    #@6
    if-nez v1, :cond_1

    #@8
    .line 752
    :cond_0
    return-void

    #@9
    .line 754
    :cond_1
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@b
    if-eqz v2, :cond_3

    #@d
    .line 755
    const/4 v2, 0x0

    #@e
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    #@10
    .line 760
    iget-object v2, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@12
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_2

    #@18
    iget-object v2, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@1a
    iget-object v3, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_4

    #@22
    .line 772
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    #@27
    .line 743
    :cond_3
    return-void

    #@28
    .line 766
    :cond_4
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@2a
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@2c
    iget-object v3, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@2e
    iget v3, v3, Landroid/graphics/Rect;->top:I

    #@30
    .line 767
    iget-object v4, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@32
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@34
    iget-object v5, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@36
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@38
    iget-object v8, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@3a
    move-wide v6, p1

    #@3b
    .line 766
    invoke-interface/range {v0 .. v8}, Landroid/view/IWindowSession;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    goto :goto_0

    #@3f
    .line 768
    :catch_0
    move-exception v9

    #@40
    .line 769
    .local v9, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SurfaceView"

    #@43
    const-string/jumbo v3, "Exception from relayout"

    #@46
    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@49
    goto :goto_0
.end method
