.class public interface abstract Landroid/nfc/INfcVendorNciCallback;
.super Ljava/lang/Object;
.source "INfcVendorNciCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcVendorNciCallback$Stub;,
        Landroid/nfc/INfcVendorNciCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcVendorNciCallback"


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
