.class public interface abstract Lcom/android/internal/telephony/NitzStateMachine;
.super Ljava/lang/Object;
.source "NitzStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NitzStateMachine$DeviceStateImpl;,
        Lcom/android/internal/telephony/NitzStateMachine$DeviceState;
    }
.end annotation


# virtual methods
.method public abstract blacklist dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/telephony/IndentingPrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract blacklist dumpState(Ljava/io/PrintWriter;)V
.end method

.method public abstract blacklist handleAirplaneModeChanged(Z)V
.end method

.method public abstract blacklist handleCountryDetected(Ljava/lang/String;)V
.end method

.method public abstract blacklist handleCountryUnavailable()V
.end method

.method public abstract blacklist handleNetworkAvailable()V
.end method

.method public abstract blacklist handleNetworkUnavailable()V
.end method

.method public abstract blacklist handleNitzReceived(Lcom/android/internal/telephony/NitzSignal;)V
.end method
