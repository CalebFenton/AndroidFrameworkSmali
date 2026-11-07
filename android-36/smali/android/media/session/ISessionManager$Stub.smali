.class public abstract Landroid/media/session/ISessionManager$Stub;
.super Landroid/os/Binder;
.source "ISessionManager.java"

# interfaces
.implements Landroid/media/session/ISessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionManager"

.field static final blacklist TRANSACTION_addOnMediaKeyEventDispatchedListener:I = 0x11

.field static final blacklist TRANSACTION_addOnMediaKeyEventSessionChangedListener:I = 0x13

.field static final blacklist TRANSACTION_addSession2TokensListener:I = 0xc

.field static final greylist-max-o TRANSACTION_addSessionsListener:I = 0xa

.field static final greylist-max-o TRANSACTION_createSession:I = 0x1

.field static final greylist-max-o TRANSACTION_dispatchAdjustVolume:I = 0x9

.field static final greylist-max-o TRANSACTION_dispatchMediaKeyEvent:I = 0x5

.field static final blacklist TRANSACTION_dispatchMediaKeyEventToSessionAsSystemService:I = 0x6

.field static final greylist-max-o TRANSACTION_dispatchVolumeKeyEvent:I = 0x7

.field static final blacklist TRANSACTION_dispatchVolumeKeyEventToSessionAsSystemService:I = 0x8

.field static final blacklist TRANSACTION_expireTempEngagedSessions:I = 0x1e

.field static final blacklist TRANSACTION_getMediaKeyEventSession:I = 0x3

.field static final blacklist TRANSACTION_getMediaKeyEventSessionPackageName:I = 0x4

.field static final blacklist TRANSACTION_getSessionPolicies:I = 0x1c

.field static final greylist-max-o TRANSACTION_getSessions:I = 0x2

.field static final blacklist TRANSACTION_hasCustomMediaKeyDispatcher:I = 0x1a

.field static final blacklist TRANSACTION_hasCustomMediaSessionPolicyProvider:I = 0x1b

.field static final greylist-max-o TRANSACTION_isGlobalPriorityActive:I = 0x10

.field static final greylist-max-o TRANSACTION_isTrusted:I = 0x17

.field static final blacklist TRANSACTION_registerRemoteSessionCallback:I = 0xe

.field static final blacklist TRANSACTION_removeOnMediaKeyEventDispatchedListener:I = 0x12

.field static final blacklist TRANSACTION_removeOnMediaKeyEventSessionChangedListener:I = 0x14

.field static final blacklist TRANSACTION_removeSession2TokensListener:I = 0xd

.field static final greylist-max-o TRANSACTION_removeSessionsListener:I = 0xb

.field static final blacklist TRANSACTION_setCustomMediaKeyDispatcher:I = 0x18

.field static final blacklist TRANSACTION_setCustomMediaSessionPolicyProvider:I = 0x19

.field static final greylist-max-o TRANSACTION_setOnMediaKeyListener:I = 0x16

.field static final greylist-max-o TRANSACTION_setOnVolumeKeyLongPressListener:I = 0x15

.field static final blacklist TRANSACTION_setSessionPolicies:I = 0x1d

.field static final blacklist TRANSACTION_unregisterRemoteSessionCallback:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 133
    const-string v0, "android.media.session.ISessionManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 141
    if-nez p0, :cond_4

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_4
    const-string v0, "android.media.session.ISessionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 145
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/ISessionManager;

    if-eqz v1, :cond_14

    .line 146
    move-object v1, v0

    check-cast v1, Landroid/media/session/ISessionManager;

    return-object v1

    .line 148
    :cond_14
    new-instance v1, Landroid/media/session/ISessionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 157
    packed-switch p0, :pswitch_data_60

    .line 281
    const/4 v0, 0x0

    return-object v0

    .line 277
    :pswitch_5
    const-string v0, "expireTempEngagedSessions"

    return-object v0

    .line 273
    :pswitch_8
    const-string v0, "setSessionPolicies"

    return-object v0

    .line 269
    :pswitch_b
    const-string v0, "getSessionPolicies"

    return-object v0

    .line 265
    :pswitch_e
    const-string v0, "hasCustomMediaSessionPolicyProvider"

    return-object v0

    .line 261
    :pswitch_11
    const-string v0, "hasCustomMediaKeyDispatcher"

    return-object v0

    .line 257
    :pswitch_14
    const-string v0, "setCustomMediaSessionPolicyProvider"

    return-object v0

    .line 253
    :pswitch_17
    const-string v0, "setCustomMediaKeyDispatcher"

    return-object v0

    .line 249
    :pswitch_1a
    const-string v0, "isTrusted"

    return-object v0

    .line 245
    :pswitch_1d
    const-string v0, "setOnMediaKeyListener"

    return-object v0

    .line 241
    :pswitch_20
    const-string v0, "setOnVolumeKeyLongPressListener"

    return-object v0

    .line 237
    :pswitch_23
    const-string v0, "removeOnMediaKeyEventSessionChangedListener"

    return-object v0

    .line 233
    :pswitch_26
    const-string v0, "addOnMediaKeyEventSessionChangedListener"

    return-object v0

    .line 229
    :pswitch_29
    const-string v0, "removeOnMediaKeyEventDispatchedListener"

    return-object v0

    .line 225
    :pswitch_2c
    const-string v0, "addOnMediaKeyEventDispatchedListener"

    return-object v0

    .line 221
    :pswitch_2f
    const-string v0, "isGlobalPriorityActive"

    return-object v0

    .line 217
    :pswitch_32
    const-string v0, "unregisterRemoteSessionCallback"

    return-object v0

    .line 213
    :pswitch_35
    const-string v0, "registerRemoteSessionCallback"

    return-object v0

    .line 209
    :pswitch_38
    const-string v0, "removeSession2TokensListener"

    return-object v0

    .line 205
    :pswitch_3b
    const-string v0, "addSession2TokensListener"

    return-object v0

    .line 201
    :pswitch_3e
    const-string v0, "removeSessionsListener"

    return-object v0

    .line 197
    :pswitch_41
    const-string v0, "addSessionsListener"

    return-object v0

    .line 193
    :pswitch_44
    const-string v0, "dispatchAdjustVolume"

    return-object v0

    .line 189
    :pswitch_47
    const-string v0, "dispatchVolumeKeyEventToSessionAsSystemService"

    return-object v0

    .line 185
    :pswitch_4a
    const-string v0, "dispatchVolumeKeyEvent"

    return-object v0

    .line 181
    :pswitch_4d
    const-string v0, "dispatchMediaKeyEventToSessionAsSystemService"

    return-object v0

    .line 177
    :pswitch_50
    const-string v0, "dispatchMediaKeyEvent"

    return-object v0

    .line 173
    :pswitch_53
    const-string v0, "getMediaKeyEventSessionPackageName"

    return-object v0

    .line 169
    :pswitch_56
    const-string v0, "getMediaKeyEventSession"

    return-object v0

    .line 165
    :pswitch_59
    const-string v0, "getSessions"

    return-object v0

    .line 161
    :pswitch_5c
    const-string v0, "createSession"

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
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

    .line 152
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1201
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 288
    invoke-static {p1}, Landroid/media/session/ISessionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 292
    const-string v7, "android.media.session.ISessionManager"

    .line 293
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 294
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 297
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    return v8

    .line 300
    :cond_16
    packed-switch p1, :pswitch_data_2ce

    .line 636
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 630
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/session/ISessionManager$Stub;->expireTempEngagedSessions()V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto/16 :goto_2cc

    .line 620
    :pswitch_26
    sget-object v1, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$Token;

    .line 622
    .local v1, "_arg0":Landroid/media/session/MediaSession$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 623
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {p0, v1, v2}, Landroid/media/session/ISessionManager$Stub;->setSessionPolicies(Landroid/media/session/MediaSession$Token;I)V

    .line 625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    goto/16 :goto_2cc

    .line 610
    .end local v1    # "_arg0":Landroid/media/session/MediaSession$Token;
    .end local v2    # "_arg1":I
    :pswitch_3d
    sget-object v1, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$Token;

    .line 611
    .restart local v1    # "_arg0":Landroid/media/session/MediaSession$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->getSessionPolicies(Landroid/media/session/MediaSession$Token;)I

    move-result v2

    .line 613
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    goto/16 :goto_2cc

    .line 600
    .end local v1    # "_arg0":Landroid/media/session/MediaSession$Token;
    .end local v2    # "_result":I
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->hasCustomMediaSessionPolicyProvider(Ljava/lang/String;)Z

    move-result v2

    .line 603
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 605
    goto/16 :goto_2cc

    .line 590
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 591
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->hasCustomMediaKeyDispatcher(Ljava/lang/String;)Z

    move-result v2

    .line 593
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 595
    goto/16 :goto_2cc

    .line 581
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 582
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->setCustomMediaSessionPolicyProvider(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    goto/16 :goto_2cc

    .line 572
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 573
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->setCustomMediaKeyDispatcher(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto/16 :goto_2cc

    .line 558
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 560
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 562
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 563
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionManager$Stub;->isTrusted(Ljava/lang/String;II)Z

    move-result v4

    .line 565
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 567
    goto/16 :goto_2cc

    .line 549
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/IOnMediaKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v1

    .line 550
    .local v1, "_arg0":Landroid/media/session/IOnMediaKeyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto/16 :goto_2cc

    .line 540
    .end local v1    # "_arg0":Landroid/media/session/IOnMediaKeyListener;
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v1

    .line 541
    .local v1, "_arg0":Landroid/media/session/IOnVolumeKeyLongPressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto/16 :goto_2cc

    .line 531
    .end local v1    # "_arg0":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    move-result-object v1

    .line 532
    .local v1, "_arg0":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    goto/16 :goto_2cc

    .line 520
    .end local v1    # "_arg0":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    move-result-object v1

    .line 522
    .restart local v1    # "_arg0":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v1, v2}, Landroid/media/session/ISessionManager$Stub;->addOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    goto/16 :goto_2cc

    .line 511
    .end local v1    # "_arg0":Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    move-result-object v1

    .line 512
    .local v1, "_arg0":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->removeOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    goto/16 :goto_2cc

    .line 502
    .end local v1    # "_arg0":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/IOnMediaKeyEventDispatchedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    move-result-object v1

    .line 503
    .restart local v1    # "_arg0":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->addOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    goto/16 :goto_2cc

    .line 494
    .end local v1    # "_arg0":Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    :pswitch_129
    invoke-virtual {p0}, Landroid/media/session/ISessionManager$Stub;->isGlobalPriorityActive()Z

    move-result v1

    .line 495
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 497
    goto/16 :goto_2cc

    .line 486
    .end local v1    # "_result":Z
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRemoteSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteSessionCallback;

    move-result-object v1

    .line 487
    .local v1, "_arg0":Landroid/media/IRemoteSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->unregisterRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    goto/16 :goto_2cc

    .line 477
    .end local v1    # "_arg0":Landroid/media/IRemoteSessionCallback;
    :pswitch_148
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRemoteSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteSessionCallback;

    move-result-object v1

    .line 478
    .restart local v1    # "_arg0":Landroid/media/IRemoteSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->registerRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_2cc

    .line 468
    .end local v1    # "_arg0":Landroid/media/IRemoteSessionCallback;
    :pswitch_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/ISession2TokensListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISession2TokensListener;

    move-result-object v1

    .line 469
    .local v1, "_arg0":Landroid/media/session/ISession2TokensListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    goto/16 :goto_2cc

    .line 457
    .end local v1    # "_arg0":Landroid/media/session/ISession2TokensListener;
    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/ISession2TokensListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISession2TokensListener;

    move-result-object v1

    .line 459
    .restart local v1    # "_arg0":Landroid/media/session/ISession2TokensListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 460
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {p0, v1, v2}, Landroid/media/session/ISessionManager$Stub;->addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    goto/16 :goto_2cc

    .line 448
    .end local v1    # "_arg0":Landroid/media/session/ISession2TokensListener;
    .end local v2    # "_arg1":I
    :pswitch_185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/IActiveSessionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v1

    .line 449
    .local v1, "_arg0":Landroid/media/session/IActiveSessionsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    goto/16 :goto_2cc

    .line 435
    .end local v1    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    :pswitch_198
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/IActiveSessionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v1

    .line 437
    .restart local v1    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 439
    .local v2, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 440
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionManager$Stub;->addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    goto/16 :goto_2cc

    .line 418
    .end local v1    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":I
    :pswitch_1b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 424
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 426
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 427
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionManager$Stub;->dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto/16 :goto_2cc

    .line 403
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_1d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 405
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 409
    .local v3, "_arg2":Landroid/view/KeyEvent;
    sget-object v4, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSession$Token;

    .line 410
    .local v4, "_arg3":Landroid/media/session/MediaSession$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/session/ISessionManager$Stub;->dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_2cc

    .line 384
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/view/KeyEvent;
    .end local v4    # "_arg3":Landroid/media/session/MediaSession$Token;
    :pswitch_1fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 388
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 390
    .local v3, "_arg2":Z
    sget-object v4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    .line 392
    .local v4, "_arg3":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 394
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 395
    .local v6, "_arg5":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/ISessionManager$Stub;->dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto/16 :goto_2cc

    .line 370
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/view/KeyEvent;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    :pswitch_222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 374
    .local v2, "_arg1":Landroid/view/KeyEvent;
    sget-object v3, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSession$Token;

    .line 375
    .local v3, "_arg2":Landroid/media/session/MediaSession$Token;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/session/ISessionManager$Stub;->dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v4

    .line 377
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 379
    goto/16 :goto_2cc

    .line 355
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/view/KeyEvent;
    .end local v3    # "_arg2":Landroid/media/session/MediaSession$Token;
    .end local v4    # "_result":Z
    :pswitch_245
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 359
    .local v2, "_arg1":Z
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 361
    .local v3, "_arg2":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 362
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/session/ISessionManager$Stub;->dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto :goto_2cc

    .line 345
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/view/KeyEvent;
    .end local v4    # "_arg3":Z
    :pswitch_263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->getMediaKeyEventSessionPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    goto :goto_2cc

    .line 335
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionManager$Stub;->getMediaKeyEventSession(Ljava/lang/String;)Landroid/media/session/MediaSession$Token;

    move-result-object v2

    .line 338
    .local v2, "_result":Landroid/media/session/MediaSession$Token;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 340
    goto :goto_2cc

    .line 323
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/media/session/MediaSession$Token;
    :pswitch_287
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 325
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 326
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v1, v2}, Landroid/media/session/ISessionManager$Stub;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3

    .line 328
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 330
    goto :goto_2cc

    .line 305
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    :pswitch_2a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/session/ISessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;

    move-result-object v2

    .line 309
    .local v2, "_arg1":Landroid/media/session/ISessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 313
    .local v4, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 314
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/session/ISessionManager$Stub;->createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;

    move-result-object v6

    .line 316
    .local v6, "_result":Landroid/media/session/ISession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 318
    nop

    .line 639
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/media/session/ISessionCallback;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/media/session/ISession;
    :goto_2cc
    return v8

    nop

    :pswitch_data_2ce
    .packed-switch 0x1
        :pswitch_2a1
        :pswitch_287
        :pswitch_275
        :pswitch_263
        :pswitch_245
        :pswitch_222
        :pswitch_1fa
        :pswitch_1d7
        :pswitch_1b7
        :pswitch_198
        :pswitch_185
        :pswitch_16e
        :pswitch_15b
        :pswitch_148
        :pswitch_135
        :pswitch_129
        :pswitch_116
        :pswitch_103
        :pswitch_ec
        :pswitch_d9
        :pswitch_c6
        :pswitch_b3
        :pswitch_98
        :pswitch_89
        :pswitch_7a
        :pswitch_67
        :pswitch_54
        :pswitch_3d
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
