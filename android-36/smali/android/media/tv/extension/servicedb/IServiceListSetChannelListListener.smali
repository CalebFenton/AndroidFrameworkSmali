.class public interface abstract Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener;
.super Ljava/lang/Object;
.source "IServiceListSetChannelListListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener$Stub;,
        Landroid/media/tv/extension/servicedb/IServiceListSetChannelListListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.servicedb.IServiceListSetChannelListListener"


# virtual methods
.method public abstract blacklist onCompleted(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
