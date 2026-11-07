.class Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private final blacklist patScratch:Landroid/media/internal/exo/util/ParsableBitArray;

.field final synthetic blacklist this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/ts/TsExtractor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 491
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    new-instance p1, Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->patScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 11

    .line 505
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_7d

    .line 511
    :cond_8
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_11

    goto :goto_7d

    :cond_11
    const/4 v0, 0x6

    .line 518
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 520
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    if-ge v3, v0, :cond_6b

    .line 522
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->patScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {p1, v4, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes(Landroid/media/internal/exo/util/ParsableBitArray;I)V

    .line 523
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->patScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 524
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->patScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_3c

    .line 526
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->patScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v4, v5}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    goto :goto_68

    .line 528
    :cond_3c
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->patScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v4, v5}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 529
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$000(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_68

    .line 530
    iget-object v5, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$000(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Landroid/media/internal/exo/extractor/ts/SectionReader;

    new-instance v7, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;

    iget-object v8, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    invoke-direct {v7, v8, v4}, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;-><init>(Landroid/media/internal/exo/extractor/ts/TsExtractor;I)V

    invoke-direct {v6, v7}, Landroid/media/internal/exo/extractor/ts/SectionReader;-><init>(Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 531
    iget-object v4, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # operator++ for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static {v4}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$108(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    :cond_68
    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 535
    :cond_6b
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I
    invoke-static {p1}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$200(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7d

    .line 536
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PatReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {p0}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$000(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public blacklist init(Landroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 0
    return-void
.end method
