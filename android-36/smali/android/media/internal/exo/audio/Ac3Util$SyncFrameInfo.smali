.class public final Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/audio/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final blacklist channelCount:I

.field public final blacklist frameSize:I

.field public final blacklist mimeType:Ljava/lang/String;

.field public final blacklist sampleCount:I

.field public final blacklist sampleRate:I

.field public final blacklist streamType:I


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;IIIII)V
    .registers 7

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    .line 86
    iput p2, p0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->streamType:I

    .line 87
    iput p3, p0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->channelCount:I

    .line 88
    iput p4, p0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->sampleRate:I

    .line 89
    iput p5, p0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->frameSize:I

    .line 90
    iput p6, p0, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;->sampleCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIIIILandroid/media/internal/exo/audio/Ac3Util$1;)V
    .registers 8

    .line 40
    invoke-direct/range {p0 .. p6}, Landroid/media/internal/exo/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method
