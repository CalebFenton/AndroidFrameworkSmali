.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Binder$NoImagePreloadHolder;,
        Landroid/os/Binder$ProxyTransactListener;,
        Landroid/os/Binder$PropagateWorkSourceTransactListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o CHECK_PARCEL_SIZE:Z = false

.field private static final greylist-max-o FIND_POTENTIAL_LEAKS:Z = false

.field public static greylist-max-o LOG_RUNTIME_EXCEPTION:Z = false

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x1f4

.field static final greylist-max-o TAG:Ljava/lang/String; = "Binder"

.field private static final blacklist TRANSACTION_TRACE_NAME_ID_LIMIT:I = 0x400

.field public static final blacklist UNSET_WORKSOURCE:I = -0x1

.field private static blacklist sBinderCallback:Landroid/os/IBinderCallback;

.field private static volatile greylist-max-o sDumpDisabled:Ljava/lang/String;

.field private static volatile blacklist sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

.field private static blacklist sIsHandlingBinderTransaction:Z

.field private static blacklist sObserver:Lcom/android/internal/os/BinderInternal$Observer;

.field private static volatile blacklist sStackTrackingEnabled:Z

.field private static volatile greylist-max-o sTransactionTracker:Landroid/os/TransactionTracker;

.field static volatile greylist-max-o sWarnOnBlocking:Z

.field static blacklist sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# instance fields
.field private greylist-max-o mDescriptor:Ljava/lang/String;

.field private blacklist mExtension:Landroid/os/IBinder;

.field private final greylist mObject:J

.field private greylist-max-o mOwner:Landroid/os/IInterface;

.field private volatile blacklist mSimpleDescriptor:Ljava/lang/String;

.field private volatile blacklist mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z

    .line 113
    const/4 v1, 0x0

    sput-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 118
    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    .line 123
    sput-object v1, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 142
    sput-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 149
    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 207
    sput-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    .line 276
    new-instance v2, Landroid/os/Binder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/os/Binder$$ExternalSyntheticLambda0;-><init>()V

    .line 277
    invoke-static {v2}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v2

    sput-object v2, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    .line 352
    sput-boolean v0, Landroid/os/Binder;->sIsHandlingBinderTransaction:Z

    .line 688
    sput-object v1, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    .line 1321
    new-instance v0, Landroid/os/Binder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/Binder$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 717
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Binder;->mExtension:Landroid/os/IBinder;

    .line 310
    iput-object v0, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 311
    iput-object v0, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    .line 733
    invoke-static {}, Landroid/os/Binder;->getNativeBBinderHolder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Binder;->mObject:J

    .line 734
    sget-object v0, Landroid/os/Binder$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/Binder;->mObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 744
    iput-object p1, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 745
    return-void
.end method

.method public static greylist-max-o allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 240
    :try_start_0
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_b

    .line 241
    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    goto :goto_35

    .line 242
    :cond_b
    if-eqz p0, :cond_35

    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 243
    invoke-interface {p0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_35

    .line 244
    const-string v0, "Binder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allow blocking on interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36

    .line 247
    :cond_35
    :goto_35
    goto :goto_37

    .line 246
    :catch_36
    move-exception v0

    .line 248
    :goto_37
    return-object p0
.end method

.method public static blacklist allowBlockingForCurrentThread()V
    .registers 2

    .line 287
    sget-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public static final native greylist-max-o blockUntilThreadAvailable()V
.end method

.method static greylist-max-o checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V
    .registers 4
    .param p0, "obj"    # Landroid/os/IBinder;
    .param p1, "code"    # I
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "msg"    # Ljava/lang/String;

    .line 1314
    return-void
.end method

.method public static final native whitelist clearCallingIdentity()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist clearCallingWorkSource()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static greylist-max-o copyAllowBlocking(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4
    .param p0, "fromBinder"    # Landroid/os/IBinder;
    .param p1, "toBinder"    # Landroid/os/IBinder;

    .line 271
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_12

    instance-of v0, p1, Landroid/os/BinderProxy;

    if-eqz v0, :cond_12

    .line 272
    move-object v0, p1

    check-cast v0, Landroid/os/BinderProxy;

    move-object v1, p0

    check-cast v1, Landroid/os/BinderProxy;

    iget-boolean v1, v1, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 274
    :cond_12
    return-void
.end method

.method public static greylist-max-o defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 3
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 258
    instance-of v0, p0, Landroid/os/BinderProxy;

    if-eqz v0, :cond_b

    .line 259
    move-object v0, p0

    check-cast v0, Landroid/os/BinderProxy;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    iput-boolean v1, v0, Landroid/os/BinderProxy;->mWarnOnBlocking:Z

    .line 261
    :cond_b
    return-object p0
.end method

.method public static blacklist defaultBlockingForCurrentThread()V
    .registers 2

    .line 298
    sget-object v0, Landroid/os/Binder;->sWarnOnBlockingOnCurrentThread:Ljava/lang/ThreadLocal;

    sget-boolean v1, Landroid/os/Binder;->sWarnOnBlocking:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public static blacklist disableStackTracking()V
    .registers 1

    .line 172
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 173
    return-void
.end method

.method public static blacklist enableStackTracking()V
    .registers 1

    .line 163
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    .line 164
    return-void
.end method

.method private greylist execTransact(IJJI)Z
    .registers 17
    .param p1, "code"    # I
    .param p2, "dataObj"    # J
    .param p4, "replyObj"    # J
    .param p6, "flags"    # I

    .line 1349
    invoke-static {p2, p3}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v3

    .line 1350
    .local v3, "data":Landroid/os/Parcel;
    invoke-static {p4, p5}, Landroid/os/Parcel;->obtain(J)Landroid/os/Parcel;

    move-result-object v4

    .line 1360
    .local v4, "reply":Landroid/os/Parcel;
    invoke-virtual {v3}, Landroid/os/Parcel;->isForRpc()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_11

    move v6, v7

    goto :goto_16

    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v6, v0

    .line 1361
    .local v6, "callingUid":I
    :goto_16
    if-ne v6, v7, :cond_1b

    .line 1362
    const-wide/16 v0, -0x1

    goto :goto_1f

    :cond_1b
    invoke-static {v6}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v0

    :goto_1f
    move-wide v8, v0

    .line 1365
    .local v8, "origWorkSource":J
    move-object v1, p0

    move v2, p1

    move/from16 v5, p6

    :try_start_24
    invoke-direct/range {v1 .. v6}, Landroid/os/Binder;->execTransactInternal(ILandroid/os/Parcel;Landroid/os/Parcel;II)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_34

    .line 1367
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1370
    if-eq v6, v7, :cond_33

    .line 1371
    invoke-static {v8, v9}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 1365
    :cond_33
    return v0

    .line 1367
    :catchall_34
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1370
    if-eq v6, v7, :cond_40

    .line 1371
    invoke-static {v8, v9}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 1373
    :cond_40
    throw v0
.end method

.method private blacklist execTransactInternal(ILandroid/os/Parcel;Landroid/os/Parcel;II)Z
    .registers 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .param p5, "callingUid"    # I

    .line 1379
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const-string v6, "Unreasonably large binder reply buffer"

    sget-object v7, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 1383
    .local v7, "observer":Lcom/android/internal/os/BinderInternal$Observer;
    const/4 v0, -0x1

    if-eqz v7, :cond_16

    invoke-interface {v7, v1, v2, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v8

    goto :goto_17

    :cond_16
    const/4 v8, 0x0

    .line 1391
    .local v8, "callSession":Lcom/android/internal/os/BinderInternal$CallSession;
    :goto_17
    const-wide/32 v9, 0x1000000

    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v11

    .line 1392
    .local v11, "tagEnabled":Z
    invoke-virtual {v1}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v12

    const/4 v13, 0x1

    if-lez v12, :cond_27

    move v12, v13

    goto :goto_28

    :cond_27
    const/4 v12, 0x0

    .line 1395
    .local v12, "hasFullyQualifiedName":Z
    :goto_28
    if-eqz v11, :cond_2f

    .line 1397
    invoke-virtual/range {p0 .. p1}, Landroid/os/Binder;->getTransactionTraceName(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "transactionTraceName":Ljava/lang/String;
    goto :goto_30

    .line 1399
    .end local v15    # "transactionTraceName":Ljava/lang/String;
    :cond_2f
    const/4 v15, 0x0

    .line 1402
    .restart local v15    # "transactionTraceName":Ljava/lang/String;
    :goto_30
    if-eqz v11, :cond_35

    if-eqz v15, :cond_35

    goto :goto_36

    :cond_35
    const/4 v13, 0x0

    .line 1406
    .local v13, "tracingEnabled":Z
    :goto_36
    :try_start_36
    sget-object v16, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    move-object/from16 v17, v16

    .line 1407
    .local v17, "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    if-eqz v17, :cond_48

    if-eq v5, v0, :cond_48

    .line 1409
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v9, v17

    .end local v17    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .local v9, "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    invoke-virtual {v9, v5, v14, v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->onTransaction(ILjava/lang/Class;I)V

    goto :goto_4a

    .line 1407
    .end local v9    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .restart local v17    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    :cond_48
    move-object/from16 v9, v17

    .line 1411
    .end local v17    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .restart local v9    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    :goto_4a
    if-eqz v13, :cond_54

    .line 1412
    move-object v14, v9

    const-wide/32 v9, 0x1000000

    .end local v9    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .local v14, "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    invoke-static {v9, v10, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_55

    .line 1411
    .end local v14    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .restart local v9    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    :cond_54
    move-object v14, v9

    .line 1418
    .end local v9    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .restart local v14    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    :goto_55
    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_6c

    if-eq v5, v0, :cond_6c

    .line 1419
    invoke-static {v5}, Landroid/app/AppOpsManager;->startNotedAppOpsCollection(I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_5e} :catch_95
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_5e} :catch_95
    .catchall {:try_start_36 .. :try_end_5e} :catchall_93

    .line 1421
    :try_start_5e
    invoke-virtual/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_66

    .line 1423
    .local v0, "res":Z
    :try_start_62
    invoke-static {}, Landroid/app/AppOpsManager;->finishNotedAppOpsCollection()V

    .line 1424
    goto :goto_70

    .line 1423
    .end local v0    # "res":Z
    :catchall_66
    move-exception v0

    invoke-static {}, Landroid/app/AppOpsManager;->finishNotedAppOpsCollection()V

    .line 1424
    nop

    .end local v7    # "observer":Lcom/android/internal/os/BinderInternal$Observer;
    .end local v8    # "callSession":Lcom/android/internal/os/BinderInternal$CallSession;
    .end local v11    # "tagEnabled":Z
    .end local v12    # "hasFullyQualifiedName":Z
    .end local v13    # "tracingEnabled":Z
    .end local v15    # "transactionTraceName":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "code":I
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    .end local p5    # "callingUid":I
    throw v0

    .line 1426
    .restart local v7    # "observer":Lcom/android/internal/os/BinderInternal$Observer;
    .restart local v8    # "callSession":Lcom/android/internal/os/BinderInternal$CallSession;
    .restart local v11    # "tagEnabled":Z
    .restart local v12    # "hasFullyQualifiedName":Z
    .restart local v13    # "tracingEnabled":Z
    .restart local v15    # "transactionTraceName":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    .restart local p5    # "callingUid":I
    :cond_6c
    invoke-virtual/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_70} :catch_95
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_70} :catch_95
    .catchall {:try_start_62 .. :try_end_70} :catchall_93

    .line 1454
    .end local v14    # "heavyHitterWatcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .restart local v0    # "res":Z
    :goto_70
    if-eqz v13, :cond_78

    .line 1455
    const-wide/32 v18, 0x1000000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1457
    :cond_78
    if-eqz v7, :cond_8f

    .line 1460
    :goto_7a
    sget-object v9, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v10

    .line 1460
    invoke-interface {v9, v10}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v9

    .line 1462
    .local v9, "workSourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataSize()I

    move-result v10

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v14

    invoke-interface {v7, v8, v10, v14, v9}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 1465
    .end local v9    # "workSourceUid":I
    :cond_8f
    invoke-static {v1, v2, v3, v6}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 1466
    goto :goto_da

    .line 1454
    .end local v0    # "res":Z
    :catchall_93
    move-exception v0

    goto :goto_de

    .line 1428
    :catch_95
    move-exception v0

    .line 1429
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_9b

    .line 1430
    :try_start_98
    invoke-interface {v7, v8, v0}, Lcom/android/internal/os/BinderInternal$Observer;->callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V

    .line 1432
    :cond_9b
    sget-boolean v9, Landroid/os/Binder;->LOG_RUNTIME_EXCEPTION:Z
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_93

    const-string v10, "Caught a RuntimeException from the binder stub implementation."

    const-string v14, "Binder"

    if-eqz v9, :cond_a6

    .line 1433
    :try_start_a3
    invoke-static {v14, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1435
    :cond_a6
    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_bb

    .line 1436
    instance-of v9, v0, Landroid/os/RemoteException;

    if-eqz v9, :cond_b4

    .line 1437
    const-string v9, "Binder call failed."

    invoke-static {v14, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b7

    .line 1439
    :cond_b4
    invoke-static {v14, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1441
    :goto_b7
    invoke-virtual {v1, v2, v4, v0}, Landroid/os/Binder;->onUnhandledException(IILjava/lang/Exception;)V

    goto :goto_ce

    .line 1444
    :cond_bb
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->setDataSize(I)V

    .line 1445
    invoke-virtual {v3, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1447
    invoke-static {v0}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v9

    if-nez v9, :cond_cb

    .line 1448
    invoke-virtual {v1, v2, v4, v0}, Landroid/os/Binder;->onUnhandledException(IILjava/lang/Exception;)V

    .line 1450
    :cond_cb
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V
    :try_end_ce
    .catchall {:try_start_a3 .. :try_end_ce} :catchall_93

    .line 1452
    :goto_ce
    const/4 v0, 0x1

    .line 1454
    .local v0, "res":Z
    if-eqz v13, :cond_d7

    .line 1455
    const-wide/32 v18, 0x1000000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1457
    :cond_d7
    if-eqz v7, :cond_8f

    .line 1460
    goto :goto_7a

    .line 1473
    :goto_da
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1474
    return v0

    .line 1454
    .end local v0    # "res":Z
    :goto_de
    if-eqz v13, :cond_e6

    .line 1455
    const-wide/32 v18, 0x1000000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1457
    :cond_e6
    if-eqz v7, :cond_fd

    .line 1460
    sget-object v9, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readCallingWorkSourceUid()I

    move-result v10

    .line 1460
    invoke-interface {v9, v10}, Lcom/android/internal/os/BinderInternal$WorkSourceProvider;->resolveWorkSourceUid(I)I

    move-result v9

    .line 1462
    .restart local v9    # "workSourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->dataSize()I

    move-result v10

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v14

    invoke-interface {v7, v8, v10, v14, v9}, Lcom/android/internal/os/BinderInternal$Observer;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 1465
    .end local v9    # "workSourceUid":I
    :cond_fd
    invoke-static {v1, v2, v3, v6}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 1466
    throw v0
.end method

.method public static final native whitelist flushPendingCommands()V
.end method

.method public static final native whitelist getCallingPid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist getCallingUid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final whitelist getCallingUidOrThrow()I
    .registers 2

    .line 387
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Landroid/os/Binder;->hasExplicitIdentity()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 388
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread is not in a binder transaction, and the calling identity has not been explicitly set with clearCallingIdentity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_15
    :goto_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static final blacklist getCallingUidOrWtf(Ljava/lang/String;)I
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 407
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Landroid/os/Binder;->hasExplicitIdentity()Z

    move-result v0

    if-nez v0, :cond_24

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Thread is not in a binder transaction, and the calling identity has not been explicitly set with clearCallingIdentity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static final whitelist getCallingUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static final native whitelist getCallingWorkSourceUid()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o getNativeBBinderHolder()J
.end method

.method private static native greylist-max-o getNativeFinalizer()J
.end method

.method private blacklist getSimpleDescriptor()Ljava/lang/String;
    .registers 4

    .line 1032
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 1033
    .local v0, "descriptor":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1035
    const-string v1, "Binder"

    return-object v1

    .line 1038
    :cond_7
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1039
    .local v1, "dot":I
    if-lez v1, :cond_16

    .line 1041
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1043
    :cond_16
    return-object v0
.end method

.method public static final native greylist-max-o getThreadStrictModePolicy()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static declared-synchronized greylist-max-o getTransactionTracker()Landroid/os/TransactionTracker;
    .registers 2

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    .line 190
    :try_start_3
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    if-nez v1, :cond_e

    .line 191
    new-instance v1, Landroid/os/TransactionTracker;

    invoke-direct {v1}, Landroid/os/TransactionTracker;-><init>()V

    sput-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;

    .line 192
    :cond_e
    sget-object v1, Landroid/os/Binder;->sTransactionTracker:Landroid/os/TransactionTracker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 189
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static native blacklist hasExplicitIdentity()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final blacklist isDirectlyHandlingTransaction()Z
    .registers 1

    .line 358
    sget-boolean v0, Landroid/os/Binder;->sIsHandlingBinderTransaction:Z

    if-nez v0, :cond_d

    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransactionNative()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static final native blacklist isDirectlyHandlingTransactionNative()Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final greylist-max-o isProxy(Landroid/os/IInterface;)Z
    .registers 2
    .param p0, "iface"    # Landroid/os/IInterface;

    .line 673
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist isStackTrackingEnabled()Z
    .registers 1

    .line 181
    sget-boolean v0, Landroid/os/Binder;->sStackTrackingEnabled:Z

    return v0
.end method

.method public static final whitelist joinThreadPool()V
    .registers 0

    .line 664
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->joinThreadPool()V

    .line 665
    return-void
.end method

.method static synthetic blacklist lambda$static$0()Ljava/lang/Boolean;
    .registers 1

    .line 277
    sget-boolean v0, Landroid/os/Binder;->sWarnOnBlocking:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$1(I)I
    .registers 2
    .param p0, "x"    # I

    .line 1322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public static final native whitelist restoreCallingIdentity(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist restoreCallingWorkSource(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist setCallingWorkSourceUid(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static greylist-max-o setDumpDisabled(Ljava/lang/String;)V
    .registers 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 807
    sput-object p0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 808
    return-void
.end method

.method private final native blacklist setExtensionNative(Landroid/os/IBinder;)V
.end method

.method public static declared-synchronized blacklist setHeavyHitterWatcherConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    .registers 9
    .param p0, "enabled"    # Z
    .param p1, "batchSize"    # I
    .param p2, "threshold"    # F
    .param p3, "listener"    # Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    const-class v0, Landroid/os/Binder;

    monitor-enter v0

    .line 1485
    :try_start_3
    const-string v1, "Binder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting heavy hitter watcher config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    sget-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 1488
    .local v1, "watcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    if-eqz p0, :cond_4d

    .line 1489
    if-eqz p3, :cond_47

    .line 1492
    const/4 v2, 0x0

    .line 1493
    .local v2, "newWatcher":Z
    if-nez v1, :cond_3e

    .line 1494
    invoke-static {}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->getInstance()Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    move-result-object v3

    move-object v1, v3

    .line 1495
    const/4 v2, 0x1

    .line 1497
    :cond_3e
    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1, p2, p3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V

    .line 1498
    if-eqz v2, :cond_46

    .line 1499
    sput-object v1, Landroid/os/Binder;->sHeavyHitterWatcher:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    .line 1501
    .end local v2    # "newWatcher":Z
    :cond_46
    goto :goto_55

    .line 1490
    :cond_47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1501
    :cond_4d
    if-eqz v1, :cond_46

    .line 1502
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_57

    .line 1504
    :goto_55
    monitor-exit v0

    return-void

    .line 1484
    .end local v1    # "watcher":Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .end local p0    # "enabled":Z
    .end local p1    # "batchSize":I
    .end local p2    # "threshold":F
    .end local p3    # "listener":Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;
    :catchall_57
    move-exception p0

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public static blacklist setIsDirectlyHandlingTransactionOverride(Z)V
    .registers 1
    .param p0, "isInTransaction"    # Z

    .line 366
    sput-boolean p0, Landroid/os/Binder;->sIsHandlingBinderTransaction:Z

    .line 367
    return-void
.end method

.method public static blacklist setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V
    .registers 1
    .param p0, "observer"    # Lcom/android/internal/os/BinderInternal$Observer;

    .line 203
    sput-object p0, Landroid/os/Binder;->sObserver:Lcom/android/internal/os/BinderInternal$Observer;

    .line 204
    return-void
.end method

.method public static whitelist setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V
    .registers 1
    .param p0, "listener"    # Landroid/os/Binder$ProxyTransactListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 897
    invoke-static {p0}, Landroid/os/BinderProxy;->setTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 898
    return-void
.end method

.method public static final native greylist-max-o setThreadStrictModePolicy(I)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final blacklist setTransactionCallback(Landroid/os/IBinderCallback;)V
    .registers 1
    .param p0, "callback"    # Landroid/os/IBinderCallback;

    .line 696
    sput-object p0, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    .line 697
    return-void
.end method

.method public static greylist-max-o setWarnOnBlocking(Z)V
    .registers 1
    .param p0, "warnOnBlocking"    # Z

    .line 221
    sput-boolean p0, Landroid/os/Binder;->sWarnOnBlocking:Z

    .line 222
    return-void
.end method

.method public static blacklist setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V
    .registers 3
    .param p0, "workSourceProvider"    # Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1338
    if-eqz p0, :cond_5

    .line 1341
    sput-object p0, Landroid/os/Binder;->sWorkSourceProvider:Lcom/android/internal/os/BinderInternal$WorkSourceProvider;

    .line 1342
    return-void

    .line 1339
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "workSourceProvider cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final blacklist transactionCallback(IIII)V
    .registers 5
    .param p0, "pid"    # I
    .param p1, "code"    # I
    .param p2, "flags"    # I
    .param p3, "err"    # I

    .line 705
    sget-object v0, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    if-eqz v0, :cond_9

    .line 706
    sget-object v0, Landroid/os/Binder;->sBinderCallback:Landroid/os/IBinderCallback;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/os/IBinderCallback;->onTransactionError(IIII)V

    .line 708
    :cond_9
    return-void
.end method

.method public static final greylist-max-o withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 496
    .local p0, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;, "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<TT;>;"
    const/4 v0, 0x0

    .line 497
    .local v0, "throwableToPropagate":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 499
    .local v1, "callingIdentity":J
    :try_start_5
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;->getOrThrow()Ljava/lang/Object;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_14

    .line 504
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    if-nez v0, :cond_f

    .line 499
    return-object v3

    .line 506
    :cond_f
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 500
    :catchall_14
    move-exception v3

    .line 501
    .local v3, "throwable":Ljava/lang/Throwable;
    move-object v0, v3

    .line 502
    nop

    .line 504
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    nop

    .line 506
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static final greylist-max-o withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 5
    .param p0, "action"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "throwableToPropagate":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 475
    .local v1, "callingIdentity":J
    :try_start_5
    invoke-interface {p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    .line 479
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 480
    if-nez v0, :cond_e

    .line 484
    return-void

    .line 481
    :cond_e
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 476
    :catchall_13
    move-exception v3

    .line 477
    .local v3, "throwable":Ljava/lang/Throwable;
    nop

    .line 479
    .end local v0    # "throwableToPropagate":Ljava/lang/Throwable;
    .local v3, "throwableToPropagate":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 480
    nop

    .line 481
    invoke-static {v3}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public whitelist attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Landroid/os/IInterface;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 754
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 755
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 756
    return-void
.end method

.method greylist-max-o doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1069
    sget-object v0, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    .line 1070
    .local v0, "disabled":Ljava/lang/String;
    if-nez v0, :cond_31

    .line 1072
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_15
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 1084
    :goto_7
    goto :goto_36

    .line 1076
    :catchall_8
    move-exception v1

    .line 1081
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1082
    const-string v2, "Exception occurred while dumping:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_7

    .line 1073
    :catch_15
    move-exception v1

    .line 1074
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    throw v1

    .line 1086
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_31
    sget-object v1, Landroid/os/Binder;->sDumpDisabled:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    :goto_36
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1119
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1059
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1060
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1062
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_a
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 1064
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1065
    nop

    .line 1066
    return-void

    .line 1064
    :catchall_12
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1065
    throw v2
.end method

.method public whitelist dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1095
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1096
    .local v0, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v1

    .line 1097
    .local v6, "pw":Ljava/io/PrintWriter;
    new-instance v2, Landroid/os/Binder$1;

    const-string v4, "Binder.dumpAsync"

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "args":[Ljava/lang/String;
    .local v5, "fd":Ljava/io/FileDescriptor;
    .local v7, "args":[Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1106
    .local v2, "thr":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1107
    return-void
.end method

.method public final native blacklist forceDowngradeToSystemStability()V
.end method

.method public final blacklist getExtension()Landroid/os/IBinder;
    .registers 2

    .line 1246
    iget-object v0, p0, Landroid/os/Binder;->mExtension:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 762
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1051
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 987
    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist getTransactionTraceName(I)Ljava/lang/String;
    .registers 9
    .param p1, "transactionCode"    # I

    .line 995
    invoke-virtual {p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 996
    .local v0, "isInterfaceUserDefined":Z
    :goto_9
    iget-object v1, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    if-nez v1, :cond_2a

    .line 997
    const/16 v1, 0x400

    if-eqz v0, :cond_12

    goto :goto_1a

    .line 998
    :cond_12
    invoke-virtual {p0}, Landroid/os/Binder;->getMaxTransactionId()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1a
    nop

    .line 999
    .local v1, "highestId":I
    invoke-direct {p0}, Landroid/os/Binder;->getSimpleDescriptor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    .line 1000
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v2, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1003
    .end local v1    # "highestId":I
    :cond_2a
    if-eqz v0, :cond_2e

    .line 1004
    move v1, p1

    goto :goto_30

    :cond_2e
    add-int/lit8 v1, p1, -0x1

    .line 1005
    .local v1, "index":I
    :goto_30
    iget-object v2, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_83

    if-gez v1, :cond_3b

    goto :goto_83

    .line 1009
    :cond_3b
    iget-object v2, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAcquire(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1010
    .local v2, "transactionTraceName":Ljava/lang/String;
    if-nez v2, :cond_82

    .line 1011
    invoke-virtual {p0, p1}, Landroid/os/Binder;->getTransactionName(I)Ljava/lang/String;

    move-result-object v3

    .line 1012
    .local v3, "transactionName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1016
    .local v4, "buf":Ljava/lang/StringBuffer;
    const-string v5, "AIDL::java::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1017
    if-eqz v3, :cond_65

    .line 1018
    iget-object v5, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_74

    .line 1020
    :cond_65
    iget-object v5, p0, Landroid/os/Binder;->mSimpleDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "::#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1022
    :goto_74
    const-string v5, "::server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1024
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1025
    iget-object v5, p0, Landroid/os/Binder;->mTransactionTraceNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->setRelease(ILjava/lang/Object;)V

    .line 1028
    .end local v3    # "transactionName":Ljava/lang/String;
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    :cond_82
    return-object v2

    .line 1006
    .end local v2    # "transactionTraceName":Ljava/lang/String;
    :cond_83
    :goto_83
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 8
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1236
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1237
    .local v0, "ferr":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1238
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "No shell command implementation."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1240
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isBinderAlive()Z
    .registers 2

    .line 780
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 3
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 1284
    return-void
.end method

.method public final native whitelist markVintfStability()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public greylist-max-o onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
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

    .line 1171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1172
    .local v0, "callingUid":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_d

    goto :goto_18

    .line 1173
    :cond_d
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1174
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Shell commands are only callable by ADB"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1179
    :cond_18
    :goto_18
    const-string v3, "/dev/null"

    if-nez p1, :cond_29

    .line 1180
    :try_start_1c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object p1, v4

    goto :goto_29

    .line 1188
    :catch_27
    move-exception v3

    goto :goto_36

    .line 1182
    :cond_29
    :goto_29
    if-nez p2, :cond_66

    .line 1183
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_34} :catch_27

    move-object p2, v1

    goto :goto_66

    .line 1189
    .local v3, "e":Ljava/io/IOException;
    :goto_36
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_3e

    move-object v6, p3

    goto :goto_3f

    :cond_3e
    move-object v6, p2

    :goto_3f
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1190
    .local v4, "pw":Ljava/io/PrintWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open /dev/null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1192
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1193
    return-void

    .line 1185
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :cond_66
    :goto_66
    if-nez p3, :cond_69

    .line 1186
    move-object p3, p2

    .line 1194
    :cond_69
    nop

    .line 1196
    if-nez p4, :cond_6f

    .line 1197
    const/4 v1, 0x0

    new-array p4, v1, [Ljava/lang/String;

    .line 1200
    :cond_6f
    const/4 v1, -0x1

    .line 1201
    .local v1, "result":I
    :try_start_70
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_74} :catch_ba
    .catchall {:try_start_70 .. :try_end_74} :catchall_b8

    .line 1202
    .local v3, "inPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_74
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_ac

    .line 1203
    .local v4, "outPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_78
    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_a0

    .line 1204
    .local v5, "errPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_7c
    invoke-virtual {p0, v3, v4, v5, p4}, Landroid/os/Binder;->handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I

    move-result v6
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_94

    move v1, v6

    .line 1205
    if-eqz v5, :cond_86

    :try_start_83
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_a0

    .end local v5    # "errPfd":Landroid/os/ParcelFileDescriptor;
    :cond_86
    if-eqz v4, :cond_8b

    :try_start_88
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_ac

    .end local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    :cond_8b
    if-eqz v3, :cond_90

    :try_start_8d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_ba
    .catchall {:try_start_8d .. :try_end_90} :catchall_b8

    .line 1210
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    :cond_90
    :goto_90
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1211
    goto :goto_e3

    .line 1201
    .restart local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "errPfd":Landroid/os/ParcelFileDescriptor;
    :catchall_94
    move-exception v6

    if-eqz v5, :cond_9f

    :try_start_97
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_9f

    :catchall_9b
    move-exception v7

    :try_start_9c
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "callingUid":I
    .end local v1    # "result":I
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_9f
    :goto_9f
    throw v6
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_a0

    .end local v5    # "errPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "callingUid":I
    .restart local v1    # "result":I
    .restart local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "in":Ljava/io/FileDescriptor;
    .restart local p2    # "out":Ljava/io/FileDescriptor;
    .restart local p3    # "err":Ljava/io/FileDescriptor;
    .restart local p4    # "args":[Ljava/lang/String;
    .restart local p5    # "callback":Landroid/os/ShellCallback;
    .restart local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_a0
    move-exception v5

    if-eqz v4, :cond_ab

    :try_start_a3
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception v6

    :try_start_a8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "callingUid":I
    .end local v1    # "result":I
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_ab
    :goto_ab
    throw v5
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_ac

    .end local v4    # "outPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "callingUid":I
    .restart local v1    # "result":I
    .restart local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "in":Ljava/io/FileDescriptor;
    .restart local p2    # "out":Ljava/io/FileDescriptor;
    .restart local p3    # "err":Ljava/io/FileDescriptor;
    .restart local p4    # "args":[Ljava/lang/String;
    .restart local p5    # "callback":Landroid/os/ShellCallback;
    .restart local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_ac
    move-exception v4

    if-eqz v3, :cond_b7

    :try_start_af
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_b7

    :catchall_b3
    move-exception v5

    :try_start_b4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "callingUid":I
    .end local v1    # "result":I
    .end local p0    # "this":Landroid/os/Binder;
    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_b7
    :goto_b7
    throw v4
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b8} :catch_ba
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_b8

    .line 1210
    .end local v3    # "inPfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "callingUid":I
    .restart local v1    # "result":I
    .restart local p0    # "this":Landroid/os/Binder;
    .restart local p1    # "in":Ljava/io/FileDescriptor;
    .restart local p2    # "out":Ljava/io/FileDescriptor;
    .restart local p3    # "err":Ljava/io/FileDescriptor;
    .restart local p4    # "args":[Ljava/lang/String;
    .restart local p5    # "callback":Landroid/os/ShellCallback;
    .restart local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_b8
    move-exception v3

    goto :goto_e4

    .line 1205
    :catch_ba
    move-exception v3

    .line 1206
    .local v3, "e":Ljava/io/IOException;
    :try_start_bb
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1207
    .local v4, "pw":Ljava/io/PrintWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dup() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_e2
    .catchall {:try_start_bb .. :try_end_e2} :catchall_b8

    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    goto :goto_90

    .line 1212
    :goto_e3
    return-void

    .line 1210
    :goto_e4
    invoke-virtual {p6, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1211
    throw v3
.end method

.method protected whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const v0, 0x5f4e5446

    const/4 v4, 0x1

    if-ne v1, v0, :cond_14

    .line 925
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 926
    return v4

    .line 927
    :cond_14
    const v0, 0x5f444d50

    if-ne v1, v0, :cond_3d

    .line 928
    invoke-virtual {v2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 929
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 930
    .local v6, "args":[Ljava/lang/String;
    if-eqz v5, :cond_33

    .line 932
    :try_start_23
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    .line 934
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 935
    goto :goto_33

    .line 934
    :catchall_2e
    move-exception v0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 935
    throw v0

    .line 938
    :cond_33
    :goto_33
    if-eqz v3, :cond_39

    .line 939
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_3c

    .line 941
    :cond_39
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 943
    :goto_3c
    return v4

    .line 944
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "args":[Ljava/lang/String;
    :cond_3d
    const v0, 0x5f434d44

    if-ne v1, v0, :cond_ad

    .line 945
    invoke-virtual {v2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 946
    .local v5, "in":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 947
    .local v6, "out":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 948
    .local v7, "err":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 949
    .local v12, "args":[Ljava/lang/String;
    sget-object v0, Landroid/os/ShellCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/ShellCallback;

    .line 950
    .local v13, "shellCallback":Landroid/os/ShellCallback;
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/ResultReceiver;

    .line 952
    .local v14, "resultReceiver":Landroid/os/ResultReceiver;
    if-eqz v6, :cond_99

    .line 953
    if-eqz v5, :cond_6f

    :try_start_68
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_70

    .line 959
    :catchall_6d
    move-exception v0

    goto :goto_86

    .line 953
    :cond_6f
    const/4 v0, 0x0

    :goto_70
    move-object v9, v0

    .line 954
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    .line 955
    if-eqz v7, :cond_7c

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_80

    :cond_7c
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_80
    move-object v11, v0

    .line 953
    move-object v8, p0

    invoke-virtual/range {v8 .. v14}, Landroid/os/Binder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_85
    .catchall {:try_start_68 .. :try_end_85} :catchall_6d

    goto :goto_99

    .line 959
    :goto_86
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 960
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 961
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 963
    if-eqz v3, :cond_95

    .line 964
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_98

    .line 966
    :cond_95
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 968
    :goto_98
    throw v0

    .line 959
    :cond_99
    :goto_99
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 960
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 961
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 963
    if-eqz v3, :cond_a8

    .line 964
    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_ac

    .line 966
    :cond_a8
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 968
    nop

    .line 969
    :goto_ac
    return v4

    .line 971
    .end local v5    # "in":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "out":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "err":Landroid/os/ParcelFileDescriptor;
    .end local v12    # "args":[Ljava/lang/String;
    .end local v13    # "shellCallback":Landroid/os/ShellCallback;
    .end local v14    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_ad
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onUnhandledException(IILjava/lang/Exception;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "flags"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1134
    return-void
.end method

.method public whitelist pingBinder()Z
    .registers 2

    .line 770
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 789
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 790
    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    return-object v0

    .line 792
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist setExtension(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "extension"    # Landroid/os/IBinder;

    .line 1256
    iput-object p1, p0, Landroid/os/Binder;->mExtension:Landroid/os/IBinder;

    .line 1257
    invoke-direct {p0, p1}, Landroid/os/Binder;->setExtensionNative(Landroid/os/IBinder;)V

    .line 1258
    return-void
.end method

.method public greylist-max-o shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 7
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

    .line 1151
    invoke-virtual/range {p0 .. p6}, Landroid/os/Binder;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 1152
    return-void
.end method

.method public final whitelist transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1270
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 1271
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1273
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1274
    .local v1, "r":Z
    if-eqz p3, :cond_f

    .line 1275
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1277
    :cond_f
    return v1
.end method

.method public whitelist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 1290
    const/4 v0, 0x1

    return v0
.end method
