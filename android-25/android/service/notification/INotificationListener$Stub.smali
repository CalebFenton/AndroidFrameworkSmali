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

.field static final TRANSACTION_onNotificationActionClick:I = 0xa

.field static final TRANSACTION_onNotificationClick:I = 0x9

.field static final TRANSACTION_onNotificationEnqueued:I = 0x7

.field static final TRANSACTION_onNotificationPosted:I = 0x2

.field static final TRANSACTION_onNotificationRankingUpdate:I = 0x4

.field static final TRANSACTION_onNotificationRemoved:I = 0x3

.field static final TRANSACTION_onNotificationRemovedReason:I = 0xb

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x8


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
    .locals 11
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 44
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@13
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v10

    #@1a
    if-eqz v10, :cond_0

    #@1c
    .line 51
    sget-object v10, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

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
    const/4 v10, 0x1

    #@28
    return v10

    #@29
    .line 54
    :cond_0
    const/4 v2, 0x0

    #@2a
    .local v2, "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_0

    #@2b
    .line 61
    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_2
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@2e
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@34
    move-result-object v10

    #@35
    invoke-static {v10}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    #@38
    move-result-object v1

    #@39
    .line 65
    .local v1, "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v10

    #@3d
    if-eqz v10, :cond_1

    #@3f
    .line 66
    sget-object v10, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44
    move-result-object v5

    #@45
    check-cast v5, Landroid/service/notification/NotificationRankingUpdate;

    #@47
    .line 71
    :goto_1
    invoke-virtual {p0, v1, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    #@4a
    .line 72
    const/4 v10, 0x1

    #@4b
    return v10

    #@4c
    .line 69
    :cond_1
    const/4 v5, 0x0

    #@4d
    .local v5, "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_1

    #@4e
    .line 76
    .end local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v5    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_3
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@51
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@57
    move-result-object v10

    #@58
    invoke-static {v10}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    #@5b
    move-result-object v1

    #@5c
    .line 80
    .restart local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v10

    #@60
    if-eqz v10, :cond_2

    #@62
    .line 81
    sget-object v10, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@64
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@67
    move-result-object v5

    #@68
    check-cast v5, Landroid/service/notification/NotificationRankingUpdate;

    #@6a
    .line 86
    :goto_2
    invoke-virtual {p0, v1, v5}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V

    #@6d
    .line 87
    const/4 v10, 0x1

    #@6e
    return v10

    #@6f
    .line 84
    :cond_2
    const/4 v5, 0x0

    #@70
    .restart local v5    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_2

    #@71
    .line 91
    .end local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v5    # "_arg1":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_4
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@74
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v10

    #@7b
    if-eqz v10, :cond_3

    #@7d
    .line 94
    sget-object v10, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7f
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@82
    move-result-object v2

    #@83
    check-cast v2, Landroid/service/notification/NotificationRankingUpdate;

    #@85
    .line 99
    :goto_3
    invoke-virtual {p0, v2}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V

    #@88
    .line 100
    const/4 v10, 0x1

    #@89
    return v10

    #@8a
    .line 97
    :cond_3
    const/4 v2, 0x0

    #@8b
    .restart local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    goto :goto_3

    #@8c
    .line 104
    .end local v2    # "_arg0":Landroid/service/notification/NotificationRankingUpdate;
    :sswitch_5
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@8f
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v0

    #@96
    .line 107
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onListenerHintsChanged(I)V

    #@99
    .line 108
    const/4 v10, 0x1

    #@9a
    return v10

    #@9b
    .line 112
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@9e
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a1
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a4
    move-result v0

    #@a5
    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/notification/INotificationListener$Stub;->onInterruptionFilterChanged(I)V

    #@a8
    .line 116
    const/4 v10, 0x1

    #@a9
    return v10

    #@aa
    .line 120
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@ad
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b3
    move-result-object v10

    #@b4
    invoke-static {v10}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;

    #@b7
    move-result-object v1

    #@b8
    .line 124
    .restart local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v4

    #@bc
    .line 126
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v10

    #@c0
    if-eqz v10, :cond_4

    #@c2
    const/4 v9, 0x1

    #@c3
    .line 127
    .local v9, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v1, v4, v9}, Landroid/service/notification/INotificationListener$Stub;->onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;IZ)V

    #@c6
    .line 128
    const/4 v10, 0x1

    #@c7
    return v10

    #@c8
    .line 126
    .end local v9    # "_arg2":Z
    :cond_4
    const/4 v9, 0x0

    #@c9
    goto :goto_4

    #@ca
    .line 132
    .end local v1    # "_arg0":Landroid/service/notification/IStatusBarNotificationHolder;
    .end local v4    # "_arg1":I
    :sswitch_8
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@cd
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    .line 136
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@d7
    move-result-wide v6

    #@d8
    .line 138
    .local v6, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@db
    move-result v10

    #@dc
    if-eqz v10, :cond_5

    #@de
    const/4 v9, 0x1

    #@df
    .line 139
    .restart local v9    # "_arg2":Z
    :goto_5
    invoke-virtual {p0, v3, v6, v7, v9}, Landroid/service/notification/INotificationListener$Stub;->onNotificationVisibilityChanged(Ljava/lang/String;JZ)V

    #@e2
    .line 140
    const/4 v10, 0x1

    #@e3
    return v10

    #@e4
    .line 138
    .end local v9    # "_arg2":Z
    :cond_5
    const/4 v9, 0x0

    #@e5
    goto :goto_5

    #@e6
    .line 144
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    :sswitch_9
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@e9
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec
    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ef
    move-result-object v3

    #@f0
    .line 148
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@f3
    move-result-wide v6

    #@f4
    .line 149
    .restart local v6    # "_arg1":J
    invoke-virtual {p0, v3, v6, v7}, Landroid/service/notification/INotificationListener$Stub;->onNotificationClick(Ljava/lang/String;J)V

    #@f7
    .line 150
    const/4 v10, 0x1

    #@f8
    return v10

    #@f9
    .line 154
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    :sswitch_a
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@fc
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ff
    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@102
    move-result-object v3

    #@103
    .line 158
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@106
    move-result-wide v6

    #@107
    .line 160
    .restart local v6    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@10a
    move-result v8

    #@10b
    .line 161
    .local v8, "_arg2":I
    invoke-virtual {p0, v3, v6, v7, v8}, Landroid/service/notification/INotificationListener$Stub;->onNotificationActionClick(Ljava/lang/String;JI)V

    #@10e
    .line 162
    const/4 v10, 0x1

    #@10f
    return v10

    #@110
    .line 166
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":I
    :sswitch_b
    const-string/jumbo v10, "android.service.notification.INotificationListener"

    #@113
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@116
    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@119
    move-result-object v3

    #@11a
    .line 170
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@11d
    move-result-wide v6

    #@11e
    .line 172
    .restart local v6    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@121
    move-result v8

    #@122
    .line 173
    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v3, v6, v7, v8}, Landroid/service/notification/INotificationListener$Stub;->onNotificationRemovedReason(Ljava/lang/String;JI)V

    #@125
    .line 174
    const/4 v10, 0x1

    #@126
    return v10

    #@127
    .line 39
    nop

    #@128
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
