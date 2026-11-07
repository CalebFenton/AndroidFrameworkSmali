.class public interface abstract Landroid/media/tv/extension/event/IEventDownload;
.super Ljava/lang/Object;
.source "IEventDownload.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/event/IEventDownload$Stub;,
        Landroid/media/tv/extension/event/IEventDownload$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.event.IEventDownload"


# virtual methods
.method public abstract blacklist createSession(Landroid/os/Bundle;Landroid/media/tv/extension/event/IEventDownloadListener;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
