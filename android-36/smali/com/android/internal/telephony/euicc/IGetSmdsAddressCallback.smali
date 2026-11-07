.class public interface abstract Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;
.super Ljava/lang/Object;
.source "IGetSmdsAddressCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IGetSmdsAddressCallback"


# virtual methods
.method public abstract blacklist onComplete(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
