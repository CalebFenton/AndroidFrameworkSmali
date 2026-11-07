.class public abstract Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioMessagingResponse.java"

# interfaces
.implements Landroid/hardware/radio/messaging/IRadioMessagingResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/messaging/IRadioMessagingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeIncomingGsmSmsWithPduResponse:I = 0x1

.field static final blacklist TRANSACTION_acknowledgeLastIncomingCdmaSmsResponse:I = 0x2

.field static final blacklist TRANSACTION_acknowledgeLastIncomingGsmSmsResponse:I = 0x3

.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x4

.field static final blacklist TRANSACTION_deleteSmsOnRuimResponse:I = 0x5

.field static final blacklist TRANSACTION_deleteSmsOnSimResponse:I = 0x6

.field static final blacklist TRANSACTION_getCdmaBroadcastConfigResponse:I = 0x7

.field static final blacklist TRANSACTION_getGsmBroadcastConfigResponse:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSmscAddressResponse:I = 0x9

.field static final blacklist TRANSACTION_reportSmsMemoryStatusResponse:I = 0xa

.field static final blacklist TRANSACTION_sendCdmaSmsExpectMoreResponse:I = 0xb

.field static final blacklist TRANSACTION_sendCdmaSmsResponse:I = 0xc

.field static final blacklist TRANSACTION_sendImsSmsResponse:I = 0xd

.field static final blacklist TRANSACTION_sendSmsExpectMoreResponse:I = 0xe

.field static final blacklist TRANSACTION_sendSmsResponse:I = 0xf

.field static final blacklist TRANSACTION_setCdmaBroadcastActivationResponse:I = 0x10

.field static final blacklist TRANSACTION_setCdmaBroadcastConfigResponse:I = 0x11

.field static final blacklist TRANSACTION_setGsmBroadcastActivationResponse:I = 0x12

.field static final blacklist TRANSACTION_setGsmBroadcastConfigResponse:I = 0x13

.field static final blacklist TRANSACTION_setSmscAddressResponse:I = 0x14

.field static final blacklist TRANSACTION_writeSmsToRuimResponse:I = 0x15

.field static final blacklist TRANSACTION_writeSmsToSimResponse:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 601
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 602
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->markVintfStability()V

    .line 603
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessagingResponse;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 611
    if-nez p0, :cond_4

    .line 612
    const/4 v0, 0x0

    return-object v0

    .line 614
    :cond_4
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 615
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/messaging/IRadioMessagingResponse;

    if-eqz v1, :cond_14

    .line 616
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/messaging/IRadioMessagingResponse;

    return-object v1

    .line 618
    :cond_14
    new-instance v1, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 622
    return-object p0
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

    .line 626
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 627
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 628
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 631
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    return v2

    .line 634
    :cond_16
    if-ne p1, v1, :cond_23

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    return v2

    .line 639
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 642
    return v2

    .line 644
    :cond_33
    packed-switch p1, :pswitch_data_1d4

    .line 844
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 835
    :pswitch_3b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 837
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 838
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 840
    goto/16 :goto_1d3

    .line 825
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_4f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 827
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 828
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 829
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 830
    goto/16 :goto_1d3

    .line 817
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_63
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 818
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 820
    goto/16 :goto_1d3

    .line 809
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_73
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 810
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 812
    goto/16 :goto_1d3

    .line 801
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_83
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 802
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 804
    goto/16 :goto_1d3

    .line 793
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_93
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 794
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 795
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 796
    goto/16 :goto_1d3

    .line 785
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_a3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 786
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 788
    goto/16 :goto_1d3

    .line 775
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_b3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 777
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 778
    .local v3, "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 780
    goto/16 :goto_1d3

    .line 765
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_cb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 767
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 768
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->sendSmsExpectMoreResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 770
    goto/16 :goto_1d3

    .line 755
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_e3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 757
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 758
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 760
    goto/16 :goto_1d3

    .line 745
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_fb
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 747
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 748
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 750
    goto/16 :goto_1d3

    .line 735
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_113
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 737
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 738
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 740
    goto/16 :goto_1d3

    .line 727
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_12b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 728
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 730
    goto/16 :goto_1d3

    .line 717
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_13b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 719
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 722
    goto/16 :goto_1d3

    .line 707
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_14f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 709
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    .line 710
    .local v3, "_arg1":[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;)V

    .line 712
    goto :goto_1d3

    .line 697
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    :pswitch_166
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 699
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;

    .line 700
    .local v3, "_arg1":[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;)V

    .line 702
    goto :goto_1d3

    .line 689
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    :pswitch_17d
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 690
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 692
    goto :goto_1d3

    .line 681
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_18c
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 682
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 684
    goto :goto_1d3

    .line 673
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 674
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->acknowledgeRequest(I)V

    .line 676
    goto :goto_1d3

    .line 665
    .end local v1    # "_arg0":I
    :pswitch_1a6
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 666
    .local v1, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 668
    goto :goto_1d3

    .line 657
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1b5
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 658
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 660
    goto :goto_1d3

    .line 649
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1c4
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    .line 650
    .restart local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, v1}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 652
    nop

    .line 847
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :goto_1d3
    return v2

    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_1c4
        :pswitch_1b5
        :pswitch_1a6
        :pswitch_19b
        :pswitch_18c
        :pswitch_17d
        :pswitch_166
        :pswitch_14f
        :pswitch_13b
        :pswitch_12b
        :pswitch_113
        :pswitch_fb
        :pswitch_e3
        :pswitch_cb
        :pswitch_b3
        :pswitch_a3
        :pswitch_93
        :pswitch_83
        :pswitch_73
        :pswitch_63
        :pswitch_4f
        :pswitch_3b
    .end packed-switch
.end method
