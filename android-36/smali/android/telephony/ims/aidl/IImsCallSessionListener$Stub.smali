.class public abstract Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callQualityChanged:I = 0x29

.field static final blacklist TRANSACTION_callSessionConferenceExtendFailed:I = 0x14

.field static final blacklist TRANSACTION_callSessionConferenceExtendReceived:I = 0x15

.field static final blacklist TRANSACTION_callSessionConferenceExtended:I = 0x13

.field static final blacklist TRANSACTION_callSessionConferenceStateUpdated:I = 0x1a

.field static final blacklist TRANSACTION_callSessionDtmfReceived:I = 0x28

.field static final blacklist TRANSACTION_callSessionHandover:I = 0x1c

.field static final blacklist TRANSACTION_callSessionHandoverFailed:I = 0x1d

.field static final blacklist TRANSACTION_callSessionHeld:I = 0x7

.field static final blacklist TRANSACTION_callSessionHoldFailed:I = 0x8

.field static final blacklist TRANSACTION_callSessionHoldReceived:I = 0x9

.field static final blacklist TRANSACTION_callSessionInitiated:I = 0x4

.field static final blacklist TRANSACTION_callSessionInitiatedFailed:I = 0x5

.field static final blacklist TRANSACTION_callSessionInitiating:I = 0x1

.field static final blacklist TRANSACTION_callSessionInitiatingFailed:I = 0x2

.field static final blacklist TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x16

.field static final blacklist TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x17

.field static final blacklist TRANSACTION_callSessionMayHandover:I = 0x1e

.field static final blacklist TRANSACTION_callSessionMergeComplete:I = 0xe

.field static final blacklist TRANSACTION_callSessionMergeFailed:I = 0xf

.field static final blacklist TRANSACTION_callSessionMergeStarted:I = 0xd

.field static final blacklist TRANSACTION_callSessionMultipartyStateChanged:I = 0x20

.field static final blacklist TRANSACTION_callSessionProgressing:I = 0x3

.field static final blacklist TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x18

.field static final blacklist TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x19

.field static final blacklist TRANSACTION_callSessionResumeFailed:I = 0xb

.field static final blacklist TRANSACTION_callSessionResumeReceived:I = 0xc

.field static final blacklist TRANSACTION_callSessionResumed:I = 0xa

.field static final blacklist TRANSACTION_callSessionRtpHeaderExtensionsReceived:I = 0x2a

.field static final blacklist TRANSACTION_callSessionRttAudioIndicatorChanged:I = 0x25

.field static final blacklist TRANSACTION_callSessionRttMessageReceived:I = 0x24

.field static final blacklist TRANSACTION_callSessionRttModifyRequestReceived:I = 0x22

.field static final blacklist TRANSACTION_callSessionRttModifyResponseReceived:I = 0x23

.field static final blacklist TRANSACTION_callSessionSendAnbrQuery:I = 0x2b

.field static final blacklist TRANSACTION_callSessionSuppServiceReceived:I = 0x21

.field static final blacklist TRANSACTION_callSessionTerminated:I = 0x6

.field static final blacklist TRANSACTION_callSessionTransferFailed:I = 0x27

.field static final blacklist TRANSACTION_callSessionTransferred:I = 0x26

.field static final blacklist TRANSACTION_callSessionTtyModeReceived:I = 0x1f

.field static final blacklist TRANSACTION_callSessionUpdateFailed:I = 0x11

.field static final blacklist TRANSACTION_callSessionUpdateReceived:I = 0x12

.field static final blacklist TRANSACTION_callSessionUpdated:I = 0x10

.field static final blacklist TRANSACTION_callSessionUssdMessageReceived:I = 0x1b


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 223
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 224
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 232
    if-nez p0, :cond_4

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 236
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz v1, :cond_14

    .line 237
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object v1

    .line 239
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 248
    packed-switch p0, :pswitch_data_86

    .line 424
    const/4 v0, 0x0

    return-object v0

    .line 420
    :pswitch_5
    const-string v0, "callSessionSendAnbrQuery"

    return-object v0

    .line 416
    :pswitch_8
    const-string v0, "callSessionRtpHeaderExtensionsReceived"

    return-object v0

    .line 412
    :pswitch_b
    const-string v0, "callQualityChanged"

    return-object v0

    .line 408
    :pswitch_e
    const-string v0, "callSessionDtmfReceived"

    return-object v0

    .line 404
    :pswitch_11
    const-string v0, "callSessionTransferFailed"

    return-object v0

    .line 400
    :pswitch_14
    const-string v0, "callSessionTransferred"

    return-object v0

    .line 396
    :pswitch_17
    const-string v0, "callSessionRttAudioIndicatorChanged"

    return-object v0

    .line 392
    :pswitch_1a
    const-string v0, "callSessionRttMessageReceived"

    return-object v0

    .line 388
    :pswitch_1d
    const-string v0, "callSessionRttModifyResponseReceived"

    return-object v0

    .line 384
    :pswitch_20
    const-string v0, "callSessionRttModifyRequestReceived"

    return-object v0

    .line 380
    :pswitch_23
    const-string v0, "callSessionSuppServiceReceived"

    return-object v0

    .line 376
    :pswitch_26
    const-string v0, "callSessionMultipartyStateChanged"

    return-object v0

    .line 372
    :pswitch_29
    const-string v0, "callSessionTtyModeReceived"

    return-object v0

    .line 368
    :pswitch_2c
    const-string v0, "callSessionMayHandover"

    return-object v0

    .line 364
    :pswitch_2f
    const-string v0, "callSessionHandoverFailed"

    return-object v0

    .line 360
    :pswitch_32
    const-string v0, "callSessionHandover"

    return-object v0

    .line 356
    :pswitch_35
    const-string v0, "callSessionUssdMessageReceived"

    return-object v0

    .line 352
    :pswitch_38
    const-string v0, "callSessionConferenceStateUpdated"

    return-object v0

    .line 348
    :pswitch_3b
    const-string v0, "callSessionRemoveParticipantsRequestFailed"

    return-object v0

    .line 344
    :pswitch_3e
    const-string v0, "callSessionRemoveParticipantsRequestDelivered"

    return-object v0

    .line 340
    :pswitch_41
    const-string v0, "callSessionInviteParticipantsRequestFailed"

    return-object v0

    .line 336
    :pswitch_44
    const-string v0, "callSessionInviteParticipantsRequestDelivered"

    return-object v0

    .line 332
    :pswitch_47
    const-string v0, "callSessionConferenceExtendReceived"

    return-object v0

    .line 328
    :pswitch_4a
    const-string v0, "callSessionConferenceExtendFailed"

    return-object v0

    .line 324
    :pswitch_4d
    const-string v0, "callSessionConferenceExtended"

    return-object v0

    .line 320
    :pswitch_50
    const-string v0, "callSessionUpdateReceived"

    return-object v0

    .line 316
    :pswitch_53
    const-string v0, "callSessionUpdateFailed"

    return-object v0

    .line 312
    :pswitch_56
    const-string v0, "callSessionUpdated"

    return-object v0

    .line 308
    :pswitch_59
    const-string v0, "callSessionMergeFailed"

    return-object v0

    .line 304
    :pswitch_5c
    const-string v0, "callSessionMergeComplete"

    return-object v0

    .line 300
    :pswitch_5f
    const-string v0, "callSessionMergeStarted"

    return-object v0

    .line 296
    :pswitch_62
    const-string v0, "callSessionResumeReceived"

    return-object v0

    .line 292
    :pswitch_65
    const-string v0, "callSessionResumeFailed"

    return-object v0

    .line 288
    :pswitch_68
    const-string v0, "callSessionResumed"

    return-object v0

    .line 284
    :pswitch_6b
    const-string v0, "callSessionHoldReceived"

    return-object v0

    .line 280
    :pswitch_6e
    const-string v0, "callSessionHoldFailed"

    return-object v0

    .line 276
    :pswitch_71
    const-string v0, "callSessionHeld"

    return-object v0

    .line 272
    :pswitch_74
    const-string v0, "callSessionTerminated"

    return-object v0

    .line 268
    :pswitch_77
    const-string v0, "callSessionInitiatedFailed"

    return-object v0

    .line 264
    :pswitch_7a
    const-string v0, "callSessionInitiated"

    return-object v0

    .line 260
    :pswitch_7d
    const-string v0, "callSessionProgressing"

    return-object v0

    .line 256
    :pswitch_80
    const-string v0, "callSessionInitiatingFailed"

    return-object v0

    .line 252
    :pswitch_83
    const-string v0, "callSessionInitiating"

    return-object v0

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
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

    .line 243
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1457
    const/16 v0, 0x2a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 431
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 435
    const-string v0, "android.telephony.ims.aidl.IImsCallSessionListener"

    .line 436
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 437
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 440
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    return v1

    .line 443
    :cond_16
    packed-switch p1, :pswitch_data_2be

    .line 804
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 793
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 795
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 797
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 798
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionSendAnbrQuery(III)V

    .line 800
    goto/16 :goto_2bc

    .line 785
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_32
    sget-object v2, Landroid/telephony/ims/RtpHeaderExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 786
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V

    .line 788
    goto/16 :goto_2bc

    .line 777
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    :pswitch_40
    sget-object v2, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallQuality;

    .line 778
    .local v2, "_arg0":Landroid/telephony/CallQuality;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callQualityChanged(Landroid/telephony/CallQuality;)V

    .line 780
    goto/16 :goto_2bc

    .line 769
    .end local v2    # "_arg0":Landroid/telephony/CallQuality;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    .line 770
    .local v2, "_arg0":C
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionDtmfReceived(C)V

    .line 772
    goto/16 :goto_2bc

    .line 761
    .end local v2    # "_arg0":C
    :pswitch_5d
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 762
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 764
    goto/16 :goto_2bc

    .line 755
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_6d
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTransferred()V

    .line 756
    goto/16 :goto_2bc

    .line 748
    :pswitch_72
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 749
    .local v2, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 751
    goto/16 :goto_2bc

    .line 740
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 743
    goto/16 :goto_2bc

    .line 732
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 733
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyResponseReceived(I)V

    .line 735
    goto/16 :goto_2bc

    .line 724
    .end local v2    # "_arg0":I
    :pswitch_9a
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 725
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 727
    goto/16 :goto_2bc

    .line 716
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_aa
    sget-object v2, Landroid/telephony/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 717
    .local v2, "_arg0":Landroid/telephony/ims/ImsSuppServiceNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 719
    goto/16 :goto_2bc

    .line 708
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsSuppServiceNotification;
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 709
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Z)V

    .line 711
    goto/16 :goto_2bc

    .line 700
    .end local v2    # "_arg0":Z
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 701
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(I)V

    .line 703
    goto/16 :goto_2bc

    .line 690
    .end local v2    # "_arg0":I
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 692
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 693
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMayHandover(II)V

    .line 695
    goto/16 :goto_2bc

    .line 678
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 680
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 682
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 683
    .local v4, "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 685
    goto/16 :goto_2bc

    .line 666
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 668
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 670
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 671
    .restart local v4    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 673
    goto/16 :goto_2bc

    .line 656
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 658
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 661
    goto/16 :goto_2bc

    .line 648
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_122
    sget-object v2, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsConferenceState;

    .line 649
    .local v2, "_arg0":Landroid/telephony/ims/ImsConferenceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 651
    goto/16 :goto_2bc

    .line 640
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsConferenceState;
    :pswitch_132
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 641
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 643
    goto/16 :goto_2bc

    .line 634
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_142
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered()V

    .line 635
    goto/16 :goto_2bc

    .line 627
    :pswitch_147
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 628
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 630
    goto/16 :goto_2bc

    .line 621
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_157
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered()V

    .line 622
    goto/16 :goto_2bc

    .line 612
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 614
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 615
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 617
    goto/16 :goto_2bc

    .line 604
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_174
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 605
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 607
    goto/16 :goto_2bc

    .line 594
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 596
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 597
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 599
    goto/16 :goto_2bc

    .line 586
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_19c
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 587
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 589
    goto/16 :goto_2bc

    .line 578
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1ac
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 579
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 581
    goto/16 :goto_2bc

    .line 570
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1bc
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 571
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 573
    goto/16 :goto_2bc

    .line 562
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1cc
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 563
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 565
    goto/16 :goto_2bc

    .line 554
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 555
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 557
    goto/16 :goto_2bc

    .line 544
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_1ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 546
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 547
    .restart local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 549
    goto/16 :goto_2bc

    .line 536
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_204
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 537
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 539
    goto/16 :goto_2bc

    .line 528
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_214
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 529
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 531
    goto/16 :goto_2bc

    .line 520
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_224
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 521
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 523
    goto/16 :goto_2bc

    .line 512
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_234
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 513
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 515
    goto/16 :goto_2bc

    .line 504
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_244
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 505
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 507
    goto :goto_2bc

    .line 496
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_253
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 497
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 499
    goto :goto_2bc

    .line 488
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_262
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 489
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 491
    goto :goto_2bc

    .line 480
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_271
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 481
    .restart local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 483
    goto :goto_2bc

    .line 472
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_280
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 473
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 475
    goto :goto_2bc

    .line 464
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_28f
    sget-object v2, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 465
    .local v2, "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 467
    goto :goto_2bc

    .line 456
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsStreamMediaProfile;
    :pswitch_29e
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 457
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 459
    goto :goto_2bc

    .line 448
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_2ad
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 449
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V

    .line 451
    nop

    .line 807
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    :goto_2bc
    return v1

    nop

    :pswitch_data_2be
    .packed-switch 0x1
        :pswitch_2ad
        :pswitch_29e
        :pswitch_28f
        :pswitch_280
        :pswitch_271
        :pswitch_262
        :pswitch_253
        :pswitch_244
        :pswitch_234
        :pswitch_224
        :pswitch_214
        :pswitch_204
        :pswitch_1ec
        :pswitch_1dc
        :pswitch_1cc
        :pswitch_1bc
        :pswitch_1ac
        :pswitch_19c
        :pswitch_184
        :pswitch_174
        :pswitch_15c
        :pswitch_157
        :pswitch_147
        :pswitch_142
        :pswitch_132
        :pswitch_122
        :pswitch_112
        :pswitch_fa
        :pswitch_e2
        :pswitch_d2
        :pswitch_c6
        :pswitch_ba
        :pswitch_aa
        :pswitch_9a
        :pswitch_8e
        :pswitch_82
        :pswitch_72
        :pswitch_6d
        :pswitch_5d
        :pswitch_50
        :pswitch_40
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
