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

.field static final TRANSACTION_onRequestConditions:I = 0x2

.field static final TRANSACTION_onSubscribe:I = 0x3

.field static final TRANSACTION_onUnsubscribe:I = 0x4


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
    .locals 4
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
    const/4 v3, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.service.notification.IConditionProvider"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v3

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.service.notification.IConditionProvider"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 49
    invoke-virtual {p0}, Landroid/service/notification/IConditionProvider$Stub;->onConnected()V

    #@19
    .line 50
    return v3

    #@1a
    .line 54
    :sswitch_2
    const-string/jumbo v2, "android.service.notification.IConditionProvider"

    #@1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    .line 57
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/notification/IConditionProvider$Stub;->onRequestConditions(I)V

    #@27
    .line 58
    return v3

    #@28
    .line 62
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v2, "android.service.notification.IConditionProvider"

    #@2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_0

    #@34
    .line 65
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Landroid/net/Uri;

    #@3c
    .line 70
    :goto_0
    invoke-virtual {p0, v1}, Landroid/service/notification/IConditionProvider$Stub;->onSubscribe(Landroid/net/Uri;)V

    #@3f
    .line 71
    return v3

    #@40
    .line 68
    :cond_0
    const/4 v1, 0x0

    #@41
    .local v1, "_arg0":Landroid/net/Uri;
    goto :goto_0

    #@42
    .line 75
    .end local v1    # "_arg0":Landroid/net/Uri;
    :sswitch_4
    const-string/jumbo v2, "android.service.notification.IConditionProvider"

    #@45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_1

    #@4e
    .line 78
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@50
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    check-cast v1, Landroid/net/Uri;

    #@56
    .line 83
    :goto_1
    invoke-virtual {p0, v1}, Landroid/service/notification/IConditionProvider$Stub;->onUnsubscribe(Landroid/net/Uri;)V

    #@59
    .line 84
    return v3

    #@5a
    .line 81
    :cond_1
    const/4 v1, 0x0

    #@5b
    .restart local v1    # "_arg0":Landroid/net/Uri;
    goto :goto_1

    #@5c
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
