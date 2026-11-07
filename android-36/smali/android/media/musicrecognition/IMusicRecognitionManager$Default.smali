.class public Landroid/media/musicrecognition/IMusicRecognitionManager$Default;
.super Ljava/lang/Object;
.source "IMusicRecognitionManager.java"

# interfaces
.implements Landroid/media/musicrecognition/IMusicRecognitionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/IMusicRecognitionManager;
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

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist beginRecognition(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "recognitionRequest"    # Landroid/media/musicrecognition/RecognitionRequest;
    .param p2, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
