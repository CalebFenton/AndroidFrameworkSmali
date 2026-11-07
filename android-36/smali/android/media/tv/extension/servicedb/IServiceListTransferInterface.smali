.class public interface abstract Landroid/media/tv/extension/servicedb/IServiceListTransferInterface;
.super Ljava/lang/Object;
.source "IServiceListTransferInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Stub;,
        Landroid/media/tv/extension/servicedb/IServiceListTransferInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListTransferInterface"


# virtual methods
.method public abstract blacklist createExportSession(Landroid/media/tv/extension/servicedb/IServiceListExportListener;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createImportSession(Landroid/media/tv/extension/servicedb/IServiceListImportListener;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createSetChannelListSession(Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
