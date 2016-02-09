.class public abstract Landroid/app/usage/IUsageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IUsageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IUsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IUsageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IUsageStatsManager"

.field static final TRANSACTION_isAppInactive:I = 0x5

.field static final TRANSACTION_queryConfigurationStats:I = 0x2

.field static final TRANSACTION_queryEvents:I = 0x3

.field static final TRANSACTION_queryUsageStats:I = 0x1

.field static final TRANSACTION_setAppInactive:I = 0x4

.field static final TRANSACTION_whitelistAppTemporarily:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.app.usage.IUsageStatsManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;
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
    const-string/jumbo v1, "android.app.usage.IUsageStatsManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/usage/IUsageStatsManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/app/usage/IUsageStatsManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 153
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.app.usage.IUsageStatsManager"

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
    const-string/jumbo v4, "android.app.usage.IUsageStatsManager"

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v10

    #@2a
    .local v10, "_arg3":Ljava/lang/String;
    move-object/from16 v4, p0

    #@2c
    .line 61
    invoke-virtual/range {v4 .. v10}, Landroid/app/usage/IUsageStatsManager$Stub;->queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    #@2f
    move-result-object v22

    #@30
    .line 62
    .local v22, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@33
    .line 63
    if-eqz v22, :cond_0

    #@35
    .line 64
    const/4 v4, 0x1

    #@36
    move-object/from16 v0, p3

    #@38
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 65
    const/4 v4, 0x1

    #@3c
    move-object/from16 v0, v22

    #@3e
    move-object/from16 v1, p3

    #@40
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@43
    .line 70
    :goto_0
    const/4 v4, 0x1

    #@44
    return v4

    #@45
    .line 68
    :cond_0
    const/4 v4, 0x0

    #@46
    move-object/from16 v0, p3

    #@48
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    goto :goto_0

    #@4c
    .line 74
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v22    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2
    const-string/jumbo v4, "android.app.usage.IUsageStatsManager"

    #@4f
    move-object/from16 v0, p2

    #@51
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v5

    #@58
    .line 78
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@5b
    move-result-wide v6

    #@5c
    .line 80
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@5f
    move-result-wide v8

    #@60
    .line 82
    .restart local v8    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@63
    move-result-object v10

    #@64
    .restart local v10    # "_arg3":Ljava/lang/String;
    move-object/from16 v4, p0

    #@66
    .line 83
    invoke-virtual/range {v4 .. v10}, Landroid/app/usage/IUsageStatsManager$Stub;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    #@69
    move-result-object v22

    #@6a
    .line 84
    .restart local v22    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d
    .line 85
    if-eqz v22, :cond_1

    #@6f
    .line 86
    const/4 v4, 0x1

    #@70
    move-object/from16 v0, p3

    #@72
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@75
    .line 87
    const/4 v4, 0x1

    #@76
    move-object/from16 v0, v22

    #@78
    move-object/from16 v1, p3

    #@7a
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@7d
    .line 92
    :goto_1
    const/4 v4, 0x1

    #@7e
    return v4

    #@7f
    .line 90
    :cond_1
    const/4 v4, 0x0

    #@80
    move-object/from16 v0, p3

    #@82
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@85
    goto :goto_1

    #@86
    .line 96
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v22    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_3
    const-string/jumbo v4, "android.app.usage.IUsageStatsManager"

    #@89
    move-object/from16 v0, p2

    #@8b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@91
    move-result-wide v12

    #@92
    .line 100
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@95
    move-result-wide v6

    #@96
    .line 102
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@99
    move-result-object v16

    #@9a
    .local v16, "_arg2":Ljava/lang/String;
    move-object/from16 v11, p0

    #@9c
    move-wide v14, v6

    #@9d
    .line 103
    invoke-virtual/range {v11 .. v16}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    #@a0
    move-result-object v21

    #@a1
    .line 104
    .local v21, "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a4
    .line 105
    if-eqz v21, :cond_2

    #@a6
    .line 106
    const/4 v4, 0x1

    #@a7
    move-object/from16 v0, p3

    #@a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ac
    .line 107
    const/4 v4, 0x1

    #@ad
    move-object/from16 v0, v21

    #@af
    move-object/from16 v1, p3

    #@b1
    invoke-virtual {v0, v1, v4}, Landroid/app/usage/UsageEvents;->writeToParcel(Landroid/os/Parcel;I)V

    #@b4
    .line 112
    :goto_2
    const/4 v4, 0x1

    #@b5
    return v4

    #@b6
    .line 110
    :cond_2
    const/4 v4, 0x0

    #@b7
    move-object/from16 v0, p3

    #@b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@bc
    goto :goto_2

    #@bd
    .line 116
    .end local v6    # "_arg1":J
    .end local v12    # "_arg0":J
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Landroid/app/usage/UsageEvents;
    :sswitch_4
    const-string/jumbo v4, "android.app.usage.IUsageStatsManager"

    #@c0
    move-object/from16 v0, p2

    #@c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c5
    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c8
    move-result-object v17

    #@c9
    .line 120
    .local v17, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v4

    #@cd
    if-eqz v4, :cond_3

    #@cf
    const/16 v19, 0x1

    #@d1
    .line 122
    .local v19, "_arg1":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d4
    move-result v20

    #@d5
    .line 123
    .local v20, "_arg2":I
    move-object/from16 v0, p0

    #@d7
    move-object/from16 v1, v17

    #@d9
    move/from16 v2, v19

    #@db
    move/from16 v3, v20

    #@dd
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppInactive(Ljava/lang/String;ZI)V

    #@e0
    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e3
    .line 125
    const/4 v4, 0x1

    #@e4
    return v4

    #@e5
    .line 120
    .end local v19    # "_arg1":Z
    .end local v20    # "_arg2":I
    :cond_3
    const/16 v19, 0x0

    #@e7
    .restart local v19    # "_arg1":Z
    goto :goto_3

    #@e8
    .line 129
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Z
    :sswitch_5
    const-string/jumbo v4, "android.app.usage.IUsageStatsManager"

    #@eb
    move-object/from16 v0, p2

    #@ed
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f0
    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f3
    move-result-object v17

    #@f4
    .line 133
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f7
    move-result v18

    #@f8
    .line 134
    .local v18, "_arg1":I
    move-object/from16 v0, p0

    #@fa
    move-object/from16 v1, v17

    #@fc
    move/from16 v2, v18

    #@fe
    invoke-virtual {v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->isAppInactive(Ljava/lang/String;I)Z

    #@101
    move-result v23

    #@102
    .line 135
    .local v23, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@105
    .line 136
    if-eqz v23, :cond_4

    #@107
    const/4 v4, 0x1

    #@108
    :goto_4
    move-object/from16 v0, p3

    #@10a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@10d
    .line 137
    const/4 v4, 0x1

    #@10e
    return v4

    #@10f
    .line 136
    :cond_4
    const/4 v4, 0x0

    #@110
    goto :goto_4

    #@111
    .line 141
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":I
    .end local v23    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.app.usage.IUsageStatsManager"

    #@114
    move-object/from16 v0, p2

    #@116
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119
    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11c
    move-result-object v17

    #@11d
    .line 145
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@120
    move-result-wide v6

    #@121
    .line 147
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@124
    move-result v20

    #@125
    .line 148
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    #@127
    move-object/from16 v1, v17

    #@129
    move/from16 v2, v20

    #@12b
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->whitelistAppTemporarily(Ljava/lang/String;JI)V

    #@12e
    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@131
    .line 150
    const/4 v4, 0x1

    #@132
    return v4

    #@133
    .line 43
    nop

    #@134
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
