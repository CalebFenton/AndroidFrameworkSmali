.class public interface abstract Landroid/uwb/IUwbVendorUciCallback;
.super Ljava/lang/Object;
.source "IUwbVendorUciCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/IUwbVendorUciCallback$Stub;,
        Landroid/uwb/IUwbVendorUciCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.uwb.IUwbVendorUciCallback"


# virtual methods
.method public abstract blacklist onVendorNotificationReceived(II[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVendorResponseReceived(II[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
