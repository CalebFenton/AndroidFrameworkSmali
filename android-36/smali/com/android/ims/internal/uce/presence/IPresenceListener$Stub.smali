.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;
.super Landroid/os/Binder;
.source "IPresenceListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceListener"

.field static final greylist-max-o TRANSACTION_capInfoReceived:I = 0x7

.field static final greylist-max-o TRANSACTION_cmdStatus:I = 0x5

.field static final greylist-max-o TRANSACTION_getVersionCb:I = 0x1

.field static final greylist-max-o TRANSACTION_listCapInfoReceived:I = 0x8

.field static final greylist-max-o TRANSACTION_publishTriggering:I = 0x4

.field static final greylist-max-o TRANSACTION_serviceAvailable:I = 0x2

.field static final greylist-max-o TRANSACTION_serviceUnAvailable:I = 0x3

.field static final greylist-max-o TRANSACTION_sipResponseReceived:I = 0x6

.field static final greylist-max-o TRANSACTION_unpublishMessageSent:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 102
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 110
    if-nez p0, :cond_4

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_4
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceListener;

    if-eqz v1, :cond_14

    .line 115
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/presence/IPresenceListener;

    return-object v1

    .line 117
    :cond_14
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 126
    packed-switch p0, :pswitch_data_24

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 162
    :pswitch_5
    const-string/jumbo v0, "unpublishMessageSent"

    return-object v0

    .line 158
    :pswitch_9
    const-string v0, "listCapInfoReceived"

    return-object v0

    .line 154
    :pswitch_c
    const-string v0, "capInfoReceived"

    return-object v0

    .line 150
    :pswitch_f
    const-string/jumbo v0, "sipResponseReceived"

    return-object v0

    .line 146
    :pswitch_13
    const-string v0, "cmdStatus"

    return-object v0

    .line 142
    :pswitch_16
    const-string v0, "publishTriggering"

    return-object v0

    .line 138
    :pswitch_19
    const-string/jumbo v0, "serviceUnAvailable"

    return-object v0

    .line 134
    :pswitch_1d
    const-string/jumbo v0, "serviceAvailable"

    return-object v0

    .line 130
    :pswitch_21
    const-string v0, "getVersionCb"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 121
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 486
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 173
    invoke-static {p1}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    .line 178
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 182
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v1

    .line 185
    :cond_16
    packed-switch p1, :pswitch_data_c0

    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 265
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->unpublishMessageSent()V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto/16 :goto_bf

    .line 255
    :pswitch_26
    sget-object v2, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;

    .line 257
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    sget-object v3, Lcom/android/ims/internal/uce/presence/PresResInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/ims/internal/uce/presence/PresResInfo;

    .line 258
    .local v3, "_arg1":[Lcom/android/ims/internal/uce/presence/PresResInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->listCapInfoReceived(Lcom/android/ims/internal/uce/presence/PresRlmiInfo;[Lcom/android/ims/internal/uce/presence/PresResInfo;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_bf

    .line 244
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    .end local v3    # "_arg1":[Lcom/android/ims/internal/uce/presence/PresResInfo;
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 247
    .local v3, "_arg1":[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->capInfoReceived(Ljava/lang/String;[Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_bf

    .line 235
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    :pswitch_57
    sget-object v2, Lcom/android/ims/internal/uce/presence/PresSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/presence/PresSipResponse;

    .line 236
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->sipResponseReceived(Lcom/android/ims/internal/uce/presence/PresSipResponse;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto :goto_bf

    .line 226
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    :pswitch_69
    sget-object v2, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/presence/PresCmdStatus;

    .line 227
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->cmdStatus(Lcom/android/ims/internal/uce/presence/PresCmdStatus;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto :goto_bf

    .line 217
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    :pswitch_7b
    sget-object v2, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    .line 218
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->publishTriggering(Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto :goto_bf

    .line 208
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    :pswitch_8d
    sget-object v2, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;

    .line 209
    .local v2, "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->serviceUnAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto :goto_bf

    .line 199
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_9f
    sget-object v2, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;

    .line 200
    .restart local v2    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_bf

    .line 190
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->getVersionCb(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    nop

    .line 274
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_bf
    return v1

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_9f
        :pswitch_8d
        :pswitch_7b
        :pswitch_69
        :pswitch_57
        :pswitch_41
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
