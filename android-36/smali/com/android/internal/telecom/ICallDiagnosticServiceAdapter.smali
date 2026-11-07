.class public interface abstract Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
.super Ljava/lang/Object;
.source "ICallDiagnosticServiceAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;,
        Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ICallDiagnosticServiceAdapter"


# virtual methods
.method public abstract blacklist clearDiagnosticMessage(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist displayDiagnosticMessage(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist overrideDisconnectMessage(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendDeviceToDeviceMessage(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
