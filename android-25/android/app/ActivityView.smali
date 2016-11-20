.class public Landroid/app/ActivityView;
.super Landroid/view/ViewGroup;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityView$1;,
        Landroid/app/ActivityView$ActivityContainerCallback;,
        Landroid/app/ActivityView$ActivityContainerWrapper;,
        Landroid/app/ActivityView$ActivityViewCallback;,
        Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;,
        Landroid/app/ActivityView$SerialExecutor;
    }
.end annotation


# static fields
.field private static final CPU_COUNT:I

.field private static final DEBUG:Z = false

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MINIMUM_POOL_SIZE:I = 0x1

.field private static final MSG_SET_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityView"

.field private static final sExecutor:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityContainerLock"
    .end annotation
.end field

.field private mActivityContainerLock:Ljava/lang/Object;

.field private mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

.field private final mDensityDpi:I

.field private final mExecutor:Landroid/app/ActivityView$SerialExecutor;

.field private mHeight:I

.field private mLastVisibility:I

.field private mSurface:Landroid/view/Surface;

.field private final mTextureView:Landroid/view/TextureView;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ActivityView;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/app/ActivityView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/ActivityView;->mDensityDpi:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/app/ActivityView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/ActivityView;->mHeight:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/app/ActivityView;)Landroid/view/Surface;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/app/ActivityView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/ActivityView;->mWidth:I

    #@2
    return v0
.end method

.method static synthetic -get7()Ljava/util/concurrent/Executor;
    .locals 1

    #@0
    sget-object v0, Landroid/app/ActivityView;->sExecutor:Ljava/util/concurrent/Executor;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ActivityView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/ActivityView;->mHeight:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/app/ActivityView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/ActivityView;->mWidth:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/app/ActivityView;Landroid/view/Surface;IIIZ)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "callback"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityView;->setSurfaceAsync(Landroid/view/Surface;IIIZ)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    .line 65
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    #@7
    move-result v0

    #@8
    sput v0, Landroid/app/ActivityView;->CPU_COUNT:I

    #@a
    .line 67
    sget v0, Landroid/app/ActivityView;->CPU_COUNT:I

    #@c
    mul-int/lit8 v0, v0, 0x2

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    sput v0, Landroid/app/ActivityView;->MAXIMUM_POOL_SIZE:I

    #@12
    .line 70
    new-instance v0, Landroid/app/ActivityView$1;

    #@14
    invoke-direct {v0}, Landroid/app/ActivityView$1;-><init>()V

    #@17
    sput-object v0, Landroid/app/ActivityView;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    #@19
    .line 79
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    #@1b
    const/16 v1, 0x80

    #@1d
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    #@20
    .line 78
    sput-object v0, Landroid/app/ActivityView;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    #@22
    .line 84
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@24
    .line 85
    sget v3, Landroid/app/ActivityView;->MAXIMUM_POOL_SIZE:I

    #@26
    const-wide/16 v4, 0x1

    #@28
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@2a
    sget-object v7, Landroid/app/ActivityView;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    #@2c
    sget-object v8, Landroid/app/ActivityView;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    #@2e
    .line 84
    const/4 v2, 0x1

    #@2f
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@32
    sput-object v1, Landroid/app/ActivityView;->sExecutor:Ljava/util/concurrent/Executor;

    #@34
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 132
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 114
    new-instance v3, Landroid/app/ActivityView$SerialExecutor;

    #@6
    invoke-direct {v3, v7}, Landroid/app/ActivityView$SerialExecutor;-><init>(Landroid/app/ActivityView$SerialExecutor;)V

    #@9
    iput-object v3, p0, Landroid/app/ActivityView;->mExecutor:Landroid/app/ActivityView$SerialExecutor;

    #@b
    .line 121
    new-instance v3, Ljava/lang/Object;

    #@d
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v3, p0, Landroid/app/ActivityView;->mActivityContainerLock:Ljava/lang/Object;

    #@12
    .line 142
    :goto_0
    instance-of v3, p1, Landroid/content/ContextWrapper;

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 143
    instance-of v3, p1, Landroid/app/Activity;

    #@18
    if-eqz v3, :cond_1

    #@1a
    move-object v3, p1

    #@1b
    .line 144
    nop

    #@1c
    nop

    #@1d
    iput-object v3, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    #@1f
    .line 149
    :cond_0
    iget-object v3, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    #@21
    if-nez v3, :cond_2

    #@23
    .line 150
    new-instance v3, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v4, "The ActivityView\'s Context is not an Activity."

    #@28
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3

    #@2c
    .line 147
    :cond_1
    nop

    #@2d
    nop

    #@2e
    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@31
    move-result-object p1

    #@32
    .restart local p1    # "context":Landroid/content/Context;
    goto :goto_0

    #@33
    .line 154
    :cond_2
    :try_start_0
    new-instance v3, Landroid/app/ActivityView$ActivityContainerWrapper;

    #@35
    .line 155
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@38
    move-result-object v4

    #@39
    .line 156
    iget-object v5, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    #@3b
    invoke-virtual {v5}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    #@3e
    move-result-object v5

    #@3f
    new-instance v6, Landroid/app/ActivityView$ActivityContainerCallback;

    #@41
    invoke-direct {v6, p0}, Landroid/app/ActivityView$ActivityContainerCallback;-><init>(Landroid/app/ActivityView;)V

    #@44
    .line 155
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    #@47
    move-result-object v4

    #@48
    .line 154
    invoke-direct {v3, v4}, Landroid/app/ActivityView$ActivityContainerWrapper;-><init>(Landroid/app/IActivityContainer;)V

    #@4b
    iput-object v3, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 162
    new-instance v3, Landroid/view/TextureView;

    #@4f
    invoke-direct {v3, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    #@52
    iput-object v3, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@54
    .line 163
    iget-object v3, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@56
    new-instance v4, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;

    #@58
    invoke-direct {v4, p0, v7}, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;)V

    #@5b
    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    #@5e
    .line 164
    iget-object v3, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@60
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@63
    .line 166
    iget-object v3, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    #@65
    const-string/jumbo v4, "window"

    #@68
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6b
    move-result-object v2

    #@6c
    check-cast v2, Landroid/view/WindowManager;

    #@6e
    .line 167
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    #@70
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    #@73
    .line 168
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@7a
    .line 169
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@7c
    iput v3, p0, Landroid/app/ActivityView;->mDensityDpi:I

    #@7e
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@81
    move-result v3

    #@82
    iput v3, p0, Landroid/app/ActivityView;->mLastVisibility:I

    #@84
    .line 139
    return-void

    #@85
    .line 157
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v0

    #@86
    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@88
    new-instance v4, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v5, "ActivityView: Unable to create ActivityContainer. "

    #@90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v4

    #@9c
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v3
.end method

.method private injectInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@6
    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->injectEvent(Landroid/view/InputEvent;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private setSurfaceAsync(Landroid/view/Surface;IIIZ)V
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .param p5, "callback"    # Z

    #@0
    .prologue
    .line 294
    iget-object v7, p0, Landroid/app/ActivityView;->mExecutor:Landroid/app/ActivityView$SerialExecutor;

    #@2
    new-instance v0, Landroid/app/ActivityView$2;

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move v3, p2

    #@7
    move v4, p3

    #@8
    move v5, p4

    #@9
    move v6, p5

    #@a
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityView$2;-><init>(Landroid/app/ActivityView;Landroid/view/Surface;IIIZ)V

    #@d
    invoke-virtual {v7, v0}, Landroid/app/ActivityView$SerialExecutor;->execute(Ljava/lang/Runnable;)V

    #@10
    .line 293
    return-void
.end method


# virtual methods
.method public isAttachedToDisplay()Z
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

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

.method public onAttachedToWindow()V
    .locals 0

    #@0
    .prologue
    .line 213
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    #@0
    .prologue
    .line 219
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 204
    const/4 v0, 0x2

    #@1
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 205
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 206
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 209
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 178
    iget-object v0, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@3
    sub-int v1, p4, p2

    #@5
    sub-int v2, p5, p3

    #@7
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    #@a
    .line 177
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 199
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    .line 183
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    #@5
    .line 185
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@7
    if-eqz v0, :cond_1

    #@9
    if-eq p2, v2, :cond_0

    #@b
    iget v0, p0, Landroid/app/ActivityView;->mLastVisibility:I

    #@d
    if-ne v0, v2, :cond_1

    #@f
    .line 187
    :cond_0
    if-ne p2, v2, :cond_2

    #@11
    const/4 v1, 0x0

    #@12
    .line 188
    :goto_0
    iget v2, p0, Landroid/app/ActivityView;->mWidth:I

    #@14
    iget v3, p0, Landroid/app/ActivityView;->mHeight:I

    #@16
    iget v4, p0, Landroid/app/ActivityView;->mDensityDpi:I

    #@18
    const/4 v5, 0x0

    #@19
    move-object v0, p0

    #@1a
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityView;->setSurfaceAsync(Landroid/view/Surface;IIIZ)V

    #@1d
    .line 190
    :cond_1
    iput p2, p0, Landroid/app/ActivityView;->mLastVisibility:I

    #@1f
    .line 182
    return-void

    #@20
    .line 187
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@22
    .local v1, "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public release()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 275
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 276
    const-string/jumbo v0, "ActivityView"

    #@8
    const-string/jumbo v1, "Duplicate call to release"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 277
    return-void

    #@f
    .line 279
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainerLock:Ljava/lang/Object;

    #@11
    monitor-enter v1

    #@12
    .line 280
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@14
    invoke-virtual {v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->release()V

    #@17
    .line 281
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 284
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 285
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@21
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    #@24
    .line 286
    iput-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@26
    .line 289
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    #@28
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    #@2b
    .line 272
    return-void

    #@2c
    .line 279
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0
.end method

.method public setCallback(Landroid/app/ActivityView$ActivityViewCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/ActivityView$ActivityViewCallback;

    #@0
    .prologue
    .line 336
    iput-object p1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    #@2
    .line 338
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 339
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    #@8
    invoke-virtual {v0, p0}, Landroid/app/ActivityView$ActivityViewCallback;->onSurfaceAvailable(Landroid/app/ActivityView;)V

    #@b
    .line 335
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 258
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 259
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Attempt to call startActivity after release"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 261
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 262
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v2, "Surface not yet created."

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 266
    :cond_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    #@1d
    move-result-object v0

    #@1e
    .line 267
    .local v0, "iIntentSender":Landroid/content/IIntentSender;
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@20
    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    #@23
    move-result v1

    #@24
    const/4 v2, -0x6

    #@25
    if-ne v1, v2, :cond_2

    #@27
    .line 268
    new-instance v1, Landroid/os/OperationCanceledException;

    #@29
    invoke-direct {v1}, Landroid/os/OperationCanceledException;-><init>()V

    #@2c
    throw v1

    #@2d
    .line 257
    :cond_2
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Attempt to call startActivity after release"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 232
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Surface not yet created."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 237
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@1c
    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivity(Landroid/content/Intent;)I

    #@1f
    move-result v0

    #@20
    const/4 v1, -0x6

    #@21
    if-ne v0, v1, :cond_2

    #@23
    .line 238
    new-instance v0, Landroid/os/OperationCanceledException;

    #@25
    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    #@28
    throw v0

    #@29
    .line 228
    :cond_2
    return-void
.end method

.method public startActivity(Landroid/content/IntentSender;)V
    .locals 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 243
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 244
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Attempt to call startActivity after release"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 246
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 247
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v2, "Surface not yet created."

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 251
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    #@1d
    move-result-object v0

    #@1e
    .line 252
    .local v0, "iIntentSender":Landroid/content/IIntentSender;
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    #@20
    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    #@23
    move-result v1

    #@24
    const/4 v2, -0x6

    #@25
    if-ne v1, v2, :cond_2

    #@27
    .line 253
    new-instance v1, Landroid/os/OperationCanceledException;

    #@29
    invoke-direct {v1}, Landroid/os/OperationCanceledException;-><init>()V

    #@2c
    throw v1

    #@2d
    .line 242
    :cond_2
    return-void
.end method
