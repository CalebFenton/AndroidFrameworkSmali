.class public interface abstract Lcom/android/internal/telephony/INumberVerificationCallback;
.super Ljava/lang/Object;
.source "INumberVerificationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/INumberVerificationCallback$Stub;,
        Lcom/android/internal/telephony/INumberVerificationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.INumberVerificationCallback"


# virtual methods
.method public abstract blacklist onCallReceived(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onVerificationFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
