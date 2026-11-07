.class public interface abstract Landroid/media/tv/extension/scan/IRegionChannelList;
.super Ljava/lang/Object;
.source "IRegionChannelList.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IRegionChannelList$Stub;,
        Landroid/media/tv/extension/scan/IRegionChannelList$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.IRegionChannelList"


# virtual methods
.method public abstract blacklist setListener(Landroid/media/tv/extension/scan/IRegionChannelListListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setRegionChannelList(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
