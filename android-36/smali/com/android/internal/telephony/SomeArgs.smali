.class public final Lcom/android/internal/telephony/SomeArgs;
.super Ljava/lang/Object;
.source "SomeArgs.java"


# static fields
.field private static blacklist sPool:Lcom/android/internal/telephony/SomeArgs;

.field private static blacklist sPoolLock:Ljava/lang/Object;

.field private static blacklist sPoolSize:I


# instance fields
.field public blacklist arg1:Ljava/lang/Object;

.field public blacklist arg2:Ljava/lang/Object;

.field public blacklist arg3:Ljava/lang/Object;

.field public blacklist arg4:Ljava/lang/Object;

.field public blacklist arg5:Ljava/lang/Object;

.field public blacklist arg6:Ljava/lang/Object;

.field public blacklist arg7:Ljava/lang/Object;

.field public blacklist argi1:I

.field public blacklist argi2:I

.field public blacklist argi3:I

.field public blacklist argi4:I

.field public blacklist argi5:I

.field public blacklist argi6:I

.field public blacklist argl1:J

.field public blacklist argl2:J

.field private blacklist mInPool:Z

.field private blacklist mNext:Lcom/android/internal/telephony/SomeArgs;

.field blacklist mWaitState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SomeArgs;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/internal/telephony/SomeArgs;->mWaitState:I

    return-void
.end method

.method private blacklist clear()V
    .registers 3

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 119
    iput-object v0, p0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 120
    iput-object v0, p0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    .line 121
    iput-object v0, p0, Lcom/android/internal/telephony/SomeArgs;->arg4:Ljava/lang/Object;

    .line 122
    iput-object v0, p0, Lcom/android/internal/telephony/SomeArgs;->arg5:Ljava/lang/Object;

    .line 123
    iput-object v0, p0, Lcom/android/internal/telephony/SomeArgs;->arg6:Ljava/lang/Object;

    .line 124
    iput-object v0, p0, Lcom/android/internal/telephony/SomeArgs;->arg7:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/android/internal/telephony/SomeArgs;->argi1:I

    .line 126
    iput v0, p0, Lcom/android/internal/telephony/SomeArgs;->argi2:I

    .line 127
    iput v0, p0, Lcom/android/internal/telephony/SomeArgs;->argi3:I

    .line 128
    iput v0, p0, Lcom/android/internal/telephony/SomeArgs;->argi4:I

    .line 129
    iput v0, p0, Lcom/android/internal/telephony/SomeArgs;->argi5:I

    .line 130
    iput v0, p0, Lcom/android/internal/telephony/SomeArgs;->argi6:I

    const-wide/16 v0, 0x0

    .line 131
    iput-wide v0, p0, Lcom/android/internal/telephony/SomeArgs;->argl1:J

    .line 132
    iput-wide v0, p0, Lcom/android/internal/telephony/SomeArgs;->argl2:J

    return-void
.end method

.method public static blacklist obtain()Lcom/android/internal/telephony/SomeArgs;
    .registers 4

    .line 74
    sget-object v0, Lcom/android/internal/telephony/SomeArgs;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_3
    sget v1, Lcom/android/internal/telephony/SomeArgs;->sPoolSize:I

    if-lez v1, :cond_1b

    .line 76
    sget-object v2, Lcom/android/internal/telephony/SomeArgs;->sPool:Lcom/android/internal/telephony/SomeArgs;

    .line 77
    iget-object v3, v2, Lcom/android/internal/telephony/SomeArgs;->mNext:Lcom/android/internal/telephony/SomeArgs;

    sput-object v3, Lcom/android/internal/telephony/SomeArgs;->sPool:Lcom/android/internal/telephony/SomeArgs;

    const/4 v3, 0x0

    .line 78
    iput-object v3, v2, Lcom/android/internal/telephony/SomeArgs;->mNext:Lcom/android/internal/telephony/SomeArgs;

    const/4 v3, 0x0

    .line 79
    iput-boolean v3, v2, Lcom/android/internal/telephony/SomeArgs;->mInPool:Z

    add-int/lit8 v1, v1, -0x1

    .line 80
    sput v1, Lcom/android/internal/telephony/SomeArgs;->sPoolSize:I

    .line 81
    monitor-exit v0

    return-object v2

    :catchall_19
    move-exception v1

    goto :goto_22

    .line 83
    :cond_1b
    new-instance v1, Lcom/android/internal/telephony/SomeArgs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SomeArgs;-><init>()V

    monitor-exit v0

    return-object v1

    .line 85
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_19

    throw v1
.end method


# virtual methods
.method public blacklist complete()V
    .registers 3

    .line 89
    monitor-enter p0

    .line 90
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/SomeArgs;->mWaitState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x2

    .line 93
    iput v0, p0, Lcom/android/internal/telephony/SomeArgs;->mWaitState:I

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 95
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    goto :goto_18

    .line 91
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not waiting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_e

    throw v0
.end method

.method public blacklist recycle()V
    .registers 4

    .line 100
    iget-boolean v0, p0, Lcom/android/internal/telephony/SomeArgs;->mInPool:Z

    if-nez v0, :cond_28

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/SomeArgs;->mWaitState:I

    if-eqz v0, :cond_9

    return-void

    .line 106
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/SomeArgs;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_c
    invoke-direct {p0}, Lcom/android/internal/telephony/SomeArgs;->clear()V

    .line 108
    sget v1, Lcom/android/internal/telephony/SomeArgs;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_24

    .line 109
    sget-object v2, Lcom/android/internal/telephony/SomeArgs;->sPool:Lcom/android/internal/telephony/SomeArgs;

    iput-object v2, p0, Lcom/android/internal/telephony/SomeArgs;->mNext:Lcom/android/internal/telephony/SomeArgs;

    const/4 v2, 0x1

    .line 110
    iput-boolean v2, p0, Lcom/android/internal/telephony/SomeArgs;->mInPool:Z

    .line 111
    sput-object p0, Lcom/android/internal/telephony/SomeArgs;->sPool:Lcom/android/internal/telephony/SomeArgs;

    add-int/2addr v1, v2

    .line 112
    sput v1, Lcom/android/internal/telephony/SomeArgs;->sPoolSize:I

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_26

    .line 114
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_22

    throw p0

    .line 101
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already recycled."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
