.class public interface abstract Landroid/media/tv/extension/scan/IFavoriteNetwork;
.super Ljava/lang/Object;
.source "IFavoriteNetwork.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IFavoriteNetwork$Stub;,
        Landroid/media/tv/extension/scan/IFavoriteNetwork$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.IFavoriteNetwork"


# virtual methods
.method public abstract blacklist getFavoriteNetworks()[Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setFavoriteNetwork(Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setListener(Landroid/media/tv/extension/scan/IFavoriteNetworkListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
