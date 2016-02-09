.class public abstract Landroid/net/INetworkStatsSession$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsSession.java"

# interfaces
.implements Landroid/net/INetworkStatsSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsSession"

.field static final TRANSACTION_close:I = 0x8

.field static final TRANSACTION_getDeviceSummaryForNetwork:I = 0x1

.field static final TRANSACTION_getHistoryForNetwork:I = 0x3

.field static final TRANSACTION_getHistoryForUid:I = 0x5

.field static final TRANSACTION_getHistoryIntervalForUid:I = 0x6

.field static final TRANSACTION_getRelevantUids:I = 0x7

.field static final TRANSACTION_getSummaryForAllUid:I = 0x4

.field static final TRANSACTION_getSummaryForNetwork:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.net.INetworkStatsSession"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;
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
    const-string/jumbo v1, "android.net.INetworkStatsSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/INetworkStatsSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/net/INetworkStatsSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkStatsSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/INetworkStatsSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 22
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
    .line 224
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.net.INetworkStatsSession"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.net.INetworkStatsSession"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 51
    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Landroid/net/NetworkTemplate;

    #@2a
    .line 57
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@2d
    move-result-wide v4

    #@2e
    .line 59
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@31
    move-result-wide v6

    #@32
    .local v6, "_arg2":J
    move-object/from16 v2, p0

    #@34
    .line 60
    invoke-virtual/range {v2 .. v7}, Landroid/net/INetworkStatsSession$Stub;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    #@37
    move-result-object v19

    #@38
    .line 61
    .local v19, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b
    .line 62
    if-eqz v19, :cond_1

    #@3d
    .line 63
    const/4 v2, 0x1

    #@3e
    move-object/from16 v0, p3

    #@40
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 64
    const/4 v2, 0x1

    #@44
    move-object/from16 v0, v19

    #@46
    move-object/from16 v1, p3

    #@48
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@4b
    .line 69
    :goto_1
    const/4 v2, 0x1

    #@4c
    return v2

    #@4d
    .line 54
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :cond_0
    const/4 v3, 0x0

    #@4e
    .local v3, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_0

    #@4f
    .line 67
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v4    # "_arg1":J
    .restart local v6    # "_arg2":J
    .restart local v19    # "_result":Landroid/net/NetworkStats;
    :cond_1
    const/4 v2, 0x0

    #@50
    move-object/from16 v0, p3

    #@52
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    goto :goto_1

    #@56
    .line 73
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :sswitch_2
    const-string/jumbo v2, "android.net.INetworkStatsSession"

    #@59
    move-object/from16 v0, p2

    #@5b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_2

    #@64
    .line 76
    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@66
    move-object/from16 v0, p2

    #@68
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b
    move-result-object v3

    #@6c
    check-cast v3, Landroid/net/NetworkTemplate;

    #@6e
    .line 82
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@71
    move-result-wide v4

    #@72
    .line 84
    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@75
    move-result-wide v6

    #@76
    .restart local v6    # "_arg2":J
    move-object/from16 v2, p0

    #@78
    .line 85
    invoke-virtual/range {v2 .. v7}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    #@7b
    move-result-object v19

    #@7c
    .line 86
    .restart local v19    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f
    .line 87
    if-eqz v19, :cond_3

    #@81
    .line 88
    const/4 v2, 0x1

    #@82
    move-object/from16 v0, p3

    #@84
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@87
    .line 89
    const/4 v2, 0x1

    #@88
    move-object/from16 v0, v19

    #@8a
    move-object/from16 v1, p3

    #@8c
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@8f
    .line 94
    :goto_3
    const/4 v2, 0x1

    #@90
    return v2

    #@91
    .line 79
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :cond_2
    const/4 v3, 0x0

    #@92
    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_2

    #@93
    .line 92
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v4    # "_arg1":J
    .restart local v6    # "_arg2":J
    .restart local v19    # "_result":Landroid/net/NetworkStats;
    :cond_3
    const/4 v2, 0x0

    #@94
    move-object/from16 v0, p3

    #@96
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@99
    goto :goto_3

    #@9a
    .line 98
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :sswitch_3
    const-string/jumbo v2, "android.net.INetworkStatsSession"

    #@9d
    move-object/from16 v0, p2

    #@9f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v2

    #@a6
    if-eqz v2, :cond_4

    #@a8
    .line 101
    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@aa
    move-object/from16 v0, p2

    #@ac
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@af
    move-result-object v3

    #@b0
    check-cast v3, Landroid/net/NetworkTemplate;

    #@b2
    .line 107
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v11

    #@b6
    .line 108
    .local v11, "_arg1":I
    move-object/from16 v0, p0

    #@b8
    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    #@bb
    move-result-object v20

    #@bc
    .line 109
    .local v20, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf
    .line 110
    if-eqz v20, :cond_5

    #@c1
    .line 111
    const/4 v2, 0x1

    #@c2
    move-object/from16 v0, p3

    #@c4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c7
    .line 112
    const/4 v2, 0x1

    #@c8
    move-object/from16 v0, v20

    #@ca
    move-object/from16 v1, p3

    #@cc
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    #@cf
    .line 117
    :goto_5
    const/4 v2, 0x1

    #@d0
    return v2

    #@d1
    .line 104
    .end local v11    # "_arg1":I
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_4
    const/4 v3, 0x0

    #@d2
    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_4

    #@d3
    .line 115
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v11    # "_arg1":I
    .restart local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_5
    const/4 v2, 0x0

    #@d4
    move-object/from16 v0, p3

    #@d6
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@d9
    goto :goto_5

    #@da
    .line 121
    .end local v11    # "_arg1":I
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_4
    const-string/jumbo v2, "android.net.INetworkStatsSession"

    #@dd
    move-object/from16 v0, p2

    #@df
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v2

    #@e6
    if-eqz v2, :cond_6

    #@e8
    .line 124
    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ea
    move-object/from16 v0, p2

    #@ec
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ef
    move-result-object v3

    #@f0
    check-cast v3, Landroid/net/NetworkTemplate;

    #@f2
    .line 130
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@f5
    move-result-wide v4

    #@f6
    .line 132
    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@f9
    move-result-wide v6

    #@fa
    .line 134
    .restart local v6    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fd
    move-result v2

    #@fe
    if-eqz v2, :cond_7

    #@100
    const/4 v8, 0x1

    #@101
    .local v8, "_arg3":Z
    :goto_7
    move-object/from16 v2, p0

    #@103
    .line 135
    invoke-virtual/range {v2 .. v8}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    #@106
    move-result-object v19

    #@107
    .line 136
    .restart local v19    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10a
    .line 137
    if-eqz v19, :cond_8

    #@10c
    .line 138
    const/4 v2, 0x1

    #@10d
    move-object/from16 v0, p3

    #@10f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@112
    .line 139
    const/4 v2, 0x1

    #@113
    move-object/from16 v0, v19

    #@115
    move-object/from16 v1, p3

    #@117
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@11a
    .line 144
    :goto_8
    const/4 v2, 0x1

    #@11b
    return v2

    #@11c
    .line 127
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Z
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :cond_6
    const/4 v3, 0x0

    #@11d
    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_6

    #@11e
    .line 134
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v4    # "_arg1":J
    .restart local v6    # "_arg2":J
    :cond_7
    const/4 v8, 0x0

    #@11f
    .restart local v8    # "_arg3":Z
    goto :goto_7

    #@120
    .line 142
    .restart local v19    # "_result":Landroid/net/NetworkStats;
    :cond_8
    const/4 v2, 0x0

    #@121
    move-object/from16 v0, p3

    #@123
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@126
    goto :goto_8

    #@127
    .line 148
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Z
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :sswitch_5
    const-string/jumbo v2, "android.net.INetworkStatsSession"

    #@12a
    move-object/from16 v0, p2

    #@12c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12f
    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@132
    move-result v2

    #@133
    if-eqz v2, :cond_9

    #@135
    .line 151
    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@137
    move-object/from16 v0, p2

    #@139
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13c
    move-result-object v3

    #@13d
    check-cast v3, Landroid/net/NetworkTemplate;

    #@13f
    .line 157
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@142
    move-result v11

    #@143
    .line 159
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@146
    move-result v12

    #@147
    .line 161
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v13

    #@14b
    .line 163
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14e
    move-result v14

    #@14f
    .local v14, "_arg4":I
    move-object/from16 v9, p0

    #@151
    move-object v10, v3

    #@152
    .line 164
    invoke-virtual/range {v9 .. v14}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    #@155
    move-result-object v20

    #@156
    .line 165
    .restart local v20    # "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@159
    .line 166
    if-eqz v20, :cond_a

    #@15b
    .line 167
    const/4 v2, 0x1

    #@15c
    move-object/from16 v0, p3

    #@15e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@161
    .line 168
    const/4 v2, 0x1

    #@162
    move-object/from16 v0, v20

    #@164
    move-object/from16 v1, p3

    #@166
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    #@169
    .line 173
    :goto_a
    const/4 v2, 0x1

    #@16a
    return v2

    #@16b
    .line 154
    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_9
    const/4 v3, 0x0

    #@16c
    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_9

    #@16d
    .line 171
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v11    # "_arg1":I
    .restart local v12    # "_arg2":I
    .restart local v13    # "_arg3":I
    .restart local v14    # "_arg4":I
    .restart local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_a
    const/4 v2, 0x0

    #@16e
    move-object/from16 v0, p3

    #@170
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@173
    goto :goto_a

    #@174
    .line 177
    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_6
    const-string/jumbo v2, "android.net.INetworkStatsSession"

    #@177
    move-object/from16 v0, p2

    #@179
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17c
    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17f
    move-result v2

    #@180
    if-eqz v2, :cond_b

    #@182
    .line 180
    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@184
    move-object/from16 v0, p2

    #@186
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@189
    move-result-object v3

    #@18a
    check-cast v3, Landroid/net/NetworkTemplate;

    #@18c
    .line 186
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18f
    move-result v11

    #@190
    .line 188
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@193
    move-result v12

    #@194
    .line 190
    .restart local v12    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@197
    move-result v13

    #@198
    .line 192
    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19b
    move-result v14

    #@19c
    .line 194
    .restart local v14    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@19f
    move-result-wide v15

    #@1a0
    .line 196
    .local v15, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1a3
    move-result-wide v17

    #@1a4
    .local v17, "_arg6":J
    move-object/from16 v9, p0

    #@1a6
    move-object v10, v3

    #@1a7
    .line 197
    invoke-virtual/range {v9 .. v18}, Landroid/net/INetworkStatsSession$Stub;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    #@1aa
    move-result-object v20

    #@1ab
    .line 198
    .restart local v20    # "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ae
    .line 199
    if-eqz v20, :cond_c

    #@1b0
    .line 200
    const/4 v2, 0x1

    #@1b1
    move-object/from16 v0, p3

    #@1b3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b6
    .line 201
    const/4 v2, 0x1

    #@1b7
    move-object/from16 v0, v20

    #@1b9
    move-object/from16 v1, p3

    #@1bb
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    #@1be
    .line 206
    :goto_c
    const/4 v2, 0x1

    #@1bf
    return v2

    #@1c0
    .line 183
    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v15    # "_arg5":J
    .end local v17    # "_arg6":J
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_b
    const/4 v3, 0x0

    #@1c1
    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_b

    #@1c2
    .line 204
    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v11    # "_arg1":I
    .restart local v12    # "_arg2":I
    .restart local v13    # "_arg3":I
    .restart local v14    # "_arg4":I
    .restart local v15    # "_arg5":J
    .restart local v17    # "_arg6":J
    .restart local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_c
    const/4 v2, 0x0

    #@1c3
    move-object/from16 v0, p3

    #@1c5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c8
    goto :goto_c

    #@1c9
    .line 210
    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v15    # "_arg5":J
    .end local v17    # "_arg6":J
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_7
    const-string/jumbo v2, "android.net.INetworkStatsSession"

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d1
    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->getRelevantUids()[I

    #@1d4
    move-result-object v21

    #@1d5
    .line 212
    .local v21, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d8
    .line 213
    move-object/from16 v0, p3

    #@1da
    move-object/from16 v1, v21

    #@1dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1df
    .line 214
    const/4 v2, 0x1

    #@1e0
    return v2

    #@1e1
    .line 218
    .end local v21    # "_result":[I
    :sswitch_8
    const-string/jumbo v2, "android.net.INetworkStatsSession"

    #@1e4
    move-object/from16 v0, p2

    #@1e6
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e9
    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->close()V

    #@1ec
    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ef
    .line 221
    const/4 v2, 0x1

    #@1f0
    return v2

    #@1f1
    .line 39
    nop

    #@1f2
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
