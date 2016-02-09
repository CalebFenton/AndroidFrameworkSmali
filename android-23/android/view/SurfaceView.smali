.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;,
        Landroid/view/SurfaceView$1;,
        Landroid/view/SurfaceView$2;,
        Landroid/view/SurfaceView$3;,
        Landroid/view/SurfaceView$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
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

.field mHeight:I

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field final mLocation:[I

.field final mNewSurface:Landroid/view/Surface;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field final mSurface:Landroid/view/Surface;

.field mSurfaceCreated:Z

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

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
    .line 184
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@5
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 90
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@c
    .line 93
    const/4 v0, 0x2

    #@d
    new-array v0, v0, [I

    #@f
    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@11
    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 96
    new-instance v0, Landroid/view/Surface;

    #@1a
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    .line 97
    new-instance v0, Landroid/view/Surface;

    #@21
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@24
    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@26
    .line 98
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@29
    .line 101
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@2e
    .line 100
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 104
    new-instance v0, Landroid/graphics/Rect;

    #@32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@35
    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@37
    .line 105
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@3e
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    #@40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@43
    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@45
    .line 107
    new-instance v0, Landroid/graphics/Rect;

    #@47
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4a
    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@4c
    .line 108
    new-instance v0, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@51
    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@53
    .line 109
    new-instance v0, Landroid/graphics/Rect;

    #@55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@58
    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@5a
    .line 110
    new-instance v0, Landroid/content/res/Configuration;

    #@5c
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5f
    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@61
    .line 116
    const/16 v0, 0x3e9

    #@63
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@65
    .line 118
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@67
    .line 120
    new-instance v0, Landroid/view/SurfaceView$1;

    #@69
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    #@6c
    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@6e
    .line 138
    new-instance v0, Landroid/view/SurfaceView$2;

    #@70
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    #@73
    .line 137
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@75
    .line 145
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@77
    .line 146
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@79
    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@7b
    .line 148
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@7d
    .line 149
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@7f
    .line 153
    const/4 v0, 0x4

    #@80
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@82
    .line 155
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@84
    .line 156
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@86
    .line 157
    const-wide/16 v0, 0x0

    #@88
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    #@8a
    .line 159
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    #@8c
    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    #@8e
    .line 161
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    #@90
    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    #@92
    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    #@94
    .line 164
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    #@96
    .line 165
    new-instance v0, Landroid/graphics/Rect;

    #@98
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9b
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@9d
    .line 166
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@9f
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@a1
    .line 172
    new-instance v0, Landroid/view/SurfaceView$3;

    #@a3
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    #@a6
    .line 171
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@a8
    .line 710
    new-instance v0, Landroid/view/SurfaceView$4;

    #@aa
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    #@ad
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@af
    .line 185
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    #@b2
    .line 183
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
    .line 189
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 90
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@c
    .line 93
    const/4 v0, 0x2

    #@d
    new-array v0, v0, [I

    #@f
    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@11
    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 96
    new-instance v0, Landroid/view/Surface;

    #@1a
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    .line 97
    new-instance v0, Landroid/view/Surface;

    #@21
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@24
    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@26
    .line 98
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@29
    .line 101
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@2e
    .line 100
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 104
    new-instance v0, Landroid/graphics/Rect;

    #@32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@35
    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@37
    .line 105
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@3e
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    #@40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@43
    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@45
    .line 107
    new-instance v0, Landroid/graphics/Rect;

    #@47
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4a
    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@4c
    .line 108
    new-instance v0, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@51
    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@53
    .line 109
    new-instance v0, Landroid/graphics/Rect;

    #@55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@58
    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@5a
    .line 110
    new-instance v0, Landroid/content/res/Configuration;

    #@5c
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5f
    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@61
    .line 116
    const/16 v0, 0x3e9

    #@63
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@65
    .line 118
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@67
    .line 120
    new-instance v0, Landroid/view/SurfaceView$1;

    #@69
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    #@6c
    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@6e
    .line 138
    new-instance v0, Landroid/view/SurfaceView$2;

    #@70
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    #@73
    .line 137
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@75
    .line 145
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@77
    .line 146
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@79
    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@7b
    .line 148
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@7d
    .line 149
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@7f
    .line 153
    const/4 v0, 0x4

    #@80
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@82
    .line 155
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@84
    .line 156
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@86
    .line 157
    const-wide/16 v0, 0x0

    #@88
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    #@8a
    .line 159
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    #@8c
    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    #@8e
    .line 161
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    #@90
    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    #@92
    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    #@94
    .line 164
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    #@96
    .line 165
    new-instance v0, Landroid/graphics/Rect;

    #@98
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9b
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@9d
    .line 166
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@9f
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@a1
    .line 172
    new-instance v0, Landroid/view/SurfaceView$3;

    #@a3
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    #@a6
    .line 171
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@a8
    .line 710
    new-instance v0, Landroid/view/SurfaceView$4;

    #@aa
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    #@ad
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@af
    .line 190
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    #@b2
    .line 188
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
    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 90
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@c
    .line 93
    const/4 v0, 0x2

    #@d
    new-array v0, v0, [I

    #@f
    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@11
    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 96
    new-instance v0, Landroid/view/Surface;

    #@1a
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    .line 97
    new-instance v0, Landroid/view/Surface;

    #@21
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@24
    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@26
    .line 98
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@29
    .line 101
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@2e
    .line 100
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 104
    new-instance v0, Landroid/graphics/Rect;

    #@32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@35
    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@37
    .line 105
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@3e
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    #@40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@43
    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@45
    .line 107
    new-instance v0, Landroid/graphics/Rect;

    #@47
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4a
    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@4c
    .line 108
    new-instance v0, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@51
    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@53
    .line 109
    new-instance v0, Landroid/graphics/Rect;

    #@55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@58
    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@5a
    .line 110
    new-instance v0, Landroid/content/res/Configuration;

    #@5c
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5f
    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@61
    .line 116
    const/16 v0, 0x3e9

    #@63
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@65
    .line 118
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@67
    .line 120
    new-instance v0, Landroid/view/SurfaceView$1;

    #@69
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    #@6c
    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@6e
    .line 138
    new-instance v0, Landroid/view/SurfaceView$2;

    #@70
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    #@73
    .line 137
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@75
    .line 145
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@77
    .line 146
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@79
    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@7b
    .line 148
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@7d
    .line 149
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@7f
    .line 153
    const/4 v0, 0x4

    #@80
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@82
    .line 155
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@84
    .line 156
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@86
    .line 157
    const-wide/16 v0, 0x0

    #@88
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    #@8a
    .line 159
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    #@8c
    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    #@8e
    .line 161
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    #@90
    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    #@92
    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    #@94
    .line 164
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    #@96
    .line 165
    new-instance v0, Landroid/graphics/Rect;

    #@98
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9b
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@9d
    .line 166
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@9f
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@a1
    .line 172
    new-instance v0, Landroid/view/SurfaceView$3;

    #@a3
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    #@a6
    .line 171
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@a8
    .line 710
    new-instance v0, Landroid/view/SurfaceView$4;

    #@aa
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    #@ad
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@af
    .line 195
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    #@b2
    .line 193
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
    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 90
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@c
    .line 93
    const/4 v0, 0x2

    #@d
    new-array v0, v0, [I

    #@f
    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@11
    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@16
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18
    .line 96
    new-instance v0, Landroid/view/Surface;

    #@1a
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    .line 97
    new-instance v0, Landroid/view/Surface;

    #@21
    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    #@24
    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@26
    .line 98
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@29
    .line 101
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    #@2b
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    #@2e
    .line 100
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@30
    .line 104
    new-instance v0, Landroid/graphics/Rect;

    #@32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@35
    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@37
    .line 105
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@3e
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    #@40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@43
    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@45
    .line 107
    new-instance v0, Landroid/graphics/Rect;

    #@47
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@4a
    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@4c
    .line 108
    new-instance v0, Landroid/graphics/Rect;

    #@4e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@51
    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@53
    .line 109
    new-instance v0, Landroid/graphics/Rect;

    #@55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@58
    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@5a
    .line 110
    new-instance v0, Landroid/content/res/Configuration;

    #@5c
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5f
    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@61
    .line 116
    const/16 v0, 0x3e9

    #@63
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@65
    .line 118
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@67
    .line 120
    new-instance v0, Landroid/view/SurfaceView$1;

    #@69
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    #@6c
    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@6e
    .line 138
    new-instance v0, Landroid/view/SurfaceView$2;

    #@70
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    #@73
    .line 137
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@75
    .line 145
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@77
    .line 146
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@79
    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@7b
    .line 148
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@7d
    .line 149
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@7f
    .line 153
    const/4 v0, 0x4

    #@80
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@82
    .line 155
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@84
    .line 156
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@86
    .line 157
    const-wide/16 v0, 0x0

    #@88
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    #@8a
    .line 159
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    #@8c
    .line 160
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    #@8e
    .line 161
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    #@90
    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    #@92
    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    #@94
    .line 164
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    #@96
    .line 165
    new-instance v0, Landroid/graphics/Rect;

    #@98
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9b
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@9d
    .line 166
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@9f
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@a1
    .line 172
    new-instance v0, Landroid/view/SurfaceView$3;

    #@a3
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    #@a6
    .line 171
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@a8
    .line 710
    new-instance v0, Landroid/view/SurfaceView$4;

    #@aa
    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    #@ad
    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@af
    .line 200
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    #@b2
    .line 198
    return-void
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    #@0
    .prologue
    .line 628
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 629
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    #@b
    .line 630
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 632
    return-object v0

    #@12
    .line 628
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
    .line 204
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    #@4
    .line 203
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 346
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@2
    const/16 v1, 0x3e8

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 348
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    #@8
    and-int/lit16 v0, v0, 0x80

    #@a
    const/16 v1, 0x80

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 350
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@14
    .line 353
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@17
    .line 345
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 334
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@3
    const/16 v1, 0x3e8

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 336
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    #@9
    and-int/lit16 v0, v0, 0x80

    #@b
    if-nez v0, :cond_0

    #@d
    .line 338
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@f
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@12
    .line 341
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@15
    .line 333
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 307
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@3
    const/16 v3, 0x3e8

    #@5
    if-ne v0, v3, :cond_0

    #@7
    .line 308
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 311
    :cond_0
    const/4 v7, 0x1

    #@d
    .line 312
    .local v7, "opaque":Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    #@f
    and-int/lit16 v0, v0, 0x80

    #@11
    if-nez v0, :cond_3

    #@13
    .line 314
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    #@16
    move-result v7

    #@17
    .line 326
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
    .line 327
    const/4 v7, 0x0

    #@20
    .line 329
    :cond_2
    return v7

    #@21
    .line 315
    .restart local v7    # "opaque":Z
    :cond_3
    if-eqz p1, :cond_1

    #@23
    .line 316
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    #@26
    move-result v8

    #@27
    .line 317
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    #@2a
    move-result v6

    #@2b
    .line 318
    .local v6, "h":I
    if-lez v8, :cond_1

    #@2d
    if-lez v6, :cond_1

    #@2f
    .line 319
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@31
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    #@34
    .line 321
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@36
    aget v1, v0, v4

    #@38
    .line 322
    .local v1, "l":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    #@3a
    const/4 v3, 0x1

    #@3b
    aget v2, v0, v3

    #@3d
    .line 323
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
    .line 214
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
    .line 636
    invoke-virtual {p0, v0, v0}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@4
    .line 635
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
    .line 647
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
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 219
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@5
    .line 220
    iget-object v3, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    #@7
    invoke-interface {v3, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    #@a
    .line 221
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    #@d
    move-result-object v3

    #@e
    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@10
    .line 222
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@12
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    #@15
    move-result-object v4

    #@16
    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@18
    .line 223
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1a
    const-string/jumbo v4, "SurfaceView"

    #@1d
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@20
    .line 224
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_0

    #@26
    move v1, v2

    #@27
    :cond_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@29
    .line 226
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@2b
    if-nez v1, :cond_1

    #@2d
    .line 227
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@30
    move-result-object v0

    #@31
    .line 228
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@33
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@36
    .line 229
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@38
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@3b
    .line 230
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@3d
    .line 218
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
    .line 262
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 263
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@9
    move-result-object v1

    #@a
    .line 264
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    #@c
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    #@f
    .line 265
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@11
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@14
    .line 266
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    #@16
    .line 269
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@18
    .line 270
    invoke-virtual {p0, v3, v3}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@1b
    .line 271
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@1d
    .line 272
    iget-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 274
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@23
    iget-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@25
    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 278
    :goto_0
    iput-object v4, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@2a
    .line 280
    :cond_1
    iput-object v4, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@2c
    .line 281
    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@2e
    iput-object v4, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    #@30
    .line 283
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@33
    .line 261
    return-void

    #@34
    .line 275
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
    .line 288
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@3
    if-ltz v2, :cond_0

    #@5
    .line 289
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@7
    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    #@a
    move-result v1

    #@b
    .line 291
    .local v1, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@d
    if-ltz v2, :cond_1

    #@f
    .line 292
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@11
    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    #@14
    move-result v0

    #@15
    .line 294
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    #@18
    .line 287
    return-void

    #@19
    .line 290
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
    .line 293
    :cond_1
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    #@21
    move-result v0

    #@22
    .restart local v0    # "height":I
    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 236
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    #@4
    .line 237
    if-nez p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@9
    .line 238
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@f
    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@11
    .line 239
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@14
    .line 235
    return-void

    #@15
    :cond_0
    move v0, v1

    #@16
    .line 237
    goto :goto_0

    #@17
    :cond_1
    move v0, v1

    #@18
    .line 238
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
    .line 300
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    #@4
    move-result v0

    #@5
    .line 301
    .local v0, "result":Z
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@8
    .line 302
    return v0
.end method

.method public setSecure(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    #@0
    .prologue
    .line 410
    if-eqz p1, :cond_0

    #@2
    .line 411
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@4
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@6
    or-int/lit16 v1, v1, 0x2000

    #@8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@a
    .line 409
    :goto_0
    return-void

    #@b
    .line 413
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
    .line 244
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    #@4
    .line 245
    if-nez p1, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@9
    .line 246
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    #@b
    if-eqz v1, :cond_2

    #@d
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    #@f
    .line 247
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@11
    if-eq v0, v1, :cond_0

    #@13
    .line 254
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    #@16
    .line 256
    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@18
    .line 257
    invoke-virtual {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@1b
    .line 243
    return-void

    #@1c
    :cond_1
    move v1, v2

    #@1d
    .line 245
    goto :goto_0

    #@1e
    .line 246
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
    .line 423
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@2
    .line 422
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    #@0
    .prologue
    .line 368
    if-eqz p1, :cond_0

    #@2
    .line 369
    const/16 v0, 0x3ec

    #@4
    .line 368
    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@6
    .line 367
    return-void

    #@7
    .line 370
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
    .line 387
    if-eqz p1, :cond_0

    #@2
    .line 388
    const/16 v0, 0x3e8

    #@4
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@6
    .line 390
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
    .line 386
    :goto_0
    return-void

    #@10
    .line 392
    :cond_0
    const/16 v0, 0x3e9

    #@12
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    #@14
    .line 393
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
    .locals 38
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    #@0
    .prologue
    .line 428
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    #@4
    if-nez v3, :cond_0

    #@6
    .line 429
    return-void

    #@7
    .line 431
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@a
    move-result-object v35

    #@b
    .line 432
    .local v35, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v35, :cond_1

    #@d
    .line 433
    move-object/from16 v0, v35

    #@f
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@11
    move-object/from16 v0, p0

    #@13
    iput-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@15
    .line 436
    :cond_1
    move-object/from16 v0, p0

    #@17
    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 437
    move-object/from16 v0, p0

    #@1d
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@23
    invoke-virtual {v3, v4}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    #@26
    .line 440
    :cond_2
    move-object/from16 v0, p0

    #@28
    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@2a
    move/from16 v27, v0

    #@2c
    .line 441
    .local v27, "myWidth":I
    if-gtz v27, :cond_3

    #@2e
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    #@31
    move-result v27

    #@32
    .line 442
    :cond_3
    move-object/from16 v0, p0

    #@34
    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@36
    move/from16 v26, v0

    #@38
    .line 443
    .local v26, "myHeight":I
    if-gtz v26, :cond_4

    #@3a
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    #@3d
    move-result v26

    #@3e
    .line 445
    :cond_4
    move-object/from16 v0, p0

    #@40
    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@42
    move-object/from16 v0, p0

    #@44
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    #@47
    .line 446
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@4b
    if-nez v3, :cond_c

    #@4d
    const/16 v22, 0x1

    #@4f
    .line 447
    .local v22, "creating":Z
    :goto_0
    move-object/from16 v0, p0

    #@51
    iget v3, v0, Landroid/view/SurfaceView;->mFormat:I

    #@53
    move-object/from16 v0, p0

    #@55
    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@57
    if-eq v3, v4, :cond_d

    #@59
    const/16 v25, 0x1

    #@5b
    .line 448
    .local v25, "formatChanged":Z
    :goto_1
    move-object/from16 v0, p0

    #@5d
    iget v3, v0, Landroid/view/SurfaceView;->mWidth:I

    #@5f
    move/from16 v0, v27

    #@61
    if-ne v3, v0, :cond_5

    #@63
    move-object/from16 v0, p0

    #@65
    iget v3, v0, Landroid/view/SurfaceView;->mHeight:I

    #@67
    move/from16 v0, v26

    #@69
    if-eq v3, v0, :cond_e

    #@6b
    :cond_5
    const/16 v31, 0x1

    #@6d
    .line 449
    .local v31, "sizeChanged":Z
    :goto_2
    move-object/from16 v0, p0

    #@6f
    iget-boolean v3, v0, Landroid/view/SurfaceView;->mVisible:Z

    #@71
    move-object/from16 v0, p0

    #@73
    iget-boolean v4, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@75
    if-eq v3, v4, :cond_f

    #@77
    const/16 v37, 0x1

    #@79
    .line 451
    .local v37, "visibleChanged":Z
    :goto_3
    if-nez p1, :cond_6

    #@7b
    if-nez v22, :cond_6

    #@7d
    if-nez v25, :cond_6

    #@7f
    if-nez v31, :cond_6

    #@81
    if-nez v37, :cond_6

    #@83
    .line 452
    move-object/from16 v0, p0

    #@85
    iget v3, v0, Landroid/view/SurfaceView;->mLeft:I

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@8b
    const/4 v5, 0x0

    #@8c
    aget v4, v4, v5

    #@8e
    if-eq v3, v4, :cond_10

    #@90
    .line 462
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    #@92
    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    #@94
    move/from16 v36, v0

    #@96
    move/from16 v0, v36

    #@98
    move-object/from16 v1, p0

    #@9a
    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    #@9c
    .line 463
    .local v36, "visible":Z
    move-object/from16 v0, p0

    #@9e
    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@a0
    const/4 v4, 0x0

    #@a1
    aget v3, v3, v4

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput v3, v0, Landroid/view/SurfaceView;->mLeft:I

    #@a7
    .line 464
    move-object/from16 v0, p0

    #@a9
    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@ab
    const/4 v4, 0x1

    #@ac
    aget v3, v3, v4

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput v3, v0, Landroid/view/SurfaceView;->mTop:I

    #@b2
    .line 465
    move/from16 v0, v27

    #@b4
    move-object/from16 v1, p0

    #@b6
    iput v0, v1, Landroid/view/SurfaceView;->mWidth:I

    #@b8
    .line 466
    move/from16 v0, v26

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput v0, v1, Landroid/view/SurfaceView;->mHeight:I

    #@be
    .line 467
    move-object/from16 v0, p0

    #@c0
    iget v3, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@c2
    move-object/from16 v0, p0

    #@c4
    iput v3, v0, Landroid/view/SurfaceView;->mFormat:I

    #@c6
    .line 472
    move-object/from16 v0, p0

    #@c8
    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget v4, v0, Landroid/view/SurfaceView;->mLeft:I

    #@ce
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    #@d0
    .line 473
    move-object/from16 v0, p0

    #@d2
    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget v4, v0, Landroid/view/SurfaceView;->mTop:I

    #@d8
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    #@da
    .line 474
    move-object/from16 v0, p0

    #@dc
    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@de
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    #@e1
    move-result v4

    #@e2
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    #@e4
    .line 475
    move-object/from16 v0, p0

    #@e6
    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@e8
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    #@eb
    move-result v4

    #@ec
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    #@ee
    .line 476
    move-object/from16 v0, p0

    #@f0
    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@f2
    if-eqz v3, :cond_7

    #@f4
    .line 477
    move-object/from16 v0, p0

    #@f6
    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@fc
    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    #@ff
    .line 480
    :cond_7
    move-object/from16 v0, p0

    #@101
    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@103
    move-object/from16 v0, p0

    #@105
    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@107
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    #@109
    .line 481
    move-object/from16 v0, p0

    #@10b
    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@10d
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@10f
    or-int/lit16 v4, v4, 0x4218

    #@111
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    #@113
    .line 488
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    #@116
    move-result-object v3

    #@117
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@11a
    move-result-object v3

    #@11b
    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@11e
    move-result-object v3

    #@11f
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    #@122
    move-result v3

    #@123
    if-nez v3, :cond_8

    #@125
    .line 489
    move-object/from16 v0, p0

    #@127
    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@129
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@12b
    or-int/lit16 v4, v4, 0x80

    #@12d
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@12f
    .line 492
    :cond_8
    move-object/from16 v0, p0

    #@131
    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@133
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@135
    or-int/lit8 v4, v4, 0x40

    #@137
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@139
    .line 494
    move-object/from16 v0, p0

    #@13b
    iget-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@13d
    if-nez v3, :cond_9

    #@13f
    .line 495
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    #@142
    move-result-object v23

    #@143
    .line 496
    .local v23, "display":Landroid/view/Display;
    new-instance v3, Landroid/view/SurfaceView$MyWindow;

    #@145
    move-object/from16 v0, p0

    #@147
    invoke-direct {v3, v0}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    #@14a
    move-object/from16 v0, p0

    #@14c
    iput-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@14e
    .line 497
    move-object/from16 v0, p0

    #@150
    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@152
    move-object/from16 v0, p0

    #@154
    iget v4, v0, Landroid/view/SurfaceView;->mWindowType:I

    #@156
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@158
    .line 498
    move-object/from16 v0, p0

    #@15a
    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@15c
    const v4, 0x800033

    #@15f
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    #@161
    .line 499
    move-object/from16 v0, p0

    #@163
    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@165
    move-object/from16 v0, p0

    #@167
    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@169
    move-object/from16 v0, p0

    #@16b
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@16d
    iget v5, v5, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    #@16f
    move-object/from16 v0, p0

    #@171
    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@173
    .line 500
    move-object/from16 v0, p0

    #@175
    iget-boolean v7, v0, Landroid/view/SurfaceView;->mVisible:Z

    #@177
    if-eqz v7, :cond_11

    #@179
    const/4 v7, 0x0

    #@17a
    :goto_4
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getDisplayId()I

    #@17d
    move-result v8

    #@17e
    move-object/from16 v0, p0

    #@180
    iget-object v9, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@182
    .line 501
    move-object/from16 v0, p0

    #@184
    iget-object v10, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@186
    .line 499
    invoke-interface/range {v3 .. v10}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@189
    .line 509
    .end local v23    # "display":Landroid/view/Display;
    :cond_9
    move-object/from16 v0, p0

    #@18b
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@18d
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@190
    .line 511
    const/4 v3, 0x0

    #@191
    :try_start_1
    move-object/from16 v0, p0

    #@193
    iput-boolean v3, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    #@195
    .line 512
    move-object/from16 v0, p0

    #@197
    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    #@199
    move/from16 v30, v0

    #@19b
    .line 513
    .local v30, "reportDrawNeeded":Z
    const/4 v3, 0x0

    #@19c
    move-object/from16 v0, p0

    #@19e
    iput-boolean v3, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    #@1a0
    .line 514
    if-eqz v36, :cond_12

    #@1a2
    const/4 v3, 0x0

    #@1a3
    :goto_5
    move-object/from16 v0, p0

    #@1a5
    iput-boolean v3, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@1a7
    .line 518
    move-object/from16 v0, p0

    #@1a9
    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@1ab
    .line 519
    move-object/from16 v0, p0

    #@1ad
    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@1af
    move-object/from16 v0, p0

    #@1b1
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@1b3
    iget v5, v5, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iget v7, v0, Landroid/view/SurfaceView;->mWidth:I

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iget v8, v0, Landroid/view/SurfaceView;->mHeight:I

    #@1c1
    .line 520
    if-eqz v36, :cond_13

    #@1c3
    const/4 v9, 0x0

    #@1c4
    .line 522
    :goto_6
    move-object/from16 v0, p0

    #@1c6
    iget-object v11, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    iget-object v12, v0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    #@1cc
    move-object/from16 v0, p0

    #@1ce
    iget-object v13, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    #@1d0
    .line 523
    move-object/from16 v0, p0

    #@1d2
    iget-object v14, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    #@1d4
    move-object/from16 v0, p0

    #@1d6
    iget-object v15, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    #@1d8
    move-object/from16 v0, p0

    #@1da
    iget-object v0, v0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    #@1dc
    move-object/from16 v16, v0

    #@1de
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    #@1e2
    move-object/from16 v17, v0

    #@1e4
    .line 524
    move-object/from16 v0, p0

    #@1e6
    iget-object v0, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@1e8
    move-object/from16 v18, v0

    #@1ea
    .line 521
    const/4 v10, 0x2

    #@1eb
    .line 518
    invoke-interface/range {v3 .. v18}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    #@1ee
    move-result v29

    #@1ef
    .line 525
    .local v29, "relayoutResult":I
    and-int/lit8 v3, v29, 0x2

    #@1f1
    if-eqz v3, :cond_a

    #@1f3
    .line 526
    const/16 v30, 0x1

    #@1f5
    .line 532
    .end local v30    # "reportDrawNeeded":Z
    :cond_a
    move-object/from16 v0, p0

    #@1f7
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@1f9
    const/4 v4, 0x0

    #@1fa
    iput v4, v3, Landroid/graphics/Rect;->left:I

    #@1fc
    .line 533
    move-object/from16 v0, p0

    #@1fe
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@200
    const/4 v4, 0x0

    #@201
    iput v4, v3, Landroid/graphics/Rect;->top:I

    #@203
    .line 534
    move-object/from16 v0, p0

    #@205
    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@207
    if-nez v3, :cond_14

    #@209
    .line 535
    move-object/from16 v0, p0

    #@20b
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@20d
    move-object/from16 v0, p0

    #@20f
    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@211
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@214
    move-result v4

    #@215
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@217
    .line 536
    move-object/from16 v0, p0

    #@219
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@21b
    move-object/from16 v0, p0

    #@21d
    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@21f
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@222
    move-result v4

    #@223
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    #@225
    .line 543
    :goto_7
    move-object/from16 v0, p0

    #@227
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@229
    iget v0, v3, Landroid/graphics/Rect;->right:I

    #@22b
    move/from16 v34, v0

    #@22d
    .line 544
    .local v34, "surfaceWidth":I
    move-object/from16 v0, p0

    #@22f
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@231
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    #@233
    move/from16 v33, v0

    #@235
    .line 545
    .local v33, "surfaceHeight":I
    move-object/from16 v0, p0

    #@237
    iget v3, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@239
    move/from16 v0, v34

    #@23b
    if-ne v3, v0, :cond_15

    #@23d
    .line 546
    move-object/from16 v0, p0

    #@23f
    iget v3, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    #@241
    move/from16 v0, v33

    #@243
    if-eq v3, v0, :cond_16

    #@245
    const/16 v28, 0x1

    #@247
    .line 547
    .local v28, "realSizeChanged":Z
    :goto_8
    move/from16 v0, v34

    #@249
    move-object/from16 v1, p0

    #@24b
    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    #@24d
    .line 548
    move/from16 v0, v33

    #@24f
    move-object/from16 v1, p0

    #@251
    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@253
    .line 550
    :try_start_2
    move-object/from16 v0, p0

    #@255
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@257
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@25a
    .line 554
    or-int v3, v22, v30

    #@25c
    or-int p2, p2, v3

    #@25e
    .line 556
    const/16 v21, 0x0

    #@260
    .line 558
    .local v21, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    and-int/lit8 v3, v29, 0x4

    #@262
    if-eqz v3, :cond_17

    #@264
    const/16 v32, 0x1

    #@266
    .line 560
    .local v32, "surfaceChanged":Z
    :goto_9
    :try_start_3
    move-object/from16 v0, p0

    #@268
    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@26a
    if-eqz v3, :cond_18

    #@26c
    if-nez v32, :cond_b

    #@26e
    if-nez v36, :cond_18

    #@270
    if-eqz v37, :cond_18

    #@272
    .line 561
    :cond_b
    const/4 v3, 0x0

    #@273
    move-object/from16 v0, p0

    #@275
    iput-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@277
    .line 562
    move-object/from16 v0, p0

    #@279
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@27b
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    #@27e
    move-result v3

    #@27f
    if-eqz v3, :cond_18

    #@281
    .line 564
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@284
    move-result-object v21

    #@285
    .line 565
    .local v21, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    const/4 v3, 0x0

    #@286
    move-object/from16 v0, v21

    #@288
    array-length v4, v0

    #@289
    :goto_a
    if-ge v3, v4, :cond_18

    #@28b
    aget-object v20, v21, v3

    #@28d
    .line 566
    .local v20, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@28f
    iget-object v5, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@291
    move-object/from16 v0, v20

    #@293
    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@296
    .line 565
    add-int/lit8 v3, v3, 0x1

    #@298
    goto :goto_a

    #@299
    .line 446
    .end local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v22    # "creating":Z
    .end local v25    # "formatChanged":Z
    .end local v28    # "realSizeChanged":Z
    .end local v29    # "relayoutResult":I
    .end local v31    # "sizeChanged":Z
    .end local v32    # "surfaceChanged":Z
    .end local v33    # "surfaceHeight":I
    .end local v34    # "surfaceWidth":I
    .end local v36    # "visible":Z
    .end local v37    # "visibleChanged":Z
    :cond_c
    const/16 v22, 0x0

    #@29b
    .restart local v22    # "creating":Z
    goto/16 :goto_0

    #@29d
    .line 447
    :cond_d
    const/16 v25, 0x0

    #@29f
    .restart local v25    # "formatChanged":Z
    goto/16 :goto_1

    #@2a1
    .line 448
    :cond_e
    const/16 v31, 0x0

    #@2a3
    .restart local v31    # "sizeChanged":Z
    goto/16 :goto_2

    #@2a5
    .line 449
    :cond_f
    const/16 v37, 0x0

    #@2a7
    .restart local v37    # "visibleChanged":Z
    goto/16 :goto_3

    #@2a9
    .line 452
    :cond_10
    move-object/from16 v0, p0

    #@2ab
    iget v3, v0, Landroid/view/SurfaceView;->mTop:I

    #@2ad
    move-object/from16 v0, p0

    #@2af
    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    #@2b1
    const/4 v5, 0x1

    #@2b2
    aget v4, v4, v5

    #@2b4
    if-ne v3, v4, :cond_6

    #@2b6
    .line 453
    move-object/from16 v0, p0

    #@2b8
    iget-boolean v3, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    #@2ba
    .line 451
    if-nez v3, :cond_6

    #@2bc
    .line 453
    move-object/from16 v0, p0

    #@2be
    iget-boolean v3, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    #@2c0
    .line 451
    if-nez v3, :cond_6

    #@2c2
    if-nez p2, :cond_6

    #@2c4
    .line 427
    :goto_b
    return-void

    #@2c5
    .line 500
    .restart local v23    # "display":Landroid/view/Display;
    .restart local v36    # "visible":Z
    :cond_11
    const/16 v7, 0x8

    #@2c7
    goto/16 :goto_4

    #@2c9
    .line 514
    .end local v23    # "display":Landroid/view/Display;
    .restart local v30    # "reportDrawNeeded":Z
    :cond_12
    const/4 v3, 0x1

    #@2ca
    goto/16 :goto_5

    #@2cc
    .line 520
    :cond_13
    const/16 v9, 0x8

    #@2ce
    goto/16 :goto_6

    #@2d0
    .line 538
    .end local v30    # "reportDrawNeeded":Z
    .restart local v29    # "relayoutResult":I
    :cond_14
    :try_start_4
    move-object/from16 v0, p0

    #@2d2
    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    #@2d4
    iget v0, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    #@2d6
    move/from16 v19, v0

    #@2d8
    .line 539
    .local v19, "appInvertedScale":F
    move-object/from16 v0, p0

    #@2da
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@2e0
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@2e3
    move-result v4

    #@2e4
    int-to-float v4, v4

    #@2e5
    mul-float v4, v4, v19

    #@2e7
    const/high16 v5, 0x3f000000    # 0.5f

    #@2e9
    add-float/2addr v4, v5

    #@2ea
    float-to-int v4, v4

    #@2eb
    iput v4, v3, Landroid/graphics/Rect;->right:I

    #@2ed
    .line 540
    move-object/from16 v0, p0

    #@2ef
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@2f1
    move-object/from16 v0, p0

    #@2f3
    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    #@2f5
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@2f8
    move-result v4

    #@2f9
    int-to-float v4, v4

    #@2fa
    mul-float v4, v4, v19

    #@2fc
    const/high16 v5, 0x3f000000    # 0.5f

    #@2fe
    add-float/2addr v4, v5

    #@2ff
    float-to-int v4, v4

    #@300
    iput v4, v3, Landroid/graphics/Rect;->bottom:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@302
    goto/16 :goto_7

    #@304
    .line 549
    .end local v19    # "appInvertedScale":F
    .end local v29    # "relayoutResult":I
    :catchall_0
    move-exception v3

    #@305
    .line 550
    :try_start_5
    move-object/from16 v0, p0

    #@307
    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@309
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30c
    .line 549
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@30d
    .line 617
    .end local v36    # "visible":Z
    :catch_0
    move-exception v24

    #@30e
    .local v24, "ex":Landroid/os/RemoteException;
    goto :goto_b

    #@30f
    .line 545
    .end local v24    # "ex":Landroid/os/RemoteException;
    .restart local v29    # "relayoutResult":I
    .restart local v33    # "surfaceHeight":I
    .restart local v34    # "surfaceWidth":I
    .restart local v36    # "visible":Z
    :cond_15
    const/16 v28, 0x1

    #@311
    .restart local v28    # "realSizeChanged":Z
    goto/16 :goto_8

    #@313
    .line 546
    .end local v28    # "realSizeChanged":Z
    :cond_16
    const/16 v28, 0x0

    #@315
    .restart local v28    # "realSizeChanged":Z
    goto/16 :goto_8

    #@317
    .line 558
    .local v21, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_17
    const/16 v32, 0x0

    #@319
    .restart local v32    # "surfaceChanged":Z
    goto/16 :goto_9

    #@31b
    .line 571
    .end local v21    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_18
    :try_start_6
    move-object/from16 v0, p0

    #@31d
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@31f
    move-object/from16 v0, p0

    #@321
    iget-object v4, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    #@323
    invoke-virtual {v3, v4}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    #@326
    .line 573
    if-eqz v36, :cond_21

    #@328
    move-object/from16 v0, p0

    #@32a
    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@32c
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    #@32f
    move-result v3

    #@330
    if-eqz v3, :cond_21

    #@332
    .line 574
    move-object/from16 v0, p0

    #@334
    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@336
    if-nez v3, :cond_1b

    #@338
    if-nez v32, :cond_19

    #@33a
    if-eqz v37, :cond_1b

    #@33c
    .line 575
    :cond_19
    const/4 v3, 0x1

    #@33d
    move-object/from16 v0, p0

    #@33f
    iput-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    #@341
    .line 576
    const/4 v3, 0x1

    #@342
    move-object/from16 v0, p0

    #@344
    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@346
    .line 578
    if-nez v21, :cond_1a

    #@348
    .line 579
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@34b
    move-result-object v21

    #@34c
    .line 581
    :cond_1a
    const/4 v3, 0x0

    #@34d
    move-object/from16 v0, v21

    #@34f
    array-length v4, v0

    #@350
    :goto_c
    if-ge v3, v4, :cond_1b

    #@352
    aget-object v20, v21, v3

    #@354
    .line 582
    .restart local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@356
    iget-object v5, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@358
    move-object/from16 v0, v20

    #@35a
    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    #@35d
    .line 581
    add-int/lit8 v3, v3, 0x1

    #@35f
    goto :goto_c

    #@360
    .line 585
    .end local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_1b
    if-nez v22, :cond_1c

    #@362
    if-nez v25, :cond_1c

    #@364
    if-nez v31, :cond_1c

    #@366
    if-nez v37, :cond_1c

    #@368
    if-eqz v28, :cond_1e

    #@36a
    .line 589
    :cond_1c
    if-nez v21, :cond_1d

    #@36c
    .line 590
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@36f
    move-result-object v21

    #@370
    .line 592
    :cond_1d
    const/4 v3, 0x0

    #@371
    move-object/from16 v0, v21

    #@373
    array-length v4, v0

    #@374
    :goto_d
    if-ge v3, v4, :cond_1e

    #@376
    aget-object v20, v21, v3

    #@378
    .line 593
    .restart local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@37a
    iget-object v5, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@37c
    move-object/from16 v0, p0

    #@37e
    iget v6, v0, Landroid/view/SurfaceView;->mFormat:I

    #@380
    move-object/from16 v0, v20

    #@382
    move/from16 v1, v27

    #@384
    move/from16 v2, v26

    #@386
    invoke-interface {v0, v5, v6, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    #@389
    .line 592
    add-int/lit8 v3, v3, 0x1

    #@38b
    goto :goto_d

    #@38c
    .line 596
    .end local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_1e
    if-eqz p2, :cond_21

    #@38e
    .line 598
    if-nez v21, :cond_1f

    #@390
    .line 599
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    #@393
    move-result-object v21

    #@394
    .line 601
    :cond_1f
    const/4 v3, 0x0

    #@395
    move-object/from16 v0, v21

    #@397
    array-length v4, v0

    #@398
    :goto_e
    if-ge v3, v4, :cond_21

    #@39a
    aget-object v20, v21, v3

    #@39c
    .line 602
    .restart local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    #@39e
    instance-of v5, v0, Landroid/view/SurfaceHolder$Callback2;

    #@3a0
    if-eqz v5, :cond_20

    #@3a2
    .line 603
    check-cast v20, Landroid/view/SurfaceHolder$Callback2;

    #@3a4
    .line 604
    .end local v20    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    #@3a6
    iget-object v5, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    #@3a8
    .line 603
    move-object/from16 v0, v20

    #@3aa
    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@3ad
    .line 601
    :cond_20
    add-int/lit8 v3, v3, 0x1

    #@3af
    goto :goto_e

    #@3b0
    .line 610
    :cond_21
    const/4 v3, 0x0

    #@3b1
    :try_start_7
    move-object/from16 v0, p0

    #@3b3
    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@3b5
    .line 611
    if-eqz p2, :cond_22

    #@3b7
    .line 613
    move-object/from16 v0, p0

    #@3b9
    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@3bb
    move-object/from16 v0, p0

    #@3bd
    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@3bf
    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@3c2
    .line 615
    :cond_22
    move-object/from16 v0, p0

    #@3c4
    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@3c6
    move-object/from16 v0, p0

    #@3c8
    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@3ca
    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    #@3cd
    goto/16 :goto_b

    #@3cf
    .line 609
    :catchall_1
    move-exception v3

    #@3d0
    .line 610
    const/4 v4, 0x0

    #@3d1
    move-object/from16 v0, p0

    #@3d3
    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@3d5
    .line 611
    if-eqz p2, :cond_23

    #@3d7
    .line 613
    move-object/from16 v0, p0

    #@3d9
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@3db
    move-object/from16 v0, p0

    #@3dd
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@3df
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    #@3e2
    .line 615
    :cond_23
    move-object/from16 v0, p0

    #@3e4
    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    #@3e6
    move-object/from16 v0, p0

    #@3e8
    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@3ea
    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    #@3ed
    .line 609
    throw v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
.end method
