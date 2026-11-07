.class public interface abstract Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;
.super Ljava/lang/Object;
.source "IGetEuiccChallengeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IGetEuiccChallengeCallback"


# virtual methods
.method public abstract blacklist onComplete(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
