.class public interface abstract Landroid/media/tv/extension/scan/ILcnV2ChannelListListener;
.super Ljava/lang/Object;
.source "ILcnV2ChannelListListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/ILcnV2ChannelListListener$Stub;,
        Landroid/media/tv/extension/scan/ILcnV2ChannelListListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.ILcnV2ChannelListListener"


# virtual methods
.method public abstract blacklist onDetectLcnV2ChannelList(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
