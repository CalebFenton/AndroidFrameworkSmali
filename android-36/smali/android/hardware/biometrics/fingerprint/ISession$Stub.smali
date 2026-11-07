.class public abstract Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x4

.field static final blacklist TRANSACTION_authenticateWithContext:I = 0xf

.field static final blacklist TRANSACTION_close:I = 0xb

.field static final blacklist TRANSACTION_detectInteraction:I = 0x5

.field static final blacklist TRANSACTION_detectInteractionWithContext:I = 0x11

.field static final blacklist TRANSACTION_enroll:I = 0x3

.field static final blacklist TRANSACTION_enrollWithContext:I = 0x10

.field static final blacklist TRANSACTION_enumerateEnrollments:I = 0x6

.field static final blacklist TRANSACTION_generateChallenge:I = 0x1

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x9

.field static final blacklist TRANSACTION_onContextChanged:I = 0x14

.field static final blacklist TRANSACTION_onPointerCancelWithContext:I = 0x15

.field static final blacklist TRANSACTION_onPointerDown:I = 0xc

.field static final blacklist TRANSACTION_onPointerDownWithContext:I = 0x12

.field static final blacklist TRANSACTION_onPointerUp:I = 0xd

.field static final blacklist TRANSACTION_onPointerUpWithContext:I = 0x13

.field static final blacklist TRANSACTION_onUiReady:I = 0xe

.field static final blacklist TRANSACTION_removeEnrollments:I = 0x7

.field static final blacklist TRANSACTION_resetLockout:I = 0xa

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x2

.field static final blacklist TRANSACTION_setIgnoreDisplayTouches:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 592
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 593
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->markVintfStability()V

    .line 594
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 602
    if-nez p0, :cond_4

    .line 603
    const/4 v0, 0x0

    return-object v0

    .line 605
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 606
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/ISession;

    if-eqz v1, :cond_14

    .line 607
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/ISession;

    return-object v1

    .line 609
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 618
    sparse-switch p0, :sswitch_data_5a

    .line 718
    const/4 v0, 0x0

    return-object v0

    .line 710
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 714
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 706
    :sswitch_b
    const-string/jumbo v0, "setIgnoreDisplayTouches"

    return-object v0

    .line 702
    :sswitch_f
    const-string/jumbo v0, "onPointerCancelWithContext"

    return-object v0

    .line 698
    :sswitch_13
    const-string/jumbo v0, "onContextChanged"

    return-object v0

    .line 694
    :sswitch_17
    const-string/jumbo v0, "onPointerUpWithContext"

    return-object v0

    .line 690
    :sswitch_1b
    const-string/jumbo v0, "onPointerDownWithContext"

    return-object v0

    .line 686
    :sswitch_1f
    const-string v0, "detectInteractionWithContext"

    return-object v0

    .line 682
    :sswitch_22
    const-string v0, "enrollWithContext"

    return-object v0

    .line 678
    :sswitch_25
    const-string v0, "authenticateWithContext"

    return-object v0

    .line 674
    :sswitch_28
    const-string/jumbo v0, "onUiReady"

    return-object v0

    .line 670
    :sswitch_2c
    const-string/jumbo v0, "onPointerUp"

    return-object v0

    .line 666
    :sswitch_30
    const-string/jumbo v0, "onPointerDown"

    return-object v0

    .line 662
    :sswitch_34
    const-string v0, "close"

    return-object v0

    .line 658
    :sswitch_37
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 654
    :sswitch_3b
    const-string/jumbo v0, "invalidateAuthenticatorId"

    return-object v0

    .line 650
    :sswitch_3f
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 646
    :sswitch_42
    const-string/jumbo v0, "removeEnrollments"

    return-object v0

    .line 642
    :sswitch_46
    const-string v0, "enumerateEnrollments"

    return-object v0

    .line 638
    :sswitch_49
    const-string v0, "detectInteraction"

    return-object v0

    .line 634
    :sswitch_4c
    const-string v0, "authenticate"

    return-object v0

    .line 630
    :sswitch_4f
    const-string v0, "enroll"

    return-object v0

    .line 626
    :sswitch_52
    const-string/jumbo v0, "revokeChallenge"

    return-object v0

    .line 622
    :sswitch_56
    const-string v0, "generateChallenge"

    return-object v0

    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_52
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_49
        0x6 -> :sswitch_46
        0x7 -> :sswitch_42
        0x8 -> :sswitch_3f
        0x9 -> :sswitch_3b
        0xa -> :sswitch_37
        0xb -> :sswitch_34
        0xc -> :sswitch_30
        0xd -> :sswitch_2c
        0xe -> :sswitch_28
        0xf -> :sswitch_25
        0x10 -> :sswitch_22
        0x11 -> :sswitch_1f
        0x12 -> :sswitch_1b
        0x13 -> :sswitch_17
        0x14 -> :sswitch_13
        0x15 -> :sswitch_f
        0x16 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 613
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1892
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 725
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 729
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 730
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 731
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 734
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 735
    return v2

    .line 737
    :cond_16
    if-ne p1, v1, :cond_23

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    return v2

    .line 742
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    return v2

    .line 747
    :cond_33
    packed-switch p1, :pswitch_data_1be

    .line 946
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 938
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 939
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->setIgnoreDisplayTouches(Z)V

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    move-object v3, p0

    goto/16 :goto_1bc

    .line 929
    .end local v1    # "_arg0":Z
    :pswitch_4c
    sget-object v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 930
    .local v1, "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerCancelWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    move-object v3, p0

    goto/16 :goto_1bc

    .line 920
    .end local v1    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_60
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationContext;

    .line 921
    .local v1, "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V

    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    move-object v3, p0

    goto/16 :goto_1bc

    .line 911
    .end local v1    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    :pswitch_74
    sget-object v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 912
    .local v1, "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    move-object v3, p0

    goto/16 :goto_1bc

    .line 902
    .end local v1    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_88
    sget-object v1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 903
    .restart local v1    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    move-object v3, p0

    goto/16 :goto_1bc

    .line 892
    .end local v1    # "_arg0":Landroid/hardware/biometrics/fingerprint/PointerContext;
    :pswitch_9c
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationContext;

    .line 893
    .local v1, "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    .line 895
    .local v3, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 897
    move-object v3, p0

    goto/16 :goto_1bc

    .line 880
    .end local v1    # "_arg0":Landroid/hardware/biometrics/common/OperationContext;
    .end local v3    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_b4
    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 882
    .local v1, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    sget-object v3, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/common/OperationContext;

    .line 883
    .local v3, "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v1, v3}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v4

    .line 885
    .local v4, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 887
    move-object v3, p0

    goto/16 :goto_1bc

    .line 868
    .end local v1    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v3    # "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    .end local v4    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 870
    .local v3, "_arg0":J
    sget-object v1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/common/OperationContext;

    .line 871
    .local v1, "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {p0, v3, v4, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v5

    .line 873
    .local v5, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 875
    move-object v3, p0

    goto/16 :goto_1bc

    .line 861
    .end local v1    # "_arg1":Landroid/hardware/biometrics/common/OperationContext;
    .end local v3    # "_arg0":J
    .end local v5    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_f0
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onUiReady()V

    .line 862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    move-object v3, p0

    goto/16 :goto_1bc

    .line 853
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 854
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerUp(I)V

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    move-object v3, p0

    goto/16 :goto_1bc

    .line 836
    .end local v1    # "_arg0":I
    :pswitch_109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 838
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 840
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 842
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 844
    .local v7, "_arg3":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 845
    .local v8, "_arg4":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerDown(IIIFF)V

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    goto/16 :goto_1bc

    .line 829
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":F
    .end local v8    # "_arg4":F
    :pswitch_129
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->close()V

    .line 830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    goto/16 :goto_1bc

    .line 821
    :pswitch_132
    move-object v3, p0

    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 822
    .local v1, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_1bc

    .line 814
    .end local v1    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    :pswitch_146
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->invalidateAuthenticatorId()V

    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    goto/16 :goto_1bc

    .line 808
    :pswitch_14f
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getAuthenticatorId()V

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    goto/16 :goto_1bc

    .line 800
    :pswitch_158
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 801
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->removeEnrollments([I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    goto :goto_1bc

    .line 793
    .end local v1    # "_arg0":[I
    :pswitch_167
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enumerateEnrollments()V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto :goto_1bc

    .line 786
    :pswitch_16f
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 787
    .local v1, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 789
    goto :goto_1bc

    .line 777
    .end local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_17b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 778
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v4, v5}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    .line 780
    .restart local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 782
    goto :goto_1bc

    .line 767
    .end local v1    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    .end local v4    # "_arg0":J
    :pswitch_18e
    move-object v3, p0

    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 768
    .local v1, "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v4

    .line 770
    .local v4, "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 772
    goto :goto_1bc

    .line 758
    .end local v1    # "_arg0":Landroid/hardware/keymaster/HardwareAuthToken;
    .end local v4    # "_result":Landroid/hardware/biometrics/common/ICancellationSignal;
    :pswitch_1a5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 759
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v4, v5}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->revokeChallenge(J)V

    .line 761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    goto :goto_1bc

    .line 751
    .end local v4    # "_arg0":J
    :pswitch_1b4
    move-object v3, p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->generateChallenge()V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    nop

    .line 949
    :goto_1bc
    return v2

    nop

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_1b4
        :pswitch_1a5
        :pswitch_18e
        :pswitch_17b
        :pswitch_16f
        :pswitch_167
        :pswitch_158
        :pswitch_14f
        :pswitch_146
        :pswitch_132
        :pswitch_129
        :pswitch_109
        :pswitch_f9
        :pswitch_f0
        :pswitch_d4
        :pswitch_b4
        :pswitch_9c
        :pswitch_88
        :pswitch_74
        :pswitch_60
        :pswitch_4c
        :pswitch_3c
    .end packed-switch
.end method
