.class public Landroid/hardware/soundtrigger/SoundTrigger;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;,
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;,
        Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    }
.end annotation


# static fields
.field public static final RECOGNITION_MODE_USER_AUTHENTICATION:I = 0x4

.field public static final RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final RECOGNITION_STATUS_ABORT:I = 0x1

.field public static final RECOGNITION_STATUS_FAILURE:I = 0x2

.field public static final RECOGNITION_STATUS_SUCCESS:I = 0x0

.field public static final SERVICE_STATE_DISABLED:I = 0x1

.field public static final SERVICE_STATE_ENABLED:I = 0x0

.field public static final SOUNDMODEL_STATUS_UPDATED:I = 0x0

.field public static final STATUS_BAD_VALUE:I = -0x16

.field public static final STATUS_DEAD_OBJECT:I = -0x20

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_INVALID_OPERATION:I = -0x26

.field public static final STATUS_NO_INIT:I = -0x13

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_PERMISSION_DENIED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 2
    .param p0, "moduleId"    # I
    .param p1, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1142
    if-nez p1, :cond_0

    #@3
    .line 1143
    return-object v1

    #@4
    .line 1145
    :cond_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@6
    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V

    #@9
    .line 1146
    .local v0, "module":Landroid/hardware/soundtrigger/SoundTriggerModule;
    return-object v0
.end method

.method public static native listModules(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation
.end method
