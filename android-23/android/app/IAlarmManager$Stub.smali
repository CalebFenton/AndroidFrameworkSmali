.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final TRANSACTION_getNextAlarmClock:I = 0x6

.field static final TRANSACTION_getNextWakeFromIdleTime:I = 0x5

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_set:I = 0x1

.field static final TRANSACTION_setTime:I = 0x2

.field static final TRANSACTION_setTimeZone:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.app.IAlarmManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.app.IAlarmManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IAlarmManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/app/IAlarmManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IAlarmManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 146
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.app.IAlarmManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.app.IAlarmManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v5

    #@1e
    .line 56
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@21
    move-result-wide v6

    #@22
    .line 58
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@25
    move-result-wide v8

    #@26
    .line 60
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@29
    move-result-wide v10

    #@2a
    .line 62
    .local v10, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v12

    #@2e
    .line 64
    .local v12, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_0

    #@34
    .line 65
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36
    move-object/from16 v0, p2

    #@38
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v13

    #@3c
    check-cast v13, Landroid/app/PendingIntent;

    #@3e
    .line 71
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_1

    #@44
    .line 72
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46
    move-object/from16 v0, p2

    #@48
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4b
    move-result-object v14

    #@4c
    check-cast v14, Landroid/os/WorkSource;

    #@4e
    .line 78
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_2

    #@54
    .line 79
    sget-object v4, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@56
    move-object/from16 v0, p2

    #@58
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5b
    move-result-object v15

    #@5c
    check-cast v15, Landroid/app/AlarmManager$AlarmClockInfo;

    #@5e
    :goto_2
    move-object/from16 v4, p0

    #@60
    .line 84
    invoke-virtual/range {v4 .. v15}, Landroid/app/IAlarmManager$Stub;->set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@63
    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    .line 86
    const/4 v4, 0x1

    #@67
    return v4

    #@68
    .line 68
    :cond_0
    const/4 v13, 0x0

    #@69
    .local v13, "_arg5":Landroid/app/PendingIntent;
    goto :goto_0

    #@6a
    .line 75
    .end local v13    # "_arg5":Landroid/app/PendingIntent;
    :cond_1
    const/4 v14, 0x0

    #@6b
    .local v14, "_arg6":Landroid/os/WorkSource;
    goto :goto_1

    #@6c
    .line 82
    .end local v14    # "_arg6":Landroid/os/WorkSource;
    :cond_2
    const/4 v15, 0x0

    #@6d
    .local v15, "_arg7":Landroid/app/AlarmManager$AlarmClockInfo;
    goto :goto_2

    #@6e
    .line 90
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":J
    .end local v12    # "_arg4":I
    .end local v15    # "_arg7":Landroid/app/AlarmManager$AlarmClockInfo;
    :sswitch_2
    const-string/jumbo v4, "android.app.IAlarmManager"

    #@71
    move-object/from16 v0, p2

    #@73
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@79
    move-result-wide v16

    #@7a
    .line 93
    .local v16, "_arg0":J
    move-object/from16 v0, p0

    #@7c
    move-wide/from16 v1, v16

    #@7e
    invoke-virtual {v0, v1, v2}, Landroid/app/IAlarmManager$Stub;->setTime(J)Z

    #@81
    move-result v23

    #@82
    .line 94
    .local v23, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85
    .line 95
    if-eqz v23, :cond_3

    #@87
    const/4 v4, 0x1

    #@88
    :goto_3
    move-object/from16 v0, p3

    #@8a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8d
    .line 96
    const/4 v4, 0x1

    #@8e
    return v4

    #@8f
    .line 95
    :cond_3
    const/4 v4, 0x0

    #@90
    goto :goto_3

    #@91
    .line 100
    .end local v16    # "_arg0":J
    .end local v23    # "_result":Z
    :sswitch_3
    const-string/jumbo v4, "android.app.IAlarmManager"

    #@94
    move-object/from16 v0, p2

    #@96
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9c
    move-result-object v19

    #@9d
    .line 103
    .local v19, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9f
    move-object/from16 v1, v19

    #@a1
    invoke-virtual {v0, v1}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    #@a4
    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a7
    .line 105
    const/4 v4, 0x1

    #@a8
    return v4

    #@a9
    .line 109
    .end local v19    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.app.IAlarmManager"

    #@ac
    move-object/from16 v0, p2

    #@ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b1
    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b4
    move-result v4

    #@b5
    if-eqz v4, :cond_4

    #@b7
    .line 112
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b9
    move-object/from16 v0, p2

    #@bb
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@be
    move-result-object v18

    #@bf
    check-cast v18, Landroid/app/PendingIntent;

    #@c1
    .line 117
    :goto_4
    move-object/from16 v0, p0

    #@c3
    move-object/from16 v1, v18

    #@c5
    invoke-virtual {v0, v1}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;)V

    #@c8
    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cb
    .line 119
    const/4 v4, 0x1

    #@cc
    return v4

    #@cd
    .line 115
    :cond_4
    const/16 v18, 0x0

    #@cf
    .local v18, "_arg0":Landroid/app/PendingIntent;
    goto :goto_4

    #@d0
    .line 123
    .end local v18    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_5
    const-string/jumbo v4, "android.app.IAlarmManager"

    #@d3
    move-object/from16 v0, p2

    #@d5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d8
    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/app/IAlarmManager$Stub;->getNextWakeFromIdleTime()J

    #@db
    move-result-wide v20

    #@dc
    .line 125
    .local v20, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    .line 126
    move-object/from16 v0, p3

    #@e1
    move-wide/from16 v1, v20

    #@e3
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@e6
    .line 127
    const/4 v4, 0x1

    #@e7
    return v4

    #@e8
    .line 131
    .end local v20    # "_result":J
    :sswitch_6
    const-string/jumbo v4, "android.app.IAlarmManager"

    #@eb
    move-object/from16 v0, p2

    #@ed
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f0
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f3
    move-result v5

    #@f4
    .line 134
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@f6
    invoke-virtual {v0, v5}, Landroid/app/IAlarmManager$Stub;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    #@f9
    move-result-object v22

    #@fa
    .line 135
    .local v22, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fd
    .line 136
    if-eqz v22, :cond_5

    #@ff
    .line 137
    const/4 v4, 0x1

    #@100
    move-object/from16 v0, p3

    #@102
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@105
    .line 138
    const/4 v4, 0x1

    #@106
    move-object/from16 v0, v22

    #@108
    move-object/from16 v1, p3

    #@10a
    invoke-virtual {v0, v1, v4}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@10d
    .line 143
    :goto_5
    const/4 v4, 0x1

    #@10e
    return v4

    #@10f
    .line 141
    :cond_5
    const/4 v4, 0x0

    #@110
    move-object/from16 v0, p3

    #@112
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@115
    goto :goto_5

    #@116
    .line 43
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
