.class public Landroid/provider/mediacognitionutils/IMediaCognitionService$Default;
.super Ljava/lang/Object;
.source "IMediaCognitionService.java"

# interfaces
.implements Landroid/provider/mediacognitionutils/IMediaCognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/mediacognitionutils/IMediaCognitionService;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProcessingVersions(Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;)V
    .registers 2
    .param p1, "callback"    # Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist processMedia(Ljava/util/List;Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;)V
    .registers 3
    .param p2, "callback"    # Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MediaCognitionProcessingRequest;",
            ">;",
            "Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MediaCognitionProcessingRequest;>;"
    return-void
.end method
