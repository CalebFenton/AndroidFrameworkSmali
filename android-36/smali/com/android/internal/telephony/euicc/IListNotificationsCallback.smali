.class public interface abstract Lcom/android/internal/telephony/euicc/IListNotificationsCallback;
.super Ljava/lang/Object;
.source "IListNotificationsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IListNotificationsCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IListNotificationsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IListNotificationsCallback"


# virtual methods
.method public abstract blacklist onComplete(I[Landroid/telephony/euicc/EuiccNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
