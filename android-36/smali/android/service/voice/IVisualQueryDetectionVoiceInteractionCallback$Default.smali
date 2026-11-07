.class public Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback$Default;
.super Ljava/lang/Object;
.source "IVisualQueryDetectionVoiceInteractionCallback.java"

# interfaces
.implements Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;
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

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onQueryDetected(Ljava/lang/String;)V
    .registers 2
    .param p1, "partialQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onQueryFinished()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onQueryRejected()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist onResultDetected(Landroid/service/voice/VisualQueryDetectedResult;)V
    .registers 2
    .param p1, "partialResult"    # Landroid/service/voice/VisualQueryDetectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .registers 2
    .param p1, "visualQueryDetectionServiceFailure"    # Landroid/service/voice/VisualQueryDetectionServiceFailure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method
