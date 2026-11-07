.class public interface abstract Landroid/app/IGameStateListener;
.super Ljava/lang/Object;
.source "IGameStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IGameStateListener$Stub;,
        Landroid/app/IGameStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IGameStateListener"


# virtual methods
.method public abstract blacklist onGameStateChanged(Ljava/lang/String;Landroid/app/GameState;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
