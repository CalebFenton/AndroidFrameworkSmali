.class Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;
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
    name = "PmtReader"
.end annotation


# instance fields
.field private final blacklist pid:I

.field private final blacklist pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

.field final synthetic blacklist this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

.field private final blacklist trackIdToPidScratch:Landroid/util/SparseIntArray;

.field private final blacklist trackIdToReaderScratch:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/media/internal/exo/extractor/ts/TsExtractor;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 560
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance p1, Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    .line 562
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    .line 563
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 564
    iput p2, p0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pid:I

    return-void
.end method

.method private blacklist readEsInfo(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;
    .registers 14

    .line 709
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result p0

    add-int/2addr p2, p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    .line 714
    :goto_8
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, p2, :cond_bd

    .line 715
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 716
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 717
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v4

    if-le v5, p2, :cond_1f

    goto/16 :goto_bd

    :cond_1f
    const/4 v4, 0x5

    const/16 v6, 0xac

    const/16 v7, 0x87

    const/16 v8, 0x81

    if-ne v3, v4, :cond_51

    .line 723
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v9, 0x41432d33

    cmp-long v9, v3, v9

    if-nez v9, :cond_34

    goto :goto_55

    :cond_34
    const-wide/32 v8, 0x45414333

    cmp-long v8, v3, v8

    if-nez v8, :cond_3c

    goto :goto_5b

    :cond_3c
    const-wide/32 v7, 0x41432d34

    cmp-long v7, v3, v7

    if-nez v7, :cond_46

    :goto_43
    move v0, v6

    goto/16 :goto_b3

    :cond_46
    const-wide/32 v6, 0x48455643

    cmp-long v3, v3, v6

    if-nez v3, :cond_b3

    const/16 v0, 0x24

    goto/16 :goto_b3

    :cond_51
    const/16 v4, 0x6a

    if-ne v3, v4, :cond_57

    :goto_55
    move v0, v8

    goto :goto_b3

    :cond_57
    const/16 v4, 0x7a

    if-ne v3, v4, :cond_5d

    :goto_5b
    move v0, v7

    goto :goto_b3

    :cond_5d
    const/16 v4, 0x7f

    if-ne v3, v4, :cond_6a

    .line 739
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_b3

    goto :goto_43

    :cond_6a
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_71

    const/16 v0, 0x8a

    goto :goto_b3

    :cond_71
    const/16 v4, 0xa

    const/4 v6, 0x3

    if-ne v3, v4, :cond_7f

    .line 747
    invoke-virtual {p1, v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_b3

    :cond_7f
    const/16 v4, 0x59

    if-ne v3, v4, :cond_ad

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    :goto_88
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v2

    if-ge v2, v5, :cond_aa

    .line 753
    invoke-virtual {p1, v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 754
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/4 v7, 0x4

    .line 755
    new-array v8, v7, [B

    const/4 v9, 0x0

    .line 756
    invoke-virtual {p1, v8, v9, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 757
    new-instance v7, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-direct {v7, v2, v3, v8}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_aa
    move-object v2, v0

    move v0, v4

    goto :goto_b3

    :cond_ad
    const/16 v4, 0x6f

    if-ne v3, v4, :cond_b3

    const/16 v0, 0x101

    .line 764
    :cond_b3
    :goto_b3
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_8

    .line 766
    :cond_bd
    :goto_bd
    invoke-virtual {p1, p2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 767
    new-instance v3, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;

    .line 771
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-static {p1, p0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    return-object v3
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 577
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    goto/16 :goto_21f

    .line 584
    :cond_d
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I
    invoke-static {v2}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$200(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_47

    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I
    invoke-static {v2}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$200(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v2

    if-eq v2, v3, :cond_47

    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static {v2}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$100(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v2

    if-ne v2, v5, :cond_28

    goto :goto_47

    .line 587
    :cond_28
    new-instance v2, Landroid/media/internal/exo/util/TimestampAdjuster;

    iget-object v6, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    .line 588
    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;
    invoke-static {v6}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$300(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/internal/exo/util/TimestampAdjuster;

    invoke-virtual {v6}, Landroid/media/internal/exo/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Landroid/media/internal/exo/util/TimestampAdjuster;-><init>(J)V

    .line 589
    iget-object v6, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;
    invoke-static {v6}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$300(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 585
    :cond_47
    :goto_47
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;
    invoke-static {v2}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$300(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/util/TimestampAdjuster;

    .line 593
    :goto_53
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_5d

    goto/16 :goto_21f

    .line 599
    :cond_5d
    invoke-virtual {v1, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 600
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/4 v7, 0x3

    .line 605
    invoke-virtual {v1, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 607
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v1, v8, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes(Landroid/media/internal/exo/util/ParsableBitArray;I)V

    .line 609
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v8, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 610
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v9

    # setter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->pcrPid:I
    invoke-static {v8, v9}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$402(Landroid/media/internal/exo/extractor/ts/TsExtractor;I)I

    .line 613
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v1, v8, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes(Landroid/media/internal/exo/util/ParsableBitArray;I)V

    .line 614
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 615
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 618
    invoke-virtual {v1, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 620
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I
    invoke-static {v8}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$200(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v8

    const/16 v12, 0x2000

    const/16 v13, 0x15

    if-ne v8, v3, :cond_da

    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->id3Reader:Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
    invoke-static {v8}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$500(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    move-result-object v8

    if-nez v8, :cond_da

    .line 623
    new-instance v8, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;

    sget-object v14, Landroid/media/internal/exo/util/Util;->EMPTY_BYTE_ARRAY:[B

    const/4 v15, 0x0

    invoke-direct {v8, v13, v15, v15, v14}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 624
    iget-object v14, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->payloadReaderFactory:Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;
    invoke-static {v14}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$600(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;

    move-result-object v15

    invoke-interface {v15, v13, v8}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILandroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    move-result-object v8

    # setter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->id3Reader:Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
    invoke-static {v14, v8}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$502(Landroid/media/internal/exo/extractor/ts/TsExtractor;Landroid/media/internal/exo/extractor/ts/TsPayloadReader;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    .line 625
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->id3Reader:Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
    invoke-static {v8}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$500(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    move-result-object v8

    if-eqz v8, :cond_da

    .line 626
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->id3Reader:Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
    invoke-static {v8}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$500(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    move-result-object v8

    iget-object v14, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    .line 628
    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;
    invoke-static {v14}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$700(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ExtractorOutput;

    move-result-object v14

    new-instance v15, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v15, v6, v13, v12}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    .line 626
    invoke-interface {v8, v2, v14, v15}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader;->init(Landroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 633
    :cond_da
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 634
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 635
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    :goto_e8
    if-lez v8, :cond_170

    .line 637
    iget-object v14, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v15, 0x5

    invoke-virtual {v1, v14, v15}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes(Landroid/media/internal/exo/util/ParsableBitArray;I)V

    .line 638
    iget-object v14, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 639
    iget-object v14, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v14, v7}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 640
    iget-object v14, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v14, v10}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v14

    .line 641
    iget-object v7, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v7, v9}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 642
    iget-object v7, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-virtual {v7, v11}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 643
    invoke-direct {v0, v1, v7}, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;

    move-result-object v9

    const/4 v10, 0x6

    if-eq v4, v10, :cond_117

    if-ne v4, v15, :cond_119

    .line 645
    :cond_117
    iget v4, v9, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    :cond_119
    add-int/lit8 v7, v7, 0x5

    sub-int/2addr v8, v7

    .line 649
    iget-object v7, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I
    invoke-static {v7}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$200(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v7

    if-ne v7, v3, :cond_126

    move v7, v4

    goto :goto_127

    :cond_126
    move v7, v14

    .line 650
    :goto_127
    iget-object v10, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;
    invoke-static {v10}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$800(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_134

    goto :goto_169

    .line 656
    :cond_134
    iget-object v10, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I
    invoke-static {v10}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$200(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v10

    if-ne v10, v3, :cond_145

    if-ne v4, v13, :cond_145

    .line 657
    iget-object v4, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->id3Reader:Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
    invoke-static {v4}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$500(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    move-result-object v4

    goto :goto_14f

    .line 658
    :cond_145
    iget-object v10, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->payloadReaderFactory:Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;
    invoke-static {v10}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$600(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;

    move-result-object v10

    invoke-interface {v10, v4, v9}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILandroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    move-result-object v4

    .line 659
    :goto_14f
    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I
    invoke-static {v9}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$200(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v9

    if-ne v9, v3, :cond_15f

    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    .line 660
    invoke-virtual {v9, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-ge v14, v9, :cond_169

    .line 661
    :cond_15f
    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 662
    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_169
    :goto_169
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v10, 0xd

    goto/16 :goto_e8

    .line 666
    :cond_170
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_177
    if-ge v4, v1, :cond_1c3

    .line 668
    iget-object v7, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 669
    iget-object v8, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 670
    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;
    invoke-static {v9}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$800(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v7, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 671
    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;
    invoke-static {v9}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$900(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 672
    iget-object v9, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    if-eqz v9, :cond_1c0

    .line 674
    iget-object v10, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->id3Reader:Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
    invoke-static {v10}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$500(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;

    move-result-object v10

    if-eq v9, v10, :cond_1b7

    .line 675
    iget-object v10, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    .line 677
    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;
    invoke-static {v10}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$700(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ExtractorOutput;

    move-result-object v10

    new-instance v11, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v11, v6, v7, v12}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    .line 675
    invoke-interface {v9, v2, v10, v11}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader;->init(Landroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 680
    :cond_1b7
    iget-object v7, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v7}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$000(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1c0
    add-int/lit8 v4, v4, 0x1

    goto :goto_177

    .line 684
    :cond_1c3
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I
    invoke-static {v1}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$200(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v1

    if-ne v1, v3, :cond_1e8

    .line 685
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->tracksEnded:Z
    invoke-static {v1}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$1000(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Z

    move-result v1

    if-nez v1, :cond_21f

    .line 686
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;
    invoke-static {v1}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$700(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ExtractorOutput;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    .line 687
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    const/4 v2, 0x0

    # setter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static {v1, v2}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$102(Landroid/media/internal/exo/extractor/ts/TsExtractor;I)I

    .line 688
    iget-object v0, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # setter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->tracksEnded:Z
    invoke-static {v0, v5}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$1002(Landroid/media/internal/exo/extractor/ts/TsExtractor;Z)Z

    return-void

    :cond_1e8
    const/4 v2, 0x0

    .line 691
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$000(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->pid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 692
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->mode:I
    invoke-static {v1}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$200(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v3

    if-ne v3, v5, :cond_1fe

    move v4, v2

    goto :goto_206

    :cond_1fe
    iget-object v2, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static {v2}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$100(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_206
    # setter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static {v1, v4}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$102(Landroid/media/internal/exo/extractor/ts/TsExtractor;I)I

    .line 693
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->remainingPmts:I
    invoke-static {v1}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$100(Landroid/media/internal/exo/extractor/ts/TsExtractor;)I

    move-result v1

    if-nez v1, :cond_21f

    .line 694
    iget-object v1, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # getter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->output:Landroid/media/internal/exo/extractor/ExtractorOutput;
    invoke-static {v1}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$700(Landroid/media/internal/exo/extractor/ts/TsExtractor;)Landroid/media/internal/exo/extractor/ExtractorOutput;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->endTracks()V

    .line 695
    iget-object v0, v0, Landroid/media/internal/exo/extractor/ts/TsExtractor$PmtReader;->this$0:Landroid/media/internal/exo/extractor/ts/TsExtractor;

    # setter for: Landroid/media/internal/exo/extractor/ts/TsExtractor;->tracksEnded:Z
    invoke-static {v0, v5}, Landroid/media/internal/exo/extractor/ts/TsExtractor;->access$1002(Landroid/media/internal/exo/extractor/ts/TsExtractor;Z)Z

    :cond_21f
    :goto_21f
    return-void
.end method

.method public blacklist init(Landroid/media/internal/exo/util/TimestampAdjuster;Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 0
    return-void
.end method
