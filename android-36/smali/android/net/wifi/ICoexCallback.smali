.class public interface abstract Landroid/net/wifi/ICoexCallback;
.super Ljava/lang/Object;
.source "ICoexCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ICoexCallback$_Parcel;,
        Landroid/net/wifi/ICoexCallback$Stub;,
        Landroid/net/wifi/ICoexCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.ICoexCallback"


# virtual methods
.method public abstract blacklist onCoexUnsafeChannelsChanged(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/CoexUnsafeChannel;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
