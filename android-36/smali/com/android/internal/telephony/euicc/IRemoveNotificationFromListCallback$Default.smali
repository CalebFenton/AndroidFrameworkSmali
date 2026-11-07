.class public Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback$Default;
.super Ljava/lang/Object;
.source "IRemoveNotificationFromListCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onComplete(I)V
    .registers 2
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
