.class public Landroid/app/contentsuggestions/IContentSuggestionsManager$Default;
.super Ljava/lang/Object;
.source "IContentSuggestionsManager.java"

# interfaces
.implements Landroid/app/contentsuggestions/IContentSuggestionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/IContentSuggestionsManager;
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

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "request"    # Landroid/app/contentsuggestions/ClassificationsRequest;
    .param p3, "callback"    # Landroid/app/contentsuggestions/IClassificationsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist isEnabled(ILcom/android/internal/os/IResultReceiver;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "interaction"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist provideContextBitmap(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageContextRequestExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist provideContextImage(IILandroid/os/Bundle;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "taskId"    # I
    .param p3, "imageContextRequestExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist resetTemporaryService(I)V
    .registers 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist setDefaultServiceEnabled(IZ)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist setTemporaryService(ILjava/lang/String;I)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "request"    # Landroid/app/contentsuggestions/SelectionsRequest;
    .param p3, "callback"    # Landroid/app/contentsuggestions/ISelectionsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
