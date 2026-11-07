.class public abstract Landroid/net/sip/ISipSessionListener$Stub;
.super Landroid/os/Binder;
.source "ISipSessionListener.java"

# interfaces
.implements Landroid/net/sip/ISipSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/ISipSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipSessionListener"

.field static final greylist-max-o TRANSACTION_onCallBusy:I = 0x6

.field static final greylist-max-o TRANSACTION_onCallChangeFailed:I = 0x9

.field static final greylist-max-o TRANSACTION_onCallEnded:I = 0x5

.field static final greylist-max-o TRANSACTION_onCallEstablished:I = 0x4

.field static final greylist-max-o TRANSACTION_onCallTransferring:I = 0x7

.field static final greylist-max-o TRANSACTION_onCalling:I = 0x1

.field static final greylist-max-o TRANSACTION_onError:I = 0x8

.field static final greylist-max-o TRANSACTION_onRegistering:I = 0xa

.field static final greylist-max-o TRANSACTION_onRegistrationDone:I = 0xb

.field static final greylist-max-o TRANSACTION_onRegistrationFailed:I = 0xc

.field static final greylist-max-o TRANSACTION_onRegistrationTimeout:I = 0xd

.field static final greylist-max-o TRANSACTION_onRinging:I = 0x2

.field static final greylist-max-o TRANSACTION_onRingingBack:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 146
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 147
    const-string v0, "android.net.sip.ISipSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 155
    if-nez p0, :cond_4

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_4
    const-string v0, "android.net.sip.ISipSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 159
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/sip/ISipSessionListener;

    if-eqz v1, :cond_14

    .line 160
    move-object v1, v0

    check-cast v1, Landroid/net/sip/ISipSessionListener;

    return-object v1

    .line 162
    :cond_14
    new-instance v1, Landroid/net/sip/ISipSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/sip/ISipSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 166
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

    .line 170
    const-string v0, "android.net.sip.ISipSessionListener"

    .line 171
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 172
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 175
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return v1

    .line 178
    :cond_16
    packed-switch p1, :pswitch_data_140

    .line 321
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 313
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 314
    .local v2, "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_13f

    .line 300
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 302
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 304
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    goto/16 :goto_13f

    .line 289
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 291
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 292
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto/16 :goto_13f

    .line 280
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":I
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 281
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto/16 :goto_13f

    .line 267
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 271
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 272
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    goto/16 :goto_13f

    .line 254
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 256
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 259
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto/16 :goto_13f

    .line 243
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 245
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipSessionListener$Stub;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto/16 :goto_13f

    .line 234
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 235
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onCallBusy(Landroid/net/sip/ISipSession;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto :goto_13f

    .line 225
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 226
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onCallEnded(Landroid/net/sip/ISipSession;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_13f

    .line 214
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 216
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipSessionListener$Stub;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_13f

    .line 205
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 206
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onRingingBack(Landroid/net/sip/ISipSession;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    goto :goto_13f

    .line 192
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 194
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    sget-object v3, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/sip/SipProfile;

    .line 196
    .local v3, "_arg1":Landroid/net/sip/SipProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 197
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_13f

    .line 183
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":Landroid/net/sip/SipProfile;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 184
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onCalling(Landroid/net/sip/ISipSession;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    nop

    .line 324
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :goto_13f
    return v1

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_12d
        :pswitch_10f
        :pswitch_fd
        :pswitch_e7
        :pswitch_d5
        :pswitch_c3
        :pswitch_ac
        :pswitch_91
        :pswitch_76
        :pswitch_63
        :pswitch_4c
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
