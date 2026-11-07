.class public final Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/audio/Ac4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final blacklist bitstreamVersion:I

.field public final blacklist channelCount:I

.field public final blacklist frameSize:I

.field public final blacklist sampleCount:I

.field public final blacklist sampleRate:I


# direct methods
.method private constructor blacklist <init>(IIIII)V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->bitstreamVersion:I

    .line 47
    iput p2, p0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 48
    iput p3, p0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 49
    iput p4, p0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    .line 50
    iput p5, p0, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/media/internal/exo/audio/Ac4Util$1;)V
    .registers 7

    .line 31
    invoke-direct/range {p0 .. p5}, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;-><init>(IIIII)V

    return-void
.end method
