.class public abstract Landroid/net/INetworkStatsService$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsService.java"

# interfaces
.implements Landroid/net/INetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsService"

.field static final TRANSACTION_advisePersistThreshold:I = 0xa

.field static final TRANSACTION_forceUpdate:I = 0x9

.field static final TRANSACTION_forceUpdateIfaces:I = 0x8

.field static final TRANSACTION_getDataLayerSnapshotForUid:I = 0x4

.field static final TRANSACTION_getMobileIfaces:I = 0x5

.field static final TRANSACTION_getNetworkTotalBytes:I = 0x3

.field static final TRANSACTION_incrementOperationCount:I = 0x6

.field static final TRANSACTION_openSession:I = 0x1

.field static final TRANSACTION_openSessionForUsageStats:I = 0x2

.field static final TRANSACTION_setUidForeground:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.net.INetworkStatsService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;
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
    const-string/jumbo v1, "android.net.INetworkStatsService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/INetworkStatsService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/net/INetworkStatsService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkStatsService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/INetworkStatsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 155
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->openSession()Landroid/net/INetworkStatsSession;

    #@1d
    move-result-object v17

    #@1e
    .line 50
    .local v17, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 51
    if-eqz v17, :cond_0

    #@23
    invoke-interface/range {v17 .. v17}, Landroid/net/INetworkStatsSession;->asBinder()Landroid/os/IBinder;

    #@26
    move-result-object v4

    #@27
    :goto_0
    move-object/from16 v0, p3

    #@29
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@2c
    .line 52
    const/4 v4, 0x1

    #@2d
    return v4

    #@2e
    .line 51
    :cond_0
    const/4 v4, 0x0

    #@2f
    goto :goto_0

    #@30
    .line 56
    .end local v17    # "_result":Landroid/net/INetworkStatsSession;
    :sswitch_2
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@33
    move-object/from16 v0, p2

    #@35
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b
    move-result-object v11

    #@3c
    .line 59
    .local v11, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3e
    invoke-virtual {v0, v11}, Landroid/net/INetworkStatsService$Stub;->openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;

    #@41
    move-result-object v17

    #@42
    .line 60
    .restart local v17    # "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45
    .line 61
    if-eqz v17, :cond_1

    #@47
    invoke-interface/range {v17 .. v17}, Landroid/net/INetworkStatsSession;->asBinder()Landroid/os/IBinder;

    #@4a
    move-result-object v4

    #@4b
    :goto_1
    move-object/from16 v0, p3

    #@4d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@50
    .line 62
    const/4 v4, 0x1

    #@51
    return v4

    #@52
    .line 61
    :cond_1
    const/4 v4, 0x0

    #@53
    goto :goto_1

    #@54
    .line 66
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Landroid/net/INetworkStatsSession;
    :sswitch_3
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_2

    #@62
    .line 69
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@64
    move-object/from16 v0, p2

    #@66
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69
    move-result-object v5

    #@6a
    check-cast v5, Landroid/net/NetworkTemplate;

    #@6c
    .line 75
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@6f
    move-result-wide v6

    #@70
    .line 77
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@73
    move-result-wide v8

    #@74
    .local v8, "_arg2":J
    move-object/from16 v4, p0

    #@76
    .line 78
    invoke-virtual/range {v4 .. v9}, Landroid/net/INetworkStatsService$Stub;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    #@79
    move-result-wide v18

    #@7a
    .line 79
    .local v18, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d
    .line 80
    move-object/from16 v0, p3

    #@7f
    move-wide/from16 v1, v18

    #@81
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@84
    .line 81
    const/4 v4, 0x1

    #@85
    return v4

    #@86
    .line 72
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v18    # "_result":J
    :cond_2
    const/4 v5, 0x0

    #@87
    .local v5, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_2

    #@88
    .line 85
    .end local v5    # "_arg0":Landroid/net/NetworkTemplate;
    :sswitch_4
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@8b
    move-object/from16 v0, p2

    #@8d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90
    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v10

    #@94
    .line 88
    .local v10, "_arg0":I
    move-object/from16 v0, p0

    #@96
    invoke-virtual {v0, v10}, Landroid/net/INetworkStatsService$Stub;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    #@99
    move-result-object v20

    #@9a
    .line 89
    .local v20, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9d
    .line 90
    if-eqz v20, :cond_3

    #@9f
    .line 91
    const/4 v4, 0x1

    #@a0
    move-object/from16 v0, p3

    #@a2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a5
    .line 92
    const/4 v4, 0x1

    #@a6
    move-object/from16 v0, v20

    #@a8
    move-object/from16 v1, p3

    #@aa
    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@ad
    .line 97
    :goto_3
    const/4 v4, 0x1

    #@ae
    return v4

    #@af
    .line 95
    :cond_3
    const/4 v4, 0x0

    #@b0
    move-object/from16 v0, p3

    #@b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b5
    goto :goto_3

    #@b6
    .line 101
    .end local v10    # "_arg0":I
    .end local v20    # "_result":Landroid/net/NetworkStats;
    :sswitch_5
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@b9
    move-object/from16 v0, p2

    #@bb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->getMobileIfaces()[Ljava/lang/String;

    #@c1
    move-result-object v21

    #@c2
    .line 103
    .local v21, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c5
    .line 104
    move-object/from16 v0, p3

    #@c7
    move-object/from16 v1, v21

    #@c9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@cc
    .line 105
    const/4 v4, 0x1

    #@cd
    return v4

    #@ce
    .line 109
    .end local v21    # "_result":[Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6
    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d9
    move-result v10

    #@da
    .line 113
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dd
    move-result v14

    #@de
    .line 115
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v16

    #@e2
    .line 116
    .local v16, "_arg2":I
    move-object/from16 v0, p0

    #@e4
    move/from16 v1, v16

    #@e6
    invoke-virtual {v0, v10, v14, v1}, Landroid/net/INetworkStatsService$Stub;->incrementOperationCount(III)V

    #@e9
    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ec
    .line 118
    const/4 v4, 0x1

    #@ed
    return v4

    #@ee
    .line 122
    .end local v10    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v16    # "_arg2":I
    :sswitch_7
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@f1
    move-object/from16 v0, p2

    #@f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f9
    move-result v10

    #@fa
    .line 126
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fd
    move-result v4

    #@fe
    if-eqz v4, :cond_4

    #@100
    const/4 v15, 0x1

    #@101
    .line 127
    .local v15, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    #@103
    invoke-virtual {v0, v10, v15}, Landroid/net/INetworkStatsService$Stub;->setUidForeground(IZ)V

    #@106
    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@109
    .line 129
    const/4 v4, 0x1

    #@10a
    return v4

    #@10b
    .line 126
    .end local v15    # "_arg1":Z
    :cond_4
    const/4 v15, 0x0

    #@10c
    .restart local v15    # "_arg1":Z
    goto :goto_4

    #@10d
    .line 133
    .end local v10    # "_arg0":I
    .end local v15    # "_arg1":Z
    :sswitch_8
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@110
    move-object/from16 v0, p2

    #@112
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@115
    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->forceUpdateIfaces()V

    #@118
    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11b
    .line 136
    const/4 v4, 0x1

    #@11c
    return v4

    #@11d
    .line 140
    :sswitch_9
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@120
    move-object/from16 v0, p2

    #@122
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@125
    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->forceUpdate()V

    #@128
    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12b
    .line 143
    const/4 v4, 0x1

    #@12c
    return v4

    #@12d
    .line 147
    :sswitch_a
    const-string/jumbo v4, "android.net.INetworkStatsService"

    #@130
    move-object/from16 v0, p2

    #@132
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@138
    move-result-wide v12

    #@139
    .line 150
    .local v12, "_arg0":J
    move-object/from16 v0, p0

    #@13b
    invoke-virtual {v0, v12, v13}, Landroid/net/INetworkStatsService$Stub;->advisePersistThreshold(J)V

    #@13e
    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@141
    .line 152
    const/4 v4, 0x1

    #@142
    return v4

    #@143
    .line 39
    nop

    #@144
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
