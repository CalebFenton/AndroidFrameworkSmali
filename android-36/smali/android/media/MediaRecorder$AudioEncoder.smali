.class public final Landroid/media/MediaRecorder$AudioEncoder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioEncoder"
.end annotation


# static fields
.field public static final whitelist AAC:I = 0x3

.field public static final whitelist AAC_ELD:I = 0x5

.field public static final whitelist AMR_NB:I = 0x1

.field public static final whitelist AMR_WB:I = 0x2

.field public static final whitelist DEFAULT:I = 0x0

.field public static final whitelist HE_AAC:I = 0x4

.field public static final whitelist OPUS:I = 0x7

.field public static final whitelist VORBIS:I = 0x6


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaRecorder;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaRecorder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
