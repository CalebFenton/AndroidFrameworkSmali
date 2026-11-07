.class public interface abstract annotation Landroid/media/audio/common/AudioPolicyForceUse$DockType;
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
    name = "DockType"
.end annotation


# static fields
.field public static final blacklist ANALOG_DOCK:B = 0x3t

.field public static final blacklist BT_CAR_DOCK:B = 0x1t

.field public static final blacklist BT_DESK_DOCK:B = 0x2t

.field public static final blacklist DIGITAL_DOCK:B = 0x4t

.field public static final blacklist NONE:B = 0x0t

.field public static final blacklist WIRED_ACCESSORY:B = 0x5t
