.class Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;
.super Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;
.source "EmbeddedPhotoPickerClientWrapper.java"


# instance fields
.field private final blacklist mClientCallback:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

.field private final blacklist mClientExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;


# direct methods
.method public static synthetic blacklist $r8$lambda$6xRw1U41hkjjdi6rb0HrhjlQVlQ(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->lambda$onUriPermissionGranted$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9YBNQ3KGs3BC4YDKHSclwRZaQWU(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Landroid/widget/photopicker/ParcelableException;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->lambda$onSessionError$1(Landroid/widget/photopicker/ParcelableException;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X0voVQYqch0N_ABOFKgxaUdEJoY(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->lambda$onSelectionComplete$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m5cNdZsi7TuwTZ9aToSyRmU7LfQ(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->lambda$onUriPermissionRevoked$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nha_geI2BLB246yxab_PWFjmqMI(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Landroid/widget/photopicker/EmbeddedPhotoPickerSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->lambda$onSessionOpened$0(Landroid/widget/photopicker/EmbeddedPhotoPickerSession;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "provider"    # Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;
    .param p2, "clientCallback"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClient;
    .param p3, "clientExecutor"    # Ljava/util/concurrent/Executor;

    .line 53
    invoke-direct {p0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerClient$Stub;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;

    .line 55
    iput-object p2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientCallback:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    .line 56
    iput-object p3, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 57
    return-void
.end method

.method private synthetic blacklist lambda$onSelectionComplete$4()V
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientCallback:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    invoke-interface {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerClient;->onSelectionComplete()V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionError$1(Landroid/widget/photopicker/ParcelableException;)V
    .registers 4
    .param p1, "exception"    # Landroid/widget/photopicker/ParcelableException;

    .line 70
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientCallback:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    invoke-virtual {p1}, Landroid/widget/photopicker/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClient;->onSessionError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSessionOpened$0(Landroid/widget/photopicker/EmbeddedPhotoPickerSession;)V
    .registers 3
    .param p1, "session"    # Landroid/widget/photopicker/EmbeddedPhotoPickerSession;

    .line 63
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientCallback:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    invoke-interface {v0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClient;->onSessionOpened(Landroid/widget/photopicker/EmbeddedPhotoPickerSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUriPermissionGranted$2(Ljava/util/List;)V
    .registers 3
    .param p1, "uris"    # Ljava/util/List;

    .line 75
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientCallback:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    invoke-interface {v0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClient;->onUriPermissionGranted(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUriPermissionRevoked$3(Ljava/util/List;)V
    .registers 3
    .param p1, "uris"    # Ljava/util/List;

    .line 80
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientCallback:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    invoke-interface {v0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClient;->onUriPermissionRevoked(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onSelectionComplete()V
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public blacklist onSessionError(Landroid/widget/photopicker/ParcelableException;)V
    .registers 4
    .param p1, "exception"    # Landroid/widget/photopicker/ParcelableException;

    .line 69
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientCallback:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    invoke-virtual {v0, v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;->onSessionClosed(Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V

    .line 70
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Landroid/widget/photopicker/ParcelableException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public blacklist onSessionOpened(Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;)V
    .registers 5
    .param p1, "response"    # Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;

    .line 61
    new-instance v0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;

    iget-object v2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientCallback:Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    invoke-direct {v0, v1, p1, v2, p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionWrapper;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;)V

    .line 63
    .local v0, "session":Landroid/widget/photopicker/EmbeddedPhotoPickerSession;
    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Landroid/widget/photopicker/EmbeddedPhotoPickerSession;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public blacklist onUriPermissionGranted(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public blacklist onUriPermissionRevoked(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method
