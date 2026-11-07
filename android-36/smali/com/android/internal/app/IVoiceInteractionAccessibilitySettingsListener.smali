.class public interface abstract Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;
.super Ljava/lang/Object;
.source "IVoiceInteractionAccessibilitySettingsListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;,
        Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractionAccessibilitySettingsListener"


# virtual methods
.method public abstract blacklist onAccessibilityDetectionChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
