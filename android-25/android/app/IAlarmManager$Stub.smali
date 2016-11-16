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
    .locals 28
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
    .line 154
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v5

    #@7
    return v5

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v5, "android.app.IAlarmManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v5, 0x1

    #@11
    return v5

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v5, "android.app.IAlarmManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    .line 56
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v7

    #@22
    .line 58
    .local v7, "_arg1":I
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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@2d
    move-result-wide v12

    #@2e
    .line 64
    .local v12, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v14

    #@32
    .line 66
    .local v14, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_0

    #@38
    .line 67
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v15

    #@40
    check-cast v15, Landroid/app/PendingIntent;

    #@42
    .line 73
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@45
    move-result-object v5

    #@46
    invoke-static {v5}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    #@49
    move-result-object v16

    #@4a
    .line 75
    .local v16, "_arg7":Landroid/app/IAlarmListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d
    move-result-object v17

    #@4e
    .line 77
    .local v17, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v5

    #@52
    if-eqz v5, :cond_1

    #@54
    .line 78
    sget-object v5, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@56
    move-object/from16 v0, p2

    #@58
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5b
    move-result-object v18

    #@5c
    check-cast v18, Landroid/os/WorkSource;

    #@5e
    .line 84
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v5

    #@62
    if-eqz v5, :cond_2

    #@64
    .line 85
    sget-object v5, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b
    move-result-object v19

    #@6c
    check-cast v19, Landroid/app/AlarmManager$AlarmClockInfo;

    #@6e
    :goto_2
    move-object/from16 v5, p0

    #@70
    .line 90
    invoke-virtual/range {v5 .. v19}, Landroid/app/IAlarmManager$Stub;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    #@73
    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@76
    .line 92
    const/4 v5, 0x1

    #@77
    return v5

    #@78
    .line 70
    .end local v16    # "_arg7":Landroid/app/IAlarmListener;
    .end local v17    # "_arg8":Ljava/lang/String;
    :cond_0
    const/4 v15, 0x0

    #@79
    .local v15, "_arg6":Landroid/app/PendingIntent;
    goto :goto_0

    #@7a
    .line 81
    .end local v15    # "_arg6":Landroid/app/PendingIntent;
    .restart local v16    # "_arg7":Landroid/app/IAlarmListener;
    .restart local v17    # "_arg8":Ljava/lang/String;
    :cond_1
    const/16 v18, 0x0

    #@7c
    .local v18, "_arg9":Landroid/os/WorkSource;
    goto :goto_1

    #@7d
    .line 88
    .end local v18    # "_arg9":Landroid/os/WorkSource;
    :cond_2
    const/16 v19, 0x0

    #@7f
    .local v19, "_arg10":Landroid/app/AlarmManager$AlarmClockInfo;
    goto :goto_2

    #@80
    .line 96
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":J
    .end local v12    # "_arg4":J
    .end local v14    # "_arg5":I
    .end local v16    # "_arg7":Landroid/app/IAlarmListener;
    .end local v17    # "_arg8":Ljava/lang/String;
    .end local v19    # "_arg10":Landroid/app/AlarmManager$AlarmClockInfo;
    :sswitch_2
    const-string/jumbo v5, "android.app.IAlarmManager"

    #@83
    move-object/from16 v0, p2

    #@85
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@88
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@8b
    move-result-wide v20

    #@8c
    .line 99
    .local v20, "_arg0":J
    move-object/from16 v0, p0

    #@8e
    move-wide/from16 v1, v20

    #@90
    invoke-virtual {v0, v1, v2}, Landroid/app/IAlarmManager$Stub;->setTime(J)Z

    #@93
    move-result v27

    #@94
    .line 100
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@97
    .line 101
    if-eqz v27, :cond_3

    #@99
    const/4 v5, 0x1

    #@9a
    :goto_3
    move-object/from16 v0, p3

    #@9c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@9f
    .line 102
    const/4 v5, 0x1

    #@a0
    return v5

    #@a1
    .line 101
    :cond_3
    const/4 v5, 0x0

    #@a2
    goto :goto_3

    #@a3
    .line 106
    .end local v20    # "_arg0":J
    .end local v27    # "_result":Z
    :sswitch_3
    const-string/jumbo v5, "android.app.IAlarmManager"

    #@a6
    move-object/from16 v0, p2

    #@a8
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ae
    move-result-object v6

    #@af
    .line 109
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b1
    invoke-virtual {v0, v6}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    #@b4
    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b7
    .line 111
    const/4 v5, 0x1

    #@b8
    return v5

    #@b9
    .line 115
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v5, "android.app.IAlarmManager"

    #@bc
    move-object/from16 v0, p2

    #@be
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1
    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v5

    #@c5
    if-eqz v5, :cond_4

    #@c7
    .line 118
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c9
    move-object/from16 v0, p2

    #@cb
    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ce
    move-result-object v22

    #@cf
    check-cast v22, Landroid/app/PendingIntent;

    #@d1
    .line 124
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d4
    move-result-object v5

    #@d5
    invoke-static {v5}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    #@d8
    move-result-object v23

    #@d9
    .line 125
    .local v23, "_arg1":Landroid/app/IAlarmListener;
    move-object/from16 v0, p0

    #@db
    move-object/from16 v1, v22

    #@dd
    move-object/from16 v2, v23

    #@df
    invoke-virtual {v0, v1, v2}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    #@e2
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e5
    .line 127
    const/4 v5, 0x1

    #@e6
    return v5

    #@e7
    .line 121
    .end local v23    # "_arg1":Landroid/app/IAlarmListener;
    :cond_4
    const/16 v22, 0x0

    #@e9
    .local v22, "_arg0":Landroid/app/PendingIntent;
    goto :goto_4

    #@ea
    .line 131
    .end local v22    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_5
    const-string/jumbo v5, "android.app.IAlarmManager"

    #@ed
    move-object/from16 v0, p2

    #@ef
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f2
    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/app/IAlarmManager$Stub;->getNextWakeFromIdleTime()J

    #@f5
    move-result-wide v24

    #@f6
    .line 133
    .local v24, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9
    .line 134
    move-object/from16 v0, p3

    #@fb
    move-wide/from16 v1, v24

    #@fd
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@100
    .line 135
    const/4 v5, 0x1

    #@101
    return v5

    #@102
    .line 139
    .end local v24    # "_result":J
    :sswitch_6
    const-string/jumbo v5, "android.app.IAlarmManager"

    #@105
    move-object/from16 v0, p2

    #@107
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v4

    #@10e
    .line 142
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    #@110
    invoke-virtual {v0, v4}, Landroid/app/IAlarmManager$Stub;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    #@113
    move-result-object v26

    #@114
    .line 143
    .local v26, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 144
    if-eqz v26, :cond_5

    #@119
    .line 145
    const/4 v5, 0x1

    #@11a
    move-object/from16 v0, p3

    #@11c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@11f
    .line 146
    const/4 v5, 0x1

    #@120
    move-object/from16 v0, v26

    #@122
    move-object/from16 v1, p3

    #@124
    invoke-virtual {v0, v1, v5}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@127
    .line 151
    :goto_5
    const/4 v5, 0x1

    #@128
    return v5

    #@129
    .line 149
    :cond_5
    const/4 v5, 0x0

    #@12a
    move-object/from16 v0, p3

    #@12c
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@12f
    goto :goto_5

    #@130
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
