.class public interface abstract Landroid/media/tv/extension/event/IEventDownloadListener;
.super Ljava/lang/Object;
.source "IEventDownloadListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/event/IEventDownloadListener$Stub;,
        Landroid/media/tv/extension/event/IEventDownloadListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.event.IEventDownloadListener"


# virtual methods
.method public abstract blacklist onCompleted(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
