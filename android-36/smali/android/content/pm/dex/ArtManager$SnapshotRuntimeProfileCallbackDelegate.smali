.class Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;
.super Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;
.source "ArtManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/dex/ArtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapshotRuntimeProfileCallbackDelegate"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$21pNClgTMWoAr0RSVvawUhQ6sRQ(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->lambda$onSuccess$0(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_MufdNm79dDmFdAjzw9UI_IMuv8(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->lambda$onError$1(I)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 167
    invoke-direct {p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;-><init>()V

    .line 168
    iput-object p1, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mCallback:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;

    .line 169
    iput-object p2, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 170
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;Ljava/util/concurrent/Executor;Landroid/content/pm/dex/ArtManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;-><init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$1(I)V
    .registers 3
    .param p1, "errCode"    # I

    .line 179
    iget-object v0, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mCallback:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;

    invoke-virtual {v0, p1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "profileReadFd"    # Landroid/os/ParcelFileDescriptor;

    .line 174
    iget-object v0, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mCallback:Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;

    invoke-virtual {v0, p1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;->onSuccess(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onError(I)V
    .registers 4
    .param p1, "errCode"    # I

    .line 179
    iget-object v0, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public greylist-max-o onSuccess(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "profileReadFd"    # Landroid/os/ParcelFileDescriptor;

    .line 174
    iget-object v0, p0, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallbackDelegate;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method
