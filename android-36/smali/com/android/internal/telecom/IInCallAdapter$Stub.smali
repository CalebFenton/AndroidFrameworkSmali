.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final blacklist TRANSACTION_addConferenceParticipants:I = 0x17

.field static final greylist-max-o TRANSACTION_answerCall:I = 0x1

.field static final greylist-max-o TRANSACTION_conference:I = 0x13

.field static final blacklist TRANSACTION_consultativeTransfer:I = 0x6

.field static final greylist-max-o TRANSACTION_deflectCall:I = 0x2

.field static final greylist-max-o TRANSACTION_disconnectCall:I = 0x7

.field static final blacklist TRANSACTION_enterBackgroundAudioProcessing:I = 0xd

.field static final blacklist TRANSACTION_exitBackgroundAudioProcessing:I = 0xe

.field static final greylist-max-o TRANSACTION_handoverTo:I = 0x22

.field static final greylist-max-o TRANSACTION_holdCall:I = 0x8

.field static final greylist-max-o TRANSACTION_mergeConference:I = 0x15

.field static final greylist-max-o TRANSACTION_mute:I = 0xa

.field static final greylist-max-o TRANSACTION_phoneAccountSelected:I = 0x12

.field static final greylist-max-o TRANSACTION_playDtmfTone:I = 0xf

.field static final greylist-max-o TRANSACTION_postDialContinue:I = 0x11

.field static final greylist-max-o TRANSACTION_pullExternalCall:I = 0x1a

.field static final greylist-max-o TRANSACTION_putExtras:I = 0x1c

.field static final greylist-max-o TRANSACTION_rejectCall:I = 0x3

.field static final blacklist TRANSACTION_rejectCallWithReason:I = 0x4

.field static final greylist-max-o TRANSACTION_removeExtras:I = 0x1d

.field static final blacklist TRANSACTION_requestCallEndpointChange:I = 0xc

.field static final greylist-max-o TRANSACTION_respondToRttRequest:I = 0x1f

.field static final greylist-max-o TRANSACTION_sendCallEvent:I = 0x1b

.field static final greylist-max-o TRANSACTION_sendRttRequest:I = 0x1e

.field static final greylist-max-o TRANSACTION_setAudioRoute:I = 0xb

.field static final greylist-max-o TRANSACTION_setRttMode:I = 0x21

.field static final greylist-max-o TRANSACTION_splitFromConference:I = 0x14

.field static final greylist-max-o TRANSACTION_stopDtmfTone:I = 0x10

.field static final greylist-max-o TRANSACTION_stopRtt:I = 0x20

.field static final greylist-max-o TRANSACTION_swapConference:I = 0x16

.field static final blacklist TRANSACTION_transferCall:I = 0x5

.field static final greylist-max-o TRANSACTION_turnOffProximitySensor:I = 0x19

.field static final greylist-max-o TRANSACTION_turnOnProximitySensor:I = 0x18

.field static final greylist-max-o TRANSACTION_unholdCall:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 136
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 144
    if-nez p0, :cond_4

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_4
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 148
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_14

    .line 149
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IInCallAdapter;

    return-object v1

    .line 151
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 160
    packed-switch p0, :pswitch_data_82

    .line 300
    const/4 v0, 0x0

    return-object v0

    .line 296
    :pswitch_5
    const-string v0, "handoverTo"

    return-object v0

    .line 292
    :pswitch_8
    const-string/jumbo v0, "setRttMode"

    return-object v0

    .line 288
    :pswitch_c
    const-string/jumbo v0, "stopRtt"

    return-object v0

    .line 284
    :pswitch_10
    const-string/jumbo v0, "respondToRttRequest"

    return-object v0

    .line 280
    :pswitch_14
    const-string/jumbo v0, "sendRttRequest"

    return-object v0

    .line 276
    :pswitch_18
    const-string/jumbo v0, "removeExtras"

    return-object v0

    .line 272
    :pswitch_1c
    const-string/jumbo v0, "putExtras"

    return-object v0

    .line 268
    :pswitch_20
    const-string/jumbo v0, "sendCallEvent"

    return-object v0

    .line 264
    :pswitch_24
    const-string/jumbo v0, "pullExternalCall"

    return-object v0

    .line 260
    :pswitch_28
    const-string/jumbo v0, "turnOffProximitySensor"

    return-object v0

    .line 256
    :pswitch_2c
    const-string/jumbo v0, "turnOnProximitySensor"

    return-object v0

    .line 252
    :pswitch_30
    const-string v0, "addConferenceParticipants"

    return-object v0

    .line 248
    :pswitch_33
    const-string/jumbo v0, "swapConference"

    return-object v0

    .line 244
    :pswitch_37
    const-string v0, "mergeConference"

    return-object v0

    .line 240
    :pswitch_3a
    const-string/jumbo v0, "splitFromConference"

    return-object v0

    .line 236
    :pswitch_3e
    const-string v0, "conference"

    return-object v0

    .line 232
    :pswitch_41
    const-string/jumbo v0, "phoneAccountSelected"

    return-object v0

    .line 228
    :pswitch_45
    const-string/jumbo v0, "postDialContinue"

    return-object v0

    .line 224
    :pswitch_49
    const-string/jumbo v0, "stopDtmfTone"

    return-object v0

    .line 220
    :pswitch_4d
    const-string/jumbo v0, "playDtmfTone"

    return-object v0

    .line 216
    :pswitch_51
    const-string v0, "exitBackgroundAudioProcessing"

    return-object v0

    .line 212
    :pswitch_54
    const-string v0, "enterBackgroundAudioProcessing"

    return-object v0

    .line 208
    :pswitch_57
    const-string/jumbo v0, "requestCallEndpointChange"

    return-object v0

    .line 204
    :pswitch_5b
    const-string/jumbo v0, "setAudioRoute"

    return-object v0

    .line 200
    :pswitch_5f
    const-string v0, "mute"

    return-object v0

    .line 196
    :pswitch_62
    const-string/jumbo v0, "unholdCall"

    return-object v0

    .line 192
    :pswitch_66
    const-string v0, "holdCall"

    return-object v0

    .line 188
    :pswitch_69
    const-string v0, "disconnectCall"

    return-object v0

    .line 184
    :pswitch_6c
    const-string v0, "consultativeTransfer"

    return-object v0

    .line 180
    :pswitch_6f
    const-string/jumbo v0, "transferCall"

    return-object v0

    .line 176
    :pswitch_73
    const-string/jumbo v0, "rejectCallWithReason"

    return-object v0

    .line 172
    :pswitch_77
    const-string/jumbo v0, "rejectCall"

    return-object v0

    .line 168
    :pswitch_7b
    const-string v0, "deflectCall"

    return-object v0

    .line 164
    :pswitch_7e
    const-string v0, "answerCall"

    return-object v0

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
        :pswitch_37
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 155
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1143
    const/16 v0, 0x21

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 307
    invoke-static {p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 311
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    .line 312
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 313
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 316
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    return v1

    .line 319
    :cond_16
    packed-switch p1, :pswitch_data_240

    .line 648
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 635
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 639
    .local v3, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 641
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 642
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V

    .line 644
    goto/16 :goto_23f

    .line 625
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 627
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 628
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setRttMode(Ljava/lang/String;I)V

    .line 630
    goto/16 :goto_23f

    .line 617
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 618
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopRtt(Ljava/lang/String;)V

    .line 620
    goto/16 :goto_23f

    .line 605
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 607
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 609
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 610
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->respondToRttRequest(Ljava/lang/String;IZ)V

    .line 612
    goto/16 :goto_23f

    .line 597
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 598
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendRttRequest(Ljava/lang/String;)V

    .line 600
    goto/16 :goto_23f

    .line 587
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 590
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    .line 592
    goto/16 :goto_23f

    .line 577
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 579
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 580
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 582
    goto/16 :goto_23f

    .line 563
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 565
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 569
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 570
    .restart local v5    # "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 572
    goto/16 :goto_23f

    .line 555
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 556
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->pullExternalCall(Ljava/lang/String;)V

    .line 558
    goto/16 :goto_23f

    .line 547
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 548
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    .line 550
    goto/16 :goto_23f

    .line 541
    .end local v2    # "_arg0":Z
    :pswitch_d2
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    .line 542
    goto/16 :goto_23f

    .line 532
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 535
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 537
    goto/16 :goto_23f

    .line 524
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 525
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    .line 527
    goto/16 :goto_23f

    .line 516
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 517
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    .line 519
    goto/16 :goto_23f

    .line 508
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 509
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    .line 511
    goto/16 :goto_23f

    .line 498
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 500
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    goto/16 :goto_23f

    .line 486
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 488
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 490
    .local v3, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 491
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 493
    goto/16 :goto_23f

    .line 476
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "_arg2":Z
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 478
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 479
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    .line 481
    goto/16 :goto_23f

    .line 468
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 469
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    .line 471
    goto/16 :goto_23f

    .line 458
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    .line 461
    .local v3, "_arg1":C
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    .line 463
    goto/16 :goto_23f

    .line 448
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":C
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 451
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V

    .line 453
    goto/16 :goto_23f

    .line 440
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->enterBackgroundAudioProcessing(Ljava/lang/String;)V

    .line 443
    goto/16 :goto_23f

    .line 430
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_17e
    sget-object v2, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallEndpoint;

    .line 432
    .local v2, "_arg0":Landroid/telecom/CallEndpoint;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 433
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->requestCallEndpointChange(Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;)V

    .line 435
    goto/16 :goto_23f

    .line 420
    .end local v2    # "_arg0":Landroid/telecom/CallEndpoint;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 422
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(ILjava/lang/String;)V

    .line 425
    goto/16 :goto_23f

    .line 412
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 413
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    .line 415
    goto/16 :goto_23f

    .line 404
    .end local v2    # "_arg0":Z
    :pswitch_1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    .line 407
    goto/16 :goto_23f

    .line 396
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 397
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    .line 399
    goto/16 :goto_23f

    .line 388
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    .line 391
    goto :goto_23f

    .line 378
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 381
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    goto :goto_23f

    .line 366
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 370
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 371
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 373
    goto :goto_23f

    .line 356
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Z
    :pswitch_1fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 358
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 359
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCallWithReason(Ljava/lang/String;I)V

    .line 361
    goto :goto_23f

    .line 344
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_20a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 346
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 348
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 351
    goto :goto_23f

    .line 334
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_21d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 337
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V

    .line 339
    goto :goto_23f

    .line 324
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    .line 329
    nop

    .line 651
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :goto_23f
    return v1

    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_230
        :pswitch_21d
        :pswitch_20a
        :pswitch_1fb
        :pswitch_1e4
        :pswitch_1d5
        :pswitch_1ca
        :pswitch_1be
        :pswitch_1b2
        :pswitch_1a6
        :pswitch_196
        :pswitch_17e
        :pswitch_172
        :pswitch_162
        :pswitch_151
        :pswitch_145
        :pswitch_135
        :pswitch_11d
        :pswitch_10d
        :pswitch_101
        :pswitch_f5
        :pswitch_e9
        :pswitch_d7
        :pswitch_d2
        :pswitch_c6
        :pswitch_ba
        :pswitch_9e
        :pswitch_8a
        :pswitch_7a
        :pswitch_6e
        :pswitch_5a
        :pswitch_4e
        :pswitch_3e
        :pswitch_1e
    .end packed-switch
.end method
