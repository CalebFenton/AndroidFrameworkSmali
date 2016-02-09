.class public final Lcom/android/internal/os/SomeArgs;
.super Ljava/lang/Object;
.source "SomeArgs.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field static final WAIT_FINISHED:I = 0x2

.field static final WAIT_NONE:I = 0x0

.field static final WAIT_WAITING:I = 0x1

.field private static sPool:Lcom/android/internal/os/SomeArgs;

.field private static sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public arg3:Ljava/lang/Object;

.field public arg4:Ljava/lang/Object;

.field public arg5:Ljava/lang/Object;

.field public arg6:Ljava/lang/Object;

.field public arg7:Ljava/lang/Object;

.field public argi1:I

.field public argi2:I

.field public argi3:I

.field public argi4:I

.field public argi5:I

.field public argi6:I

.field private mInPool:Z

.field private mNext:Lcom/android/internal/os/SomeArgs;

.field mWaitState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    #@7
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    #@6
    .line 57
    return-void
.end method

.method private clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 105
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@4
    .line 106
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@6
    .line 107
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@8
    .line 108
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@a
    .line 109
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@c
    .line 110
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    #@e
    .line 111
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    #@10
    .line 112
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@12
    .line 113
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@14
    .line 114
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@16
    .line 115
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi4:I

    #@18
    .line 116
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi5:I

    #@1a
    .line 117
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi6:I

    #@1c
    .line 104
    return-void
.end method

.method public static obtain()Lcom/android/internal/os/SomeArgs;
    .locals 3

    #@0
    .prologue
    .line 62
    sget-object v2, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 63
    :try_start_0
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    #@5
    if-lez v1, :cond_0

    #@7
    .line 64
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    #@9
    .line 65
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    sget-object v1, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    #@b
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    #@d
    sput-object v1, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    #@f
    .line 66
    const/4 v1, 0x0

    #@10
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    #@12
    .line 67
    const/4 v1, 0x0

    #@13
    iput-boolean v1, v0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    #@15
    .line 68
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    sput v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 69
    return-object v0

    #@1d
    .line 71
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/internal/os/SomeArgs;

    #@1f
    invoke-direct {v1}, Lcom/android/internal/os/SomeArgs;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit v2

    #@23
    return-object v1

    #@24
    .line 62
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method


# virtual methods
.method public complete()V
    .locals 2

    #@0
    .prologue
    .line 77
    monitor-enter p0

    #@1
    .line 78
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    #@3
    const/4 v1, 0x1

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Not waiting"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 77
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0

    #@12
    .line 81
    :cond_0
    const/4 v0, 0x2

    #@13
    :try_start_1
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    #@15
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 76
    return-void
.end method

.method public recycle()V
    .locals 3

    #@0
    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already recycled."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 90
    :cond_0
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 91
    return-void

    #@12
    .line 93
    :cond_1
    sget-object v1, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    #@14
    monitor-enter v1

    #@15
    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/SomeArgs;->clear()V

    #@18
    .line 95
    sget v0, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    #@1a
    const/16 v2, 0xa

    #@1c
    if-ge v0, v2, :cond_2

    #@1e
    .line 96
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    #@20
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    #@22
    .line 97
    const/4 v0, 0x1

    #@23
    iput-boolean v0, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    #@25
    .line 98
    sput-object p0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    #@27
    .line 99
    sget v0, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    sput v0, Lcom/android/internal/os/SomeArgs;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :cond_2
    monitor-exit v1

    #@2e
    .line 86
    return-void

    #@2f
    .line 93
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method
