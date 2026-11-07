.class public final Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisIdHeader"
.end annotation


# instance fields
.field public final blacklist bitrateMaximum:I

.field public final blacklist bitrateMinimum:I

.field public final blacklist bitrateNominal:I

.field public final blacklist blockSize0:I

.field public final blacklist blockSize1:I

.field public final blacklist channels:I

.field public final blacklist data:[B

.field public final blacklist framingFlag:Z

.field public final blacklist sampleRate:I

.field public final blacklist version:I


# direct methods
.method public constructor blacklist <init>(IIIIIIIIZ[B)V
    .registers 11

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->version:I

    .line 94
    iput p2, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    .line 95
    iput p3, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:I

    .line 96
    iput p4, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->bitrateMaximum:I

    .line 97
    iput p5, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    .line 98
    iput p6, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->bitrateMinimum:I

    .line 99
    iput p7, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    .line 100
    iput p8, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .line 101
    iput-boolean p9, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->framingFlag:Z

    .line 102
    iput-object p10, p0, Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    return-void
.end method
