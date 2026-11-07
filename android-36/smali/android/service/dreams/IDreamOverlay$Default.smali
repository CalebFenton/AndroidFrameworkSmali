.class public Landroid/service/dreams/IDreamOverlay$Default;
.super Ljava/lang/Object;
.source "IDreamOverlay.java"

# interfaces
.implements Landroid/service/dreams/IDreamOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
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

.method public blacklist getClient(Landroid/service/dreams/IDreamOverlayClientCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/service/dreams/IDreamOverlayClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
