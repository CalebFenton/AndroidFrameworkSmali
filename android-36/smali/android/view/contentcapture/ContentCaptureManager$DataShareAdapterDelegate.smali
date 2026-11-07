.class Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;
.super Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;
.source "ContentCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataShareAdapterDelegate"
.end annotation


# instance fields
.field private final blacklist mResourceManagerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "adapter"    # Landroid/view/contentcapture/DataShareWriteAdapter;
    .param p3, "resourceManager"    # Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    .line 1101
    invoke-direct {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;-><init>()V

    .line 1102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    invoke-virtual {p3, p0, p2, p1}, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->initializeForDelegate(Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;Landroid/view/contentcapture/DataShareWriteAdapter;Ljava/util/concurrent/Executor;)V

    .line 1107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->mResourceManagerReference:Ljava/lang/ref/WeakReference;

    .line 1108
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;Landroid/view/contentcapture/ContentCaptureManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;)V

    return-void
.end method

.method private blacklist clearHardReferences()V
    .registers 4

    .line 1158
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->mResourceManagerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    .line 1159
    .local v0, "resourceManager":Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;
    if-nez v0, :cond_14

    .line 1160
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t clear references, resource manager has been GC\'ed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void

    .line 1164
    :cond_14
    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->clearHardReferences(Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;)V

    .line 1165
    return-void
.end method

.method private blacklist executeAdapterMethodLocked(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 9
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/contentcapture/DataShareWriteAdapter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1135
    .local p1, "adapterFn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/contentcapture/DataShareWriteAdapter;>;"
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->mResourceManagerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    .line 1136
    .local v0, "resourceManager":Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;
    const-string v1, "Can\'t execute "

    if-nez v0, :cond_2b

    .line 1137
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "(), resource manager has been GC\'ed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return-void

    .line 1141
    :cond_2b
    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->getAdapter(Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;)Landroid/view/contentcapture/DataShareWriteAdapter;

    move-result-object v2

    .line 1142
    .local v2, "adapter":Landroid/view/contentcapture/DataShareWriteAdapter;
    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;->getExecutor(Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1144
    .local v3, "executor":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_4e

    if-nez v3, :cond_38

    goto :goto_4e

    .line 1149
    :cond_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1151
    .local v4, "identity":J
    :try_start_3c
    new-instance v1, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v2}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/view/contentcapture/DataShareWriteAdapter;)V

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_49

    .line 1153
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1154
    nop

    .line 1155
    return-void

    .line 1153
    :catchall_49
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1154
    throw v1

    .line 1145
    .end local v4    # "identity":J
    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "(), references are null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    return-void
.end method

.method static synthetic blacklist lambda$error$1(ILandroid/view/contentcapture/DataShareWriteAdapter;)V
    .registers 2
    .param p0, "errorCode"    # I
    .param p1, "adapter"    # Landroid/view/contentcapture/DataShareWriteAdapter;

    .line 1118
    invoke-interface {p1, p0}, Landroid/view/contentcapture/DataShareWriteAdapter;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$executeAdapterMethodLocked$2(Ljava/util/function/Consumer;Landroid/view/contentcapture/DataShareWriteAdapter;)V
    .registers 2
    .param p0, "adapterFn"    # Ljava/util/function/Consumer;
    .param p1, "adapter"    # Landroid/view/contentcapture/DataShareWriteAdapter;

    .line 1151
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$write$0(Landroid/os/ParcelFileDescriptor;Landroid/view/contentcapture/DataShareWriteAdapter;)V
    .registers 2
    .param p0, "destination"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "adapter"    # Landroid/view/contentcapture/DataShareWriteAdapter;

    .line 1113
    invoke-interface {p1, p0}, Landroid/view/contentcapture/DataShareWriteAdapter;->onWrite(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method public blacklist error(I)V
    .registers 4
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1118
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v1, "onError"

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->executeAdapterMethodLocked(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->clearHardReferences()V

    .line 1120
    return-void
.end method

.method public blacklist finish()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1130
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->clearHardReferences()V

    .line 1131
    return-void
.end method

.method public blacklist rejected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "onRejected"

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->executeAdapterMethodLocked(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 1125
    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->clearHardReferences()V

    .line 1126
    return-void
.end method

.method public blacklist write(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "destination"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1113
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const-string v1, "onWrite"

    invoke-direct {p0, v0, v1}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->executeAdapterMethodLocked(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 1114
    return-void
.end method
