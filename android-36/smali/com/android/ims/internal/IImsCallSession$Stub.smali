.class public abstract Lcom/android/ims/internal/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSession"

.field static final greylist-max-o TRANSACTION_accept:I = 0xd

.field static final blacklist TRANSACTION_callSessionNotifyAnbr:I = 0x24

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final blacklist TRANSACTION_consultativeTransfer:I = 0x11

.field static final greylist-max-o TRANSACTION_deflect:I = 0xe

.field static final greylist-max-o TRANSACTION_extendToConference:I = 0x17

.field static final greylist-max-o TRANSACTION_getCallId:I = 0x2

.field static final greylist-max-o TRANSACTION_getCallProfile:I = 0x3

.field static final greylist-max-o TRANSACTION_getLocalCallProfile:I = 0x4

.field static final greylist-max-o TRANSACTION_getProperty:I = 0x6

.field static final greylist-max-o TRANSACTION_getRemoteCallProfile:I = 0x5

.field static final greylist-max-o TRANSACTION_getState:I = 0x7

.field static final greylist-max-o TRANSACTION_getVideoCallProvider:I = 0x1e

.field static final greylist-max-o TRANSACTION_hold:I = 0x13

.field static final greylist-max-o TRANSACTION_inviteParticipants:I = 0x18

.field static final greylist-max-o TRANSACTION_isInCall:I = 0x8

.field static final greylist-max-o TRANSACTION_isMultiparty:I = 0x1f

.field static final greylist-max-o TRANSACTION_merge:I = 0x15

.field static final greylist-max-o TRANSACTION_reject:I = 0xf

.field static final greylist-max-o TRANSACTION_removeParticipants:I = 0x19

.field static final greylist-max-o TRANSACTION_resume:I = 0x14

.field static final greylist-max-o TRANSACTION_sendDtmf:I = 0x1a

.field static final blacklist TRANSACTION_sendRtpHeaderExtensions:I = 0x23

.field static final greylist-max-o TRANSACTION_sendRttMessage:I = 0x22

.field static final greylist-max-o TRANSACTION_sendRttModifyRequest:I = 0x20

.field static final greylist-max-o TRANSACTION_sendRttModifyResponse:I = 0x21

.field static final greylist-max-o TRANSACTION_sendUssd:I = 0x1d

.field static final greylist-max-o TRANSACTION_setListener:I = 0x9

.field static final greylist-max-o TRANSACTION_setMute:I = 0xa

.field static final greylist-max-o TRANSACTION_start:I = 0xb

.field static final greylist-max-o TRANSACTION_startConference:I = 0xc

.field static final greylist-max-o TRANSACTION_startDtmf:I = 0x1b

.field static final greylist-max-o TRANSACTION_stopDtmf:I = 0x1c

.field static final greylist-max-o TRANSACTION_terminate:I = 0x12

.field static final blacklist TRANSACTION_transfer:I = 0x10

.field static final greylist-max-o TRANSACTION_update:I = 0x16


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 361
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 362
    const-string v0, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 370
    if-nez p0, :cond_4

    .line 371
    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_4
    const-string v0, "com.android.ims.internal.IImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 374
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSession;

    if-eqz v1, :cond_14

    .line 375
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsCallSession;

    return-object v1

    .line 377
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 386
    packed-switch p0, :pswitch_data_84

    .line 534
    const/4 v0, 0x0

    return-object v0

    .line 530
    :pswitch_5
    const-string v0, "callSessionNotifyAnbr"

    return-object v0

    .line 526
    :pswitch_8
    const-string/jumbo v0, "sendRtpHeaderExtensions"

    return-object v0

    .line 522
    :pswitch_c
    const-string/jumbo v0, "sendRttMessage"

    return-object v0

    .line 518
    :pswitch_10
    const-string/jumbo v0, "sendRttModifyResponse"

    return-object v0

    .line 514
    :pswitch_14
    const-string/jumbo v0, "sendRttModifyRequest"

    return-object v0

    .line 510
    :pswitch_18
    const-string v0, "isMultiparty"

    return-object v0

    .line 506
    :pswitch_1b
    const-string v0, "getVideoCallProvider"

    return-object v0

    .line 502
    :pswitch_1e
    const-string/jumbo v0, "sendUssd"

    return-object v0

    .line 498
    :pswitch_22
    const-string/jumbo v0, "stopDtmf"

    return-object v0

    .line 494
    :pswitch_26
    const-string/jumbo v0, "startDtmf"

    return-object v0

    .line 490
    :pswitch_2a
    const-string/jumbo v0, "sendDtmf"

    return-object v0

    .line 486
    :pswitch_2e
    const-string/jumbo v0, "removeParticipants"

    return-object v0

    .line 482
    :pswitch_32
    const-string v0, "inviteParticipants"

    return-object v0

    .line 478
    :pswitch_35
    const-string v0, "extendToConference"

    return-object v0

    .line 474
    :pswitch_38
    const-string/jumbo v0, "update"

    return-object v0

    .line 470
    :pswitch_3c
    const-string v0, "merge"

    return-object v0

    .line 466
    :pswitch_3f
    const-string/jumbo v0, "resume"

    return-object v0

    .line 462
    :pswitch_43
    const-string v0, "hold"

    return-object v0

    .line 458
    :pswitch_46
    const-string/jumbo v0, "terminate"

    return-object v0

    .line 454
    :pswitch_4a
    const-string v0, "consultativeTransfer"

    return-object v0

    .line 450
    :pswitch_4d
    const-string/jumbo v0, "transfer"

    return-object v0

    .line 446
    :pswitch_51
    const-string/jumbo v0, "reject"

    return-object v0

    .line 442
    :pswitch_55
    const-string v0, "deflect"

    return-object v0

    .line 438
    :pswitch_58
    const-string v0, "accept"

    return-object v0

    .line 434
    :pswitch_5b
    const-string/jumbo v0, "startConference"

    return-object v0

    .line 430
    :pswitch_5f
    const-string/jumbo v0, "start"

    return-object v0

    .line 426
    :pswitch_63
    const-string/jumbo v0, "setMute"

    return-object v0

    .line 422
    :pswitch_67
    const-string/jumbo v0, "setListener"

    return-object v0

    .line 418
    :pswitch_6b
    const-string v0, "isInCall"

    return-object v0

    .line 414
    :pswitch_6e
    const-string v0, "getState"

    return-object v0

    .line 410
    :pswitch_71
    const-string v0, "getProperty"

    return-object v0

    .line 406
    :pswitch_74
    const-string v0, "getRemoteCallProfile"

    return-object v0

    .line 402
    :pswitch_77
    const-string v0, "getLocalCallProfile"

    return-object v0

    .line 398
    :pswitch_7a
    const-string v0, "getCallProfile"

    return-object v0

    .line 394
    :pswitch_7d
    const-string v0, "getCallId"

    return-object v0

    .line 390
    :pswitch_80
    const-string v0, "close"

    return-object v0

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
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

    .line 381
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1712
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 541
    invoke-static {p1}, Lcom/android/ims/internal/IImsCallSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 545
    const-string v0, "com.android.ims.internal.IImsCallSession"

    .line 546
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 547
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 550
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    return v1

    .line 553
    :cond_16
    packed-switch p1, :pswitch_data_256

    .line 873
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 861
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 863
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 865
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 866
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsCallSession$Stub;->callSessionNotifyAnbr(III)V

    .line 868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_254

    .line 852
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_35
    sget-object v2, Landroid/telephony/ims/RtpHeaderExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 853
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRtpHeaderExtensions(Ljava/util/List;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_254

    .line 843
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttMessage(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_254

    .line 834
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 835
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttModifyResponse(Z)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    goto/16 :goto_254

    .line 825
    .end local v2    # "_arg0":Z
    :pswitch_64
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 826
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    goto/16 :goto_254

    .line 817
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_77
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isMultiparty()Z

    move-result v2

    .line 818
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 820
    goto/16 :goto_254

    .line 810
    .end local v2    # "_result":Z
    :pswitch_83
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v2

    .line 811
    .local v2, "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 813
    goto/16 :goto_254

    .line 802
    .end local v2    # "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendUssd(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    goto/16 :goto_254

    .line 795
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_9e
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->stopDtmf()V

    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    goto/16 :goto_254

    .line 787
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    .line 788
    .local v2, "_arg0":C
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->startDtmf(C)V

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    goto/16 :goto_254

    .line 776
    .end local v2    # "_arg0":C
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    .line 778
    .restart local v2    # "_arg0":C
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 779
    .local v3, "_arg1":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendDtmf(CLandroid/os/Message;)V

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    goto/16 :goto_254

    .line 767
    .end local v2    # "_arg0":C
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->removeParticipants([Ljava/lang/String;)V

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    goto/16 :goto_254

    .line 758
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 759
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->inviteParticipants([Ljava/lang/String;)V

    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    goto/16 :goto_254

    .line 749
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 750
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->extendToConference([Ljava/lang/String;)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    goto/16 :goto_254

    .line 738
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 740
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 741
    .local v3, "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    goto/16 :goto_254

    .line 731
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_112
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->merge()V

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    goto/16 :goto_254

    .line 723
    :pswitch_11a
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 724
    .local v2, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    goto/16 :goto_254

    .line 714
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_12d
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 715
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    goto/16 :goto_254

    .line 705
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->terminate(I)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_254

    .line 696
    .end local v2    # "_arg0":I
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 697
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    goto/16 :goto_254

    .line 685
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 688
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->transfer(Ljava/lang/String;Z)V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    goto/16 :goto_254

    .line 676
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 677
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->reject(I)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    goto/16 :goto_254

    .line 667
    .end local v2    # "_arg0":I
    :pswitch_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->deflect(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto/16 :goto_254

    .line 656
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 658
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 659
    .local v3, "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_254

    .line 645
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "_arg0":[Ljava/lang/String;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 648
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    goto/16 :goto_254

    .line 634
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 637
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    goto/16 :goto_254

    .line 625
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 626
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->setMute(Z)V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    goto/16 :goto_254

    .line 616
    .end local v2    # "_arg0":Z
    :pswitch_1e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v2

    .line 617
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    goto :goto_254

    .line 608
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :pswitch_1f9
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isInCall()Z

    move-result v2

    .line 609
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 611
    goto :goto_254

    .line 601
    .end local v2    # "_result":Z
    :pswitch_204
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getState()I

    move-result v2

    .line 602
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    goto :goto_254

    .line 592
    .end local v2    # "_result":I
    :pswitch_20f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    goto :goto_254

    .line 584
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_221
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 585
    .local v2, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 587
    goto :goto_254

    .line 577
    .end local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_22c
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 578
    .restart local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 580
    goto :goto_254

    .line 570
    .end local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_237
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 571
    .restart local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 573
    goto :goto_254

    .line 563
    .end local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_242
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    goto :goto_254

    .line 557
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_24d
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->close()V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    nop

    .line 876
    :goto_254
    return v1

    nop

    :pswitch_data_256
    .packed-switch 0x1
        :pswitch_24d
        :pswitch_242
        :pswitch_237
        :pswitch_22c
        :pswitch_221
        :pswitch_20f
        :pswitch_204
        :pswitch_1f9
        :pswitch_1e7
        :pswitch_1d8
        :pswitch_1c1
        :pswitch_1aa
        :pswitch_193
        :pswitch_184
        :pswitch_175
        :pswitch_162
        :pswitch_14f
        :pswitch_140
        :pswitch_12d
        :pswitch_11a
        :pswitch_112
        :pswitch_fb
        :pswitch_ec
        :pswitch_dd
        :pswitch_ce
        :pswitch_b6
        :pswitch_a6
        :pswitch_9e
        :pswitch_8f
        :pswitch_83
        :pswitch_77
        :pswitch_64
        :pswitch_55
        :pswitch_46
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
