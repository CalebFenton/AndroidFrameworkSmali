.class public abstract Lcom/android/internal/app/procstats/IProcessStats$Stub;
.super Landroid/os/Binder;
.source "IProcessStats.java"

# interfaces
.implements Lcom/android/internal/app/procstats/IProcessStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/IProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCommittedStats:I = 0x4

.field static final blacklist TRANSACTION_getCommittedStatsMerged:I = 0x5

.field static final blacklist TRANSACTION_getCurrentMemoryState:I = 0x3

.field static final blacklist TRANSACTION_getCurrentStats:I = 0x1

.field static final blacklist TRANSACTION_getMinAssociationDumpDuration:I = 0x6

.field static final blacklist TRANSACTION_getStatsOverTime:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    nop

    .line 77
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "com.android.internal.app.procstats.IProcessStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    if-eqz p1, :cond_d

    .line 71
    iput-object p1, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 72
    return-void

    .line 69
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    const-string v0, "com.android.internal.app.procstats.IProcessStats"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/procstats/IProcessStats;

    if-eqz v1, :cond_14

    .line 90
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/procstats/IProcessStats;

    return-object v1

    .line 92
    :cond_14
    new-instance v1, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 101
    packed-switch p0, :pswitch_data_18

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string v0, "getMinAssociationDumpDuration"

    return-object v0

    .line 121
    :pswitch_8
    const-string v0, "getCommittedStatsMerged"

    return-object v0

    .line 117
    :pswitch_b
    const-string v0, "getCommittedStats"

    return-object v0

    .line 113
    :pswitch_e
    const-string v0, "getCurrentMemoryState"

    return-object v0

    .line 109
    :pswitch_11
    const-string v0, "getStatsOverTime"

    return-object v0

    .line 105
    :pswitch_14
    const-string v0, "getCurrentStats"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method protected blacklist getCommittedStatsMerged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 392
    return-void
.end method

.method protected blacklist getCurrentStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 380
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 397
    const/4 v0, 0x5

    return v0
.end method

.method protected blacklist getStatsOverTime_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 385
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    move-object/from16 v7, p3

    const-string v8, "com.android.internal.app.procstats.IProcessStats"

    .line 141
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_11

    const v0, 0xffffff

    if-gt p1, v0, :cond_11

    .line 142
    move-object v10, p2

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_12

    .line 141
    :cond_11
    move-object v10, p2

    .line 144
    :goto_12
    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_1b

    .line 145
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v9

    .line 148
    :cond_1b
    packed-switch p1, :pswitch_data_b2

    .line 224
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 217
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getMinAssociationDumpDuration()J

    move-result-wide v0

    .line 218
    .local v0, "_result":J
    invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {v7, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    goto/16 :goto_b0

    .line 198
    .end local v0    # "_result":J
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 200
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 204
    .local v4, "_arg2":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>()V

    .line 207
    .local v6, "_arg4":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v11

    .line 209
    .local v11, "_result":J
    invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {v7, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    invoke-virtual {v7, v5, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 212
    invoke-virtual {v7, v6, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    goto :goto_b0

    .line 181
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v6    # "_arg4":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v11    # "_result":J
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 183
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 187
    .restart local v4    # "_arg2":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .restart local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCommittedStats(JIZLjava/util/List;)J

    move-result-wide v11

    .line 190
    .restart local v11    # "_result":J
    invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {v7, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    .line 192
    invoke-virtual {v7, v5, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 193
    goto :goto_b0

    .line 173
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v11    # "_result":J
    :pswitch_7d
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCurrentMemoryState()I

    move-result v1

    .line 174
    .local v1, "_result":I
    invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    goto :goto_b0

    .line 164
    .end local v1    # "_result":I
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 165
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 167
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {v7, v3, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    goto :goto_b0

    .line 153
    .end local v1    # "_arg0":J
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_9a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCurrentStats(Ljava/util/List;)[B

    move-result-object v2

    .line 156
    .local v2, "_result":[B
    invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 158
    invoke-virtual {v7, v1, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 159
    nop

    .line 227
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v2    # "_result":[B
    :goto_b0
    return v9

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_88
        :pswitch_7d
        :pswitch_5a
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method
