.class public abstract Landroid/os/IProfilingService$Stub;
.super Landroid/os/Binder;
.source "IProfilingService.java"

# interfaces
.implements Landroid/os/IProfilingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProfilingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProfilingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addProfilingTriggers:I = 0x6

.field static final blacklist TRANSACTION_clearProfilingTriggers:I = 0x8

.field static final blacklist TRANSACTION_generalListenerAdded:I = 0x3

.field static final blacklist TRANSACTION_processTrigger:I = 0x9

.field static final blacklist TRANSACTION_receiveFileDescriptor:I = 0x5

.field static final blacklist TRANSACTION_registerResultsCallback:I = 0x2

.field static final blacklist TRANSACTION_removeProfilingTriggers:I = 0x7

.field static final blacklist TRANSACTION_requestCancel:I = 0x4

.field static final blacklist TRANSACTION_requestProfiling:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.os.IProfilingService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IProfilingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IProfilingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.os.IProfilingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IProfilingService;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/os/IProfilingService;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/os/IProfilingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IProfilingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_20

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 115
    :pswitch_5
    const-string v0, "processTrigger"

    return-object v0

    .line 111
    :pswitch_8
    const-string v0, "clearProfilingTriggers"

    return-object v0

    .line 107
    :pswitch_b
    const-string v0, "removeProfilingTriggers"

    return-object v0

    .line 103
    :pswitch_e
    const-string v0, "addProfilingTriggers"

    return-object v0

    .line 99
    :pswitch_11
    const-string v0, "receiveFileDescriptor"

    return-object v0

    .line 95
    :pswitch_14
    const-string v0, "requestCancel"

    return-object v0

    .line 91
    :pswitch_17
    const-string v0, "generalListenerAdded"

    return-object v0

    .line 87
    :pswitch_1a
    const-string v0, "registerResultsCallback"

    return-object v0

    .line 83
    :pswitch_1d
    const-string v0, "requestProfiling"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 390
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Landroid/os/IProfilingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 130
    move-object v9, p2

    const-string v10, "android.os.IProfilingService"

    .line 131
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 132
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 135
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v11

    .line 138
    :cond_19
    move-object/from16 v12, p3

    packed-switch p1, :pswitch_data_c8

    .line 237
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 226
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 231
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IProfilingService$Stub;->processTrigger(ILjava/lang/String;I)V

    .line 233
    goto/16 :goto_c6

    .line 218
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v1}, Landroid/os/IProfilingService$Stub;->clearProfilingTriggers(Ljava/lang/String;)V

    .line 221
    goto/16 :goto_c6

    .line 208
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 210
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v1, v2}, Landroid/os/IProfilingService$Stub;->removeProfilingTriggers([ILjava/lang/String;)V

    .line 213
    goto/16 :goto_c6

    .line 198
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_53
    sget-object v1, Landroid/os/ProfilingTriggerValueParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 200
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/ProfilingTriggerValueParcel;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v1, v2}, Landroid/os/IProfilingService$Stub;->addProfilingTriggers(Ljava/util/List;Ljava/lang/String;)V

    .line 203
    goto :goto_c6

    .line 186
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/ProfilingTriggerValueParcel;>;"
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_64
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 188
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 190
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 191
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IProfilingService$Stub;->receiveFileDescriptor(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 193
    goto :goto_c6

    .line 176
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 178
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 179
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IProfilingService$Stub;->requestCancel(JJ)V

    .line 181
    goto :goto_c6

    .line 170
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    :pswitch_8b
    invoke-virtual {p0}, Landroid/os/IProfilingService$Stub;->generalListenerAdded()V

    .line 171
    goto :goto_c6

    .line 161
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 163
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProfilingResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProfilingResultCallback;

    move-result-object v2

    .line 164
    .local v2, "_arg1":Landroid/os/IProfilingResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v1, v2}, Landroid/os/IProfilingService$Stub;->registerResultsCallback(ZLandroid/os/IProfilingResultCallback;)V

    .line 166
    goto :goto_c6

    .line 143
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IProfilingResultCallback;
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .local v1, "_arg0":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 147
    .local v2, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 151
    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 153
    .local v6, "_arg4":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/os/IProfilingService$Stub;->requestProfiling(ILandroid/os/Bundle;Ljava/lang/String;JJLjava/lang/String;)V

    .line 156
    nop

    .line 240
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":J
    .end local v8    # "_arg5":Ljava/lang/String;
    :goto_c6
    return v11

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_8f
        :pswitch_8b
        :pswitch_7c
        :pswitch_64
        :pswitch_53
        :pswitch_43
        :pswitch_37
        :pswitch_23
    .end packed-switch
.end method
