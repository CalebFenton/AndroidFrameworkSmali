.class public interface abstract Landroid/media/IStreamAliasingDispatcher;
.super Ljava/lang/Object;
.source "IStreamAliasingDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IStreamAliasingDispatcher$Stub;,
        Landroid/media/IStreamAliasingDispatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.IStreamAliasingDispatcher"


# virtual methods
.method public abstract blacklist dispatchStreamAliasingChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
