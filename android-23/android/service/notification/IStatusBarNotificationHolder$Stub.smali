.class public abstract Landroid/service/notification/IStatusBarNotificationHolder$Stub;
.super Landroid/os/Binder;
.source "IStatusBarNotificationHolder.java"

# interfaces
.implements Landroid/service/notification/IStatusBarNotificationHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/IStatusBarNotificationHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.notification.IStatusBarNotificationHolder"

.field static final TRANSACTION_get:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.service.notification.IStatusBarNotificationHolder"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.service.notification.IStatusBarNotificationHolder"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/notification/IStatusBarNotificationHolder;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/service/notification/IStatusBarNotificationHolder;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v1, "android.service.notification.IStatusBarNotificationHolder"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v2

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v1, "android.service.notification.IStatusBarNotificationHolder"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 49
    invoke-virtual {p0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->get()Landroid/service/notification/StatusBarNotification;

    #@19
    move-result-object v0

    #@1a
    .line 50
    .local v0, "_result":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    .line 51
    if-eqz v0, :cond_0

    #@1f
    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 53
    invoke-virtual {v0, p3, v2}, Landroid/service/notification/StatusBarNotification;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 58
    :goto_0
    return v2

    #@26
    .line 56
    :cond_0
    const/4 v1, 0x0

    #@27
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    goto :goto_0

    #@2b
    .line 39
    nop

    #@2c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
