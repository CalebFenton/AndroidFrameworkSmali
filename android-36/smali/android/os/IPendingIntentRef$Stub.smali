.class public abstract Landroid/os/IPendingIntentRef$Stub;
.super Landroid/os/Binder;
.source "IPendingIntentRef.java"

# interfaces
.implements Landroid/os/IPendingIntentRef;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPendingIntentRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPendingIntentRef$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_sendActiveConfigsChangedBroadcast:I = 0x2

.field static final blacklist TRANSACTION_sendDataBroadcast:I = 0x1

.field static final blacklist TRANSACTION_sendRestrictedMetricsChangedBroadcast:I = 0x4

.field static final blacklist TRANSACTION_sendSubscriberBroadcast:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.os.IPendingIntentRef"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPendingIntentRef$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IPendingIntentRef;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "android.os.IPendingIntentRef"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IPendingIntentRef;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/os/IPendingIntentRef;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/os/IPendingIntentRef$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPendingIntentRef$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_12

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 99
    :pswitch_5
    const-string v0, "sendRestrictedMetricsChangedBroadcast"

    return-object v0

    .line 95
    :pswitch_8
    const-string v0, "sendSubscriberBroadcast"

    return-object v0

    .line 91
    :pswitch_b
    const-string v0, "sendActiveConfigsChangedBroadcast"

    return-object v0

    .line 87
    :pswitch_e
    const-string v0, "sendDataBroadcast"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 261
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 110
    invoke-static {p1}, Landroid/os/IPendingIntentRef$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "android.os.IPendingIntentRef"

    .line 115
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v11, v14, :cond_13

    const v1, 0xffffff

    if-gt v11, v1, :cond_13

    .line 116
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    :cond_13
    const v1, 0x5f4e5446

    if-ne v11, v1, :cond_1e

    .line 119
    move-object/from16 v15, p3

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return v14

    .line 122
    :cond_1e
    move-object/from16 v15, p3

    packed-switch v11, :pswitch_data_62

    .line 164
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 158
    :pswitch_28
    invoke-virtual {v12}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 159
    .local v1, "_arg0":[J
    invoke-virtual {v0, v1}, Landroid/os/IPendingIntentRef$Stub;->sendRestrictedMetricsChangedBroadcast([J)V

    .line 160
    goto :goto_60

    .line 141
    .end local v1    # "_arg0":[J
    :pswitch_30
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 143
    .local v1, "_arg0":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 145
    .local v3, "_arg1":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 147
    .local v5, "_arg2":J
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 149
    .local v7, "_arg3":J
    invoke-virtual {v12}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, "_arg4":[Ljava/lang/String;
    sget-object v10, Landroid/os/StatsDimensionsValueParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/StatsDimensionsValueParcel;

    .line 152
    .local v10, "_arg5":Landroid/os/StatsDimensionsValueParcel;
    invoke-virtual/range {v0 .. v10}, Landroid/os/IPendingIntentRef$Stub;->sendSubscriberBroadcast(JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValueParcel;)V

    .line 153
    goto :goto_60

    .line 134
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":J
    .end local v7    # "_arg3":J
    .end local v9    # "_arg4":[Ljava/lang/String;
    .end local v10    # "_arg5":Landroid/os/StatsDimensionsValueParcel;
    :pswitch_50
    invoke-virtual {v12}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 135
    .local v1, "_arg0":[J
    invoke-virtual {v0, v1}, Landroid/os/IPendingIntentRef$Stub;->sendActiveConfigsChangedBroadcast([J)V

    .line 136
    goto :goto_60

    .line 127
    .end local v1    # "_arg0":[J
    :pswitch_58
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 128
    .local v1, "_arg0":J
    invoke-virtual {v0, v1, v2}, Landroid/os/IPendingIntentRef$Stub;->sendDataBroadcast(J)V

    .line 129
    nop

    .line 167
    .end local v1    # "_arg0":J
    :goto_60
    return v14

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_58
        :pswitch_50
        :pswitch_30
        :pswitch_28
    .end packed-switch
.end method
