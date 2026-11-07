.class public Landroid/net/wifi/IInterfaceCreationInfoCallback$Default;
.super Ljava/lang/Object;
.source "IInterfaceCreationInfoCallback.java"

# interfaces
.implements Landroid/net/wifi/IInterfaceCreationInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IInterfaceCreationInfoCallback;
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

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onResults(Z[I[Ljava/lang/String;)V
    .registers 4
    .param p1, "canCreate"    # Z
    .param p2, "interfacesToDelete"    # [I
    .param p3, "packagesForInterfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
