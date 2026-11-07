.class public interface abstract Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
.super Ljava/lang/Object;
.source "IOnMediaKeyEventSessionChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Stub;,
        Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.session.IOnMediaKeyEventSessionChangedListener"


# virtual methods
.method public abstract blacklist onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
