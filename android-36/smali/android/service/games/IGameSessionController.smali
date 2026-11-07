.class public interface abstract Landroid/service/games/IGameSessionController;
.super Ljava/lang/Object;
.source "IGameSessionController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/IGameSessionController$Stub;,
        Landroid/service/games/IGameSessionController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.games.IGameSessionController"


# virtual methods
.method public abstract blacklist restartGame(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
