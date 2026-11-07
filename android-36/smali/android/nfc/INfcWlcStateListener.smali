.class public interface abstract Landroid/nfc/INfcWlcStateListener;
.super Ljava/lang/Object;
.source "INfcWlcStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcWlcStateListener$Stub;,
        Landroid/nfc/INfcWlcStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcWlcStateListener"


# virtual methods
.method public abstract blacklist onWlcStateChanged(Landroid/nfc/WlcListenerDeviceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
