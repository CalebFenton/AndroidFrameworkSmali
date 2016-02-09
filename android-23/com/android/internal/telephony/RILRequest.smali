.class Lcom/android/internal/telephony/RILRequest;
.super Ljava/lang/Object;
.source "RIL.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RilRequest"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPool:Lcom/android/internal/telephony/RILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sRandom:Ljava/util/Random;


# instance fields
.field private mContext:Landroid/content/Context;

.field mNext:Lcom/android/internal/telephony/RILRequest;

.field mParcel:Landroid/os/Parcel;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 101
    new-instance v0, Ljava/util/Random;

    #@3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@6
    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sRandom:Ljava/util/Random;

    #@8
    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    .line 103
    new-instance v0, Ljava/lang/Object;

    #@11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@14
    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    #@16
    .line 104
    const/4 v0, 0x0

    #@17
    sput-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    #@19
    .line 105
    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    #@1b
    .line 97
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;
    .locals 3
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    .line 126
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    sget-object v2, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 127
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 128
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    #@a
    .line 129
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    #@c
    sput-object v1, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    #@e
    .line 130
    const/4 v1, 0x0

    #@f
    iput-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    #@11
    .line 131
    sget v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    #@13
    add-int/lit8 v1, v1, -0x1

    #@15
    sput v1, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    monitor-exit v2

    #@18
    .line 135
    if-nez v0, :cond_1

    #@1a
    .line 136
    new-instance v0, Lcom/android/internal/telephony/RILRequest;

    #@1c
    invoke-direct {v0}, Lcom/android/internal/telephony/RILRequest;-><init>()V

    #@1f
    .line 139
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    #@21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@24
    move-result v1

    #@25
    iput v1, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@27
    .line 141
    iput p0, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@29
    .line 142
    iput-object p1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@2b
    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@31
    .line 145
    if-eqz p1, :cond_2

    #@33
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    #@36
    move-result-object v1

    #@37
    if-nez v1, :cond_2

    #@39
    .line 146
    new-instance v1, Ljava/lang/NullPointerException;

    #@3b
    const-string/jumbo v2, "Message target must not be null"

    #@3e
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1

    #@42
    .line 126
    :catchall_0
    move-exception v1

    #@43
    monitor-exit v2

    #@44
    throw v1

    #@45
    .line 150
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@47
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 151
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@4c
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@4e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 153
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    #@0
    .prologue
    .line 179
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sRandom:Ljava/util/Random;

    #@4
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@b
    .line 176
    return-void
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 207
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    #@4
    move-result-object v0

    #@5
    .line 209
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    const-string/jumbo v1, "RilRequest"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "< "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 210
    iget v3, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@1e
    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 211
    const-string/jumbo v3, " error: "

    #@29
    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 211
    const-string/jumbo v3, " ret="

    #@34
    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 211
    iget v3, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    #@3a
    invoke-static {v3, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@4b
    if-eqz v1, :cond_0

    #@4d
    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@4f
    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@52
    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    #@54
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@57
    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@59
    if-eqz v1, :cond_1

    #@5b
    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@5d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@60
    .line 220
    iput-object v4, p0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    #@62
    .line 204
    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    #@0
    .prologue
    .line 162
    sget-object v1, Lcom/android/internal/telephony/RILRequest;->sPoolSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 163
    :try_start_0
    sget v0, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    #@5
    const/4 v2, 0x4

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 164
    sget-object v0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mNext:Lcom/android/internal/telephony/RILRequest;

    #@c
    .line 165
    sput-object p0, Lcom/android/internal/telephony/RILRequest;->sPool:Lcom/android/internal/telephony/RILRequest;

    #@e
    .line 166
    sget v0, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    sput v0, Lcom/android/internal/telephony/RILRequest;->sPoolSize:I

    #@14
    .line 167
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v1

    #@18
    .line 161
    return-void

    #@19
    .line 162
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method serialString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    const/16 v6, 0x8

    #@4
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 188
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    #@9
    int-to-long v6, v6

    #@a
    const-wide/32 v8, -0x80000000

    #@d
    sub-long/2addr v6, v8

    #@e
    const-wide/16 v8, 0x2710

    #@10
    rem-long v0, v6, v8

    #@12
    .line 190
    .local v0, "adjustedSerial":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    .line 193
    .local v5, "sn":Ljava/lang/String;
    const/16 v6, 0x5b

    #@18
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 194
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@1f
    move-result v3

    #@20
    .local v3, "s":I
    :goto_0
    rsub-int/lit8 v6, v3, 0x4

    #@22
    if-ge v2, v6, :cond_0

    #@24
    .line 195
    const/16 v6, 0x30

    #@26
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 194
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 198
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 199
    const/16 v6, 0x5d

    #@31
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    return-object v6
.end method
