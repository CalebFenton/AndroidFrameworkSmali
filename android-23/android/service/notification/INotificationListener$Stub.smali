.class public abstract Landroid/service/notification/INotificationListener$Stub;
.super Landroid/os/Binder;
.source "INotificationListener.java"

# interfaces
.implements Landroid/service/notification/INotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/INotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/INotificationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.notification.INotificationListener"

.field static final TRANSACTION_onInterruptionFilterChanged:I = 0x6

.field static final TRANSACTION_onListenerConnected:I = 0x1

.field static final TRANSACTION_onListenerHintsChanged:I = 0x5

.field static final TRANSACTION_onNotificationPosted:I = 0x2

.field static final TRANSACTION_onNotificationRankingUpdate:I = 0x4

.field static final TRANSACTION_onNotificationRemoved:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.service.notification.INotificationListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/notification/INotificationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;
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
    const-string/jumbo v1, "android.service.notification.INotificationListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/notification/INotificationListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/service/notification/INotificationListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/notification/INotificationListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/notification/INotificationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.service.notification.INotificationListener"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v5

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.service.notification.INotificationListener"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 51
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    #@24
    .line 56
    :goto_0
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V

    #@27
    .line 57
    return v5

    #@28
    .line 54
    :cond_0
    const/4 v2, 0x0

    #@29
    .local v2, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_0

    #@2a
    .line 61
    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_2
    const-string/jumbo v4, "android.service.notification.INotificationListener"

    #@2d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@33
    move-result-object v4

    #@34
    invoke-static {v4}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    #@37
    move-result-object v1

    #@38
    .line 65
    .local v1, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_1

    #@3e
    .line 66
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43
    move-result-object v3

    #@44
    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    #@46
    .line 71
    :goto_1
    invoke-virtual {p0, v1, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    #@49
    .line 72
    return v5

    #@4a
    .line 69
    :cond_1
    const/4 v3, 0x0

    #@4b
    .local v3, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_1

    #@4c
    .line 76
    .end local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_3
    const-string/jumbo v4, "android.service.notification.INotificationListener"

    #@4f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@55
    move-result-object v4

    #@56
    invoke-static {v4}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    #@59
    move-result-object v1

    #@5a
    .line 80
    .restart local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_2

    #@60
    .line 81
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@65
    move-result-object v3

    #@66
    check-cast v3, Landroid/service/notification/NotificationRankingUpdate;

    #@68
    .line 86
    :goto_2
    invoke-virtual {p0, v1, v3}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    #@6b
    .line 87
    return v5

    #@6c
    .line 84
    :cond_2
    const/4 v3, 0x0

    #@6d
    .restart local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_2

    #@6e
    .line 91
    .end local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v3    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_4
    const-string/jumbo v4, "android.service.notification.INotificationListener"

    #@71
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v4

    #@78
    if-eqz v4, :cond_3

    #@7a
    .line 94
    sget-object v4, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7c
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7f
    move-result-object v2

    #@80
    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    #@82
    .line 99
    :goto_3
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    #@85
    .line 100
    return v5

    #@86
    .line 97
    :cond_3
    const/4 v2, 0x0

    #@87
    .restart local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_3

    #@88
    .line 104
    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_5
    const-string/jumbo v4, "android.service.notification.INotificationListener"

    #@8b
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@91
    move-result v0

    #@92
    .line 107
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onListenerHintsChanged(I)V

    #@95
    .line 108
    return v5

    #@96
    .line 112
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v4, "android.service.notification.INotificationListener"

    #@99
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v0

    #@a0
    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onInterruptionFilterChanged(I)V

    #@a3
    .line 116
    return v5

    #@a4
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
