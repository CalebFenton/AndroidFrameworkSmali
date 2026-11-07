.class final Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;
.super Ljava/lang/Object;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ogg/VorbisReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VorbisSetup"
.end annotation


# instance fields
.field public final blacklist commentHeader:Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;

.field public final blacklist iLogModes:I

.field public final blacklist idHeader:Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

.field public final blacklist modes:[Landroid/media/internal/exo/extractor/VorbisUtil$Mode;

.field public final blacklist setupHeaderData:[B


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;[B[Landroid/media/internal/exo/extractor/VorbisUtil$Mode;I)V
    .registers 6

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroid/media/internal/exo/extractor/VorbisUtil$VorbisIdHeader;

    .line 213
    iput-object p2, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;

    .line 214
    iput-object p3, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    .line 215
    iput-object p4, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Landroid/media/internal/exo/extractor/VorbisUtil$Mode;

    .line 216
    iput p5, p0, Landroid/media/internal/exo/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    return-void
.end method
