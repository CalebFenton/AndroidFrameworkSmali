.class public Landroid/speech/IRecognitionServiceManager$Default;
.super Ljava/lang/Object;
.source "IRecognitionServiceManager.java"

# interfaces
.implements Landroid/speech/IRecognitionServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IRecognitionServiceManager;
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

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "clientToken"    # Landroid/os/IBinder;
    .param p3, "onDevice"    # Z
    .param p4, "callback"    # Landroid/speech/IRecognitionServiceManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist setTemporaryComponent(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
