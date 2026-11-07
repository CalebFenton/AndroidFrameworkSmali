.class public Lcom/android/internal/telephony/RILRequest;
.super Ljava/lang/Object;
.source "RILRequest.java"


# static fields
.field static blacklist sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static blacklist sPool:Lcom/android/internal/telephony/RILRequest;

.field private static blacklist sPoolSize:I

.field private static blacklist sPoolSync:Ljava/lang/Object;

.field static blacklist sRandom:Ljava/util/Random;


# instance fields
.field blacklist mArguments:[Ljava/lang/Object;

.field blacklist mClientId:Ljava/lang/String;

.field blacklist mNext:Lcom/android/internal/telephony/RILRequest;

.field greylist mRequest:I

.field greylist mResult:Landroid/os/Message;

.field greylist mSerial:I

.field blacklist mStartTimeMs:J

.field blacklist mWakeLockType:I

.field blacklist mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public static synthetic blacklist $r8$lambda$WdDGG1XFKJ3D5ymBP8qlhCtQE5s(I)I
    .registers 2

    add-int/lit8 p0, p0, 0x1

    const v0, 0x7fffffff

    .line 100
    rem-int/2addr p0, v0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sRandom:Ljava/util/Random;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 44
    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;
    .registers 6

    .line 86
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 89
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    sput-object v3, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    .line 90
    iput-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    .line 91
    sget v3, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_4e

    :cond_17
    move-object v1, v2

    .line 93
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_15

    if-nez v1, :cond_20

    .line 96
    new-instance v1, Lcom/android/internal/telephony/RILRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/RILRequest;-><init>()V

    .line 100
    :cond_20
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Lcom/android/internal/telephony/RILRequest$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/telephony/RILRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndUpdate(Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 102
    iput p0, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 103
    iput-object p1, v1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 p0, -0x1

    .line 105
    iput p0, v1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 106
    iput-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    if-eqz p1, :cond_4d

    .line 108
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_45

    goto :goto_4d

    .line 109
    :cond_45
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Message target must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    :goto_4d
    return-object v1

    .line 93
    :goto_4e
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_15

    throw p0
.end method

.method public static blacklist obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .registers 4

    .line 126
    invoke-static {p0, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    if-eqz p2, :cond_f

    .line 129
    iput-object p2, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 130
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    return-object p1

    .line 132
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "null workSource "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RilRequest"

    invoke-static {p2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static varargs blacklist obtain(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;
    .registers 4

    .line 150
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    .line 152
    iput-object p3, p0, Lcom/android/internal/telephony/RILRequest;->mArguments:[Ljava/lang/Object;

    return-object p0
.end method

.method static blacklist resetSerial()V
    .registers 3

    .line 210
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sRandom:Ljava/util/Random;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method public blacklist getRequest()I
    .registers 1

    .line 68
    iget p0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    return p0
.end method

.method public blacklist getResult()Landroid/os/Message;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    return-object p0
.end method

.method public blacklist getSerial()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    return p0
.end method

.method public blacklist getWorkSourceClientId()Ljava/lang/String;
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4f

    .line 166
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_36

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->getUid(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_36
    iget-object p0, p0, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 171
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 172
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/WorkSource$WorkChain;

    .line 173
    invoke-virtual {p0}, Landroid/os/WorkSource$WorkChain;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    :goto_4f
    return-object v1
.end method

.method greylist onError(ILjava/lang/Object;)V
    .registers 6

    .line 236
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 241
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 242
    invoke-static {p0, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " result="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 240
    const-string v1, "RilRequest"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_55

    .line 246
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 247
    invoke-static {v0, p2, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 248
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_55
    return-void
.end method

.method greylist release()V
    .registers 6

    .line 186
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    sget v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3b

    .line 188
    sget-object v2, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    iput-object v2, p0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    .line 189
    sput-object p0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    add-int/lit8 v1, v1, 0x1

    .line 190
    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    .line 192
    iget v2, p0, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_39

    if-nez v2, :cond_39

    .line 195
    const-string v2, "RilRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RILRequest releasing with held wake lock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_3d

    .line 199
    :cond_39
    :goto_39
    iput-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mArguments:[Ljava/lang/Object;

    .line 201
    :cond_3b
    monitor-exit v0

    return-void

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_37

    throw p0
.end method

.method greylist serialString()Ljava/lang/String;
    .registers 5

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    iget p0, p0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    rem-int/lit16 p0, p0, 0x2710

    .line 221
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x5b

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    rsub-int/lit8 v3, v1, 0x4

    if-ge v2, v3, :cond_25

    const/16 v3, 0x30

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 229
    :cond_25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
