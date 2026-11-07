.class public Landroid/media/IMediaTranscodingService$Default;
.super Ljava/lang/Object;
.source "IMediaTranscodingService.java"

# interfaces
.implements Landroid/media/IMediaTranscodingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaTranscodingService;
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
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getNumOfClients()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist registerClient(Landroid/media/ITranscodingClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/media/ITranscodingClient;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
