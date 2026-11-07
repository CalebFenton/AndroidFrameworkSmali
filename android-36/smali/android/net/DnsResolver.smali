.class public final Landroid/net/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DnsResolver$Callback;,
        Landroid/net/DnsResolver$InetAddressAnswerAccumulator;,
        Landroid/net/DnsResolver$DnsResponse;,
        Landroid/net/DnsResolver$DnsException;,
        Landroid/net/DnsResolver$DnsAddressAnswer;,
        Landroid/net/DnsResolver$DnsError;,
        Landroid/net/DnsResolver$QueryFlag;,
        Landroid/net/DnsResolver$QueryType;,
        Landroid/net/DnsResolver$QueryClass;
    }
.end annotation


# static fields
.field public static final whitelist CLASS_IN:I = 0x1

.field public static final whitelist ERROR_PARSE:I = 0x0

.field public static final whitelist ERROR_SYSTEM:I = 0x1

.field private static final blacklist FD_EVENTS:I = 0x5

.field public static final whitelist FLAG_EMPTY:I = 0x0

.field public static final whitelist FLAG_NO_CACHE_LOOKUP:I = 0x4

.field public static final whitelist FLAG_NO_CACHE_STORE:I = 0x2

.field public static final whitelist FLAG_NO_RETRY:I = 0x1

.field private static final blacklist MAXPACKET:I = 0x2000

.field private static final blacklist NETID_UNSET:I = 0x0

.field private static final blacklist SLEEP_TIME_MS:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "DnsResolver"

.field public static final whitelist TYPE_A:I = 0x1

.field public static final whitelist TYPE_AAAA:I = 0x1c

.field public static final blacklist TYPE_ANY:I = 0xff

.field public static final blacklist TYPE_PTR:I = 0xc

.field public static final blacklist TYPE_SRV:I = 0x21

.field public static final blacklist TYPE_TXT:I = 0x10

.field private static final blacklist sInstance:Landroid/net/DnsResolver;


# direct methods
.method public static synthetic blacklist $r8$lambda$SOFEQnfUhmun0vSVmrdOqBklkZY(Landroid/net/DnsResolver;Ljava/lang/Object;ZLjava/io/FileDescriptor;ZLjava/io/FileDescriptor;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/net/DnsResolver;->lambda$query$6(Ljava/lang/Object;ZLjava/io/FileDescriptor;ZLjava/io/FileDescriptor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uKMoOkUSGZAS_MKzC0uK8ANpXgA(Landroid/net/DnsResolver;Ljava/lang/Object;Ljava/io/FileDescriptor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/DnsResolver;->lambda$addCancellationSignal$10(Ljava/lang/Object;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 122
    new-instance v0, Landroid/net/DnsResolver;

    invoke-direct {v0}, Landroid/net/DnsResolver;-><init>()V

    sput-object v0, Landroid/net/DnsResolver;->sInstance:Landroid/net/DnsResolver;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist addCancellationSignal(Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Ljava/lang/Object;)V
    .registers 5
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "queryfd"    # Ljava/io/FileDescriptor;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 539
    new-instance v0, Landroid/net/DnsResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2}, Landroid/net/DnsResolver$$ExternalSyntheticLambda0;-><init>(Landroid/net/DnsResolver;Ljava/lang/Object;Ljava/io/FileDescriptor;)V

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 544
    return-void
.end method

.method private blacklist cancelQuery(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "queryfd"    # Ljava/io/FileDescriptor;

    .line 532
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 533
    :cond_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 534
    invoke-static {p1}, Landroid/net/NetworkUtils;->resNetworkCancel(Ljava/io/FileDescriptor;)V

    .line 535
    return-void
.end method

.method public static whitelist getInstance()Landroid/net/DnsResolver;
    .registers 1

    .line 128
    sget-object v0, Landroid/net/DnsResolver;->sInstance:Landroid/net/DnsResolver;

    return-object v0
.end method

.method private synthetic blacklist lambda$addCancellationSignal$10(Ljava/lang/Object;Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "queryfd"    # Ljava/io/FileDescriptor;

    .line 540
    monitor-enter p1

    .line 541
    :try_start_1
    invoke-direct {p0, p2}, Landroid/net/DnsResolver;->cancelQuery(Ljava/io/FileDescriptor;)V

    .line 542
    monitor-exit p1

    .line 543
    return-void

    .line 542
    :catchall_6
    move-exception v0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method static synthetic blacklist lambda$query$2(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4
    .param p0, "callback"    # Landroid/net/DnsResolver$Callback;
    .param p1, "e"    # Landroid/system/ErrnoException;

    .line 357
    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic blacklist lambda$query$3(Landroid/net/DnsResolver$Callback;)V
    .registers 5
    .param p0, "callback"    # Landroid/net/DnsResolver$Callback;

    .line 366
    new-instance v0, Landroid/net/DnsResolver$DnsException;

    new-instance v1, Landroid/system/ErrnoException;

    const-string v2, "resNetworkQuery"

    sget v3, Landroid/system/OsConstants;->ENONET:I

    invoke-direct {v1, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic blacklist lambda$query$4(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4
    .param p0, "callback"    # Landroid/net/DnsResolver$Callback;
    .param p1, "e"    # Landroid/system/ErrnoException;

    .line 381
    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic blacklist lambda$query$5(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4
    .param p0, "callback"    # Landroid/net/DnsResolver$Callback;
    .param p1, "e"    # Landroid/system/ErrnoException;

    .line 400
    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method private synthetic blacklist lambda$query$6(Ljava/lang/Object;ZLjava/io/FileDescriptor;ZLjava/io/FileDescriptor;)V
    .registers 7
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "queryIpv4"    # Z
    .param p3, "v4fd"    # Ljava/io/FileDescriptor;
    .param p4, "queryIpv6"    # Z
    .param p5, "v6fd"    # Ljava/io/FileDescriptor;

    .line 418
    monitor-enter p1

    .line 419
    if-eqz p2, :cond_9

    :try_start_3
    invoke-direct {p0, p3}, Landroid/net/DnsResolver;->cancelQuery(Ljava/io/FileDescriptor;)V

    goto :goto_9

    .line 421
    :catchall_7
    move-exception v0

    goto :goto_10

    .line 420
    :cond_9
    :goto_9
    if-eqz p4, :cond_e

    invoke-direct {p0, p5}, Landroid/net/DnsResolver;->cancelQuery(Ljava/io/FileDescriptor;)V

    .line 421
    :cond_e
    monitor-exit p1

    .line 422
    return-void

    .line 421
    :goto_10
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_7

    throw v0
.end method

.method static synthetic blacklist lambda$query$7(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4
    .param p0, "callback"    # Landroid/net/DnsResolver$Callback;
    .param p1, "e"    # Landroid/system/ErrnoException;

    .line 459
    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic blacklist lambda$rawQuery$0(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4
    .param p0, "callback"    # Landroid/net/DnsResolver$Callback;
    .param p1, "e"    # Landroid/system/ErrnoException;

    .line 209
    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic blacklist lambda$rawQuery$1(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V
    .registers 4
    .param p0, "callback"    # Landroid/net/DnsResolver$Callback;
    .param p1, "e"    # Landroid/system/ErrnoException;

    .line 250
    new-instance v0, Landroid/net/DnsResolver$DnsException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerFDListener$8(Ljava/lang/Object;Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;)V
    .registers 10
    .param p0, "lock"    # Ljava/lang/Object;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "answerCallback"    # Landroid/net/DnsResolver$Callback;

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "resp":Landroid/net/DnsResolver$DnsResponse;
    const/4 v1, 0x0

    .line 505
    .local v1, "exception":Landroid/system/ErrnoException;
    monitor-enter p0

    .line 506
    if-eqz p1, :cond_d

    :try_start_5
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 507
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    return-void

    .line 510
    :cond_d
    :try_start_d
    invoke-static {p2}, Landroid/net/NetworkUtils;->resNetworkResult(Ljava/io/FileDescriptor;)Landroid/net/DnsResolver$DnsResponse;

    move-result-object v2
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_11} :catch_15
    .catchall {:try_start_d .. :try_end_11} :catchall_13

    .line 514
    .end local v0    # "resp":Landroid/net/DnsResolver$DnsResponse;
    .local v2, "resp":Landroid/net/DnsResolver$DnsResponse;
    move-object v0, v2

    goto :goto_33

    .line 515
    .end local v2    # "resp":Landroid/net/DnsResolver$DnsResponse;
    .restart local v0    # "resp":Landroid/net/DnsResolver$DnsResponse;
    :catchall_13
    move-exception v2

    goto :goto_48

    .line 511
    :catch_15
    move-exception v2

    .line 512
    .local v2, "e":Landroid/system/ErrnoException;
    :try_start_16
    const-string v3, "DnsResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resNetworkResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    move-object v1, v2

    .line 515
    .end local v2    # "e":Landroid/system/ErrnoException;
    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_13

    .line 516
    if-eqz v1, :cond_40

    .line 517
    new-instance v2, Landroid/net/DnsResolver$DnsException;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/net/DnsResolver$DnsException;-><init>(ILjava/lang/Throwable;)V

    invoke-interface {p3, v2}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    .line 518
    return-void

    .line 520
    :cond_40
    iget-object v2, v0, Landroid/net/DnsResolver$DnsResponse;->answerbuf:[B

    iget v3, v0, Landroid/net/DnsResolver$DnsResponse;->rcode:I

    invoke-interface {p3, v2, v3}, Landroid/net/DnsResolver$Callback;->onAnswer(Ljava/lang/Object;I)V

    .line 521
    return-void

    .line 515
    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_13

    throw v2
.end method

.method static synthetic blacklist lambda$registerFDListener$9(Landroid/os/MessageQueue;Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;Ljava/io/FileDescriptor;I)I
    .registers 8
    .param p0, "mainThreadMessageQueue"    # Landroid/os/MessageQueue;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "answerCallback"    # Landroid/net/DnsResolver$Callback;
    .param p5, "fd"    # Ljava/io/FileDescriptor;
    .param p6, "events"    # I

    .line 500
    invoke-virtual {p0, p5}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 502
    new-instance v0, Landroid/net/DnsResolver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p3, p5, p4}, Landroid/net/DnsResolver$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V
    .registers 13
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "queryfd"    # Ljava/io/FileDescriptor;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p5, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/io/FileDescriptor;",
            "Landroid/net/DnsResolver$Callback<",
            "-[B>;",
            "Landroid/os/CancellationSignal;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 488
    .local p3, "answerCallback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    .line 489
    .local v2, "mainThreadMessageQueue":Landroid/os/MessageQueue;
    new-instance v1, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;

    move-object v3, p1

    move-object v6, p3

    move-object v5, p4

    move-object v4, p5

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "answerCallback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p5    # "lock":Ljava/lang/Object;
    .local v3, "executor":Ljava/util/concurrent/Executor;
    .local v4, "lock":Ljava/lang/Object;
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v6, "answerCallback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    invoke-direct/range {v1 .. v6}, Landroid/net/DnsResolver$$ExternalSyntheticLambda1;-><init>(Landroid/os/MessageQueue;Ljava/util/concurrent/Executor;Ljava/lang/Object;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    const/4 p1, 0x5

    invoke-virtual {v2, p2, p1, v1}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 529
    return-void
.end method


# virtual methods
.method public whitelist query(Landroid/net/Network;Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V
    .registers 16
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "nsType"    # I
    .param p4, "flags"    # I
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/net/DnsResolver$Callback<",
            "-",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 448
    .local p7, "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-Ljava/util/List<Ljava/net/InetAddress;>;>;"
    if-eqz p6, :cond_9

    invoke-virtual {p6}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 449
    return-void

    .line 451
    :cond_9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    .line 455
    .local v6, "lock":Ljava/lang/Object;
    if-eqz p1, :cond_13

    move-object v0, p1

    goto :goto_17

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/NetworkUtils;->getDnsNetwork()Landroid/net/Network;

    move-result-object v0

    :goto_17
    move-object v7, v0

    .line 456
    .local v7, "queryNetwork":Landroid/net/Network;
    invoke-virtual {v7}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1, p3, p4}, Landroid/net/NetworkUtils;->resNetworkQuery(ILjava/lang/String;III)Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_13 .. :try_end_21} :catch_3b

    .line 461
    .local v3, "queryfd":Ljava/io/FileDescriptor;
    nop

    .line 462
    new-instance v4, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;

    invoke-direct {v4, p0, v7, v1, p7}, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;-><init>(Landroid/net/DnsResolver;Landroid/net/Network;ILandroid/net/DnsResolver$Callback;)V

    .line 464
    .local v4, "accumulator":Landroid/net/DnsResolver$InetAddressAnswerAccumulator;
    monitor-enter v6

    .line 465
    move-object v1, p0

    move-object v2, p5

    move-object v5, p6

    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "cancellationSignal":Landroid/os/CancellationSignal;
    .local v2, "executor":Ljava/util/concurrent/Executor;
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_2b
    invoke-direct/range {v1 .. v6}, Landroid/net/DnsResolver;->registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    .line 466
    if-nez v5, :cond_32

    monitor-exit v6

    return-void

    .line 467
    :cond_32
    invoke-direct {p0, v5, v3, v6}, Landroid/net/DnsResolver;->addCancellationSignal(Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 468
    monitor-exit v6

    .line 469
    return-void

    .line 468
    :catchall_37
    move-exception v0

    move-object p5, v0

    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_37

    throw p5

    .line 458
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "queryfd":Ljava/io/FileDescriptor;
    .end local v4    # "accumulator":Landroid/net/DnsResolver$InetAddressAnswerAccumulator;
    .end local v5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local v7    # "queryNetwork":Landroid/net/Network;
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p6    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_3b
    move-exception v0

    move-object v1, p0

    move-object v2, p5

    move-object v5, p6

    move-object p5, v0

    .line 459
    .end local p6    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .local p5, "e":Landroid/system/ErrnoException;
    new-instance p6, Landroid/net/DnsResolver$$ExternalSyntheticLambda4;

    invoke-direct {p6, p7, p5}, Landroid/net/DnsResolver$$ExternalSyntheticLambda4;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    invoke-interface {v2, p6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method public whitelist query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V
    .registers 24
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/net/DnsResolver$Callback<",
            "-",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 349
    .local p6, "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-Ljava/util/List<Ljava/net/InetAddress;>;>;"
    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v9, p6

    if-eqz p5, :cond_11

    invoke-virtual/range {p5 .. p5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 350
    return-void

    .line 352
    :cond_11
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 355
    .local v8, "lock":Ljava/lang/Object;
    if-eqz p1, :cond_1b

    move-object/from16 v0, p1

    goto :goto_1f

    :cond_1b
    :try_start_1b
    invoke-static {}, Landroid/net/NetworkUtils;->getDnsNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_1f
    .catch Landroid/system/ErrnoException; {:try_start_1b .. :try_end_1f} :catch_d9

    :goto_1f
    move-object v10, v0

    .line 359
    .local v10, "queryNetwork":Landroid/net/Network;
    nop

    .line 360
    invoke-static {v10}, Landroid/net/connectivity/android/net/util/DnsUtils;->haveIpv6(Landroid/net/Network;)Z

    move-result v15

    .line 361
    .local v15, "queryIpv6":Z
    invoke-static {v10}, Landroid/net/connectivity/android/net/util/DnsUtils;->haveIpv4(Landroid/net/Network;)Z

    move-result v13

    .line 365
    .local v13, "queryIpv4":Z
    if-nez v15, :cond_36

    if-nez v13, :cond_36

    .line 366
    new-instance v0, Landroid/net/DnsResolver$$ExternalSyntheticLambda7;

    invoke-direct {v0, v9}, Landroid/net/DnsResolver$$ExternalSyntheticLambda7;-><init>(Landroid/net/DnsResolver$Callback;)V

    invoke-interface {v4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 368
    return-void

    .line 374
    :cond_36
    const/4 v3, 0x0

    .line 376
    .local v3, "queryCount":I
    const/4 v5, 0x1

    if-eqz v15, :cond_54

    .line 378
    :try_start_3a
    invoke-virtual {v10}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    const/16 v6, 0x1c

    invoke-static {v0, v1, v5, v6, v2}, Landroid/net/NetworkUtils;->resNetworkQuery(ILjava/lang/String;III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_44
    .catch Landroid/system/ErrnoException; {:try_start_3a .. :try_end_44} :catch_4a

    .line 383
    .local v0, "v6fd":Ljava/io/FileDescriptor;
    nop

    .line 384
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v16, v0

    goto :goto_57

    .line 380
    .end local v0    # "v6fd":Ljava/io/FileDescriptor;
    :catch_4a
    move-exception v0

    .line 381
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v5, Landroid/net/DnsResolver$$ExternalSyntheticLambda8;

    invoke-direct {v5, v9, v0}, Landroid/net/DnsResolver$$ExternalSyntheticLambda8;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 382
    return-void

    .line 385
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_54
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 389
    .local v16, "v6fd":Ljava/io/FileDescriptor;
    :goto_57
    const-wide/16 v6, 0x2

    :try_start_59
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 392
    goto :goto_65

    .line 390
    :catch_5d
    move-exception v0

    .line 391
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 394
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_65
    if-eqz v13, :cond_84

    .line 396
    :try_start_67
    invoke-virtual {v10}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    invoke-static {v0, v1, v5, v5, v2}, Landroid/net/NetworkUtils;->resNetworkQuery(ILjava/lang/String;III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_6f
    .catch Landroid/system/ErrnoException; {:try_start_67 .. :try_end_6f} :catch_75

    .line 402
    .local v0, "v4fd":Ljava/io/FileDescriptor;
    nop

    .line 403
    add-int/lit8 v3, v3, 0x1

    move-object v14, v0

    move v11, v3

    goto :goto_87

    .line 398
    .end local v0    # "v4fd":Ljava/io/FileDescriptor;
    :catch_75
    move-exception v0

    .line 399
    .local v0, "e":Landroid/system/ErrnoException;
    if-eqz v15, :cond_7b

    invoke-static/range {v16 .. v16}, Landroid/net/NetworkUtils;->resNetworkCancel(Ljava/io/FileDescriptor;)V

    .line 400
    :cond_7b
    new-instance v5, Landroid/net/DnsResolver$$ExternalSyntheticLambda9;

    invoke-direct {v5, v9, v0}, Landroid/net/DnsResolver$$ExternalSyntheticLambda9;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 401
    return-void

    .line 404
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_84
    const/4 v0, 0x0

    move-object v14, v0

    move v11, v3

    .line 406
    .end local v3    # "queryCount":I
    .local v11, "queryCount":I
    .local v14, "v4fd":Ljava/io/FileDescriptor;
    :goto_87
    new-instance v6, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;

    move-object/from16 v3, p0

    invoke-direct {v6, v3, v10, v11, v9}, Landroid/net/DnsResolver$InetAddressAnswerAccumulator;-><init>(Landroid/net/DnsResolver;Landroid/net/Network;ILandroid/net/DnsResolver$Callback;)V

    .line 409
    .local v6, "accumulator":Landroid/net/DnsResolver$InetAddressAnswerAccumulator;
    monitor-enter v8

    .line 410
    if-eqz v15, :cond_a3

    .line 411
    move-object/from16 v7, p5

    move-object/from16 v5, v16

    .end local v16    # "v6fd":Ljava/io/FileDescriptor;
    .local v5, "v6fd":Ljava/io/FileDescriptor;
    :try_start_95
    invoke-direct/range {v3 .. v8}, Landroid/net/DnsResolver;->registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    .end local v5    # "v6fd":Ljava/io/FileDescriptor;
    .restart local v16    # "v6fd":Ljava/io/FileDescriptor;
    goto :goto_a3

    .line 423
    .end local v16    # "v6fd":Ljava/io/FileDescriptor;
    .restart local v5    # "v6fd":Ljava/io/FileDescriptor;
    :catchall_99
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object v3, v10

    move v5, v11

    .end local v5    # "v6fd":Ljava/io/FileDescriptor;
    .restart local v16    # "v6fd":Ljava/io/FileDescriptor;
    goto :goto_d5

    .line 413
    :cond_a3
    :goto_a3
    if-eqz v13, :cond_b5

    .line 414
    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object v5, v14

    .end local v14    # "v4fd":Ljava/io/FileDescriptor;
    .local v5, "v4fd":Ljava/io/FileDescriptor;
    :try_start_ac
    invoke-direct/range {v3 .. v8}, Landroid/net/DnsResolver;->registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b0

    .end local v5    # "v4fd":Ljava/io/FileDescriptor;
    .restart local v14    # "v4fd":Ljava/io/FileDescriptor;
    goto :goto_b9

    .line 423
    .end local v14    # "v4fd":Ljava/io/FileDescriptor;
    .restart local v5    # "v4fd":Ljava/io/FileDescriptor;
    :catchall_b0
    move-exception v0

    move-object v14, v5

    move-object v3, v10

    move v5, v11

    .end local v5    # "v4fd":Ljava/io/FileDescriptor;
    .restart local v14    # "v4fd":Ljava/io/FileDescriptor;
    goto :goto_d5

    .line 413
    :cond_b5
    move-object/from16 v4, p4

    move-object/from16 v7, p5

    .line 416
    :goto_b9
    if-nez v7, :cond_c1

    :try_start_bb
    monitor-exit v8
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_bd

    return-void

    .line 423
    :catchall_bd
    move-exception v0

    move-object v3, v10

    move v5, v11

    goto :goto_d5

    .line 417
    :cond_c1
    move-object v3, v10

    .end local v10    # "queryNetwork":Landroid/net/Network;
    .local v3, "queryNetwork":Landroid/net/Network;
    :try_start_c2
    new-instance v10, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;
    :try_end_c4
    .catchall {:try_start_c2 .. :try_end_c4} :catchall_d3

    move-object v12, v8

    move v5, v11

    move-object/from16 v11, p0

    .end local v8    # "lock":Ljava/lang/Object;
    .end local v11    # "queryCount":I
    .local v5, "queryCount":I
    .local v12, "lock":Ljava/lang/Object;
    :try_start_c8
    invoke-direct/range {v10 .. v16}, Landroid/net/DnsResolver$$ExternalSyntheticLambda10;-><init>(Landroid/net/DnsResolver;Ljava/lang/Object;ZLjava/io/FileDescriptor;ZLjava/io/FileDescriptor;)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_d0

    .end local v12    # "lock":Ljava/lang/Object;
    .restart local v8    # "lock":Ljava/lang/Object;
    :try_start_cb
    invoke-virtual {v7, v10}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 423
    monitor-exit v8

    .line 424
    return-void

    .line 423
    .end local v8    # "lock":Ljava/lang/Object;
    .restart local v12    # "lock":Ljava/lang/Object;
    :catchall_d0
    move-exception v0

    move-object v8, v12

    .end local v12    # "lock":Ljava/lang/Object;
    .restart local v8    # "lock":Ljava/lang/Object;
    goto :goto_d5

    .end local v5    # "queryCount":I
    .restart local v11    # "queryCount":I
    :catchall_d3
    move-exception v0

    move v5, v11

    .end local v11    # "queryCount":I
    .restart local v5    # "queryCount":I
    :goto_d5
    monitor-exit v8
    :try_end_d6
    .catchall {:try_start_cb .. :try_end_d6} :catchall_d7

    throw v0

    :catchall_d7
    move-exception v0

    goto :goto_d5

    .line 356
    .end local v3    # "queryNetwork":Landroid/net/Network;
    .end local v5    # "queryCount":I
    .end local v6    # "accumulator":Landroid/net/DnsResolver$InetAddressAnswerAccumulator;
    .end local v13    # "queryIpv4":Z
    .end local v14    # "v4fd":Ljava/io/FileDescriptor;
    .end local v15    # "queryIpv6":Z
    .end local v16    # "v6fd":Ljava/io/FileDescriptor;
    :catch_d9
    move-exception v0

    move-object/from16 v7, p5

    .line 357
    .restart local v0    # "e":Landroid/system/ErrnoException;
    new-instance v3, Landroid/net/DnsResolver$$ExternalSyntheticLambda6;

    invoke-direct {v3, v9, v0}, Landroid/net/DnsResolver$$ExternalSyntheticLambda6;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method public whitelist rawQuery(Landroid/net/Network;Ljava/lang/String;IIILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V
    .registers 16
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "nsClass"    # I
    .param p4, "nsType"    # I
    .param p5, "flags"    # I
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/net/DnsResolver$Callback<",
            "-[B>;)V"
        }
    .end annotation

    .line 241
    .local p8, "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    if-eqz p7, :cond_9

    invoke-virtual {p7}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    return-void

    .line 244
    :cond_9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    .line 247
    .local v6, "lock":Ljava/lang/Object;
    if-eqz p1, :cond_1c

    .line 248
    :try_start_11
    invoke-virtual {p1}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_1d

    .line 249
    :catch_16
    move-exception v0

    move-object v1, p0

    move-object v2, p6

    move-object v5, p7

    move-object v4, p8

    goto :goto_3c

    .line 248
    :cond_1c
    const/4 v0, 0x0

    .line 247
    :goto_1d
    :try_start_1d
    invoke-static {v0, p2, p3, p4, p5}, Landroid/net/NetworkUtils;->resNetworkQuery(ILjava/lang/String;III)Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_1d .. :try_end_21} :catch_37

    .line 252
    .local v3, "queryfd":Ljava/io/FileDescriptor;
    nop

    .line 253
    monitor-enter v6

    .line 254
    move-object v1, p0

    move-object v2, p6

    move-object v5, p7

    move-object v4, p8

    .end local p6    # "executor":Ljava/util/concurrent/Executor;
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p8    # "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .local v2, "executor":Ljava/util/concurrent/Executor;
    .local v4, "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_27
    invoke-direct/range {v1 .. v6}, Landroid/net/DnsResolver;->registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    .line 255
    if-nez v5, :cond_2e

    monitor-exit v6

    return-void

    .line 256
    :cond_2e
    invoke-direct {p0, v5, v3, v6}, Landroid/net/DnsResolver;->addCancellationSignal(Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 257
    monitor-exit v6

    .line 258
    return-void

    .line 257
    :catchall_33
    move-exception v0

    move-object p6, v0

    monitor-exit v6
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_33

    throw p6

    .line 249
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "queryfd":Ljava/io/FileDescriptor;
    .end local v4    # "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .end local v5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p6    # "executor":Ljava/util/concurrent/Executor;
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p8    # "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    :catch_37
    move-exception v0

    move-object v1, p0

    move-object v2, p6

    move-object v5, p7

    move-object v4, p8

    .line 250
    .end local p6    # "executor":Ljava/util/concurrent/Executor;
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p8    # "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .local v0, "e":Landroid/system/ErrnoException;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v4    # "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .restart local v5    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_3c
    new-instance p6, Landroid/net/DnsResolver$$ExternalSyntheticLambda3;

    invoke-direct {p6, v4, v0}, Landroid/net/DnsResolver$$ExternalSyntheticLambda3;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    invoke-interface {v2, p6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public whitelist rawQuery(Landroid/net/Network;[BILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V
    .registers 14
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "query"    # [B
    .param p3, "flags"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "[BI",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/net/DnsResolver$Callback<",
            "-[B>;)V"
        }
    .end annotation

    .line 200
    .local p6, "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    if-eqz p5, :cond_9

    invoke-virtual {p5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 201
    return-void

    .line 203
    :cond_9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    .line 206
    .local v6, "lock":Ljava/lang/Object;
    if-eqz p1, :cond_1c

    .line 207
    :try_start_11
    invoke-virtual {p1}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_1d

    .line 208
    :catch_16
    move-exception v0

    move-object v1, p0

    move-object v2, p4

    move-object v5, p5

    move-object v4, p6

    goto :goto_3d

    .line 207
    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    :try_start_1d
    array-length v1, p2

    .line 206
    invoke-static {v0, p2, v1, p3}, Landroid/net/NetworkUtils;->resNetworkSend(I[BII)Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_1d .. :try_end_22} :catch_38

    .line 211
    .local v3, "queryfd":Ljava/io/FileDescriptor;
    nop

    .line 213
    monitor-enter v6

    .line 214
    move-object v1, p0

    move-object v2, p4

    move-object v5, p5

    move-object v4, p6

    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p6    # "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .local v2, "executor":Ljava/util/concurrent/Executor;
    .local v4, "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    :try_start_28
    invoke-direct/range {v1 .. v6}, Landroid/net/DnsResolver;->registerFDListener(Ljava/util/concurrent/Executor;Ljava/io/FileDescriptor;Landroid/net/DnsResolver$Callback;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    .line 215
    if-nez v5, :cond_2f

    monitor-exit v6

    return-void

    .line 216
    :cond_2f
    invoke-direct {p0, v5, v3, v6}, Landroid/net/DnsResolver;->addCancellationSignal(Landroid/os/CancellationSignal;Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 217
    monitor-exit v6

    .line 218
    return-void

    .line 217
    :catchall_34
    move-exception v0

    move-object p4, v0

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_34

    throw p4

    .line 208
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "queryfd":Ljava/io/FileDescriptor;
    .end local v4    # "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .end local v5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p6    # "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    :catch_38
    move-exception v0

    move-object v1, p0

    move-object v2, p4

    move-object v5, p5

    move-object v4, p6

    .line 209
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p6    # "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .local v0, "e":Landroid/system/ErrnoException;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v4    # "callback":Landroid/net/DnsResolver$Callback;, "Landroid/net/DnsResolver$Callback<-[B>;"
    .restart local v5    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_3d
    new-instance p4, Landroid/net/DnsResolver$$ExternalSyntheticLambda5;

    invoke-direct {p4, v4, v0}, Landroid/net/DnsResolver$$ExternalSyntheticLambda5;-><init>(Landroid/net/DnsResolver$Callback;Landroid/system/ErrnoException;)V

    invoke-interface {v2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method
