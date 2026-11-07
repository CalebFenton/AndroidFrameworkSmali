.class public Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Default;
.super Ljava/lang/Object;
.source "ICallDiagnosticServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearDiagnosticMessage(Ljava/lang/String;I)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist displayDiagnosticMessage(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "messageId"    # I
    .param p3, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist overrideDisconnectMessage(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist sendDeviceToDeviceMessage(Ljava/lang/String;II)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
