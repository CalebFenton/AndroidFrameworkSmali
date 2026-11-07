.class public Landroid/media/session/IActiveSessionsListener$Default;
.super Ljava/lang/Object;
.source "IActiveSessionsListener.java"

# interfaces
.implements Landroid/media/session/IActiveSessionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/IActiveSessionsListener;
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

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onActiveSessionsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    return-void
.end method
