.class final Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public mCachedTimeMillis:J

.field public mEvent:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

.field public mPolicyFlags:I

.field public mRawEvent:Landroid/view/MotionEvent;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 885
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sLock:Ljava/lang/Object;

    #@7
    .line 881
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 939
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    #@3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@6
    .line 940
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    #@8
    .line 941
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    #@a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@d
    .line 942
    iput-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    #@f
    .line 943
    const/4 v0, 0x0

    #@10
    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    #@12
    .line 944
    const-wide/16 v0, 0x0

    #@14
    iput-wide v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    #@16
    .line 938
    return-void
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    #@0
    .prologue
    .line 917
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    #@6
    .line 918
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    #@c
    .line 919
    iput p3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mPolicyFlags:I

    #@e
    .line 920
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mCachedTimeMillis:J

    #@14
    .line 916
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 899
    sget-object v2, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 901
    :try_start_0
    sget v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    #@5
    if-lez v1, :cond_0

    #@7
    .line 902
    sget v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    sput v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    #@d
    .line 903
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@f
    .line 904
    .local v0, "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@11
    sput-object v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@13
    .line 905
    const/4 v1, 0x0

    #@14
    iput-object v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@16
    .line 906
    const/4 v1, 0x0

    #@17
    iput-boolean v1, v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mInPool:Z

    #@19
    .line 910
    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 911
    return-object v0

    #@1e
    .line 908
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@20
    invoke-direct {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .restart local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    goto :goto_0

    #@24
    .line 899
    .end local v0    # "info":Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    #@0
    .prologue
    .line 924
    sget-object v1, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 925
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mInPool:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 926
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Already recycled."

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 924
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 928
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->clear()V

    #@16
    .line 929
    sget v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    #@18
    const/16 v2, 0xa

    #@1a
    if-ge v0, v2, :cond_1

    #@1c
    .line 930
    sget v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    #@1e
    add-int/lit8 v0, v0, 0x1

    #@20
    sput v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPoolSize:I

    #@22
    .line 931
    sget-object v0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@24
    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mNext:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@26
    .line 932
    sput-object p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->sPool:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    #@28
    .line 933
    const/4 v0, 0x1

    #@29
    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;->mInPool:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    :cond_1
    monitor-exit v1

    #@2c
    .line 923
    return-void
.end method
