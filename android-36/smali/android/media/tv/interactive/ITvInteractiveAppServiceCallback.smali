.class public interface abstract Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
.super Ljava/lang/Object;
.source "ITvInteractiveAppServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;,
        Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.interactive.ITvInteractiveAppServiceCallback"


# virtual methods
.method public abstract blacklist onStateChanged(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
