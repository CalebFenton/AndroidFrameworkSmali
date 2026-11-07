.class public Landroid/app/IGameStateListener$Default;
.super Ljava/lang/Object;
.source "IGameStateListener.java"

# interfaces
.implements Landroid/app/IGameStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IGameStateListener;
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

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onGameStateChanged(Ljava/lang/String;Landroid/app/GameState;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/app/GameState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
