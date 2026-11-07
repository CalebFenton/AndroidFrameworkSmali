.class public abstract Landroid/net/sip/ISipSession$Stub;
.super Landroid/os/Binder;
.source "ISipSession.java"

# interfaces
.implements Landroid/net/sip/ISipSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/ISipSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipSession"

.field static final greylist-max-o TRANSACTION_answerCall:I = 0xb

.field static final greylist-max-o TRANSACTION_changeCall:I = 0xd

.field static final greylist-max-o TRANSACTION_endCall:I = 0xc

.field static final greylist-max-o TRANSACTION_getCallId:I = 0x6

.field static final greylist-max-o TRANSACTION_getLocalIp:I = 0x1

.field static final greylist-max-o TRANSACTION_getLocalProfile:I = 0x2

.field static final greylist-max-o TRANSACTION_getPeerProfile:I = 0x3

.field static final greylist-max-o TRANSACTION_getState:I = 0x4

.field static final greylist-max-o TRANSACTION_isInCall:I = 0x5

.field static final greylist-max-o TRANSACTION_makeCall:I = 0xa

.field static final greylist-max-o TRANSACTION_register:I = 0x8

.field static final greylist-max-o TRANSACTION_setListener:I = 0x7

.field static final greylist-max-o TRANSACTION_unregister:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 170
    const-string v0, "android.net.sip.ISipSession"

    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 178
    if-nez p0, :cond_4

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_4
    const-string v0, "android.net.sip.ISipSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 182
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/sip/ISipSession;

    if-eqz v1, :cond_14

    .line 183
    move-object v1, v0

    check-cast v1, Landroid/net/sip/ISipSession;

    return-object v1

    .line 185
    :cond_14
    new-instance v1, Landroid/net/sip/ISipSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/sip/ISipSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 189
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    const-string v0, "android.net.sip.ISipSession"

    .line 194
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 195
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 198
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    return v1

    .line 201
    :cond_16
    packed-switch p1, :pswitch_data_d0

    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 302
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 305
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipSession$Stub;->changeCall(Ljava/lang/String;I)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    goto/16 :goto_cf

    .line 295
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_31
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->endCall()V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto/16 :goto_cf

    .line 285
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 288
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipSession$Stub;->answerCall(Ljava/lang/String;I)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    goto/16 :goto_cf

    .line 272
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_4c
    sget-object v2, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 274
    .local v2, "_arg0":Landroid/net/sip/SipProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 277
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipSession$Stub;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    goto :goto_cf

    .line 265
    .end local v2    # "_arg0":Landroid/net/sip/SipProfile;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_66
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->unregister()V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto :goto_cf

    .line 257
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSession$Stub;->register(I)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_cf

    .line 248
    .end local v2    # "_arg0":I
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    move-result-object v2

    .line 249
    .local v2, "_arg0":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSession$Stub;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto :goto_cf

    .line 240
    .end local v2    # "_arg0":Landroid/net/sip/ISipSessionListener;
    :pswitch_8d
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    goto :goto_cf

    .line 233
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_98
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->isInCall()Z

    move-result v2

    .line 234
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 236
    goto :goto_cf

    .line 226
    .end local v2    # "_result":Z
    :pswitch_a3
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->getState()I

    move-result v2

    .line 227
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    goto :goto_cf

    .line 219
    .end local v2    # "_result":I
    :pswitch_ae
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    .line 220
    .local v2, "_result":Landroid/net/sip/SipProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 222
    goto :goto_cf

    .line 212
    .end local v2    # "_result":Landroid/net/sip/SipProfile;
    :pswitch_b9
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    .line 213
    .restart local v2    # "_result":Landroid/net/sip/SipProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    goto :goto_cf

    .line 205
    .end local v2    # "_result":Landroid/net/sip/SipProfile;
    :pswitch_c4
    invoke-virtual {p0}, Landroid/net/sip/ISipSession$Stub;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    nop

    .line 315
    .end local v2    # "_result":Ljava/lang/String;
    :goto_cf
    return v1

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_b9
        :pswitch_ae
        :pswitch_a3
        :pswitch_98
        :pswitch_8d
        :pswitch_7b
        :pswitch_6d
        :pswitch_66
        :pswitch_4c
        :pswitch_39
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
