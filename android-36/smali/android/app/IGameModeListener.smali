.class public interface abstract Landroid/app/IGameModeListener;
.super Ljava/lang/Object;
.source "IGameModeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IGameModeListener$Stub;,
        Landroid/app/IGameModeListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IGameModeListener"


# virtual methods
.method public abstract blacklist onGameModeChanged(Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
