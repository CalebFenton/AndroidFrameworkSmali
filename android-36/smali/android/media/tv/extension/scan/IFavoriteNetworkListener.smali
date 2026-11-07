.class public interface abstract Landroid/media/tv/extension/scan/IFavoriteNetworkListener;
.super Ljava/lang/Object;
.source "IFavoriteNetworkListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IFavoriteNetworkListener$Stub;,
        Landroid/media/tv/extension/scan/IFavoriteNetworkListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.IFavoriteNetworkListener"


# virtual methods
.method public abstract blacklist onDetectFavoriteNetwork(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
