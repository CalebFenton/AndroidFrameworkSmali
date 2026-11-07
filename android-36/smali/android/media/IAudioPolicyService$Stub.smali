.class public abstract Landroid/media/IAudioPolicyService$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyService.java"

# interfaces
.implements Landroid/media/IAudioPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioPolicyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireSoundTriggerSession:I = 0x36

.field static final blacklist TRANSACTION_addDevicesRoleForCapturePreset:I = 0x5b

.field static final blacklist TRANSACTION_addSourceDefaultEffect:I = 0x24

.field static final blacklist TRANSACTION_addStreamDefaultEffect:I = 0x25

.field static final blacklist TRANSACTION_canBeSpatialized:I = 0x61

.field static final blacklist TRANSACTION_clearDevicesRoleForCapturePreset:I = 0x5d

.field static final blacklist TRANSACTION_clearDevicesRoleForStrategy:I = 0x58

.field static final blacklist TRANSACTION_clearPreferredMixerAttributes:I = 0x67

.field static final blacklist TRANSACTION_createAudioPatch:I = 0x2f

.field static final blacklist TRANSACTION_getAudioPort:I = 0x2e

.field static final blacklist TRANSACTION_getDeviceConnectionState:I = 0x3

.field static final blacklist TRANSACTION_getDevicesForAttributes:I = 0x1a

.field static final blacklist TRANSACTION_getDevicesForRoleAndCapturePreset:I = 0x5e

.field static final blacklist TRANSACTION_getDevicesForRoleAndStrategy:I = 0x59

.field static final blacklist TRANSACTION_getDirectPlaybackSupport:I = 0x62

.field static final blacklist TRANSACTION_getDirectProfilesForAttributes:I = 0x63

.field static final blacklist TRANSACTION_getForceUse:I = 0x7

.field static final blacklist TRANSACTION_getHwOffloadFormatsSupportedForBluetoothMedia:I = 0x47

.field static final blacklist TRANSACTION_getInputForAttr:I = 0xd

.field static final blacklist TRANSACTION_getMasterMono:I = 0x43

.field static final blacklist TRANSACTION_getMaxVolumeIndexForAttributes:I = 0x17

.field static final blacklist TRANSACTION_getMinVolumeIndexForAttributes:I = 0x18

.field static final blacklist TRANSACTION_getMmapPolicyForDevice:I = 0x6a

.field static final blacklist TRANSACTION_getMmapPolicyInfos:I = 0x69

.field static final blacklist TRANSACTION_getOffloadSupport:I = 0x2a

.field static final blacklist TRANSACTION_getOutput:I = 0x8

.field static final blacklist TRANSACTION_getOutputForAttr:I = 0x9

.field static final blacklist TRANSACTION_getOutputForEffect:I = 0x1b

.field static final blacklist TRANSACTION_getPermissionController:I = 0x68

.field static final blacklist TRANSACTION_getPhoneState:I = 0x38

.field static final blacklist TRANSACTION_getPreferredMixerAttributes:I = 0x66

.field static final blacklist TRANSACTION_getProductStrategyFromAudioAttributes:I = 0x51

.field static final blacklist TRANSACTION_getRegisteredPolicyMixes:I = 0x3a

.field static final blacklist TRANSACTION_getReportedSurroundFormats:I = 0x46

.field static final blacklist TRANSACTION_getSpatializer:I = 0x60

.field static final blacklist TRANSACTION_getStrategyForStream:I = 0x19

.field static final blacklist TRANSACTION_getStreamVolumeDB:I = 0x44

.field static final blacklist TRANSACTION_getStreamVolumeIndex:I = 0x14

.field static final blacklist TRANSACTION_getSupportedMixerAttributes:I = 0x64

.field static final blacklist TRANSACTION_getSurroundFormats:I = 0x45

.field static final blacklist TRANSACTION_getVolumeGroupFromAudioAttributes:I = 0x53

.field static final blacklist TRANSACTION_getVolumeIndexForAttributes:I = 0x16

.field static final blacklist TRANSACTION_handleDeviceConfigChange:I = 0x4

.field static final blacklist TRANSACTION_initStreamVolume:I = 0x12

.field static final blacklist TRANSACTION_isCallScreenModeSupported:I = 0x55

.field static final blacklist TRANSACTION_isDirectOutputSupported:I = 0x2b

.field static final blacklist TRANSACTION_isHapticPlaybackSupported:I = 0x4d

.field static final blacklist TRANSACTION_isHotwordStreamSupported:I = 0x4f

.field static final blacklist TRANSACTION_isSourceActive:I = 0x22

.field static final blacklist TRANSACTION_isStreamActive:I = 0x20

.field static final blacklist TRANSACTION_isStreamActiveRemotely:I = 0x21

.field static final blacklist TRANSACTION_isUltrasoundSupported:I = 0x4e

.field static final blacklist TRANSACTION_listAudioPatches:I = 0x31

.field static final blacklist TRANSACTION_listAudioPorts:I = 0x2c

.field static final blacklist TRANSACTION_listAudioProductStrategies:I = 0x50

.field static final blacklist TRANSACTION_listAudioVolumeGroups:I = 0x52

.field static final blacklist TRANSACTION_listDeclaredDevicePorts:I = 0x2d

.field static final blacklist TRANSACTION_moveEffectsToIo:I = 0x1f

.field static final blacklist TRANSACTION_onNewAudioModulesAvailable:I = 0x1

.field static final blacklist TRANSACTION_queryDefaultPreProcessing:I = 0x23

.field static final blacklist TRANSACTION_registerClient:I = 0x33

.field static final blacklist TRANSACTION_registerEffect:I = 0x1c

.field static final blacklist TRANSACTION_registerPolicyMixes:I = 0x39

.field static final blacklist TRANSACTION_registerSoundTriggerCaptureStateListener:I = 0x5f

.field static final blacklist TRANSACTION_releaseAudioPatch:I = 0x30

.field static final blacklist TRANSACTION_releaseInput:I = 0x10

.field static final blacklist TRANSACTION_releaseOutput:I = 0xc

.field static final blacklist TRANSACTION_releaseSoundTriggerSession:I = 0x37

.field static final blacklist TRANSACTION_removeDevicesRoleForCapturePreset:I = 0x5c

.field static final blacklist TRANSACTION_removeDevicesRoleForStrategy:I = 0x57

.field static final blacklist TRANSACTION_removeSourceDefaultEffect:I = 0x26

.field static final blacklist TRANSACTION_removeStreamDefaultEffect:I = 0x27

.field static final blacklist TRANSACTION_removeUidDeviceAffinities:I = 0x3d

.field static final blacklist TRANSACTION_removeUserIdDeviceAffinities:I = 0x3f

.field static final blacklist TRANSACTION_setA11yServicesUids:I = 0x4b

.field static final blacklist TRANSACTION_setActiveAssistantServicesUids:I = 0x4a

.field static final blacklist TRANSACTION_setAllowedCapturePolicy:I = 0x29

.field static final blacklist TRANSACTION_setAssistantServicesUids:I = 0x49

.field static final blacklist TRANSACTION_setAudioPortCallbacksEnabled:I = 0x34

.field static final blacklist TRANSACTION_setAudioPortConfig:I = 0x32

.field static final blacklist TRANSACTION_setAudioVolumeGroupCallbacksEnabled:I = 0x35

.field static final blacklist TRANSACTION_setCurrentImeUid:I = 0x4c

.field static final blacklist TRANSACTION_setDeviceAbsoluteVolumeEnabled:I = 0x11

.field static final blacklist TRANSACTION_setDeviceConnectionState:I = 0x2

.field static final blacklist TRANSACTION_setDevicesRoleForCapturePreset:I = 0x5a

.field static final blacklist TRANSACTION_setDevicesRoleForStrategy:I = 0x56

.field static final blacklist TRANSACTION_setEffectEnabled:I = 0x1e

.field static final blacklist TRANSACTION_setEnableHardening:I = 0x6b

.field static final blacklist TRANSACTION_setForceUse:I = 0x6

.field static final blacklist TRANSACTION_setMasterMono:I = 0x42

.field static final blacklist TRANSACTION_setPhoneState:I = 0x5

.field static final blacklist TRANSACTION_setPreferredMixerAttributes:I = 0x65

.field static final blacklist TRANSACTION_setRttEnabled:I = 0x54

.field static final blacklist TRANSACTION_setStreamVolumeIndex:I = 0x13

.field static final blacklist TRANSACTION_setSupportedSystemUsages:I = 0x28

.field static final blacklist TRANSACTION_setSurroundFormatEnabled:I = 0x48

.field static final blacklist TRANSACTION_setUidDeviceAffinities:I = 0x3c

.field static final blacklist TRANSACTION_setUserIdDeviceAffinities:I = 0x3e

.field static final blacklist TRANSACTION_setVolumeIndexForAttributes:I = 0x15

.field static final blacklist TRANSACTION_startAudioSource:I = 0x40

.field static final blacklist TRANSACTION_startInput:I = 0xe

.field static final blacklist TRANSACTION_startOutput:I = 0xa

.field static final blacklist TRANSACTION_stopAudioSource:I = 0x41

.field static final blacklist TRANSACTION_stopInput:I = 0xf

.field static final blacklist TRANSACTION_stopOutput:I = 0xb

.field static final blacklist TRANSACTION_unregisterEffect:I = 0x1d

.field static final blacklist TRANSACTION_updatePolicyMixes:I = 0x3b


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 549
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 550
    const-string v0, "android.media.IAudioPolicyService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 558
    if-nez p0, :cond_4

    .line 559
    const/4 v0, 0x0

    return-object v0

    .line 561
    :cond_4
    const-string v0, "android.media.IAudioPolicyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 562
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioPolicyService;

    if-eqz v1, :cond_14

    .line 563
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioPolicyService;

    return-object v1

    .line 565
    :cond_14
    new-instance v1, Landroid/media/IAudioPolicyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 569
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.media.IAudioPolicyService"

    .line 574
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_13

    const v1, 0xffffff

    if-gt v9, v1, :cond_13

    .line 575
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    :cond_13
    const v1, 0x5f4e5446

    if-ne v9, v1, :cond_1c

    .line 578
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    return v13

    .line 581
    :cond_1c
    const-string v1, "Array too large: "

    const v2, 0xf4240

    packed-switch v9, :pswitch_data_a24

    .line 1795
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1787
    :pswitch_29
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1788
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1789
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setEnableHardening(Z)V

    .line 1790
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1791
    goto/16 :goto_a23

    .line 1775
    .end local v1    # "_arg0":Z
    :pswitch_38
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1777
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/audio/common/AudioMMapPolicyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioMMapPolicyInfo;

    .line 1778
    .local v2, "_arg1":Landroid/media/audio/common/AudioMMapPolicyInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1779
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getMmapPolicyForDevice(ILandroid/media/audio/common/AudioMMapPolicyInfo;)V

    .line 1780
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1781
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1782
    goto/16 :goto_a23

    .line 1765
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/audio/common/AudioMMapPolicyInfo;
    :pswitch_52
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1766
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1767
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getMmapPolicyInfos(I)[Landroid/media/audio/common/AudioMMapPolicyInfo;

    move-result-object v2

    .line 1768
    .local v2, "_result":[Landroid/media/audio/common/AudioMMapPolicyInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1770
    goto/16 :goto_a23

    .line 1757
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/media/audio/common/AudioMMapPolicyInfo;
    :pswitch_65
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->getPermissionController()Lcom/android/media/permission/INativePermissionController;

    move-result-object v1

    .line 1758
    .local v1, "_result":Lcom/android/media/permission/INativePermissionController;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1760
    goto/16 :goto_a23

    .line 1745
    .end local v1    # "_result":Lcom/android/media/permission/INativePermissionController;
    :pswitch_71
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 1747
    .local v1, "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1749
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1750
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1751
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->clearPreferredMixerAttributes(Landroid/media/audio/common/AudioAttributes;II)V

    .line 1752
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1753
    goto/16 :goto_a23

    .line 1733
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_8c
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 1735
    .restart local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1736
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1737
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getPreferredMixerAttributes(Landroid/media/audio/common/AudioAttributes;I)Landroid/media/AudioMixerAttributesInternal;

    move-result-object v3

    .line 1738
    .local v3, "_result":Landroid/media/AudioMixerAttributesInternal;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1740
    goto/16 :goto_a23

    .line 1718
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/media/AudioMixerAttributesInternal;
    :pswitch_a7
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 1720
    .restart local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1722
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1724
    .local v3, "_arg2":I
    sget-object v4, Landroid/media/AudioMixerAttributesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioMixerAttributesInternal;

    .line 1725
    .local v4, "_arg3":Landroid/media/AudioMixerAttributesInternal;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1726
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioPolicyService$Stub;->setPreferredMixerAttributes(Landroid/media/audio/common/AudioAttributes;IILandroid/media/AudioMixerAttributesInternal;)V

    .line 1727
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    goto/16 :goto_a23

    .line 1708
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/media/AudioMixerAttributesInternal;
    :pswitch_ca
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1709
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1710
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getSupportedMixerAttributes(I)[Landroid/media/AudioMixerAttributesInternal;

    move-result-object v2

    .line 1711
    .local v2, "_result":[Landroid/media/AudioMixerAttributesInternal;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1713
    goto/16 :goto_a23

    .line 1698
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/media/AudioMixerAttributesInternal;
    :pswitch_dd
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 1699
    .local v1, "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1700
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getDirectProfilesForAttributes(Landroid/media/audio/common/AudioAttributes;)[Landroid/media/audio/common/AudioProfile;

    move-result-object v2

    .line 1701
    .local v2, "_result":[Landroid/media/audio/common/AudioProfile;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1703
    goto/16 :goto_a23

    .line 1686
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_result":[Landroid/media/audio/common/AudioProfile;
    :pswitch_f4
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 1688
    .restart local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    sget-object v2, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioConfig;

    .line 1689
    .local v2, "_arg1":Landroid/media/audio/common/AudioConfig;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1690
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getDirectPlaybackSupport(Landroid/media/audio/common/AudioAttributes;Landroid/media/audio/common/AudioConfig;)I

    move-result v3

    .line 1691
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    goto/16 :goto_a23

    .line 1672
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":Landroid/media/audio/common/AudioConfig;
    .end local v3    # "_result":I
    :pswitch_113
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 1674
    .restart local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    sget-object v2, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioConfig;

    .line 1676
    .restart local v2    # "_arg1":Landroid/media/audio/common/AudioConfig;
    sget-object v3, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/audio/common/AudioDevice;

    .line 1677
    .local v3, "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1678
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->canBeSpatialized(Landroid/media/audio/common/AudioAttributes;Landroid/media/audio/common/AudioConfig;[Landroid/media/audio/common/AudioDevice;)Z

    move-result v4

    .line 1679
    .local v4, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1681
    goto/16 :goto_a23

    .line 1662
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":Landroid/media/audio/common/AudioConfig;
    .end local v3    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    .end local v4    # "_result":Z
    :pswitch_13a
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/INativeSpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INativeSpatializerCallback;

    move-result-object v1

    .line 1663
    .local v1, "_arg0":Landroid/media/INativeSpatializerCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1664
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/GetSpatializerResponse;

    move-result-object v2

    .line 1665
    .local v2, "_result":Landroid/media/GetSpatializerResponse;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1666
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1667
    goto/16 :goto_a23

    .line 1652
    .end local v1    # "_arg0":Landroid/media/INativeSpatializerCallback;
    .end local v2    # "_result":Landroid/media/GetSpatializerResponse;
    :pswitch_151
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICaptureStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICaptureStateListener;

    move-result-object v1

    .line 1653
    .local v1, "_arg0":Landroid/media/ICaptureStateListener;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1654
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->registerSoundTriggerCaptureStateListener(Landroid/media/ICaptureStateListener;)Z

    move-result v2

    .line 1655
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1657
    goto/16 :goto_a23

    .line 1640
    .end local v1    # "_arg0":Landroid/media/ICaptureStateListener;
    .end local v2    # "_result":Z
    :pswitch_168
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1642
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1643
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1644
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getDevicesForRoleAndCapturePreset(II)[Landroid/media/audio/common/AudioDevice;

    move-result-object v3

    .line 1645
    .local v3, "_result":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1646
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1647
    goto/16 :goto_a23

    .line 1629
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[Landroid/media/audio/common/AudioDevice;
    :pswitch_17f
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1631
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1632
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1633
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->clearDevicesRoleForCapturePreset(II)V

    .line 1634
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    goto/16 :goto_a23

    .line 1616
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_192
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1618
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1620
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/audio/common/AudioDevice;

    .line 1621
    .local v3, "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1622
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->removeDevicesRoleForCapturePreset(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1623
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    goto/16 :goto_a23

    .line 1603
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    :pswitch_1ad
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1605
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1607
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/audio/common/AudioDevice;

    .line 1608
    .restart local v3    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1609
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->addDevicesRoleForCapturePreset(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1610
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    goto/16 :goto_a23

    .line 1590
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    :pswitch_1c8
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1592
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1594
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/audio/common/AudioDevice;

    .line 1595
    .restart local v3    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1596
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->setDevicesRoleForCapturePreset(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1597
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    goto/16 :goto_a23

    .line 1578
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    :pswitch_1e3
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1580
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1581
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1582
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getDevicesForRoleAndStrategy(II)[Landroid/media/audio/common/AudioDevice;

    move-result-object v3

    .line 1583
    .local v3, "_result":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1585
    goto/16 :goto_a23

    .line 1567
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[Landroid/media/audio/common/AudioDevice;
    :pswitch_1fa
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1569
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1570
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1571
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->clearDevicesRoleForStrategy(II)V

    .line 1572
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    goto/16 :goto_a23

    .line 1554
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_20d
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1556
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1558
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/audio/common/AudioDevice;

    .line 1559
    .local v3, "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1560
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->removeDevicesRoleForStrategy(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1561
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    goto/16 :goto_a23

    .line 1541
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    :pswitch_228
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1543
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1545
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/audio/common/AudioDevice;

    .line 1546
    .restart local v3    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1547
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->setDevicesRoleForStrategy(II[Landroid/media/audio/common/AudioDevice;)V

    .line 1548
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    goto/16 :goto_a23

    .line 1533
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Landroid/media/audio/common/AudioDevice;
    :pswitch_243
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->isCallScreenModeSupported()Z

    move-result v1

    .line 1534
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1536
    goto/16 :goto_a23

    .line 1525
    .end local v1    # "_result":Z
    :pswitch_24f
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1526
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1527
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setRttEnabled(Z)V

    .line 1528
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    goto/16 :goto_a23

    .line 1513
    .end local v1    # "_arg0":Z
    :pswitch_25e
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 1515
    .local v1, "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1516
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1517
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getVolumeGroupFromAudioAttributes(Landroid/media/audio/common/AudioAttributes;Z)I

    move-result v3

    .line 1518
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    goto/16 :goto_a23

    .line 1505
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":I
    :pswitch_279
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->listAudioVolumeGroups()[Landroid/media/AudioVolumeGroup;

    move-result-object v1

    .line 1506
    .local v1, "_result":[Landroid/media/AudioVolumeGroup;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1507
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1508
    goto/16 :goto_a23

    .line 1494
    .end local v1    # "_result":[Landroid/media/AudioVolumeGroup;
    :pswitch_285
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 1496
    .local v1, "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1497
    .restart local v2    # "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getProductStrategyFromAudioAttributes(Landroid/media/audio/common/AudioAttributes;Z)I

    move-result v3

    .line 1499
    .restart local v3    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1501
    goto/16 :goto_a23

    .line 1486
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":I
    :pswitch_2a0
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->listAudioProductStrategies()[Landroid/media/AudioProductStrategy;

    move-result-object v1

    .line 1487
    .local v1, "_result":[Landroid/media/AudioProductStrategy;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1489
    goto/16 :goto_a23

    .line 1477
    .end local v1    # "_result":[Landroid/media/AudioProductStrategy;
    :pswitch_2ac
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1478
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->isHotwordStreamSupported(Z)Z

    move-result v2

    .line 1480
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1482
    goto/16 :goto_a23

    .line 1469
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_2bf
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->isUltrasoundSupported()Z

    move-result v1

    .line 1470
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1472
    goto/16 :goto_a23

    .line 1462
    .end local v1    # "_result":Z
    :pswitch_2cb
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->isHapticPlaybackSupported()Z

    move-result v1

    .line 1463
    .restart local v1    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1465
    goto/16 :goto_a23

    .line 1454
    .end local v1    # "_result":Z
    :pswitch_2d7
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1455
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1456
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setCurrentImeUid(I)V

    .line 1457
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    goto/16 :goto_a23

    .line 1445
    .end local v1    # "_arg0":I
    :pswitch_2e6
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1446
    .local v1, "_arg0":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1447
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setA11yServicesUids([I)V

    .line 1448
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    goto/16 :goto_a23

    .line 1436
    .end local v1    # "_arg0":[I
    :pswitch_2f5
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1437
    .restart local v1    # "_arg0":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1438
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setActiveAssistantServicesUids([I)V

    .line 1439
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    goto/16 :goto_a23

    .line 1427
    .end local v1    # "_arg0":[I
    :pswitch_304
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1428
    .restart local v1    # "_arg0":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1429
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setAssistantServicesUids([I)V

    .line 1430
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    goto/16 :goto_a23

    .line 1416
    .end local v1    # "_arg0":[I
    :pswitch_313
    sget-object v1, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioFormatDescription;

    .line 1418
    .local v1, "_arg0":Landroid/media/audio/common/AudioFormatDescription;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1419
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1420
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setSurroundFormatEnabled(Landroid/media/audio/common/AudioFormatDescription;Z)V

    .line 1421
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    goto/16 :goto_a23

    .line 1406
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioFormatDescription;
    .end local v2    # "_arg1":Z
    :pswitch_32a
    sget-object v1, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioDeviceDescription;

    .line 1407
    .local v1, "_arg0":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1408
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getHwOffloadFormatsSupportedForBluetoothMedia(Landroid/media/audio/common/AudioDeviceDescription;)[Landroid/media/audio/common/AudioFormatDescription;

    move-result-object v2

    .line 1409
    .local v2, "_result":[Landroid/media/audio/common/AudioFormatDescription;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1411
    goto/16 :goto_a23

    .line 1386
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v2    # "_result":[Landroid/media/audio/common/AudioFormatDescription;
    :pswitch_341
    sget-object v3, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audio/common/Int;

    .line 1388
    .local v3, "_arg0":Landroid/media/audio/common/Int;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1389
    .local v4, "_arg1_length":I
    if-gt v4, v2, :cond_366

    .line 1391
    if-gez v4, :cond_353

    .line 1392
    const/4 v1, 0x0

    .local v1, "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    goto :goto_355

    .line 1394
    .end local v1    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    :cond_353
    new-array v1, v4, [Landroid/media/audio/common/AudioFormatDescription;

    .line 1396
    .restart local v1    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    :goto_355
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1397
    invoke-virtual {p0, v3, v1}, Landroid/media/IAudioPolicyService$Stub;->getReportedSurroundFormats(Landroid/media/audio/common/Int;[Landroid/media/audio/common/AudioFormatDescription;)V

    .line 1398
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1400
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1401
    goto/16 :goto_a23

    .line 1390
    .end local v1    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    :cond_366
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1356
    .end local v3    # "_arg0":Landroid/media/audio/common/Int;
    .end local v4    # "_arg1_length":I
    :pswitch_37d
    sget-object v3, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audio/common/Int;

    .line 1358
    .restart local v3    # "_arg0":Landroid/media/audio/common/Int;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1359
    .restart local v4    # "_arg1_length":I
    if-gt v4, v2, :cond_3c8

    .line 1361
    if-gez v4, :cond_38f

    .line 1362
    const/4 v5, 0x0

    .local v5, "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    goto :goto_391

    .line 1364
    .end local v5    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    :cond_38f
    new-array v5, v4, [Landroid/media/audio/common/AudioFormatDescription;

    .line 1367
    .restart local v5    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    :goto_391
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1368
    .local v6, "_arg2_length":I
    if-gt v6, v2, :cond_3b1

    .line 1370
    if-gez v6, :cond_39b

    .line 1371
    const/4 v1, 0x0

    .local v1, "_arg2":[Z
    goto :goto_39d

    .line 1373
    .end local v1    # "_arg2":[Z
    :cond_39b
    new-array v1, v6, [Z

    .line 1375
    .restart local v1    # "_arg2":[Z
    :goto_39d
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    invoke-virtual {p0, v3, v5, v1}, Landroid/media/IAudioPolicyService$Stub;->getSurroundFormats(Landroid/media/audio/common/Int;[Landroid/media/audio/common/AudioFormatDescription;[Z)V

    .line 1377
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1379
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1380
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 1381
    goto/16 :goto_a23

    .line 1369
    .end local v1    # "_arg2":[Z
    :cond_3b1
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1360
    .end local v5    # "_arg1":[Landroid/media/audio/common/AudioFormatDescription;
    .end local v6    # "_arg2_length":I
    :cond_3c8
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1342
    .end local v3    # "_arg0":Landroid/media/audio/common/Int;
    .end local v4    # "_arg1_length":I
    :pswitch_3df
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1344
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1346
    .local v2, "_arg1":I
    sget-object v3, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audio/common/AudioDeviceDescription;

    .line 1347
    .local v3, "_arg2":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1348
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->getStreamVolumeDB(IILandroid/media/audio/common/AudioDeviceDescription;)F

    move-result v4

    .line 1349
    .local v4, "_result":F
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1351
    goto/16 :goto_a23

    .line 1334
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v4    # "_result":F
    :pswitch_3fe
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->getMasterMono()Z

    move-result v1

    .line 1335
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1337
    goto/16 :goto_a23

    .line 1326
    .end local v1    # "_result":Z
    :pswitch_40a
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1327
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1328
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setMasterMono(Z)V

    .line 1329
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    goto/16 :goto_a23

    .line 1317
    .end local v1    # "_arg0":Z
    :pswitch_419
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1318
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1319
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->stopAudioSource(I)V

    .line 1320
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    goto/16 :goto_a23

    .line 1305
    .end local v1    # "_arg0":I
    :pswitch_428
    sget-object v1, Landroid/media/AudioPortConfigFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPortConfigFw;

    .line 1307
    .local v1, "_arg0":Landroid/media/AudioPortConfigFw;
    sget-object v2, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioAttributes;

    .line 1308
    .local v2, "_arg1":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1309
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->startAudioSource(Landroid/media/AudioPortConfigFw;Landroid/media/audio/common/AudioAttributes;)I

    move-result v3

    .line 1310
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    goto/16 :goto_a23

    .line 1296
    .end local v1    # "_arg0":Landroid/media/AudioPortConfigFw;
    .end local v2    # "_arg1":Landroid/media/audio/common/AudioAttributes;
    .end local v3    # "_result":I
    :pswitch_447
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1297
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1298
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->removeUserIdDeviceAffinities(I)V

    .line 1299
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    goto/16 :goto_a23

    .line 1285
    .end local v1    # "_arg0":I
    :pswitch_456
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1287
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioDevice;

    .line 1288
    .local v2, "_arg1":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1289
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setUserIdDeviceAffinities(I[Landroid/media/audio/common/AudioDevice;)V

    .line 1290
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    goto/16 :goto_a23

    .line 1276
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/media/audio/common/AudioDevice;
    :pswitch_46d
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1277
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1278
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->removeUidDeviceAffinities(I)V

    .line 1279
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    goto/16 :goto_a23

    .line 1265
    .end local v1    # "_arg0":I
    :pswitch_47c
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1267
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioDevice;

    .line 1268
    .restart local v2    # "_arg1":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1269
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setUidDeviceAffinities(I[Landroid/media/audio/common/AudioDevice;)V

    .line 1270
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    goto/16 :goto_a23

    .line 1256
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/media/audio/common/AudioDevice;
    :pswitch_493
    sget-object v1, Landroid/media/AudioMixUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/AudioMixUpdate;

    .line 1257
    .local v1, "_arg0":[Landroid/media/AudioMixUpdate;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1258
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->updatePolicyMixes([Landroid/media/AudioMixUpdate;)V

    .line 1259
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    goto/16 :goto_a23

    .line 1248
    .end local v1    # "_arg0":[Landroid/media/AudioMixUpdate;
    :pswitch_4a6
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object v1

    .line 1249
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioMix;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1251
    goto/16 :goto_a23

    .line 1238
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioMix;>;"
    :pswitch_4b2
    sget-object v1, Landroid/media/AudioMix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/AudioMix;

    .line 1240
    .local v1, "_arg0":[Landroid/media/AudioMix;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1241
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->registerPolicyMixes([Landroid/media/AudioMix;Z)V

    .line 1243
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    goto/16 :goto_a23

    .line 1230
    .end local v1    # "_arg0":[Landroid/media/AudioMix;
    .end local v2    # "_arg1":Z
    :pswitch_4c9
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->getPhoneState()I

    move-result v1

    .line 1231
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    goto/16 :goto_a23

    .line 1222
    .end local v1    # "_result":I
    :pswitch_4d5
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1223
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1224
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->releaseSoundTriggerSession(I)V

    .line 1225
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    goto/16 :goto_a23

    .line 1214
    .end local v1    # "_arg0":I
    :pswitch_4e4
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->acquireSoundTriggerSession()Landroid/media/SoundTriggerSession;

    move-result-object v1

    .line 1215
    .local v1, "_result":Landroid/media/SoundTriggerSession;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1217
    goto/16 :goto_a23

    .line 1206
    .end local v1    # "_result":Landroid/media/SoundTriggerSession;
    :pswitch_4f0
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1207
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setAudioVolumeGroupCallbacksEnabled(Z)V

    .line 1209
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    goto/16 :goto_a23

    .line 1197
    .end local v1    # "_arg0":Z
    :pswitch_4ff
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1198
    .restart local v1    # "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setAudioPortCallbacksEnabled(Z)V

    .line 1200
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    goto/16 :goto_a23

    .line 1188
    .end local v1    # "_arg0":Z
    :pswitch_50e
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioPolicyServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyServiceClient;

    move-result-object v1

    .line 1189
    .local v1, "_arg0":Landroid/media/IAudioPolicyServiceClient;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->registerClient(Landroid/media/IAudioPolicyServiceClient;)V

    .line 1191
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    goto/16 :goto_a23

    .line 1179
    .end local v1    # "_arg0":Landroid/media/IAudioPolicyServiceClient;
    :pswitch_521
    sget-object v1, Landroid/media/AudioPortConfigFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPortConfigFw;

    .line 1180
    .local v1, "_arg0":Landroid/media/AudioPortConfigFw;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setAudioPortConfig(Landroid/media/AudioPortConfigFw;)V

    .line 1182
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    goto/16 :goto_a23

    .line 1158
    .end local v1    # "_arg0":Landroid/media/AudioPortConfigFw;
    :pswitch_534
    sget-object v3, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audio/common/Int;

    .line 1160
    .local v3, "_arg0":Landroid/media/audio/common/Int;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1161
    .local v4, "_arg1_length":I
    if-gt v4, v2, :cond_55d

    .line 1163
    if-gez v4, :cond_546

    .line 1164
    const/4 v1, 0x0

    .local v1, "_arg1":[Landroid/media/AudioPatchFw;
    goto :goto_548

    .line 1166
    .end local v1    # "_arg1":[Landroid/media/AudioPatchFw;
    :cond_546
    new-array v1, v4, [Landroid/media/AudioPatchFw;

    .line 1168
    .restart local v1    # "_arg1":[Landroid/media/AudioPatchFw;
    :goto_548
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {p0, v3, v1}, Landroid/media/IAudioPolicyService$Stub;->listAudioPatches(Landroid/media/audio/common/Int;[Landroid/media/AudioPatchFw;)I

    move-result v2

    .line 1170
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1173
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1174
    goto/16 :goto_a23

    .line 1162
    .end local v1    # "_arg1":[Landroid/media/AudioPatchFw;
    .end local v2    # "_result":I
    :cond_55d
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1149
    .end local v3    # "_arg0":Landroid/media/audio/common/Int;
    .end local v4    # "_arg1_length":I
    :pswitch_574
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1150
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->releaseAudioPatch(I)V

    .line 1152
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    goto/16 :goto_a23

    .line 1137
    .end local v1    # "_arg0":I
    :pswitch_583
    sget-object v1, Landroid/media/AudioPatchFw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPatchFw;

    .line 1139
    .local v1, "_arg0":Landroid/media/AudioPatchFw;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1140
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->createAudioPatch(Landroid/media/AudioPatchFw;I)I

    move-result v3

    .line 1142
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    goto/16 :goto_a23

    .line 1127
    .end local v1    # "_arg0":Landroid/media/AudioPatchFw;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_59e
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1128
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getAudioPort(I)Landroid/media/AudioPortFw;

    move-result-object v2

    .line 1130
    .local v2, "_result":Landroid/media/AudioPortFw;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1132
    goto/16 :goto_a23

    .line 1117
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/media/AudioPortFw;
    :pswitch_5b1
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1118
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->listDeclaredDevicePorts(I)[Landroid/media/AudioPortFw;

    move-result-object v2

    .line 1120
    .local v2, "_result":[Landroid/media/AudioPortFw;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1122
    goto/16 :goto_a23

    .line 1092
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/media/AudioPortFw;
    :pswitch_5c4
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1094
    .local v3, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1096
    .local v4, "_arg1":I
    sget-object v5, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/audio/common/Int;

    .line 1098
    .local v5, "_arg2":Landroid/media/audio/common/Int;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1099
    .local v6, "_arg3_length":I
    if-gt v6, v2, :cond_5f5

    .line 1101
    if-gez v6, :cond_5de

    .line 1102
    const/4 v1, 0x0

    .local v1, "_arg3":[Landroid/media/AudioPortFw;
    goto :goto_5e0

    .line 1104
    .end local v1    # "_arg3":[Landroid/media/AudioPortFw;
    :cond_5de
    new-array v1, v6, [Landroid/media/AudioPortFw;

    .line 1106
    .restart local v1    # "_arg3":[Landroid/media/AudioPortFw;
    :goto_5e0
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/media/IAudioPolicyService$Stub;->listAudioPorts(IILandroid/media/audio/common/Int;[Landroid/media/AudioPortFw;)I

    move-result v2

    .line 1108
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1111
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1112
    goto/16 :goto_a23

    .line 1100
    .end local v1    # "_arg3":[Landroid/media/AudioPortFw;
    .end local v2    # "_result":I
    :cond_5f5
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1080
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/media/audio/common/Int;
    .end local v6    # "_arg3_length":I
    :pswitch_60c
    sget-object v1, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioConfigBase;

    .line 1082
    .local v1, "_arg0":Landroid/media/audio/common/AudioConfigBase;
    sget-object v2, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioAttributes;

    .line 1083
    .local v2, "_arg1":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->isDirectOutputSupported(Landroid/media/audio/common/AudioConfigBase;Landroid/media/audio/common/AudioAttributes;)Z

    move-result v3

    .line 1085
    .local v3, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1087
    goto/16 :goto_a23

    .line 1070
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioConfigBase;
    .end local v2    # "_arg1":Landroid/media/audio/common/AudioAttributes;
    .end local v3    # "_result":Z
    :pswitch_62b
    sget-object v1, Landroid/media/audio/common/AudioOffloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioOffloadInfo;

    .line 1071
    .local v1, "_arg0":Landroid/media/audio/common/AudioOffloadInfo;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getOffloadSupport(Landroid/media/audio/common/AudioOffloadInfo;)I

    move-result v2

    .line 1073
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    goto/16 :goto_a23

    .line 1059
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioOffloadInfo;
    .end local v2    # "_result":I
    :pswitch_642
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1061
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1062
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setAllowedCapturePolicy(II)V

    .line 1064
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    goto/16 :goto_a23

    .line 1050
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_655
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1051
    .local v1, "_arg0":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->setSupportedSystemUsages([I)V

    .line 1053
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    goto/16 :goto_a23

    .line 1041
    .end local v1    # "_arg0":[I
    :pswitch_664
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1042
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->removeStreamDefaultEffect(I)V

    .line 1044
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    goto/16 :goto_a23

    .line 1032
    .end local v1    # "_arg0":I
    :pswitch_673
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1033
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1034
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->removeSourceDefaultEffect(I)V

    .line 1035
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    goto/16 :goto_a23

    .line 1014
    .end local v1    # "_arg0":I
    :pswitch_682
    sget-object v1, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioUuid;

    .line 1016
    .local v1, "_arg0":Landroid/media/audio/common/AudioUuid;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1018
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audio/common/AudioUuid;

    .line 1020
    .local v3, "_arg2":Landroid/media/audio/common/AudioUuid;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1022
    .local v4, "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1023
    .local v5, "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioPolicyService$Stub;->addStreamDefaultEffect(Landroid/media/audio/common/AudioUuid;Ljava/lang/String;Landroid/media/audio/common/AudioUuid;II)I

    move-result v6

    .line 1025
    .local v6, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    goto/16 :goto_a23

    .line 996
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioUuid;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/audio/common/AudioUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :pswitch_6ae
    sget-object v0, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/media/audio/common/AudioUuid;

    .line 998
    .restart local v1    # "_arg0":Landroid/media/audio/common/AudioUuid;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/media/audio/common/AudioUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/media/audio/common/AudioUuid;

    .line 1002
    .restart local v3    # "_arg2":Landroid/media/audio/common/AudioUuid;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1004
    .restart local v4    # "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1005
    .restart local v5    # "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioPolicyService$Stub;->addSourceDefaultEffect(Landroid/media/audio/common/AudioUuid;Ljava/lang/String;Landroid/media/audio/common/AudioUuid;II)I

    move-result v6

    .line 1007
    .restart local v6    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    goto/16 :goto_a23

    .line 983
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioUuid;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/audio/common/AudioUuid;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :pswitch_6dc
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 985
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/audio/common/Int;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/Int;

    .line 986
    .local v2, "_arg1":Landroid/media/audio/common/Int;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->queryDefaultPreProcessing(ILandroid/media/audio/common/Int;)[Landroid/media/EffectDescriptor;

    move-result-object v3

    .line 988
    .local v3, "_result":[Landroid/media/EffectDescriptor;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 990
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 991
    goto/16 :goto_a23

    .line 973
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/audio/common/Int;
    .end local v3    # "_result":[Landroid/media/EffectDescriptor;
    :pswitch_6fa
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 974
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->isSourceActive(I)Z

    move-result v2

    .line 976
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 978
    goto/16 :goto_a23

    .line 961
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_70d
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 963
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 964
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->isStreamActiveRemotely(II)Z

    move-result v3

    .line 966
    .local v3, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 968
    goto/16 :goto_a23

    .line 949
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_724
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 951
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 952
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->isStreamActive(II)Z

    move-result v3

    .line 954
    .restart local v3    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 956
    goto/16 :goto_a23

    .line 938
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_73b
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 940
    .local v1, "_arg0":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 941
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->moveEffectsToIo([II)V

    .line 943
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    goto/16 :goto_a23

    .line 927
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":I
    :pswitch_74e
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 929
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 930
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setEffectEnabled(IZ)V

    .line 932
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    goto/16 :goto_a23

    .line 918
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_761
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 919
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->unregisterEffect(I)V

    .line 921
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    goto/16 :goto_a23

    .line 901
    .end local v1    # "_arg0":I
    :pswitch_770
    sget-object v1, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/EffectDescriptor;

    .line 903
    .local v1, "_arg0":Landroid/media/EffectDescriptor;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 905
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 907
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 909
    .restart local v4    # "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 910
    .restart local v5    # "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioPolicyService$Stub;->registerEffect(Landroid/media/EffectDescriptor;IIII)V

    .line 912
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    goto/16 :goto_a23

    .line 891
    .end local v1    # "_arg0":Landroid/media/EffectDescriptor;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_794
    sget-object v1, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/EffectDescriptor;

    .line 892
    .restart local v1    # "_arg0":Landroid/media/EffectDescriptor;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getOutputForEffect(Landroid/media/EffectDescriptor;)I

    move-result v2

    .line 894
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    goto/16 :goto_a23

    .line 879
    .end local v1    # "_arg0":Landroid/media/EffectDescriptor;
    .end local v2    # "_result":I
    :pswitch_7ab
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 881
    .local v1, "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 882
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getDevicesForAttributes(Landroid/media/audio/common/AudioAttributes;Z)[Landroid/media/audio/common/AudioDevice;

    move-result-object v3

    .line 884
    .local v3, "_result":[Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 886
    goto/16 :goto_a23

    .line 869
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":[Landroid/media/audio/common/AudioDevice;
    :pswitch_7c6
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 870
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getStrategyForStream(I)I

    move-result v2

    .line 872
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    goto/16 :goto_a23

    .line 859
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_7d9
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 860
    .local v1, "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getMinVolumeIndexForAttributes(Landroid/media/audio/common/AudioAttributes;)I

    move-result v2

    .line 862
    .restart local v2    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    goto/16 :goto_a23

    .line 849
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_result":I
    :pswitch_7f0
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 850
    .restart local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getMaxVolumeIndexForAttributes(Landroid/media/audio/common/AudioAttributes;)I

    move-result v2

    .line 852
    .restart local v2    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    goto/16 :goto_a23

    .line 837
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_result":I
    :pswitch_807
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 839
    .restart local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    sget-object v2, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioDeviceDescription;

    .line 840
    .local v2, "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getVolumeIndexForAttributes(Landroid/media/audio/common/AudioAttributes;Landroid/media/audio/common/AudioDeviceDescription;)I

    move-result v3

    .line 842
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    goto/16 :goto_a23

    .line 822
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v3    # "_result":I
    :pswitch_826
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 824
    .restart local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    sget-object v2, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioDeviceDescription;

    .line 826
    .restart local v2    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 828
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 829
    .local v4, "_arg3":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioPolicyService$Stub;->setVolumeIndexForAttributes(Landroid/media/audio/common/AudioAttributes;Landroid/media/audio/common/AudioDeviceDescription;IZ)V

    .line 831
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    goto/16 :goto_a23

    .line 810
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    :pswitch_849
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 812
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioDeviceDescription;

    .line 813
    .restart local v2    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->getStreamVolumeIndex(ILandroid/media/audio/common/AudioDeviceDescription;)I

    move-result v3

    .line 815
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    goto/16 :goto_a23

    .line 795
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v3    # "_result":I
    :pswitch_864
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 797
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioDeviceDescription;

    .line 799
    .restart local v2    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 801
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 802
    .restart local v4    # "_arg3":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioPolicyService$Stub;->setStreamVolumeIndex(ILandroid/media/audio/common/AudioDeviceDescription;IZ)V

    .line 804
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    goto/16 :goto_a23

    .line 782
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/audio/common/AudioDeviceDescription;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    :pswitch_883
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 784
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 786
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 787
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->initStreamVolume(III)V

    .line 789
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    goto/16 :goto_a23

    .line 769
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_89a
    sget-object v1, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioDevice;

    .line 771
    .local v1, "_arg0":Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 773
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 774
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->setDeviceAbsoluteVolumeEnabled(Landroid/media/audio/common/AudioDevice;ZI)V

    .line 776
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    goto/16 :goto_a23

    .line 760
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioDevice;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_8b5
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 761
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->releaseInput(I)V

    .line 763
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    goto/16 :goto_a23

    .line 751
    .end local v1    # "_arg0":I
    :pswitch_8c4
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 752
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->stopInput(I)V

    .line 754
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    goto/16 :goto_a23

    .line 742
    .end local v1    # "_arg0":I
    :pswitch_8d3
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 743
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->startInput(I)V

    .line 745
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    goto/16 :goto_a23

    .line 718
    .end local v1    # "_arg0":I
    :pswitch_8e2
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 720
    .local v1, "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 722
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 724
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 726
    .local v4, "_arg3":I
    sget-object v5, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSourceState;

    .line 728
    .local v5, "_arg4":Landroid/content/AttributionSourceState;
    sget-object v6, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/audio/common/AudioConfigBase;

    .line 730
    .local v6, "_arg5":Landroid/media/audio/common/AudioConfigBase;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 732
    .local v7, "_arg6":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 733
    .local v8, "_arg7":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioPolicyService$Stub;->getInputForAttr(Landroid/media/audio/common/AudioAttributes;IIILandroid/content/AttributionSourceState;Landroid/media/audio/common/AudioConfigBase;II)Landroid/media/GetInputForAttrResponse;

    move-result-object v14

    .line 735
    .local v14, "_result":Landroid/media/GetInputForAttrResponse;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {v11, v14, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 737
    goto/16 :goto_a23

    .line 709
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/content/AttributionSourceState;
    .end local v6    # "_arg5":Landroid/media/audio/common/AudioConfigBase;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v14    # "_result":Landroid/media/GetInputForAttrResponse;
    :pswitch_91e
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 710
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->releaseOutput(I)V

    .line 712
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto/16 :goto_a23

    .line 700
    .end local v1    # "_arg0":I
    :pswitch_92d
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 701
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->stopOutput(I)V

    .line 703
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    goto/16 :goto_a23

    .line 691
    .end local v1    # "_arg0":I
    :pswitch_93c
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->startOutput(I)V

    .line 694
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    goto/16 :goto_a23

    .line 671
    .end local v1    # "_arg0":I
    :pswitch_94b
    sget-object v1, Landroid/media/audio/common/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioAttributes;

    .line 673
    .local v1, "_arg0":Landroid/media/audio/common/AudioAttributes;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 675
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSourceState;

    .line 677
    .local v3, "_arg2":Landroid/content/AttributionSourceState;
    sget-object v4, Landroid/media/audio/common/AudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audio/common/AudioConfig;

    .line 679
    .local v4, "_arg3":Landroid/media/audio/common/AudioConfig;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 681
    .local v5, "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 682
    .local v6, "_arg5":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioPolicyService$Stub;->getOutputForAttr(Landroid/media/audio/common/AudioAttributes;ILandroid/content/AttributionSourceState;Landroid/media/audio/common/AudioConfig;I[I)Landroid/media/GetOutputForAttrResponse;

    move-result-object v7

    .line 684
    .local v7, "_result":Landroid/media/GetOutputForAttrResponse;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {v11, v7, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 686
    goto/16 :goto_a23

    .line 661
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSourceState;
    .end local v4    # "_arg3":Landroid/media/audio/common/AudioConfig;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[I
    .end local v7    # "_result":Landroid/media/GetOutputForAttrResponse;
    :pswitch_97f
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 662
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getOutput(I)I

    move-result v2

    .line 664
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    goto/16 :goto_a23

    .line 651
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_992
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 652
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getForceUse(I)I

    move-result v2

    .line 654
    .restart local v2    # "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    goto/16 :goto_a23

    .line 640
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_9a5
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 642
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 643
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setForceUse(II)V

    .line 645
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    goto :goto_a23

    .line 629
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_9b7
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 631
    .restart local v1    # "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 632
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioPolicyService$Stub;->setPhoneState(II)V

    .line 634
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    goto :goto_a23

    .line 616
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_9c9
    sget-object v1, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioDevice;

    .line 618
    .local v1, "_arg0":Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audio/common/AudioFormatDescription;

    .line 621
    .local v3, "_arg2":Landroid/media/audio/common/AudioFormatDescription;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioPolicyService$Stub;->handleDeviceConfigChange(Landroid/media/audio/common/AudioDevice;Ljava/lang/String;Landroid/media/audio/common/AudioFormatDescription;)V

    .line 623
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto :goto_a23

    .line 606
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioDevice;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/audio/common/AudioFormatDescription;
    :pswitch_9e7
    sget-object v1, Landroid/media/audio/common/AudioDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioDevice;

    .line 607
    .restart local v1    # "_arg0":Landroid/media/audio/common/AudioDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {p0, v1}, Landroid/media/IAudioPolicyService$Stub;->getDeviceConnectionState(Landroid/media/audio/common/AudioDevice;)I

    move-result v2

    .line 609
    .local v2, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    goto :goto_a23

    .line 591
    .end local v1    # "_arg0":Landroid/media/audio/common/AudioDevice;
    .end local v2    # "_result":I
    :pswitch_9fd
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 593
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/audio/common/AudioPort;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioPort;

    .line 595
    .local v2, "_arg1":Landroid/media/audio/common/AudioPort;
    sget-object v3, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audio/common/AudioFormatDescription;

    .line 597
    .restart local v3    # "_arg2":Landroid/media/audio/common/AudioFormatDescription;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 598
    .local v4, "_arg3":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioPolicyService$Stub;->setDeviceConnectionState(ILandroid/media/audio/common/AudioPort;Landroid/media/audio/common/AudioFormatDescription;Z)V

    .line 600
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    goto :goto_a23

    .line 585
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/audio/common/AudioPort;
    .end local v3    # "_arg2":Landroid/media/audio/common/AudioFormatDescription;
    .end local v4    # "_arg3":Z
    :pswitch_a1f
    invoke-virtual {p0}, Landroid/media/IAudioPolicyService$Stub;->onNewAudioModulesAvailable()V

    .line 586
    nop

    .line 1798
    :goto_a23
    return v13

    :pswitch_data_a24
    .packed-switch 0x1
        :pswitch_a1f
        :pswitch_9fd
        :pswitch_9e7
        :pswitch_9c9
        :pswitch_9b7
        :pswitch_9a5
        :pswitch_992
        :pswitch_97f
        :pswitch_94b
        :pswitch_93c
        :pswitch_92d
        :pswitch_91e
        :pswitch_8e2
        :pswitch_8d3
        :pswitch_8c4
        :pswitch_8b5
        :pswitch_89a
        :pswitch_883
        :pswitch_864
        :pswitch_849
        :pswitch_826
        :pswitch_807
        :pswitch_7f0
        :pswitch_7d9
        :pswitch_7c6
        :pswitch_7ab
        :pswitch_794
        :pswitch_770
        :pswitch_761
        :pswitch_74e
        :pswitch_73b
        :pswitch_724
        :pswitch_70d
        :pswitch_6fa
        :pswitch_6dc
        :pswitch_6ae
        :pswitch_682
        :pswitch_673
        :pswitch_664
        :pswitch_655
        :pswitch_642
        :pswitch_62b
        :pswitch_60c
        :pswitch_5c4
        :pswitch_5b1
        :pswitch_59e
        :pswitch_583
        :pswitch_574
        :pswitch_534
        :pswitch_521
        :pswitch_50e
        :pswitch_4ff
        :pswitch_4f0
        :pswitch_4e4
        :pswitch_4d5
        :pswitch_4c9
        :pswitch_4b2
        :pswitch_4a6
        :pswitch_493
        :pswitch_47c
        :pswitch_46d
        :pswitch_456
        :pswitch_447
        :pswitch_428
        :pswitch_419
        :pswitch_40a
        :pswitch_3fe
        :pswitch_3df
        :pswitch_37d
        :pswitch_341
        :pswitch_32a
        :pswitch_313
        :pswitch_304
        :pswitch_2f5
        :pswitch_2e6
        :pswitch_2d7
        :pswitch_2cb
        :pswitch_2bf
        :pswitch_2ac
        :pswitch_2a0
        :pswitch_285
        :pswitch_279
        :pswitch_25e
        :pswitch_24f
        :pswitch_243
        :pswitch_228
        :pswitch_20d
        :pswitch_1fa
        :pswitch_1e3
        :pswitch_1c8
        :pswitch_1ad
        :pswitch_192
        :pswitch_17f
        :pswitch_168
        :pswitch_151
        :pswitch_13a
        :pswitch_113
        :pswitch_f4
        :pswitch_dd
        :pswitch_ca
        :pswitch_a7
        :pswitch_8c
        :pswitch_71
        :pswitch_65
        :pswitch_52
        :pswitch_38
        :pswitch_29
    .end packed-switch
.end method
