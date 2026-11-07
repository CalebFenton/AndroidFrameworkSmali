.class public Landroid/media/quality/IPictureProfileCallback$Default;
.super Ljava/lang/Object;
.source "IPictureProfileCallback.java"

# interfaces
.implements Landroid/media/quality/IPictureProfileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/IPictureProfileCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onError(Ljava/lang/String;I)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    .local p2, "caps":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/ParameterCapability;>;"
    return-void
.end method

.method public blacklist onPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "p"    # Landroid/media/quality/PictureProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "p"    # Landroid/media/quality/PictureProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "p"    # Landroid/media/quality/PictureProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
