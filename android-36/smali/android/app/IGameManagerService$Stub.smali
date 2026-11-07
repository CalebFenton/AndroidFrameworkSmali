.class public abstract Landroid/app/IGameManagerService$Stub;
.super Landroid/os/Binder;
.source "IGameManagerService.java"

# interfaces
.implements Landroid/app/IGameManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IGameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IGameManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addGameModeListener:I = 0xc

.field static final blacklist TRANSACTION_addGameStateListener:I = 0xe

.field static final blacklist TRANSACTION_getAvailableGameModes:I = 0x3

.field static final blacklist TRANSACTION_getGameMode:I = 0x1

.field static final blacklist TRANSACTION_getGameModeInfo:I = 0x7

.field static final blacklist TRANSACTION_getResolutionScalingFactor:I = 0xa

.field static final blacklist TRANSACTION_isAngleEnabled:I = 0x4

.field static final blacklist TRANSACTION_notifyGraphicsEnvironmentSetup:I = 0x5

.field static final blacklist TRANSACTION_removeGameModeListener:I = 0xd

.field static final blacklist TRANSACTION_removeGameStateListener:I = 0xf

.field static final blacklist TRANSACTION_setGameMode:I = 0x2

.field static final blacklist TRANSACTION_setGameServiceProvider:I = 0x8

.field static final blacklist TRANSACTION_setGameState:I = 0x6

.field static final blacklist TRANSACTION_toggleGameDefaultFrameRate:I = 0x10

.field static final blacklist TRANSACTION_updateCustomGameModeConfiguration:I = 0xb

.field static final blacklist TRANSACTION_updateResolutionScalingFactor:I = 0x9


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    nop

    .line 91
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IGameManagerService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "android.app.IGameManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/app/IGameManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    if-eqz p1, :cond_d

    .line 85
    iput-object p1, p0, Landroid/app/IGameManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 86
    return-void

    .line 83
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 99
    if-nez p0, :cond_4

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_4
    const-string v0, "android.app.IGameManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 103
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IGameManagerService;

    if-eqz v1, :cond_14

    .line 104
    move-object v1, v0

    check-cast v1, Landroid/app/IGameManagerService;

    return-object v1

    .line 106
    :cond_14
    new-instance v1, Landroid/app/IGameManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IGameManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 115
    packed-switch p0, :pswitch_data_40

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 179
    :pswitch_5
    const-string/jumbo v0, "toggleGameDefaultFrameRate"

    return-object v0

    .line 175
    :pswitch_9
    const-string/jumbo v0, "removeGameStateListener"

    return-object v0

    .line 171
    :pswitch_d
    const-string v0, "addGameStateListener"

    return-object v0

    .line 167
    :pswitch_10
    const-string/jumbo v0, "removeGameModeListener"

    return-object v0

    .line 163
    :pswitch_14
    const-string v0, "addGameModeListener"

    return-object v0

    .line 159
    :pswitch_17
    const-string/jumbo v0, "updateCustomGameModeConfiguration"

    return-object v0

    .line 155
    :pswitch_1b
    const-string v0, "getResolutionScalingFactor"

    return-object v0

    .line 151
    :pswitch_1e
    const-string/jumbo v0, "updateResolutionScalingFactor"

    return-object v0

    .line 147
    :pswitch_22
    const-string/jumbo v0, "setGameServiceProvider"

    return-object v0

    .line 143
    :pswitch_26
    const-string v0, "getGameModeInfo"

    return-object v0

    .line 139
    :pswitch_29
    const-string/jumbo v0, "setGameState"

    return-object v0

    .line 135
    :pswitch_2d
    const-string/jumbo v0, "notifyGraphicsEnvironmentSetup"

    return-object v0

    .line 131
    :pswitch_31
    const-string/jumbo v0, "isAngleEnabled"

    return-object v0

    .line 127
    :pswitch_35
    const-string v0, "getAvailableGameModes"

    return-object v0

    .line 123
    :pswitch_38
    const-string/jumbo v0, "setGameMode"

    return-object v0

    .line 119
    :pswitch_3c
    const-string v0, "getGameMode"

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 110
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 702
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 190
    invoke-static {p1}, Landroid/app/IGameManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    const-string v0, "android.app.IGameManagerService"

    .line 195
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 196
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 199
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    return v1

    .line 202
    :cond_16
    packed-switch p1, :pswitch_data_176

    .line 387
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 379
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 380
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, v2}, Landroid/app/IGameManagerService$Stub;->toggleGameDefaultFrameRate(Z)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    goto/16 :goto_174

    .line 370
    .end local v2    # "_arg0":Z
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IGameStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameStateListener;

    move-result-object v2

    .line 371
    .local v2, "_arg0":Landroid/app/IGameStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v2}, Landroid/app/IGameManagerService$Stub;->removeGameStateListener(Landroid/app/IGameStateListener;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    goto/16 :goto_174

    .line 361
    .end local v2    # "_arg0":Landroid/app/IGameStateListener;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IGameStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameStateListener;

    move-result-object v2

    .line 362
    .restart local v2    # "_arg0":Landroid/app/IGameStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2}, Landroid/app/IGameManagerService$Stub;->addGameStateListener(Landroid/app/IGameStateListener;)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto/16 :goto_174

    .line 352
    .end local v2    # "_arg0":Landroid/app/IGameStateListener;
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IGameModeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameModeListener;

    move-result-object v2

    .line 353
    .local v2, "_arg0":Landroid/app/IGameModeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2}, Landroid/app/IGameManagerService$Stub;->removeGameModeListener(Landroid/app/IGameModeListener;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto/16 :goto_174

    .line 343
    .end local v2    # "_arg0":Landroid/app/IGameModeListener;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IGameModeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameModeListener;

    move-result-object v2

    .line 344
    .restart local v2    # "_arg0":Landroid/app/IGameModeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Landroid/app/IGameManagerService$Stub;->addGameModeListener(Landroid/app/IGameModeListener;)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto/16 :goto_174

    .line 330
    .end local v2    # "_arg0":Landroid/app/IGameModeListener;
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/app/GameModeConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/GameModeConfiguration;

    .line 334
    .local v3, "_arg1":Landroid/app/GameModeConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 335
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IGameManagerService$Stub;->updateCustomGameModeConfiguration(Ljava/lang/String;Landroid/app/GameModeConfiguration;I)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto/16 :goto_174

    .line 316
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/GameModeConfiguration;
    .end local v4    # "_arg2":I
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 320
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 321
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IGameManagerService$Stub;->getResolutionScalingFactor(Ljava/lang/String;II)F

    move-result v5

    .line 323
    .local v5, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 325
    goto/16 :goto_174

    .line 301
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":F
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 305
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 307
    .local v4, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 308
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IGameManagerService$Stub;->updateResolutionScalingFactor(Ljava/lang/String;IFI)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto/16 :goto_174

    .line 292
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":I
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Landroid/app/IGameManagerService$Stub;->setGameServiceProvider(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_174

    .line 280
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 283
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3}, Landroid/app/IGameManagerService$Stub;->getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;

    move-result-object v4

    .line 285
    .local v4, "_result":Landroid/app/GameModeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 287
    goto/16 :goto_174

    .line 267
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/app/GameModeInfo;
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/app/GameState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/GameState;

    .line 271
    .local v3, "_arg1":Landroid/app/GameState;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 272
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IGameManagerService$Stub;->setGameState(Ljava/lang/String;Landroid/app/GameState;I)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    goto :goto_174

    .line 256
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/GameState;
    .end local v4    # "_arg2":I
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 259
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2, v3}, Landroid/app/IGameManagerService$Stub;->notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto :goto_174

    .line 244
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 247
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Landroid/app/IGameManagerService$Stub;->isAngleEnabled(Ljava/lang/String;I)Z

    move-result v4

    .line 249
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 251
    goto :goto_174

    .line 232
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3}, Landroid/app/IGameManagerService$Stub;->getAvailableGameModes(Ljava/lang/String;I)[I

    move-result-object v4

    .line 237
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 239
    goto :goto_174

    .line 219
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":[I
    :pswitch_148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IGameManagerService$Stub;->setGameMode(Ljava/lang/String;II)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto :goto_174

    .line 207
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3}, Landroid/app/IGameManagerService$Stub;->getGameMode(Ljava/lang/String;I)I

    move-result v4

    .line 212
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    nop

    .line 390
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :goto_174
    return v1

    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_15e
        :pswitch_148
        :pswitch_132
        :pswitch_11c
        :pswitch_10a
        :pswitch_f0
        :pswitch_d9
        :pswitch_ca
        :pswitch_af
        :pswitch_94
        :pswitch_79
        :pswitch_66
        :pswitch_53
        :pswitch_40
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist toggleGameDefaultFrameRate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 697
    iget-object v0, p0, Landroid/app/IGameManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IGameManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IGameManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_GAME_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 698
    return-void
.end method
