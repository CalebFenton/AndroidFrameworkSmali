.class public interface abstract Lcom/android/internal/telephony/IImsStateCallback;
.super Ljava/lang/Object;
.source "IImsStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IImsStateCallback$Stub;,
        Lcom/android/internal/telephony/IImsStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IImsStateCallback"


# virtual methods
.method public abstract blacklist onAvailable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUnavailable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
