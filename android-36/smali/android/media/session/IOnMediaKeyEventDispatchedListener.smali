.class public interface abstract Landroid/media/session/IOnMediaKeyEventDispatchedListener;
.super Ljava/lang/Object;
.source "IOnMediaKeyEventDispatchedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/IOnMediaKeyEventDispatchedListener$Stub;,
        Landroid/media/session/IOnMediaKeyEventDispatchedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.session.IOnMediaKeyEventDispatchedListener"


# virtual methods
.method public abstract blacklist onMediaKeyEventDispatched(Landroid/view/KeyEvent;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
