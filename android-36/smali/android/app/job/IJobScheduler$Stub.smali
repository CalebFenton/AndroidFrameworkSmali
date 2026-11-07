.class public abstract Landroid/app/job/IJobScheduler$Stub;
.super Landroid/os/Binder;
.source "IJobScheduler.java"

# interfaces
.implements Landroid/app/job/IJobScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobScheduler$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobScheduler"

.field static final blacklist PERMISSIONS_notePendingUserRequestedAppStop:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_registerUserVisibleJobObserver:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_unregisterUserVisibleJobObserver:[Ljava/lang/String;

.field static final blacklist TRANSACTION_canRunUserInitiatedJobs:I = 0xd

.field static final greylist-max-o TRANSACTION_cancel:I = 0x4

.field static final greylist-max-o TRANSACTION_cancelAll:I = 0x5

.field static final blacklist TRANSACTION_cancelAllInNamespace:I = 0x6

.field static final greylist-max-o TRANSACTION_enqueue:I = 0x2

.field static final blacklist TRANSACTION_getAllJobSnapshots:I = 0x10

.field static final greylist-max-o TRANSACTION_getAllPendingJobs:I = 0x7

.field static final blacklist TRANSACTION_getAllPendingJobsInNamespace:I = 0x8

.field static final greylist-max-o TRANSACTION_getPendingJob:I = 0x9

.field static final blacklist TRANSACTION_getPendingJobReason:I = 0xa

.field static final blacklist TRANSACTION_getPendingJobReasons:I = 0xb

.field static final blacklist TRANSACTION_getPendingJobReasonsHistory:I = 0xc

.field static final blacklist TRANSACTION_getStartedJobs:I = 0xf

.field static final blacklist TRANSACTION_hasRunUserInitiatedJobsPermission:I = 0xe

.field static final blacklist TRANSACTION_notePendingUserRequestedAppStop:I = 0x13

.field static final blacklist TRANSACTION_registerUserVisibleJobObserver:I = 0x11

.field static final greylist-max-o TRANSACTION_schedule:I = 0x1

.field static final greylist-max-o TRANSACTION_scheduleAsPackage:I = 0x3

.field static final blacklist TRANSACTION_unregisterUserVisibleJobObserver:I = 0x12


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 834
    const-string v0, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_registerUserVisibleJobObserver:[Ljava/lang/String;

    .line 840
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_unregisterUserVisibleJobObserver:[Ljava/lang/String;

    .line 846
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_notePendingUserRequestedAppStop:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    nop

    .line 112
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/job/IJobScheduler$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 113
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "android.app.job.IJobScheduler"

    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobScheduler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_d

    .line 106
    iput-object p1, p0, Landroid/app/job/IJobScheduler$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 107
    return-void

    .line 104
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobScheduler;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 120
    if-nez p0, :cond_4

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_4
    const-string v0, "android.app.job.IJobScheduler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 124
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/job/IJobScheduler;

    if-eqz v1, :cond_14

    .line 125
    move-object v1, v0

    check-cast v1, Landroid/app/job/IJobScheduler;

    return-object v1

    .line 127
    :cond_14
    new-instance v1, Landroid/app/job/IJobScheduler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/job/IJobScheduler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 136
    packed-switch p0, :pswitch_data_46

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 212
    :pswitch_5
    const-string/jumbo v0, "notePendingUserRequestedAppStop"

    return-object v0

    .line 208
    :pswitch_9
    const-string/jumbo v0, "unregisterUserVisibleJobObserver"

    return-object v0

    .line 204
    :pswitch_d
    const-string/jumbo v0, "registerUserVisibleJobObserver"

    return-object v0

    .line 200
    :pswitch_11
    const-string v0, "getAllJobSnapshots"

    return-object v0

    .line 196
    :pswitch_14
    const-string/jumbo v0, "getStartedJobs"

    return-object v0

    .line 192
    :pswitch_18
    const-string/jumbo v0, "hasRunUserInitiatedJobsPermission"

    return-object v0

    .line 188
    :pswitch_1c
    const-string v0, "canRunUserInitiatedJobs"

    return-object v0

    .line 184
    :pswitch_1f
    const-string v0, "getPendingJobReasonsHistory"

    return-object v0

    .line 180
    :pswitch_22
    const-string v0, "getPendingJobReasons"

    return-object v0

    .line 176
    :pswitch_25
    const-string v0, "getPendingJobReason"

    return-object v0

    .line 172
    :pswitch_28
    const-string v0, "getPendingJob"

    return-object v0

    .line 168
    :pswitch_2b
    const-string v0, "getAllPendingJobsInNamespace"

    return-object v0

    .line 164
    :pswitch_2e
    const-string v0, "getAllPendingJobs"

    return-object v0

    .line 160
    :pswitch_31
    const-string v0, "cancelAllInNamespace"

    return-object v0

    .line 156
    :pswitch_34
    const-string v0, "cancelAll"

    return-object v0

    .line 152
    :pswitch_37
    const-string v0, "cancel"

    return-object v0

    .line 148
    :pswitch_3a
    const-string/jumbo v0, "scheduleAsPackage"

    return-object v0

    .line 144
    :pswitch_3e
    const-string v0, "enqueue"

    return-object v0

    .line 140
    :pswitch_41
    const-string/jumbo v0, "schedule"

    return-object v0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/content/pm/ParceledListSlice;

    .line 316
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 318
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 131
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 854
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 223
    invoke-static {p1}, Landroid/app/job/IJobScheduler$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist notePendingUserRequestedAppStop_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 849
    iget-object v0, p0, Landroid/app/job/IJobScheduler$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_notePendingUserRequestedAppStop:[Ljava/lang/String;

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 850
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    const-string v0, "android.app.job.IJobScheduler"

    .line 228
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 229
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 232
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    return v1

    .line 235
    :cond_16
    packed-switch p1, :pswitch_data_1ce

    .line 449
    move-object v4, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 437
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 441
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/job/IJobScheduler$Stub;->notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    move-object v4, p0

    goto/16 :goto_1cd

    .line 428
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/job/IUserVisibleJobObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IUserVisibleJobObserver;

    move-result-object v2

    .line 429
    .local v2, "_arg0":Landroid/app/job/IUserVisibleJobObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v2}, Landroid/app/job/IJobScheduler$Stub;->unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    move-object v4, p0

    goto/16 :goto_1cd

    .line 419
    .end local v2    # "_arg0":Landroid/app/job/IUserVisibleJobObserver;
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/job/IUserVisibleJobObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IUserVisibleJobObserver;

    move-result-object v2

    .line 420
    .restart local v2    # "_arg0":Landroid/app/job/IUserVisibleJobObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v2}, Landroid/app/job/IJobScheduler$Stub;->registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    move-object v4, p0

    goto/16 :goto_1cd

    .line 411
    .end local v2    # "_arg0":Landroid/app/job/IUserVisibleJobObserver;
    :pswitch_5f
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 412
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 414
    move-object v4, p0

    goto/16 :goto_1cd

    .line 404
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_6c
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getStartedJobs()Ljava/util/List;

    move-result-object v2

    .line 405
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 407
    move-object v4, p0

    goto/16 :goto_1cd

    .line 393
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 396
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobScheduler$Stub;->hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z

    move-result v4

    .line 398
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 400
    move-object v4, p0

    goto/16 :goto_1cd

    .line 383
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v2}, Landroid/app/job/IJobScheduler$Stub;->canRunUserInitiatedJobs(Ljava/lang/String;)Z

    move-result v3

    .line 386
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 388
    move-object v4, p0

    goto/16 :goto_1cd

    .line 371
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 374
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobScheduler$Stub;->getPendingJobReasonsHistory(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 376
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/PendingJobReasonsInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 378
    move-object v4, p0

    goto/16 :goto_1cd

    .line 359
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/PendingJobReasonsInfo;>;"
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 361
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 362
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobScheduler$Stub;->getPendingJobReasons(Ljava/lang/String;I)[I

    move-result-object v4

    .line 364
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 366
    move-object v4, p0

    goto/16 :goto_1cd

    .line 347
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":[I
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobScheduler$Stub;->getPendingJobReason(Ljava/lang/String;I)I

    move-result v4

    .line 352
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    move-object v4, p0

    goto/16 :goto_1cd

    .line 335
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 337
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 338
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobScheduler$Stub;->getPendingJob(Ljava/lang/String;I)Landroid/app/job/JobInfo;

    move-result-object v4

    .line 340
    .local v4, "_result":Landroid/app/job/JobInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 342
    move-object v4, p0

    goto/16 :goto_1cd

    .line 325
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/app/job/JobInfo;
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v2}, Landroid/app/job/IJobScheduler$Stub;->getAllPendingJobsInNamespace(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 328
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/job/JobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 330
    move-object v4, p0

    goto/16 :goto_1cd

    .line 309
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/job/JobInfo;>;"
    :pswitch_119
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getAllPendingJobs()Ljava/util/Map;

    move-result-object v2

    .line 310
    .local v2, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ParceledListSlice<Landroid/app/job/JobInfo;>;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-nez v2, :cond_129

    .line 312
    const/4 v3, -0x1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v4, p0

    goto/16 :goto_1cd

    .line 314
    :cond_129
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    new-instance v3, Landroid/app/job/IJobScheduler$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Landroid/app/job/IJobScheduler$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 320
    move-object v4, p0

    goto/16 :goto_1cd

    .line 301
    .end local v2    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ParceledListSlice<Landroid/app/job/JobInfo;>;>;"
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2}, Landroid/app/job/IJobScheduler$Stub;->cancelAllInNamespace(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object v4, p0

    goto/16 :goto_1cd

    .line 294
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_14b
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->cancelAll()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    move-object v4, p0

    goto/16 :goto_1cd

    .line 284
    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobScheduler$Stub;->cancel(Ljava/lang/String;I)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object v4, p0

    goto :goto_1cd

    .line 266
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/app/job/JobInfo;

    .line 270
    .local v6, "_arg1":Landroid/app/job/JobInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 274
    .local v8, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/app/job/IJobScheduler$Stub;->scheduleAsPackage(Ljava/lang/String;Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 277
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto :goto_1cd

    .line 252
    .end local v2    # "_result":I
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/app/job/JobInfo;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    :pswitch_18f
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 256
    .local v3, "_arg1":Landroid/app/job/JobInfo;
    sget-object v5, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobWorkItem;

    .line 257
    .local v5, "_arg2":Landroid/app/job/JobWorkItem;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2, v3, v5}, Landroid/app/job/IJobScheduler$Stub;->enqueue(Ljava/lang/String;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result v6

    .line 259
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    goto :goto_1cd

    .line 240
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/job/JobInfo;
    .end local v5    # "_arg2":Landroid/app/job/JobWorkItem;
    .end local v6    # "_result":I
    :pswitch_1b2
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 243
    .restart local v3    # "_arg1":Landroid/app/job/JobInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobScheduler$Stub;->schedule(Ljava/lang/String;Landroid/app/job/JobInfo;)I

    move-result v5

    .line 245
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    nop

    .line 452
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/job/JobInfo;
    .end local v5    # "_result":I
    :goto_1cd
    return v1

    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_1b2
        :pswitch_18f
        :pswitch_167
        :pswitch_154
        :pswitch_14b
        :pswitch_13b
        :pswitch_119
        :pswitch_105
        :pswitch_ed
        :pswitch_d5
        :pswitch_bd
        :pswitch_a5
        :pswitch_91
        :pswitch_79
        :pswitch_6c
        :pswitch_5f
        :pswitch_4b
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist registerUserVisibleJobObserver_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 837
    iget-object v0, p0, Landroid/app/job/IJobScheduler$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_registerUserVisibleJobObserver:[Ljava/lang/String;

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 838
    return-void
.end method

.method protected blacklist unregisterUserVisibleJobObserver_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 843
    iget-object v0, p0, Landroid/app/job/IJobScheduler$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/job/IJobScheduler$Stub;->PERMISSIONS_unregisterUserVisibleJobObserver:[Ljava/lang/String;

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/job/IJobScheduler$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 844
    return-void
.end method
