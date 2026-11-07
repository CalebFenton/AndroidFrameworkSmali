.class public interface abstract annotation Landroid/media/audio/common/AudioPolicyForceUse$MediaDeviceCategory;
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
    name = "MediaDeviceCategory"
.end annotation


# static fields
.field public static final blacklist ANALOG_DOCK:B = 0x4t

.field public static final blacklist BT_A2DP:B = 0x3t

.field public static final blacklist DIGITAL_DOCK:B = 0x5t

.field public static final blacklist HEADPHONES:B = 0x2t

.field public static final blacklist NONE:B = 0x0t

.field public static final blacklist NO_BT_A2DP:B = 0x7t

.field public static final blacklist SPEAKER:B = 0x1t

.field public static final blacklist WIRED_ACCESSORY:B = 0x6t
