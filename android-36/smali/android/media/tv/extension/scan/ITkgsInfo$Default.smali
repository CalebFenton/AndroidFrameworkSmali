.class public Landroid/media/tv/extension/scan/ITkgsInfo$Default;
.super Ljava/lang/Object;
.source "ITkgsInfo.java"

# interfaces
.implements Landroid/media/tv/extension/scan/ITkgsInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scan/ITkgsInfo;
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

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setPrefServiceList(Ljava/lang/String;)I
    .registers 3
    .param p1, "prefServiceList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTkgsInfoListener(Landroid/media/tv/extension/scan/ITkgsInfoListener;)I
    .registers 3
    .param p1, "listener"    # Landroid/media/tv/extension/scan/ITkgsInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method
