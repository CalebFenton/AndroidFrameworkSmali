.class public interface abstract Landroid/media/tv/extension/scan/IRegionChannelListListener;
.super Ljava/lang/Object;
.source "IRegionChannelListListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IRegionChannelListListener$Stub;,
        Landroid/media/tv/extension/scan/IRegionChannelListListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.IRegionChannelListListener"


# virtual methods
.method public abstract blacklist onDetectRegionChannelList([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
