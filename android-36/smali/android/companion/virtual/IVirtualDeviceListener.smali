.class public interface abstract Landroid/companion/virtual/IVirtualDeviceListener;
.super Ljava/lang/Object;
.source "IVirtualDeviceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDeviceListener$Stub;,
        Landroid/companion/virtual/IVirtualDeviceListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.IVirtualDeviceListener"


# virtual methods
.method public abstract blacklist onVirtualDeviceClosed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVirtualDeviceCreated(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
