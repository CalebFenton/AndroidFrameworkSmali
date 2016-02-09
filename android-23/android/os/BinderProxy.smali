.class final Landroid/os/BinderProxy;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# instance fields
.field private mObject:J

.field private mOrgue:J

.field private final mSelf:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 541
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/os/BinderProxy;->mSelf:Ljava/lang/ref/WeakReference;

    #@a
    .line 540
    return-void
.end method

.method private final native destroy()V
.end method

.method private static final sendDeathNotice(Landroid/os/IBinder$DeathRecipient;)V
    .locals 3
    .param p0, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    #@0
    .prologue
    .line 558
    :try_start_0
    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 555
    :goto_0
    return-void

    #@4
    .line 560
    :catch_0
    move-exception v0

    #@5
    .line 561
    .local v0, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "BinderNative"

    #@8
    const-string/jumbo v2, "Uncaught exception from death notification"

    #@b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 515
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 516
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@b
    .line 517
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@e
    .line 519
    const v2, 0x5f444d50

    #@11
    const/4 v3, 0x0

    #@12
    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 520
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 513
    return-void

    #@1f
    .line 521
    :catchall_0
    move-exception v2

    #@20
    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 521
    throw v2
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 529
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 530
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@b
    .line 531
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@e
    .line 533
    const v2, 0x5f444d50

    #@11
    const/4 v3, 0x1

    #@12
    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@18
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 527
    return-void

    #@1c
    .line 534
    :catchall_0
    move-exception v2

    #@1d
    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 534
    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 547
    :try_start_0
    invoke-direct {p0}, Landroid/os/BinderProxy;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 549
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 545
    return-void

    #@7
    .line 548
    :catchall_0
    move-exception v0

    #@8
    .line 549
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 548
    throw v0
.end method

.method public native getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native isBinderAlive()Z
.end method

.method public native linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native pingBinder()Z
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 498
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 502
    const-string/jumbo v0, "Unreasonably large binder buffer"

    #@3
    invoke-static {p0, p1, p2, v0}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    #@6
    .line 503
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public native transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
.end method
