.class public Landroid/service/ondeviceintelligence/IRemoteStorageService$Default;
.super Ljava/lang/Object;
.source "IRemoteStorageService.java"

# interfaces
.implements Landroid/service/ondeviceintelligence/IRemoteStorageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ondeviceintelligence/IRemoteStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    .registers 3
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    .local p2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    return-void
.end method
