.class public interface abstract Lcom/android/internal/telecom/ICallDiagnosticService;
.super Ljava/lang/Object;
.source "ICallDiagnosticService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallDiagnosticService$Stub;,
        Lcom/android/internal/telecom/ICallDiagnosticService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ICallDiagnosticService"


# virtual methods
.method public abstract blacklist callQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist initializeDiagnosticCall(Landroid/telecom/ParcelableCall;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist receiveBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist receiveDeviceToDeviceMessage(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeDiagnosticCall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateCall(Landroid/telecom/ParcelableCall;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateCallAudioState(Landroid/telecom/CallAudioState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
