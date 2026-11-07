.class public abstract Landroid/media/tv/ITvRemoteServiceInput$Stub;
.super Landroid/os/Binder;
.source "ITvRemoteServiceInput.java"

# interfaces
.implements Landroid/media/tv/ITvRemoteServiceInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvRemoteServiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvRemoteServiceInput"

.field static final greylist-max-o TRANSACTION_clearInputBridge:I = 0x3

.field static final greylist-max-o TRANSACTION_closeInputBridge:I = 0x2

.field static final blacklist TRANSACTION_openGamepadBridge:I = 0xa

.field static final greylist-max-o TRANSACTION_openInputBridge:I = 0x1

.field static final blacklist TRANSACTION_sendGamepadAxisValue:I = 0xd

.field static final blacklist TRANSACTION_sendGamepadKeyDown:I = 0xb

.field static final blacklist TRANSACTION_sendGamepadKeyUp:I = 0xc

.field static final greylist-max-o TRANSACTION_sendKeyDown:I = 0x5

.field static final greylist-max-o TRANSACTION_sendKeyUp:I = 0x6

.field static final greylist-max-o TRANSACTION_sendPointerDown:I = 0x7

.field static final greylist-max-o TRANSACTION_sendPointerSync:I = 0x9

.field static final greylist-max-o TRANSACTION_sendPointerUp:I = 0x8

.field static final greylist-max-o TRANSACTION_sendTimestamp:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteServiceInput;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_4
    const-string v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvRemoteServiceInput;

    if-eqz v1, :cond_14

    .line 82
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvRemoteServiceInput;

    return-object v1

    .line 84
    :cond_14
    new-instance v1, Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 93
    packed-switch p0, :pswitch_data_2c

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 145
    :pswitch_5
    const-string v0, "sendGamepadAxisValue"

    return-object v0

    .line 141
    :pswitch_8
    const-string v0, "sendGamepadKeyUp"

    return-object v0

    .line 137
    :pswitch_b
    const-string v0, "sendGamepadKeyDown"

    return-object v0

    .line 133
    :pswitch_e
    const-string v0, "openGamepadBridge"

    return-object v0

    .line 129
    :pswitch_11
    const-string v0, "sendPointerSync"

    return-object v0

    .line 125
    :pswitch_14
    const-string v0, "sendPointerUp"

    return-object v0

    .line 121
    :pswitch_17
    const-string v0, "sendPointerDown"

    return-object v0

    .line 117
    :pswitch_1a
    const-string v0, "sendKeyUp"

    return-object v0

    .line 113
    :pswitch_1d
    const-string v0, "sendKeyDown"

    return-object v0

    .line 109
    :pswitch_20
    const-string v0, "sendTimestamp"

    return-object v0

    .line 105
    :pswitch_23
    const-string v0, "clearInputBridge"

    return-object v0

    .line 101
    :pswitch_26
    const-string v0, "closeInputBridge"

    return-object v0

    .line 97
    :pswitch_29
    const-string v0, "openInputBridge"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
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

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 521
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 156
    invoke-static {p1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    const-string v0, "android.media.tv.ITvRemoteServiceInput"

    .line 161
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 162
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 165
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return v1

    .line 168
    :cond_16
    packed-switch p1, :pswitch_data_f6

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 297
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 299
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 302
    .local v4, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendGamepadAxisValue(Landroid/os/IBinder;IF)V

    .line 304
    goto/16 :goto_f4

    .line 287
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":F
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 289
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendGamepadKeyUp(Landroid/os/IBinder;I)V

    .line 292
    goto/16 :goto_f4

    .line 277
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 279
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 280
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendGamepadKeyDown(Landroid/os/IBinder;I)V

    .line 282
    goto/16 :goto_f4

    .line 267
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->openGamepadBridge(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 272
    goto/16 :goto_f4

    .line 259
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 260
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerSync(Landroid/os/IBinder;)V

    .line 262
    goto/16 :goto_f4

    .line 249
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 251
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 252
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerUp(Landroid/os/IBinder;I)V

    .line 254
    goto/16 :goto_f4

    .line 235
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 237
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 241
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 242
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerDown(Landroid/os/IBinder;III)V

    .line 244
    goto :goto_f4

    .line 225
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 227
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 228
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendKeyUp(Landroid/os/IBinder;I)V

    .line 230
    goto :goto_f4

    .line 215
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 217
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendKeyDown(Landroid/os/IBinder;I)V

    .line 220
    goto :goto_f4

    .line 205
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 207
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 208
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendTimestamp(Landroid/os/IBinder;J)V

    .line 210
    goto :goto_f4

    .line 197
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":J
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 198
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->clearInputBridge(Landroid/os/IBinder;)V

    .line 200
    goto :goto_f4

    .line 189
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 190
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->closeInputBridge(Landroid/os/IBinder;)V

    .line 192
    goto :goto_f4

    .line 173
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 175
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 179
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 181
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 182
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 184
    nop

    .line 311
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    :goto_f4
    return v1

    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_cd
        :pswitch_c2
        :pswitch_b3
        :pswitch_a4
        :pswitch_95
        :pswitch_7e
        :pswitch_6e
        :pswitch_62
        :pswitch_52
        :pswitch_42
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
