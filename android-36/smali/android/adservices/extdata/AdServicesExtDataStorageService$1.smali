.class Landroid/adservices/extdata/AdServicesExtDataStorageService$1;
.super Landroid/adservices/extdata/IAdServicesExtDataStorageService$Stub;
.source "AdServicesExtDataStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/extdata/AdServicesExtDataStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/adservices/extdata/AdServicesExtDataStorageService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/adservices/extdata/AdServicesExtDataStorageService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Landroid/adservices/extdata/IAdServicesExtDataStorageService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAdServicesExtData(Landroid/adservices/extdata/IGetAdServicesExtDataCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/adservices/extdata/IGetAdServicesExtDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "AdServicesExtDataStorageService is not implemented."

    invoke-interface {p1, v0}, Landroid/adservices/extdata/IGetAdServicesExtDataCallback;->onError(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public blacklist putAdServicesExtData(Landroid/adservices/extdata/AdServicesExtDataParams;[ILandroid/adservices/extdata/IGetAdServicesExtDataCallback;)V
    .registers 5
    .param p1, "params"    # Landroid/adservices/extdata/AdServicesExtDataParams;
    .param p2, "adServicesExtDataFields"    # [I
    .param p3, "callback"    # Landroid/adservices/extdata/IGetAdServicesExtDataCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "AdServicesExtDataStorageService is not implemented."

    invoke-interface {p3, v0}, Landroid/adservices/extdata/IGetAdServicesExtDataCallback;->onError(Ljava/lang/String;)V

    .line 131
    return-void
.end method
