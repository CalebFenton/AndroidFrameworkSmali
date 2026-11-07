.class public interface abstract Lcom/android/ims/rcs/uce/presence/publish/PublishController;
.super Ljava/lang/Object;
.source "PublishController.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/ControllerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;,
        Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishTriggerType;
    }
.end annotation


# static fields
.field public static final blacklist PUBLISH_TRIGGER_CARRIER_CONFIG_CHANGED:I = 0xf

.field public static final blacklist PUBLISH_TRIGGER_MMTEL_CAPABILITY_CHANGE:I = 0x8

.field public static final blacklist PUBLISH_TRIGGER_MMTEL_RCS_UNREGISTERED:I = 0x10

.field public static final blacklist PUBLISH_TRIGGER_MMTEL_REGISTERED:I = 0x6

.field public static final blacklist PUBLISH_TRIGGER_MMTEL_UNREGISTERED:I = 0x7

.field public static final blacklist PUBLISH_TRIGGER_MMTEL_URI_CHANGE:I = 0x9

.field public static final blacklist PUBLISH_TRIGGER_MOBILE_DATA_CHANGE:I = 0x4

.field public static final blacklist PUBLISH_TRIGGER_OVERRIDE_CAPS:I = 0xe

.field public static final blacklist PUBLISH_TRIGGER_PROVISIONING_CHANGE:I = 0xd

.field public static final blacklist PUBLISH_TRIGGER_RCS_REGISTERED:I = 0xa

.field public static final blacklist PUBLISH_TRIGGER_RCS_UNREGISTERED:I = 0xb

.field public static final blacklist PUBLISH_TRIGGER_RCS_URI_CHANGE:I = 0xc

.field public static final blacklist PUBLISH_TRIGGER_RETRY:I = 0x2

.field public static final blacklist PUBLISH_TRIGGER_SERVICE:I = 0x1

.field public static final blacklist PUBLISH_TRIGGER_TTY_PREFERRED_CHANGE:I = 0x3

.field public static final blacklist PUBLISH_TRIGGER_VT_SETTING_CHANGE:I = 0x5


# virtual methods
.method public abstract blacklist addRegistrationOverrideCapabilities(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation
.end method

.method public abstract blacklist clearRegistrationOverrideCapabilities()Landroid/telephony/ims/RcsContactUceCapability;
.end method

.method public abstract blacklist clearResetDeviceStateTimer()V
.end method

.method public abstract blacklist dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract blacklist getDeviceCapabilities(I)Landroid/telephony/ims/RcsContactUceCapability;
.end method

.method public abstract blacklist getLastPidfXml()Ljava/lang/String;
.end method

.method public abstract blacklist getLatestRcsContactUceCapability()Landroid/telephony/ims/RcsContactUceCapability;
.end method

.method public abstract blacklist getUcePublishState(Z)I
.end method

.method public abstract blacklist onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
.end method

.method public abstract blacklist onUnpublish()V
.end method

.method public abstract blacklist registerPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
.end method

.method public abstract blacklist removeRegistrationOverrideCapabilities(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation
.end method

.method public abstract blacklist requestPublishCapabilitiesFromService(I)V
.end method

.method public abstract blacklist setupResetDeviceStateTimer(J)V
.end method

.method public abstract blacklist unregisterPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
.end method
