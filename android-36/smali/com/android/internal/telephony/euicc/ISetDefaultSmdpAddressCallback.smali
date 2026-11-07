.class public interface abstract Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;
.super Ljava/lang/Object;
.source "ISetDefaultSmdpAddressCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback$Stub;,
        Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.ISetDefaultSmdpAddressCallback"


# virtual methods
.method public abstract blacklist onComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
