.class public final Landroid/media/MediaRecorder$AudioSource;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioSource"
.end annotation


# static fields
.field public static final AUDIO_SOURCE_INVALID:I = -0x1

.field public static final CAMCORDER:I = 0x5

.field public static final DEFAULT:I = 0x0

.field public static final HOTWORD:I = 0x7cf

.field public static final MIC:I = 0x1

.field public static final RADIO_TUNER:I = 0x7ce

.field public static final REMOTE_SUBMIX:I = 0x8

.field public static final VOICE_CALL:I = 0x4

.field public static final VOICE_COMMUNICATION:I = 0x7

.field public static final VOICE_DOWNLINK:I = 0x3

.field public static final VOICE_RECOGNITION:I = 0x6

.field public static final VOICE_UPLINK:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor <init>(Landroid/media/MediaRecorder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRecorder;

    #@0
    .prologue
    .line 194
    iput-object p1, p0, Landroid/media/MediaRecorder$AudioSource;->this$0:Landroid/media/MediaRecorder;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method
