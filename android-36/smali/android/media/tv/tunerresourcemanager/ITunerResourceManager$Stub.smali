.class public abstract Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;
.super Landroid/os/Binder;
.source "ITunerResourceManager.java"

# interfaces
.implements Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireLock:I = 0x1f

.field static final blacklist TRANSACTION_clearResourceMap:I = 0x1d

.field static final blacklist TRANSACTION_getClientPriority:I = 0x21

.field static final blacklist TRANSACTION_getConfigPriority:I = 0x22

.field static final blacklist TRANSACTION_getMaxNumberOfFrontends:I = 0xd

.field static final blacklist TRANSACTION_hasUnusedFrontend:I = 0x4

.field static final blacklist TRANSACTION_isHigherPriority:I = 0x1b

.field static final blacklist TRANSACTION_isLowestPriority:I = 0x5

.field static final blacklist TRANSACTION_registerClientProfile:I = 0x1

.field static final blacklist TRANSACTION_releaseCasSession:I = 0x18

.field static final blacklist TRANSACTION_releaseCiCam:I = 0x19

.field static final blacklist TRANSACTION_releaseDemux:I = 0x16

.field static final blacklist TRANSACTION_releaseDescrambler:I = 0x17

.field static final blacklist TRANSACTION_releaseFrontend:I = 0x15

.field static final blacklist TRANSACTION_releaseLnb:I = 0x1a

.field static final blacklist TRANSACTION_releaseLock:I = 0x20

.field static final blacklist TRANSACTION_requestCasSession:I = 0x12

.field static final blacklist TRANSACTION_requestCiCam:I = 0x13

.field static final blacklist TRANSACTION_requestDemux:I = 0x10

.field static final blacklist TRANSACTION_requestDescrambler:I = 0x11

.field static final blacklist TRANSACTION_requestFrontend:I = 0xb

.field static final blacklist TRANSACTION_requestLnb:I = 0x14

.field static final blacklist TRANSACTION_restoreResourceMap:I = 0x1e

.field static final blacklist TRANSACTION_setDemuxInfoList:I = 0x8

.field static final blacklist TRANSACTION_setFrontendInfoList:I = 0x6

.field static final blacklist TRANSACTION_setLnbInfoList:I = 0x9

.field static final blacklist TRANSACTION_setMaxNumberOfFrontends:I = 0xc

.field static final blacklist TRANSACTION_setResourceOwnershipRetention:I = 0xa

.field static final blacklist TRANSACTION_shareFrontend:I = 0xe

.field static final blacklist TRANSACTION_storeResourceMap:I = 0x1c

.field static final blacklist TRANSACTION_transferOwner:I = 0xf

.field static final blacklist TRANSACTION_unregisterClientProfile:I = 0x2

.field static final blacklist TRANSACTION_updateCasInfo:I = 0x7

.field static final blacklist TRANSACTION_updateClientPriority:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 585
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 586
    const-string v0, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 594
    if-nez p0, :cond_4

    .line 595
    const/4 v0, 0x0

    return-object v0

    .line 597
    :cond_4
    const-string v0, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 598
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    if-eqz v1, :cond_14

    .line 599
    move-object v1, v0

    check-cast v1, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    return-object v1

    .line 601
    :cond_14
    new-instance v1, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 605
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    const-string v0, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    .line 610
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 611
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 614
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    return v1

    .line 617
    :cond_16
    const-string v2, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_3ec

    .line 1054
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1043
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1045
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1046
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->getConfigPriority(IZ)I

    move-result v4

    .line 1048
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    goto/16 :goto_3d3

    .line 1031
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1033
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1034
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->getClientPriority(II)I

    move-result v4

    .line 1036
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    goto/16 :goto_3d3

    .line 1021
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1022
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseLock(I)Z

    move-result v3

    .line 1024
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1026
    goto/16 :goto_3d3

    .line 1009
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1011
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1012
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->acquireLock(IJ)Z

    move-result v5

    .line 1014
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1016
    goto/16 :goto_3d3

    .line 1000
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1001
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->restoreResourceMap(I)V

    .line 1003
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    goto/16 :goto_3d3

    .line 991
    .end local v2    # "_arg0":I
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 992
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->clearResourceMap(I)V

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    goto/16 :goto_3d3

    .line 982
    .end local v2    # "_arg0":I
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 983
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->storeResourceMap(I)V

    .line 985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    goto/16 :goto_3d3

    .line 970
    .end local v2    # "_arg0":I
    :pswitch_a8
    sget-object v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 972
    .local v2, "_arg0":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    sget-object v3, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 973
    .local v3, "_arg1":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result v4

    .line 975
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 977
    goto/16 :goto_3d3

    .line 959
    .end local v2    # "_arg0":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .end local v3    # "_arg1":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .end local v4    # "_result":Z
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 961
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 962
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseLnb(JI)V

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_3d3

    .line 948
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 950
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 951
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseCiCam(JI)V

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_3d3

    .line 937
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 939
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 940
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseCasSession(JI)V

    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    goto/16 :goto_3d3

    .line 926
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 928
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 929
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseDescrambler(JI)V

    .line 931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    goto/16 :goto_3d3

    .line 915
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 917
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 918
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 919
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseDemux(JI)V

    .line 920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    goto/16 :goto_3d3

    .line 904
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 906
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 907
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->releaseFrontend(JI)V

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    goto/16 :goto_3d3

    .line 884
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_139
    sget-object v4, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;

    .line 886
    .local v4, "_arg0":Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 887
    .local v5, "_arg1_length":I
    if-gt v5, v3, :cond_15f

    .line 889
    if-gez v5, :cond_14b

    .line 890
    const/4 v2, 0x0

    .local v2, "_arg1":[J
    goto :goto_14d

    .line 892
    .end local v2    # "_arg1":[J
    :cond_14b
    new-array v2, v5, [J

    .line 894
    .restart local v2    # "_arg1":[J
    :goto_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {p0, v4, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z

    move-result v3

    .line 896
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 898
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 899
    goto/16 :goto_3d3

    .line 888
    .end local v2    # "_arg1":[J
    .end local v3    # "_result":Z
    :cond_15f
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 864
    .end local v4    # "_arg0":Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    .end local v5    # "_arg1_length":I
    :pswitch_176
    sget-object v4, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;

    .line 866
    .local v4, "_arg0":Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 867
    .restart local v5    # "_arg1_length":I
    if-gt v5, v3, :cond_19c

    .line 869
    if-gez v5, :cond_188

    .line 870
    const/4 v2, 0x0

    .restart local v2    # "_arg1":[J
    goto :goto_18a

    .line 872
    .end local v2    # "_arg1":[J
    :cond_188
    new-array v2, v5, [J

    .line 874
    .restart local v2    # "_arg1":[J
    :goto_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v4, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z

    move-result v3

    .line 876
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 878
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 879
    goto/16 :goto_3d3

    .line 868
    .end local v2    # "_arg1":[J
    .end local v3    # "_result":Z
    :cond_19c
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 844
    .end local v4    # "_arg0":Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    .end local v5    # "_arg1_length":I
    :pswitch_1b3
    sget-object v4, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;

    .line 846
    .local v4, "_arg0":Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 847
    .restart local v5    # "_arg1_length":I
    if-gt v5, v3, :cond_1d9

    .line 849
    if-gez v5, :cond_1c5

    .line 850
    const/4 v2, 0x0

    .restart local v2    # "_arg1":[J
    goto :goto_1c7

    .line 852
    .end local v2    # "_arg1":[J
    :cond_1c5
    new-array v2, v5, [J

    .line 854
    .restart local v2    # "_arg1":[J
    :goto_1c7
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {p0, v4, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z

    move-result v3

    .line 856
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 858
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 859
    goto/16 :goto_3d3

    .line 848
    .end local v2    # "_arg1":[J
    .end local v3    # "_result":Z
    :cond_1d9
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    .end local v4    # "_arg0":Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    .end local v5    # "_arg1_length":I
    :pswitch_1f0
    sget-object v4, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    .line 826
    .local v4, "_arg0":Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 827
    .restart local v5    # "_arg1_length":I
    if-gt v5, v3, :cond_216

    .line 829
    if-gez v5, :cond_202

    .line 830
    const/4 v2, 0x0

    .restart local v2    # "_arg1":[J
    goto :goto_204

    .line 832
    .end local v2    # "_arg1":[J
    :cond_202
    new-array v2, v5, [J

    .line 834
    .restart local v2    # "_arg1":[J
    :goto_204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {p0, v4, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z

    move-result v3

    .line 836
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 838
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 839
    goto/16 :goto_3d3

    .line 828
    .end local v2    # "_arg1":[J
    .end local v3    # "_result":Z
    :cond_216
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 804
    .end local v4    # "_arg0":Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .end local v5    # "_arg1_length":I
    :pswitch_22d
    sget-object v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;

    .line 806
    .local v4, "_arg0":Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 807
    .restart local v5    # "_arg1_length":I
    if-gt v5, v3, :cond_253

    .line 809
    if-gez v5, :cond_23f

    .line 810
    const/4 v2, 0x0

    .restart local v2    # "_arg1":[J
    goto :goto_241

    .line 812
    .end local v2    # "_arg1":[J
    :cond_23f
    new-array v2, v5, [J

    .line 814
    .restart local v2    # "_arg1":[J
    :goto_241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, v4, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z

    move-result v3

    .line 816
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 818
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 819
    goto/16 :goto_3d3

    .line 808
    .end local v2    # "_arg1":[J
    .end local v3    # "_result":Z
    :cond_253
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    .end local v4    # "_arg0":Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    .end local v5    # "_arg1_length":I
    :pswitch_26a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 792
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 794
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 795
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->transferOwner(III)Z

    move-result v5

    .line 797
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 799
    goto/16 :goto_3d3

    .line 779
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 781
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 782
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->shareFrontend(II)V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    goto/16 :goto_3d3

    .line 769
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 770
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->getMaxNumberOfFrontends(I)I

    move-result v3

    .line 772
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    goto/16 :goto_3d3

    .line 757
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 759
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 760
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setMaxNumberOfFrontends(II)Z

    move-result v4

    .line 762
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 764
    goto/16 :goto_3d3

    .line 737
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_2c2
    sget-object v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    .line 739
    .local v4, "_arg0":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 740
    .local v5, "_arg1_length":I
    if-gt v5, v3, :cond_2e8

    .line 742
    if-gez v5, :cond_2d4

    .line 743
    const/4 v2, 0x0

    .local v2, "_arg1":[J
    goto :goto_2d6

    .line 745
    .end local v2    # "_arg1":[J
    :cond_2d4
    new-array v2, v5, [J

    .line 747
    .restart local v2    # "_arg1":[J
    :goto_2d6
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {p0, v4, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z

    move-result v3

    .line 749
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 751
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 752
    goto/16 :goto_3d3

    .line 741
    .end local v2    # "_arg1":[J
    .end local v3    # "_result":Z
    :cond_2e8
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    .end local v4    # "_arg0":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .end local v5    # "_arg1_length":I
    :pswitch_2ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 728
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 729
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setResourceOwnershipRetention(IZ)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    goto/16 :goto_3d3

    .line 717
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_312
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 718
    .local v2, "_arg0":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setLnbInfoList([J)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_3d3

    .line 708
    .end local v2    # "_arg0":[J
    :pswitch_321
    sget-object v2, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;

    .line 709
    .local v2, "_arg0":[Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    goto/16 :goto_3d3

    .line 697
    .end local v2    # "_arg0":[Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;
    :pswitch_334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 699
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 700
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->updateCasInfo(II)V

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    goto/16 :goto_3d3

    .line 688
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_347
    sget-object v2, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;

    .line 689
    .local v2, "_arg0":[Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_3d3

    .line 676
    .end local v2    # "_arg0":[Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;
    :pswitch_35a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 678
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 679
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->isLowestPriority(II)Z

    move-result v4

    .line 681
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 683
    goto :goto_3d3

    .line 666
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 667
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->hasUnusedFrontend(I)Z

    move-result v3

    .line 669
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 671
    goto :goto_3d3

    .line 652
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 656
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 657
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->updateClientPriority(III)Z

    move-result v5

    .line 659
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 661
    goto :goto_3d3

    .line 643
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_39c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 644
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->unregisterClientProfile(I)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto :goto_3d3

    .line 622
    .end local v2    # "_arg0":I
    :pswitch_3aa
    sget-object v4, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    .line 624
    .local v4, "_arg0":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object v5

    .line 626
    .local v5, "_arg1":Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 627
    .local v6, "_arg2_length":I
    if-gt v6, v3, :cond_3d4

    .line 629
    if-gez v6, :cond_3c4

    .line 630
    const/4 v2, 0x0

    .local v2, "_arg2":[I
    goto :goto_3c6

    .line 632
    .end local v2    # "_arg2":[I
    :cond_3c4
    new-array v2, v6, [I

    .line 634
    .restart local v2    # "_arg2":[I
    :goto_3c6
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    invoke-virtual {p0, v4, v5, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 638
    nop

    .line 1057
    .end local v2    # "_arg2":[I
    .end local v4    # "_arg0":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .end local v5    # "_arg1":Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .end local v6    # "_arg2_length":I
    :goto_3d3
    return v1

    .line 628
    .restart local v4    # "_arg0":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .restart local v5    # "_arg1":Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .restart local v6    # "_arg2_length":I
    :cond_3d4
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_3ec
    .packed-switch 0x1
        :pswitch_3aa
        :pswitch_39c
        :pswitch_382
        :pswitch_370
        :pswitch_35a
        :pswitch_347
        :pswitch_334
        :pswitch_321
        :pswitch_312
        :pswitch_2ff
        :pswitch_2c2
        :pswitch_2ab
        :pswitch_298
        :pswitch_285
        :pswitch_26a
        :pswitch_22d
        :pswitch_1f0
        :pswitch_1b3
        :pswitch_176
        :pswitch_139
        :pswitch_126
        :pswitch_113
        :pswitch_100
        :pswitch_ed
        :pswitch_da
        :pswitch_c7
        :pswitch_a8
        :pswitch_99
        :pswitch_8a
        :pswitch_7b
        :pswitch_64
        :pswitch_51
        :pswitch_3a
        :pswitch_23
    .end packed-switch
.end method
