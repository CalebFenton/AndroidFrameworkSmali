.class public Landroid/service/euicc/IDownloadSubscriptionCallback$Default;
.super Ljava/lang/Object;
.source "IDownloadSubscriptionCallback.java"

# interfaces
.implements Landroid/service/euicc/IDownloadSubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IDownloadSubscriptionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onComplete(Landroid/service/euicc/DownloadSubscriptionResult;)V
    .registers 2
    .param p1, "result"    # Landroid/service/euicc/DownloadSubscriptionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
