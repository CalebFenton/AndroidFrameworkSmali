.class public interface abstract Landroid/app/IGameManager;
.super Ljava/lang/Object;
.source "IGameManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IGameManager$Stub;,
        Landroid/app/IGameManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IGameManager"


# virtual methods
.method public abstract blacklist getGameMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
