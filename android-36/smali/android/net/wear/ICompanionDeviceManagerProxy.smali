.class public interface abstract Landroid/net/wear/ICompanionDeviceManagerProxy;
.super Ljava/lang/Object;
.source "ICompanionDeviceManagerProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wear/ICompanionDeviceManagerProxy$_Parcel;,
        Landroid/net/wear/ICompanionDeviceManagerProxy$Stub;,
        Landroid/net/wear/ICompanionDeviceManagerProxy$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wear.ICompanionDeviceManagerProxy"


# virtual methods
.method public abstract blacklist getAllAssociations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
