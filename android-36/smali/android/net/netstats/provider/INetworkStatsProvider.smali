.class public interface abstract Landroid/net/netstats/provider/INetworkStatsProvider;
.super Ljava/lang/Object;
.source "INetworkStatsProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netstats/provider/INetworkStatsProvider$Stub;,
        Landroid/net/netstats/provider/INetworkStatsProvider$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.netstats.provider.INetworkStatsProvider"


# virtual methods
.method public abstract blacklist onRequestStatsUpdate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSetAlert(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSetWarningAndLimit(Ljava/lang/String;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
