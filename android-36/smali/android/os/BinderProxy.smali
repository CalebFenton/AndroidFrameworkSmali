.class public final Landroid/os/BinderProxy;
.super Ljava/lang/Object;
.source "BinderProxy.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BinderProxy$ProxyMap;,
        Landroid/os/BinderProxy$InterfaceCount;,
        Landroid/os/BinderProxy$NoImagePreloadHolder;,
        Landroid/os/BinderProxy$BinderProxyMapSizeException;
    }
.end annotation


# static fields
.field private static final blacklist NATIVE_ALLOCATION_SIZE:I = 0x3e8

.field private static final blacklist sProxyMap:Landroid/os/BinderProxy$ProxyMap;

.field private static volatile blacklist sTransactListener:Landroid/os/Binder$ProxyTransactListener;


# instance fields
.field private blacklist mDeathRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFrozenStateChangeCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder$FrozenStateChangeCallback;",
            "Landroid/os/IBinder$FrozenStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNativeData:J

.field volatile blacklist mWarnOnBlocking:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsProxyMap()Landroid/os/BinderProxy$ProxyMap;
    .registers 1

    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/os/BinderProxy;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 57
    const/4 v0, 0x0

    sput-object v0, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 384
    new-instance v1, Landroid/os/BinderProxy$ProxyMap;

    invoke-direct {v1, v0}, Landroid/os/BinderProxy$ProxyMap;-><init>(Landroid/os/BinderProxy-IA;)V

    sput-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .registers 4
    .param p1, "nativeData"    # J

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BinderProxy;->mDeathRecipients:Ljava/util/List;

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 665
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BinderProxy;->mFrozenStateChangeCallbacks:Ljava/util/Map;

    .line 472
    iput-wide p1, p0, Landroid/os/BinderProxy;->mNativeData:J

    .line 473
    return-void
.end method

.method private native blacklist addFrozenStateChangeCallbackNative(Landroid/os/IBinder$FrozenStateChangeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public static blacklist dumpProxyDebugInfo()V
    .registers 1

    .line 432
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_e

    .line 433
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mdumpProxyInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;)V

    .line 434
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mdumpPerUidProxyCounts(Landroid/os/BinderProxy$ProxyMap;)V

    .line 436
    :cond_e
    return-void
.end method

.method private static blacklist getInstance(JJ)Landroid/os/BinderProxy;
    .registers 8
    .param p0, "nativeData"    # J
    .param p2, "iBinder"    # J

    .line 451
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    monitor-enter v0

    .line 453
    :try_start_3
    sget-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-virtual {v1, p2, p3}, Landroid/os/BinderProxy$ProxyMap;->get(J)Landroid/os/BinderProxy;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    .line 454
    .local v1, "result":Landroid/os/BinderProxy;
    if-eqz v1, :cond_d

    .line 455
    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_27

    return-object v1

    .line 457
    :cond_d
    :try_start_d
    new-instance v2, Landroid/os/BinderProxy;

    invoke-direct {v2, p0, p1}, Landroid/os/BinderProxy;-><init>(J)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1f

    .line 463
    .end local v1    # "result":Landroid/os/BinderProxy;
    .local v2, "result":Landroid/os/BinderProxy;
    nop

    .line 464
    :try_start_13
    sget-object v1, Landroid/os/BinderProxy$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v1, v2, p0, p1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 466
    sget-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-virtual {v1, p2, p3, v2}, Landroid/os/BinderProxy$ProxyMap;->set(JLandroid/os/BinderProxy;)V

    .line 467
    monitor-exit v0

    .line 468
    return-object v2

    .line 458
    .end local v2    # "result":Landroid/os/BinderProxy;
    :catchall_1f
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Throwable;
    sget-wide v2, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    invoke-static {v2, v3, p0, p1}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    .line 462
    nop

    .end local p0    # "nativeData":J
    .end local p2    # "iBinder":J
    throw v1

    .line 467
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p0    # "nativeData":J
    .restart local p2    # "iBinder":J
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private static native blacklist getNativeFinalizer()J
.end method

.method public static blacklist getProxyCount()I
    .registers 2

    .line 421
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    monitor-enter v0

    .line 422
    :try_start_3
    sget-object v1, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v1}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$msize(Landroid/os/BinderProxy$ProxyMap;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 423
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static blacklist getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;
    .registers 2
    .param p0, "num"    # I

    .line 413
    sget-object v0, Landroid/os/BinderProxy;->sProxyMap:Landroid/os/BinderProxy$ProxyMap;

    invoke-static {v0, p0}, Landroid/os/BinderProxy$ProxyMap;->-$$Nest$mgetSortedInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist invokeFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V
    .registers 6
    .param p0, "callback"    # Landroid/os/IBinder$FrozenStateChangeCallback;
    .param p1, "binderProxy"    # Landroid/os/IBinder;
    .param p2, "stateIndex"    # I

    .line 790
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder$FrozenStateChangeCallback;->onFrozenStateChanged(Landroid/os/IBinder;I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 794
    goto :goto_c

    .line 791
    :catch_4
    move-exception v0

    .line 792
    .local v0, "exc":Ljava/lang/RuntimeException;
    const-string v1, "BinderNative"

    const-string v2, "Uncaught exception from frozen state change callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :goto_c
    return-void
.end method

.method public static blacklist isFrozenStateChangeCallbackSupported()Z
    .registers 1

    .line 691
    invoke-static {}, Landroid/os/BinderProxy;->isFrozenStateChangeCallbackSupportedNative()Z

    move-result v0

    return v0
.end method

.method private static native blacklist isFrozenStateChangeCallbackSupportedNative()Z
.end method

.method static synthetic blacklist lambda$addFrozenStateChangeCallback$0(Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/IBinder$FrozenStateChangeCallback;
    .param p1, "who"    # Landroid/os/IBinder;
    .param p2, "state"    # I

    .line 673
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder$FrozenStateChangeCallback;->onFrozenStateChanged(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic blacklist lambda$addFrozenStateChangeCallback$1(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V
    .registers 5
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/os/IBinder$FrozenStateChangeCallback;
    .param p2, "who"    # Landroid/os/IBinder;
    .param p3, "state"    # I

    .line 673
    new-instance v0, Landroid/os/BinderProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/BinderProxy$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private native blacklist linkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method private native blacklist removeFrozenStateChangeCallbackNative(Landroid/os/IBinder$FrozenStateChangeCallback;)Z
.end method

.method private static blacklist sendDeathNotice(Landroid/os/IBinder$DeathRecipient;Landroid/os/IBinder;)V
    .registers 5
    .param p0, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p1, "binderProxy"    # Landroid/os/IBinder;

    .line 780
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 784
    goto :goto_c

    .line 781
    :catch_4
    move-exception v0

    .line 782
    .local v0, "exc":Ljava/lang/RuntimeException;
    const-string v1, "BinderNative"

    const-string v2, "Uncaught exception from death notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :goto_c
    return-void
.end method

.method public static blacklist setTransactListener(Landroid/os/Binder$ProxyTransactListener;)V
    .registers 1
    .param p0, "listener"    # Landroid/os/Binder$ProxyTransactListener;

    .line 69
    sput-object p0, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 70
    return-void
.end method

.method private native blacklist unlinkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)Z
.end method


# virtual methods
.method public whitelist addFrozenStateChangeCallback(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/os/IBinder$FrozenStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 672
    new-instance v0, Landroid/os/BinderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/os/BinderProxy$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;)V

    .line 674
    .local v0, "wrappedCallback":Landroid/os/IBinder$FrozenStateChangeCallback;
    invoke-direct {p0, v0}, Landroid/os/BinderProxy;->addFrozenStateChangeCallbackNative(Landroid/os/IBinder$FrozenStateChangeCallback;)V

    .line 675
    iget-object v1, p0, Landroid/os/BinderProxy;->mFrozenStateChangeCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 711
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 712
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 715
    const v2, 0x5f444d50

    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_20

    .line 718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    nop

    .line 721
    return-void

    .line 718
    :catchall_20
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    throw v2
.end method

.method public whitelist dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 732
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 733
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 734
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 736
    const v2, 0x5f444d50

    const/4 v3, 0x1

    :try_start_12
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1d

    .line 738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 740
    nop

    .line 741
    return-void

    .line 738
    :catchall_1d
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 740
    throw v2
.end method

.method public native blacklist getExtension()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native whitelist isBinderAlive()Z
.end method

.method public whitelist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    invoke-direct {p0, p1, p2}, Landroid/os/BinderProxy;->linkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)V

    .line 638
    iget-object v0, p0, Landroid/os/BinderProxy;->mDeathRecipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    return-void
.end method

.method public native whitelist pingBinder()Z
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 510
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist removeFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)Z
    .registers 5
    .param p1, "callback"    # Landroid/os/IBinder$FrozenStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Landroid/os/BinderProxy;->mFrozenStateChangeCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$FrozenStateChangeCallback;

    .line 684
    .local v0, "wrappedCallback":Landroid/os/IBinder$FrozenStateChangeCallback;
    if-eqz v0, :cond_f

    .line 687
    invoke-direct {p0, v0}, Landroid/os/BinderProxy;->removeFrozenStateChangeCallbackNative(Landroid/os/IBinder$FrozenStateChangeCallback;)Z

    move-result v1

    return v1

    .line 685
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 11
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 759
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 760
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 761
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 762
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 763
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 764
    invoke-static {p5, v0}, Landroid/os/ShellCallback;->writeToParcel(Landroid/os/ShellCallback;Landroid/os/Parcel;)V

    .line 765
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 767
    const v3, 0x5f434d44

    :try_start_1e
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2c

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 772
    nop

    .line 773
    return-void

    .line 770
    :catchall_2c
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 772
    throw v2
.end method

.method public whitelist transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    const-string v0, "Unreasonably large binder buffer"

    invoke-static {p0, p1, p2, v0}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 537
    iget-boolean v0, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 539
    .local v0, "warnOnBlocking":Z
    if-eqz v0, :cond_3d

    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_3d

    sget-object v1, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    .line 540
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 544
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 545
    const/4 v0, 0x0

    .line 547
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    const-string v2, "Outgoing transactions from this process must be FLAG_ONEWAY"

    const-string v3, "Binder"

    if-nez v1, :cond_35

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_2c

    goto :goto_35

    .line 553
    :cond_2c
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 549
    :cond_35
    :goto_35
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    :cond_3d
    :goto_3d
    invoke-static {}, Landroid/os/Binder;->isStackTrackingEnabled()Z

    move-result v1

    .line 560
    .local v1, "tracingEnabled":Z
    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_7a

    .line 561
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 562
    .local v5, "tr":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/TransactionTracker;->addTrace(Ljava/lang/Throwable;)V

    .line 563
    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v6, v6, v4

    .line 564
    .local v6, "stackTraceElement":Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 564
    invoke-static {v2, v3, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 569
    .end local v5    # "tr":Ljava/lang/Throwable;
    .end local v6    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_7a
    sget-object v5, Landroid/os/BinderProxy;->sTransactListener:Landroid/os/Binder$ProxyTransactListener;

    .line 570
    .local v5, "transactListener":Landroid/os/Binder$ProxyTransactListener;
    const/4 v6, 0x0

    .line 572
    .local v6, "session":Ljava/lang/Object;
    if-eqz v5, :cond_90

    .line 573
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v7

    .line 574
    .local v7, "origWorkSourceUid":I
    invoke-interface {v5, p0, p1, p4}, Landroid/os/Binder$ProxyTransactListener;->onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;

    move-result-object v6

    .line 578
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v8

    .line 579
    .local v8, "updatedWorkSourceUid":I
    if-eq v7, v8, :cond_90

    .line 580
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->replaceCallingWorkSourceUid(I)Z

    .line 585
    .end local v7    # "origWorkSourceUid":I
    .end local v8    # "updatedWorkSourceUid":I
    :cond_90
    invoke-static {}, Landroid/app/AppOpsManager;->pauseNotedAppOpsCollection()Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    move-result-object v7

    .line 587
    .local v7, "prevCollection":Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;
    and-int/lit8 v8, p4, 0x1

    if-nez v8, :cond_a0

    invoke-static {}, Landroid/app/AppOpsManager;->isListeningForOpNoted()Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 588
    or-int/lit8 p4, p4, 0x2

    .line 592
    :cond_a0
    :try_start_a0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    .line 594
    .local v8, "result":Z
    if-eqz p3, :cond_ab

    if-nez v0, :cond_ab

    .line 595
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->addFlags(I)V
    :try_end_ab
    .catchall {:try_start_a0 .. :try_end_ab} :catchall_ba

    .line 598
    :cond_ab
    nop

    .line 600
    invoke-static {v7}, Landroid/app/AppOpsManager;->resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V

    .line 602
    if-eqz v5, :cond_b4

    .line 603
    invoke-interface {v5, v6}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    .line 606
    :cond_b4
    if-eqz v1, :cond_b9

    .line 607
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 598
    :cond_b9
    return v8

    .line 600
    .end local v8    # "result":Z
    :catchall_ba
    move-exception v4

    invoke-static {v7}, Landroid/app/AppOpsManager;->resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V

    .line 602
    if-eqz v5, :cond_c3

    .line 603
    invoke-interface {v5, v6}, Landroid/os/Binder$ProxyTransactListener;->onTransactEnded(Ljava/lang/Object;)V

    .line 606
    :cond_c3
    if-eqz v1, :cond_c8

    .line 607
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 609
    :cond_c8
    throw v4
.end method

.method public native blacklist transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public whitelist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 645
    iget-object v0, p0, Landroid/os/BinderProxy;->mDeathRecipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 646
    invoke-direct {p0, p1, p2}, Landroid/os/BinderProxy;->unlinkToDeathNative(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method
