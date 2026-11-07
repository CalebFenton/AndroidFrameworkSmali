.class Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;
.super Lcom/android/internal/telephony/protobuf/nano/Extension;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/telephony/protobuf/nano/Extension<",
        "TM;TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist nonPackedTag:I

.field private final blacklist packedTag:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/Class;IZII)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZII)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 352
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZLcom/android/internal/telephony/protobuf/nano/Extension$1;)V

    .line 353
    iput p5, v0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    .line 354
    iput p6, v0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    return-void
.end method

.method private blacklist computePackedDataSize(Ljava/lang/Object;)I
    .registers 7

    .line 565
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 566
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_9a

    .line 624
    :pswitch_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected non-packable type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_23
    move p0, v2

    :goto_24
    if-ge v2, v0, :cond_32

    .line 608
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    .line 607
    invoke-static {v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_32
    return p0

    :pswitch_33
    move p0, v2

    :goto_34
    if-ge v2, v0, :cond_42

    .line 590
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    .line 589
    invoke-static {v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_42
    return p0

    :pswitch_43
    move p0, v2

    :goto_44
    if-ge v2, v0, :cond_52

    .line 620
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    .line 619
    invoke-static {v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_52
    return p0

    :pswitch_53
    move p0, v2

    :goto_54
    if-ge v2, v0, :cond_62

    .line 596
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    .line 595
    invoke-static {v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_62
    return p0

    :pswitch_63
    return v0

    :pswitch_64
    move p0, v2

    :goto_65
    if-ge v2, v0, :cond_73

    .line 584
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    .line 583
    invoke-static {v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_73
    return p0

    :pswitch_74
    move p0, v2

    :goto_75
    if-ge v2, v0, :cond_83

    .line 614
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    .line 613
    invoke-static {v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_83
    return p0

    :pswitch_84
    move p0, v2

    :goto_85
    if-ge v2, v0, :cond_93

    .line 602
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    .line 601
    invoke-static {v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_93
    return p0

    :pswitch_94
    mul-int/lit8 v0, v0, 0x4

    return v0

    :pswitch_97
    mul-int/lit8 v0, v0, 0x8

    return v0

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_97
        :pswitch_94
        :pswitch_84
        :pswitch_74
        :pswitch_64
        :pswitch_97
        :pswitch_94
        :pswitch_63
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_53
        :pswitch_43
        :pswitch_94
        :pswitch_97
        :pswitch_33
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method protected blacklist computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .registers 4

    .line 631
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_b

    .line 633
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 634
    :cond_b
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v0, v1, :cond_20

    .line 636
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result p1

    .line 638
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 639
    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    .line 641
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected repeated extension tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unequal to both non-packed variant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and packed variant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final blacklist computeSingularSerializedSize(Ljava/lang/Object;)I
    .registers 4

    .line 649
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 650
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    packed-switch v1, :pswitch_data_cc

    .line 702
    :pswitch_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 699
    :pswitch_24
    check-cast p1, Ljava/lang/Long;

    .line 700
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result p0

    return p0

    .line 696
    :pswitch_2f
    check-cast p1, Ljava/lang/Integer;

    .line 697
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result p0

    return p0

    .line 692
    :pswitch_3a
    check-cast p1, Ljava/lang/Long;

    .line 694
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 693
    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result p0

    return p0

    .line 688
    :pswitch_45
    check-cast p1, Ljava/lang/Integer;

    .line 690
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 689
    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result p0

    return p0

    .line 685
    :pswitch_50
    check-cast p1, Ljava/lang/Integer;

    .line 686
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result p0

    return p0

    .line 682
    :pswitch_5b
    check-cast p1, Ljava/lang/Integer;

    .line 683
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result p0

    return p0

    .line 679
    :pswitch_66
    check-cast p1, [B

    .line 680
    invoke-static {v0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result p0

    return p0

    .line 676
    :pswitch_6d
    check-cast p1, Ljava/lang/String;

    .line 677
    invoke-static {v0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 673
    :pswitch_74
    check-cast p1, Ljava/lang/Boolean;

    .line 674
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    return p0

    .line 670
    :pswitch_7f
    check-cast p1, Ljava/lang/Integer;

    .line 671
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result p0

    return p0

    .line 667
    :pswitch_8a
    check-cast p1, Ljava/lang/Long;

    .line 668
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result p0

    return p0

    .line 664
    :pswitch_95
    check-cast p1, Ljava/lang/Integer;

    .line 665
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    return p0

    .line 661
    :pswitch_a0
    check-cast p1, Ljava/lang/Long;

    .line 662
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result p0

    return p0

    .line 658
    :pswitch_ab
    check-cast p1, Ljava/lang/Long;

    .line 659
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    return p0

    .line 655
    :pswitch_b6
    check-cast p1, Ljava/lang/Float;

    .line 656
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result p0

    return p0

    .line 652
    :pswitch_c1
    check-cast p1, Ljava/lang/Double;

    .line 653
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result p0

    return p0

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_b6
        :pswitch_ab
        :pswitch_a0
        :pswitch_95
        :pswitch_8a
        :pswitch_7f
        :pswitch_74
        :pswitch_6d
        :pswitch_b
        :pswitch_b
        :pswitch_66
        :pswitch_5b
        :pswitch_50
        :pswitch_45
        :pswitch_3a
        :pswitch_2f
        :pswitch_24
    .end packed-switch
.end method

.method protected blacklist readData(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .registers 3

    .line 360
    :try_start_0
    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 362
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error reading extension field"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected blacklist readDataInto(Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 370
    iget v0, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->tag:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_14

    .line 371
    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 373
    :cond_14
    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 374
    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    .line 376
    :try_start_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_30

    .line 380
    :goto_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_2f
    return-void

    :catch_30
    move-exception p0

    .line 378
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Error reading extension field"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected blacklist writeRepeatedData(Ljava/lang/Object;Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8

    .line 466
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_a

    .line 468
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void

    .line 469
    :cond_a
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v0, v1, :cond_ed

    .line 472
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 473
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v1

    .line 476
    :try_start_16
    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 477
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 478
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_11a

    .line 550
    :pswitch_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unpackable type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3d
    :pswitch_3d
    if-ge v2, v0, :cond_e5

    .line 536
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :goto_49
    :pswitch_49
    if-ge v2, v0, :cond_e5

    .line 521
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :goto_55
    :pswitch_55
    if-ge v2, v0, :cond_e5

    .line 506
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :goto_61
    :pswitch_61
    if-ge v2, v0, :cond_e5

    .line 491
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :goto_6d
    :pswitch_6d
    if-ge v2, v0, :cond_e5

    .line 546
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    :goto_79
    :pswitch_79
    if-ge v2, v0, :cond_e5

    .line 526
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :goto_85
    :pswitch_85
    if-ge v2, v0, :cond_e5

    .line 481
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :goto_91
    :pswitch_91
    if-ge v2, v0, :cond_e5

    .line 486
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :goto_9d
    :pswitch_9d
    if-ge v2, v0, :cond_e5

    .line 501
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    :goto_a9
    :pswitch_a9
    if-ge v2, v0, :cond_e5

    .line 516
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    :goto_b5
    :pswitch_b5
    if-ge v2, v0, :cond_e5

    .line 541
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    :goto_c1
    :pswitch_c1
    if-ge v2, v0, :cond_e5

    .line 531
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    :goto_cd
    :pswitch_cd
    if-ge v2, v0, :cond_e5

    .line 496
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_cd

    :goto_d9
    :pswitch_d9
    if-ge v2, v0, :cond_e5

    .line 511
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_e2} :catch_e6

    add-int/lit8 v2, v2, 0x1

    goto :goto_d9

    :cond_e5
    return-void

    :catch_e6
    move-exception p0

    .line 554
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 557
    :cond_ed
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected repeated extension tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", unequal to both non-packed variant "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and packed variant "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_cd
        :pswitch_c1
        :pswitch_b5
        :pswitch_a9
        :pswitch_9d
        :pswitch_91
        :pswitch_85
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_79
        :pswitch_6d
        :pswitch_61
        :pswitch_55
        :pswitch_49
        :pswitch_3d
    .end packed-switch
.end method

.method protected final blacklist writeSingularData(Ljava/lang/Object;Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4

    .line 389
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 390
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    packed-switch v0, :pswitch_data_c2

    .line 456
    :pswitch_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 452
    :pswitch_23
    check-cast p1, Ljava/lang/Long;

    .line 453
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    return-void

    .line 448
    :pswitch_2d
    check-cast p1, Ljava/lang/Integer;

    .line 449
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    return-void

    .line 444
    :pswitch_37
    check-cast p1, Ljava/lang/Long;

    .line 445
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    return-void

    .line 440
    :pswitch_41
    check-cast p1, Ljava/lang/Integer;

    .line 441
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    return-void

    .line 436
    :pswitch_4b
    check-cast p1, Ljava/lang/Integer;

    .line 437
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    return-void

    .line 432
    :pswitch_55
    check-cast p1, Ljava/lang/Integer;

    .line 433
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    return-void

    .line 428
    :pswitch_5f
    check-cast p1, [B

    .line 429
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    return-void

    .line 424
    :pswitch_65
    check-cast p1, Ljava/lang/String;

    .line 425
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    return-void

    .line 420
    :pswitch_6b
    check-cast p1, Ljava/lang/Boolean;

    .line 421
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    return-void

    .line 416
    :pswitch_75
    check-cast p1, Ljava/lang/Integer;

    .line 417
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    return-void

    .line 412
    :pswitch_7f
    check-cast p1, Ljava/lang/Long;

    .line 413
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    return-void

    .line 408
    :pswitch_89
    check-cast p1, Ljava/lang/Integer;

    .line 409
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    return-void

    .line 404
    :pswitch_93
    check-cast p1, Ljava/lang/Long;

    .line 405
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    return-void

    .line 400
    :pswitch_9d
    check-cast p1, Ljava/lang/Long;

    .line 401
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    return-void

    .line 396
    :pswitch_a7
    check-cast p1, Ljava/lang/Float;

    .line 397
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    return-void

    .line 392
    :pswitch_b1
    check-cast p1, Ljava/lang/Double;

    .line 393
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_ba} :catch_bb

    return-void

    :catch_bb
    move-exception p0

    .line 460
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_a7
        :pswitch_9d
        :pswitch_93
        :pswitch_89
        :pswitch_7f
        :pswitch_75
        :pswitch_6b
        :pswitch_65
        :pswitch_a
        :pswitch_a
        :pswitch_5f
        :pswitch_55
        :pswitch_4b
        :pswitch_41
        :pswitch_37
        :pswitch_2d
        :pswitch_23
    .end packed-switch
.end method
