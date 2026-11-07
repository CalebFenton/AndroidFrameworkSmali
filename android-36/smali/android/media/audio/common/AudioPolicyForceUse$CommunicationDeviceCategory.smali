.class public interface abstract annotation Landroid/media/audio/common/AudioPolicyForceUse$CommunicationDeviceCategory;
.super Ljava/lang/Object;
.source "AudioPolicyForceUse.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioPolicyForceUse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CommunicationDeviceCategory"
.end annotation


# static fields
.field public static final blacklist BT_BLE:B = 0x3t

.field public static final blacklist BT_SCO:B = 0x2t

.field public static final blacklist NONE:B = 0x0t

.field public static final blacklist SPEAKER:B = 0x1t

.field public static final blacklist WIRED_ACCESSORY:B = 0x4t
