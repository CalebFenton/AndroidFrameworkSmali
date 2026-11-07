.class public interface abstract Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;
.super Ljava/lang/Object;
.source "IRetrieveNotificationListCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IRetrieveNotificationListCallback"


# virtual methods
.method public abstract blacklist onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
