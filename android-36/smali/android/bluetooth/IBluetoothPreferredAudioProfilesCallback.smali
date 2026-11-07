.class public interface abstract Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback;
.super Ljava/lang/Object;
.source "IBluetoothPreferredAudioProfilesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback$Stub;,
        Landroid/bluetooth/IBluetoothPreferredAudioProfilesCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothPreferredAudioProfilesCallback"


# virtual methods
.method public abstract blacklist onPreferredAudioProfilesChanged(Landroid/bluetooth/BluetoothDevice;Landroid/os/Bundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
