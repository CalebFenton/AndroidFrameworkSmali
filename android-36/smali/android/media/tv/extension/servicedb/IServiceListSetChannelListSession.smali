.class public interface abstract Landroid/media/tv/extension/servicedb/IServiceListSetChannelListSession;
.super Ljava/lang/Object;
.source "IServiceListSetChannelListSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListSetChannelListSession$Stub;,
        Landroid/media/tv/extension/servicedb/IServiceListSetChannelListSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListSetChannelListSession"


# virtual methods
.method public abstract blacklist release()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setChannelList([Landroid/os/Bundle;Landroid/os/Bundle;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
