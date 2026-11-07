.class public Landroid/adservices/adselection/PersistAdSelectionResultCallback$Default;
.super Ljava/lang/Object;
.source "PersistAdSelectionResultCallback.java"

# interfaces
.implements Landroid/adservices/adselection/PersistAdSelectionResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/PersistAdSelectionResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onFailure(Landroid/adservices/common/FledgeErrorResponse;)V
    .registers 2
    .param p1, "responseParcel"    # Landroid/adservices/common/FledgeErrorResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onSuccess(Landroid/adservices/adselection/PersistAdSelectionResultResponse;)V
    .registers 2
    .param p1, "outcomeParcel"    # Landroid/adservices/adselection/PersistAdSelectionResultResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
