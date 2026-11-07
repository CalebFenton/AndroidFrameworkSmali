.class public Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback$Default;
.super Ljava/lang/Object;
.source "IQueryDocumentProvidersCallback.java"

# interfaces
.implements Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onError(Landroid/health/connect/aidl/HealthConnectExceptionParcel;)V
    .registers 2
    .param p1, "exception"    # Landroid/health/connect/aidl/HealthConnectExceptionParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onResult(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/exportimport/ExportImportDocumentProvider;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/exportimport/ExportImportDocumentProvider;>;"
    return-void
.end method
