.class public abstract Landroid/net/ITetheringConnector$Stub;
.super Landroid/os/Binder;
.source "ITetheringConnector.java"

# interfaces
.implements Landroid/net/ITetheringConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ITetheringConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ITetheringConnector$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_isTetheringSupported:I = 0xa

.field static final blacklist TRANSACTION_registerTetheringEventCallback:I = 0x8

.field static final blacklist TRANSACTION_requestLatestTetheringEntitlementResult:I = 0x7

.field static final blacklist TRANSACTION_setPreferTestNetworks:I = 0xc

.field static final blacklist TRANSACTION_setUsbTethering:I = 0x3

.field static final blacklist TRANSACTION_startTethering:I = 0x4

.field static final blacklist TRANSACTION_stopAllTethering:I = 0xb

.field static final blacklist TRANSACTION_stopTethering:I = 0x5

.field static final blacklist TRANSACTION_stopTetheringRequest:I = 0x6

.field static final blacklist TRANSACTION_tether:I = 0x1

.field static final blacklist TRANSACTION_unregisterTetheringEventCallback:I = 0x9

.field static final blacklist TRANSACTION_untether:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.net.ITetheringConnector"

    invoke-virtual {p0, p0, v0}, Landroid/net/ITetheringConnector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringConnector;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.net.ITetheringConnector"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/ITetheringConnector;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/net/ITetheringConnector;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/net/ITetheringConnector$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ITetheringConnector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_2a

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_5
    const-string v0, "setPreferTestNetworks"

    return-object v0

    .line 132
    :pswitch_8
    const-string v0, "stopAllTethering"

    return-object v0

    .line 128
    :pswitch_b
    const-string v0, "isTetheringSupported"

    return-object v0

    .line 124
    :pswitch_e
    const-string v0, "unregisterTetheringEventCallback"

    return-object v0

    .line 120
    :pswitch_11
    const-string v0, "registerTetheringEventCallback"

    return-object v0

    .line 116
    :pswitch_14
    const-string v0, "requestLatestTetheringEntitlementResult"

    return-object v0

    .line 112
    :pswitch_17
    const-string v0, "stopTetheringRequest"

    return-object v0

    .line 108
    :pswitch_1a
    const-string v0, "stopTethering"

    return-object v0

    .line 104
    :pswitch_1d
    const-string v0, "startTethering"

    return-object v0

    .line 100
    :pswitch_20
    const-string v0, "setUsbTethering"

    return-object v0

    .line 96
    :pswitch_23
    const-string v0, "untether"

    return-object v0

    .line 92
    :pswitch_26
    const-string v0, "tether"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
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

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 514
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 147
    invoke-static {p1}, Landroid/net/ITetheringConnector$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const-string v0, "android.net.ITetheringConnector"

    .line 152
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 156
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v1

    .line 159
    :cond_16
    packed-switch p1, :pswitch_data_140

    .line 305
    move-object v4, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 297
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 299
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IIntResultListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIntResultListener;

    move-result-object v3

    .line 300
    .local v3, "_arg1":Landroid/net/IIntResultListener;
    invoke-virtual {p0, v2, v3}, Landroid/net/ITetheringConnector$Stub;->setPreferTestNetworks(ZLandroid/net/IIntResultListener;)V

    .line 301
    move-object v4, p0

    goto/16 :goto_13f

    .line 286
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/net/IIntResultListener;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IIntResultListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIntResultListener;

    move-result-object v4

    .line 291
    .local v4, "_arg2":Landroid/net/IIntResultListener;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/ITetheringConnector$Stub;->stopAllTethering(Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    .line 292
    move-object v4, p0

    goto/16 :goto_13f

    .line 275
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/net/IIntResultListener;
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 279
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IIntResultListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIntResultListener;

    move-result-object v4

    .line 280
    .restart local v4    # "_arg2":Landroid/net/IIntResultListener;
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/ITetheringConnector$Stub;->isTetheringSupported(Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    .line 281
    move-object v4, p0

    goto/16 :goto_13f

    .line 266
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/net/IIntResultListener;
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringEventCallback;

    move-result-object v2

    .line 268
    .local v2, "_arg0":Landroid/net/ITetheringEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/ITetheringConnector$Stub;->unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V

    .line 270
    move-object v4, p0

    goto/16 :goto_13f

    .line 257
    .end local v2    # "_arg0":Landroid/net/ITetheringEventCallback;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ITetheringEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringEventCallback;

    move-result-object v2

    .line 259
    .restart local v2    # "_arg0":Landroid/net/ITetheringEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 260
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/net/ITetheringConnector$Stub;->registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V

    .line 261
    move-object v4, p0

    goto/16 :goto_13f

    .line 242
    .end local v2    # "_arg0":Landroid/net/ITetheringEventCallback;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 244
    .local v5, "_arg0":I
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/os/ResultReceiver;

    .line 246
    .local v6, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 248
    .local v7, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "_arg4":Ljava/lang/String;
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/net/ITetheringConnector$Stub;->requestLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;ZLjava/lang/String;Ljava/lang/String;)V

    .line 252
    goto/16 :goto_13f

    .line 229
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Landroid/os/ResultReceiver;
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :pswitch_a0
    move-object v4, p0

    sget-object v2, Landroid/net/TetheringManager$TetheringRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheringManager$TetheringRequest;

    .line 231
    .local v2, "_arg0":Landroid/net/TetheringManager$TetheringRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IIntResultListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIntResultListener;

    move-result-object v6

    .line 236
    .local v6, "_arg3":Landroid/net/IIntResultListener;
    invoke-virtual {p0, v2, v3, v5, v6}, Landroid/net/ITetheringConnector$Stub;->stopTetheringRequest(Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    .line 237
    goto/16 :goto_13f

    .line 216
    .end local v2    # "_arg0":Landroid/net/TetheringManager$TetheringRequest;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/net/IIntResultListener;
    :pswitch_be
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 220
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IIntResultListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIntResultListener;

    move-result-object v6

    .line 223
    .restart local v6    # "_arg3":Landroid/net/IIntResultListener;
    invoke-virtual {p0, v2, v3, v5, v6}, Landroid/net/ITetheringConnector$Stub;->stopTethering(ILjava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    .line 224
    goto :goto_13f

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/net/IIntResultListener;
    :pswitch_d7
    move-object v4, p0

    sget-object v2, Landroid/net/TetheringRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheringRequestParcel;

    .line 205
    .local v2, "_arg0":Landroid/net/TetheringRequestParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 209
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IIntResultListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIntResultListener;

    move-result-object v6

    .line 210
    .restart local v6    # "_arg3":Landroid/net/IIntResultListener;
    invoke-virtual {p0, v2, v3, v5, v6}, Landroid/net/ITetheringConnector$Stub;->startTethering(Landroid/net/TetheringRequestParcel;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    .line 211
    goto :goto_13f

    .line 190
    .end local v2    # "_arg0":Landroid/net/TetheringRequestParcel;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/net/IIntResultListener;
    :pswitch_f4
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 192
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 196
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IIntResultListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIntResultListener;

    move-result-object v6

    .line 197
    .restart local v6    # "_arg3":Landroid/net/IIntResultListener;
    invoke-virtual {p0, v2, v3, v5, v6}, Landroid/net/ITetheringConnector$Stub;->setUsbTethering(ZLjava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    .line 198
    goto :goto_13f

    .line 177
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/net/IIntResultListener;
    :pswitch_10d
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 183
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IIntResultListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIntResultListener;

    move-result-object v6

    .line 184
    .restart local v6    # "_arg3":Landroid/net/IIntResultListener;
    invoke-virtual {p0, v2, v3, v5, v6}, Landroid/net/ITetheringConnector$Stub;->untether(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    .line 185
    goto :goto_13f

    .line 164
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/net/IIntResultListener;
    :pswitch_126
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 170
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IIntResultListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIntResultListener;

    move-result-object v6

    .line 171
    .restart local v6    # "_arg3":Landroid/net/IIntResultListener;
    invoke-virtual {p0, v2, v3, v5, v6}, Landroid/net/ITetheringConnector$Stub;->tether(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/IIntResultListener;)V

    .line 172
    nop

    .line 308
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/net/IIntResultListener;
    :goto_13f
    return v1

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_126
        :pswitch_10d
        :pswitch_f4
        :pswitch_d7
        :pswitch_be
        :pswitch_a0
        :pswitch_81
        :pswitch_6f
        :pswitch_5d
        :pswitch_47
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
