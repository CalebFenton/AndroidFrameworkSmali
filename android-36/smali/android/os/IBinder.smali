.class public interface abstract Landroid/os/IBinder;
.super Ljava/lang/Object;
.source "IBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IBinder$FrozenStateChangeCallback;,
        Landroid/os/IBinder$DeathRecipient;
    }
.end annotation


# static fields
.field public static final whitelist DUMP_TRANSACTION:I = 0x5f444d50

.field public static final whitelist FIRST_CALL_TRANSACTION:I = 0x1

.field public static final blacklist FLAG_CLEAR_BUF:I = 0x20

.field public static final blacklist FLAG_COLLECT_NOTED_APP_OPS:I = 0x2

.field public static final whitelist FLAG_ONEWAY:I = 0x1

.field public static final whitelist INTERFACE_TRANSACTION:I = 0x5f4e5446

.field public static final whitelist LAST_CALL_TRANSACTION:I = 0xffffff

.field public static final whitelist LIKE_TRANSACTION:I = 0x5f4c494b

.field public static final greylist-max-o MAX_IPC_SIZE:I = 0x10000

.field public static final whitelist PING_TRANSACTION:I = 0x5f504e47

.field public static final greylist-max-o SHELL_COMMAND_TRANSACTION:I = 0x5f434d44

.field public static final greylist-max-r SYSPROPS_TRANSACTION:I = 0x5f535052

.field public static final whitelist TWEET_TRANSACTION:I = 0x5f545754


# direct methods
.method public static whitelist getSuggestedMaxIpcSizeBytes()I
    .registers 1

    .line 206
    const/high16 v0, 0x10000

    return v0
.end method


# virtual methods
.method public blacklist addFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/IBinder$FrozenStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0, p1}, Landroid/os/IBinder;->addFrozenStateChangeCallback(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;)V

    .line 474
    return-void
.end method

.method public whitelist addFrozenStateChangeCallback(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/os/IBinder$FrozenStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public blacklist getExtension()Landroid/os/IBinder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist isBinderAlive()Z
.end method

.method public abstract whitelist linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist pingBinder()Z
.end method

.method public abstract whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
.end method

.method public whitelist removeFrozenStateChangeCallback(Landroid/os/IBinder$FrozenStateChangeCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/os/IBinder$FrozenStateChangeCallback;

    .line 482
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract greylist-max-o shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
.end method
