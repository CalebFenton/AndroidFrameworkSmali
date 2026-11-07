.class public Landroid/service/translation/ITranslationService$Default;
.super Ljava/lang/Object;
.source "ITranslationService.java"

# interfaces
.implements Landroid/service/translation/ITranslationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/translation/ITranslationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConnected(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .registers 4
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p2, "sessionId"    # I
    .param p3, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist onDisconnected()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V
    .registers 4
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method
