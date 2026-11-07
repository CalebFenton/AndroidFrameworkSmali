.class public abstract Landroid/service/vr/IVrManager$Stub;
.super Landroid/os/Binder;
.source "IVrManager.java"

# interfaces
.implements Landroid/service/vr/IVrManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/IVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IVrManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.vr.IVrManager"

.field static final greylist-max-o TRANSACTION_getPersistentVrModeEnabled:I = 0x6

.field static final greylist-max-o TRANSACTION_getVr2dDisplayId:I = 0x9

.field static final greylist-max-o TRANSACTION_getVrModeState:I = 0x5

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x1

.field static final greylist-max-o TRANSACTION_registerPersistentVrStateListener:I = 0x3

.field static final greylist-max-o TRANSACTION_setAndBindCompositor:I = 0xa

.field static final greylist-max-o TRANSACTION_setPersistentVrModeEnabled:I = 0x7

.field static final greylist-max-o TRANSACTION_setStandbyEnabled:I = 0xb

.field static final greylist-max-o TRANSACTION_setVr2dDisplayProperties:I = 0x8

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x2

.field static final greylist-max-o TRANSACTION_unregisterPersistentVrStateListener:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "android.service.vr.IVrManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/vr/IVrManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 136
    if-nez p0, :cond_4

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_4
    const-string v0, "android.service.vr.IVrManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_14

    .line 141
    move-object v1, v0

    check-cast v1, Landroid/service/vr/IVrManager;

    return-object v1

    .line 143
    :cond_14
    new-instance v1, Landroid/service/vr/IVrManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/vr/IVrManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 152
    packed-switch p0, :pswitch_data_30

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 196
    :pswitch_5
    const-string/jumbo v0, "setStandbyEnabled"

    return-object v0

    .line 192
    :pswitch_9
    const-string/jumbo v0, "setAndBindCompositor"

    return-object v0

    .line 188
    :pswitch_d
    const-string/jumbo v0, "getVr2dDisplayId"

    return-object v0

    .line 184
    :pswitch_11
    const-string/jumbo v0, "setVr2dDisplayProperties"

    return-object v0

    .line 180
    :pswitch_15
    const-string/jumbo v0, "setPersistentVrModeEnabled"

    return-object v0

    .line 176
    :pswitch_19
    const-string v0, "getPersistentVrModeEnabled"

    return-object v0

    .line 172
    :pswitch_1c
    const-string/jumbo v0, "getVrModeState"

    return-object v0

    .line 168
    :pswitch_20
    const-string/jumbo v0, "unregisterPersistentVrStateListener"

    return-object v0

    .line 164
    :pswitch_24
    const-string/jumbo v0, "registerPersistentVrStateListener"

    return-object v0

    .line 160
    :pswitch_28
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 156
    :pswitch_2c
    const-string/jumbo v0, "registerListener"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 147
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 588
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 207
    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    const-string v0, "android.service.vr.IVrManager"

    .line 212
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 213
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 216
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    return v1

    .line 219
    :cond_16
    packed-switch p1, :pswitch_data_c8

    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 308
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 309
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->setStandbyEnabled(Z)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_c6

    .line 299
    .end local v2    # "_arg0":Z
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->setAndBindCompositor(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_c6

    .line 291
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3c
    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getVr2dDisplayId()I

    move-result v2

    .line 292
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    goto/16 :goto_c6

    .line 283
    .end local v2    # "_result":I
    :pswitch_48
    sget-object v2, Landroid/app/Vr2dDisplayProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Vr2dDisplayProperties;

    .line 284
    .local v2, "_arg0":Landroid/app/Vr2dDisplayProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto :goto_c6

    .line 274
    .end local v2    # "_arg0":Landroid/app/Vr2dDisplayProperties;
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 275
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->setPersistentVrModeEnabled(Z)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto :goto_c6

    .line 266
    .end local v2    # "_arg0":Z
    :pswitch_68
    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getPersistentVrModeEnabled()Z

    move-result v2

    .line 267
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 269
    goto :goto_c6

    .line 259
    .end local v2    # "_result":Z
    :pswitch_73
    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getVrModeState()Z

    move-result v2

    .line 260
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 262
    goto :goto_c6

    .line 251
    .end local v2    # "_result":Z
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IPersistentVrStateCallbacks;

    move-result-object v2

    .line 252
    .local v2, "_arg0":Landroid/service/vr/IPersistentVrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto :goto_c6

    .line 242
    .end local v2    # "_arg0":Landroid/service/vr/IPersistentVrStateCallbacks;
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IPersistentVrStateCallbacks;

    move-result-object v2

    .line 243
    .restart local v2    # "_arg0":Landroid/service/vr/IPersistentVrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto :goto_c6

    .line 233
    .end local v2    # "_arg0":Landroid/service/vr/IPersistentVrStateCallbacks;
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object v2

    .line 234
    .local v2, "_arg0":Landroid/service/vr/IVrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_c6

    .line 224
    .end local v2    # "_arg0":Landroid/service/vr/IVrStateCallbacks;
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object v2

    .line 225
    .restart local v2    # "_arg0":Landroid/service/vr/IVrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    nop

    .line 319
    .end local v2    # "_arg0":Landroid/service/vr/IVrStateCallbacks;
    :goto_c6
    return v1

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_a2
        :pswitch_90
        :pswitch_7e
        :pswitch_73
        :pswitch_68
        :pswitch_5a
        :pswitch_48
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
