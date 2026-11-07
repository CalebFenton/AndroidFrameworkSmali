.class public interface abstract Landroid/service/games/IGameServiceController;
.super Ljava/lang/Object;
.source "IGameServiceController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/IGameServiceController$Stub;,
        Landroid/service/games/IGameServiceController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.games.IGameServiceController"


# virtual methods
.method public abstract blacklist createGameSession(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
