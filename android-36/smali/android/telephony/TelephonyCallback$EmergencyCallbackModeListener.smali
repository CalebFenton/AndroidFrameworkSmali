.class public interface abstract Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;
.super Ljava/lang/Object;
.source "TelephonyCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmergencyCallbackModeListener"
.end annotation


# virtual methods
.method public abstract whitelist onCallbackModeRestarted(ILjava/time/Duration;I)V
.end method

.method public abstract whitelist onCallbackModeStarted(ILjava/time/Duration;I)V
.end method

.method public abstract whitelist onCallbackModeStopped(III)V
.end method
