.class public final Landroid/provider/OemMetadataServiceWrapper;
.super Ljava/lang/Object;
.source "OemMetadataServiceWrapper.java"


# static fields
.field private static final blacklist DEFAULT_TIMEOUT_IN_SECONDS:J = 0x1L

.field private static final blacklist TAG:Ljava/lang/String; = "OemMetadataServiceWrapper"


# instance fields
.field private final blacklist mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mOemMetadataService:Landroid/provider/IOemMetadataService;

.field private final blacklist mServiceTimeoutInSeconds:J


# direct methods
.method public static synthetic blacklist $r8$lambda$1-jn4yCU2i1vFvg99EjUuYJQHks(Landroid/provider/OemMetadataServiceWrapper;Landroid/os/ParcelFileDescriptor;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0, p1}, Landroid/provider/OemMetadataServiceWrapper;->lambda$getOemCustomData$3(Landroid/os/ParcelFileDescriptor;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$4_JOO-Cj2TaFtfJYH9vGSecQywo(Landroid/provider/OemMetadataServiceWrapper;Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/provider/OemMetadataServiceWrapper;->lambda$getSupportedMimeTypes$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$SxAbmZR4SC49YRbNR3aiEn5icGo(Landroid/provider/OemMetadataServiceWrapper;Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/provider/OemMetadataServiceWrapper;->lambda$getOemCustomData$2(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x2gHcyrJyWzxwSk3uAFaW6kXERU(Landroid/provider/OemMetadataServiceWrapper;)Ljava/util/Set;
    .registers 1

    invoke-direct {p0}, Landroid/provider/OemMetadataServiceWrapper;->lambda$getSupportedMimeTypes$1()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/provider/IOemMetadataService;)V
    .registers 4
    .param p1, "oemMetadataService"    # Landroid/provider/IOemMetadataService;

    .line 62
    const-wide/16 v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/provider/OemMetadataServiceWrapper;-><init>(Landroid/provider/IOemMetadataService;J)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/provider/IOemMetadataService;J)V
    .registers 5
    .param p1, "oemMetadataService"    # Landroid/provider/IOemMetadataService;
    .param p2, "serviceTimeoutInSeconds"    # J

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Landroid/provider/OemMetadataServiceWrapper;->mOemMetadataService:Landroid/provider/IOemMetadataService;

    .line 70
    iput-wide p2, p0, Landroid/provider/OemMetadataServiceWrapper;->mServiceTimeoutInSeconds:J

    .line 71
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/OemMetadataServiceWrapper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 72
    return-void
.end method

.method private synthetic blacklist lambda$getOemCustomData$2(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 104
    invoke-direct {p0, p2, p1}, Landroid/provider/OemMetadataServiceWrapper;->setResultForGetOemCustomData(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method private synthetic blacklist lambda$getOemCustomData$3(Landroid/os/ParcelFileDescriptor;)Ljava/util/Map;
    .registers 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 103
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/provider/OemMetadataServiceWrapper;Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 105
    .local v1, "callback":Landroid/os/RemoteCallback;
    iget-object v2, p0, Landroid/provider/OemMetadataServiceWrapper;->mOemMetadataService:Landroid/provider/IOemMetadataService;

    invoke-interface {v2, p1, v1}, Landroid/provider/IOemMetadataService;->getOemCustomData(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method

.method private synthetic blacklist lambda$getSupportedMimeTypes$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 86
    invoke-direct {p0, p2, p1}, Landroid/provider/OemMetadataServiceWrapper;->setResultForGetSupportedMimeTypes(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method private synthetic blacklist lambda$getSupportedMimeTypes$1()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 85
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/provider/OemMetadataServiceWrapper;Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 87
    .local v1, "callback":Landroid/os/RemoteCallback;
    iget-object v2, p0, Landroid/provider/OemMetadataServiceWrapper;->mOemMetadataService:Landroid/provider/IOemMetadataService;

    invoke-interface {v2, v1}, Landroid/provider/IOemMetadataService;->getSupportedMimeTypes(Landroid/os/RemoteCallback;)V

    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    return-object v2
.end method

.method private blacklist setResultForGetOemCustomData(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V
    .registers 9
    .param p1, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 126
    .local p2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "android.provider.extra.OEM_DATA_KEYS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "android.provider.extra.OEM_DATA_VALUES"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v2, "oemCustomDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 130
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 131
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 133
    .end local v3    # "i":I
    :cond_36
    invoke-virtual {p2, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 134
    .end local v0    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "oemCustomDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_49

    .line 135
    :cond_3a
    const-string v0, "OemMetadataServiceWrapper"

    const-string v1, "No data received for getOemCustomData()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 138
    :goto_49
    return-void
.end method

.method private blacklist setResultForGetSupportedMimeTypes(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 113
    .local p2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v0, "android.provider.extra.OEM_SUPPORTED_MIME_TYPES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    .local v0, "supportedMimeTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticBackport0;->m(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 117
    .end local v0    # "supportedMimeTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_23

    .line 118
    :cond_14
    const-string v0, "OemMetadataServiceWrapper"

    const-string v1, "No data received for getSupportedMimeTypes()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 121
    :goto_23
    return-void
.end method


# virtual methods
.method public blacklist getOemCustomData(Landroid/os/ParcelFileDescriptor;)Ljava/util/Map;
    .registers 6
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->enableOemMetadata()Z

    move-result v0

    if-nez v0, :cond_c

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 101
    :cond_c
    iget-object v0, p0, Landroid/provider/OemMetadataServiceWrapper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/provider/OemMetadataServiceWrapper;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-wide v1, p0, Landroid/provider/OemMetadataServiceWrapper;->mServiceTimeoutInSeconds:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 107
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 101
    return-object v0
.end method

.method public blacklist getSupportedMimeTypes()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 79
    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->enableOemMetadata()Z

    move-result v0

    if-nez v0, :cond_c

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 83
    :cond_c
    iget-object v0, p0, Landroid/provider/OemMetadataServiceWrapper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/provider/OemMetadataServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/provider/OemMetadataServiceWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iget-wide v1, p0, Landroid/provider/OemMetadataServiceWrapper;->mServiceTimeoutInSeconds:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 89
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 83
    return-object v0
.end method
