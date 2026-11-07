.class public interface abstract annotation Landroid/media/audio/common/AudioPolicyForceUse$Tag;
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
    name = "Tag"
.end annotation


# static fields
.field public static final blacklist dock:I = 0x4

.field public static final blacklist encodedSurround:I = 0x7

.field public static final blacklist forCommunication:I = 0x1

.field public static final blacklist forMedia:I = 0x0

.field public static final blacklist forRecord:I = 0x2

.field public static final blacklist forVibrateRinging:I = 0x3

.field public static final blacklist hdmiSystemAudio:I = 0x6

.field public static final blacklist systemSounds:I = 0x5
