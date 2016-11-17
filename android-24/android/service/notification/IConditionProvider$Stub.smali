.class public abstract Landroid/service/notification/IConditionProvider$Stub;
.super Landroid/os/Binder;
.source "IConditionProvider.java"

# interfaces
.implements Landroid/service/notification/IConditionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/IConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/IConditionProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.notification.IConditionProvider"

.field static final TRANSACTION_onConnected:I = 0x1

.field static final TRANSACTION_onSubscribe:I = 0x2

.field static final TRANSACTION_onUnsubscribe:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.service.notification.IConditionProvider"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/notification/IConditionProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;
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
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/notification/IConditionProvider;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/service/notification/IConditionProvider;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/notification/IConditionProvider$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/notification/IConditionProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v2

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 49
    invoke-virtual {p0}, Landroid/service/notification/IConditionProvider$Stub;->onConnected()V

    #@19
    .line 50
    return v2

    #@1a
    .line 54
    :sswitch_2
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    #@1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 57
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Landroid/net/Uri;

    #@2e
    .line 62
    :goto_0
    invoke-virtual {p0, v0}, Landroid/service/notification/IConditionProvider$Stub;->onSubscribe(Landroid/net/Uri;)V

    #@31
    .line 63
    return v2

    #@32
    .line 60
    :cond_0
    const/4 v0, 0x0

    #@33
    .local v0, "_arg0":Landroid/net/Uri;
    goto :goto_0

    #@34
    .line 67
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_3
    const-string/jumbo v1, "android.service.notification.IConditionProvider"

    #@37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_1

    #@40
    .line 70
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@42
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Landroid/net/Uri;

    #@48
    .line 75
    :goto_1
    invoke-virtual {p0, v0}, Landroid/service/notification/IConditionProvider$Stub;->onUnsubscribe(Landroid/net/Uri;)V

    #@4b
    .line 76
    return v2

    #@4c
    .line 73
    :cond_1
    const/4 v0, 0x0

    #@4d
    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_1

    #@4e
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
