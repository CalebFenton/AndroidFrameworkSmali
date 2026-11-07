.class Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;
.super Landroid/internal/framework/protobuf/nano/Extension;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/framework/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/internal/framework/protobuf/nano/Extension<",
        "TM;TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist nonPackedTag:I

.field private final blacklist packedTag:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/Class;IZII)V
    .registers 13
    .param p1, "type"    # I
    .param p3, "tag"    # I
    .param p4, "repeated"    # Z
    .param p5, "nonPackedTag"    # I
    .param p6, "packedTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZII)V"
        }
    .end annotation

    .line 352
    .local p0, "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "type":I
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p3    # "tag":I
    .end local p4    # "repeated":Z
    .local v1, "type":I
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v3, "tag":I
    .local v4, "repeated":Z
    invoke-direct/range {v0 .. v5}, Landroid/internal/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZLandroid/internal/framework/protobuf/nano/Extension$1;)V

    .line 353
    iput p5, v0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    .line 354
    iput p6, v0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    .line 355
    return-void
.end method

.method private blacklist computePackedDataSize(Ljava/lang/Object;)I
    .registers 7
    .param p1, "array"    # Ljava/lang/Object;

    .line 564
    .local p0, "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    const/4 v0, 0x0

    .line 565
    .local v0, "dataSize":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 566
    .local v1, "arrayLength":I
    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v2, :pswitch_data_a6

    .line 624
    :pswitch_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected non-packable type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    :pswitch_25
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_35

    .line 607
    nop

    .line 608
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    .line 607
    invoke-static {v3, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 610
    .end local v2    # "i":I
    :cond_35
    goto/16 :goto_a5

    .line 588
    :pswitch_37
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_38
    if-ge v2, v1, :cond_47

    .line 589
    nop

    .line 590
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 589
    invoke-static {v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 592
    .end local v2    # "i":I
    :cond_47
    goto :goto_a5

    .line 618
    :pswitch_48
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_49
    if-ge v2, v1, :cond_58

    .line 619
    nop

    .line 620
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 619
    invoke-static {v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 618
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 622
    .end local v2    # "i":I
    :cond_58
    goto :goto_a5

    .line 594
    :pswitch_59
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5a
    if-ge v2, v1, :cond_69

    .line 595
    nop

    .line 596
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 595
    invoke-static {v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 598
    .end local v2    # "i":I
    :cond_69
    goto :goto_a5

    .line 569
    :pswitch_6a
    move v0, v1

    .line 570
    goto :goto_a5

    .line 582
    :pswitch_6c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6d
    if-ge v2, v1, :cond_7c

    .line 583
    nop

    .line 584
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 583
    invoke-static {v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 586
    .end local v2    # "i":I
    :cond_7c
    goto :goto_a5

    .line 612
    :pswitch_7d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7e
    if-ge v2, v1, :cond_8d

    .line 613
    nop

    .line 614
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    .line 613
    invoke-static {v3, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 616
    .end local v2    # "i":I
    :cond_8d
    goto :goto_a5

    .line 600
    :pswitch_8e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8f
    if-ge v2, v1, :cond_9e

    .line 601
    nop

    .line 602
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    .line 601
    invoke-static {v3, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 604
    .end local v2    # "i":I
    :cond_9e
    goto :goto_a5

    .line 574
    :pswitch_9f
    mul-int/lit8 v0, v1, 0x4

    .line 575
    goto :goto_a5

    .line 579
    :pswitch_a2
    mul-int/lit8 v0, v1, 0x8

    .line 580
    nop

    .line 626
    :goto_a5
    return v0

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_9f
        :pswitch_8e
        :pswitch_7d
        :pswitch_6c
        :pswitch_a2
        :pswitch_9f
        :pswitch_6a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_59
        :pswitch_48
        :pswitch_9f
        :pswitch_a2
        :pswitch_37
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method protected blacklist computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .registers 5
    .param p1, "array"    # Ljava/lang/Object;

    .line 631
    .local p0, "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_b

    .line 633
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 634
    :cond_b
    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v0, v1, :cond_23

    .line 636
    invoke-direct {p0, p1}, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v0

    .line 637
    .local v0, "dataSize":I
    nop

    .line 638
    invoke-static {v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 639
    .local v1, "payloadSize":I
    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 641
    .end local v0    # "dataSize":I
    .end local v1    # "payloadSize":I
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected repeated extension tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unequal to both non-packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist computeSingularSerializedSize(Ljava/lang/Object;)I
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 649
    .local p0, "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 650
    .local v0, "fieldNumber":I
    iget v1, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v1, :pswitch_data_e0

    .line 702
    :pswitch_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :pswitch_26
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    .line 700
    .local v1, "sint64Value":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result v2

    return v2

    .line 696
    .end local v1    # "sint64Value":Ljava/lang/Long;
    :pswitch_32
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 697
    .local v1, "sint32Value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v2

    return v2

    .line 692
    .end local v1    # "sint32Value":Ljava/lang/Integer;
    :pswitch_3e
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    .line 693
    .local v1, "sfixed64Value":Ljava/lang/Long;
    nop

    .line 694
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 693
    invoke-static {v0, v2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result v2

    return v2

    .line 688
    .end local v1    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_4b
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 689
    .local v1, "sfixed32Value":Ljava/lang/Integer;
    nop

    .line 690
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 689
    invoke-static {v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v2

    return v2

    .line 685
    .end local v1    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_58
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 686
    .local v1, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result v2

    return v2

    .line 682
    .end local v1    # "enumValue":Ljava/lang/Integer;
    :pswitch_64
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 683
    .local v1, "uint32Value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v2

    return v2

    .line 679
    .end local v1    # "uint32Value":Ljava/lang/Integer;
    :pswitch_70
    move-object v1, p1

    check-cast v1, [B

    .line 680
    .local v1, "bytesValue":[B
    invoke-static {v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v2

    return v2

    .line 676
    .end local v1    # "bytesValue":[B
    :pswitch_78
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 677
    .local v1, "stringValue":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    return v2

    .line 673
    .end local v1    # "stringValue":Ljava/lang/String;
    :pswitch_80
    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    .line 674
    .local v1, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    return v2

    .line 670
    .end local v1    # "boolValue":Ljava/lang/Boolean;
    :pswitch_8c
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 671
    .local v1, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v2

    return v2

    .line 667
    .end local v1    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_98
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    .line 668
    .local v1, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v2

    return v2

    .line 664
    .end local v1    # "fixed64Value":Ljava/lang/Long;
    :pswitch_a4
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 665
    .local v1, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    return v2

    .line 661
    .end local v1    # "int32Value":Ljava/lang/Integer;
    :pswitch_b0
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    .line 662
    .local v1, "uint64Value":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    return v2

    .line 658
    .end local v1    # "uint64Value":Ljava/lang/Long;
    :pswitch_bc
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    .line 659
    .local v1, "int64Value":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    return v2

    .line 655
    .end local v1    # "int64Value":Ljava/lang/Long;
    :pswitch_c8
    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    .line 656
    .local v1, "floatValue":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    return v2

    .line 652
    .end local v1    # "floatValue":Ljava/lang/Float;
    :pswitch_d4
    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    .line 653
    .local v1, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v2

    return v2

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_c8
        :pswitch_bc
        :pswitch_b0
        :pswitch_a4
        :pswitch_98
        :pswitch_8c
        :pswitch_80
        :pswitch_78
        :pswitch_b
        :pswitch_b
        :pswitch_70
        :pswitch_64
        :pswitch_58
        :pswitch_4b
        :pswitch_3e
        :pswitch_32
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist readData(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .registers 5
    .param p1, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;

    .line 360
    .local p0, "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    :try_start_0
    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {p1, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 361
    :catch_7
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected blacklist readDataInto(Landroid/internal/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .registers 7
    .param p1, "data"    # Landroid/internal/framework/protobuf/nano/UnknownFieldData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/internal/framework/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p0, "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    .local p2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget v0, p1, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->tag:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_14

    .line 371
    iget-object v0, p1, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->readData(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 373
    :cond_14
    iget-object v0, p1, Landroid/internal/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 374
    invoke-static {v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    .line 376
    .local v0, "buffer":Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    :try_start_1a
    invoke-virtual {v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_31

    .line 379
    nop

    .line 380
    :goto_22
    invoke-virtual {v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_30

    .line 381
    invoke-virtual {p0, v0}, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->readData(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 384
    .end local v0    # "buffer":Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    :cond_30
    :goto_30
    return-void

    .line 377
    .restart local v0    # "buffer":Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    :catch_31
    move-exception v1

    .line 378
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error reading extension field"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected blacklist writeRepeatedData(Ljava/lang/Object;Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;

    .line 466
    .local p0, "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_b

    .line 468
    invoke-super {p0, p1, p2}, Landroid/internal/framework/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto/16 :goto_f7

    .line 469
    :cond_b
    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v0, v1, :cond_118

    .line 472
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 473
    .local v0, "arrayLength":I
    invoke-direct {p0, p1}, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v1

    .line 476
    .local v1, "dataSize":I
    :try_start_19
    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 477
    invoke-virtual {p2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 478
    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v2, :pswitch_data_14c

    .line 550
    :pswitch_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_f8

    .line 535
    :pswitch_2a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v0, :cond_37

    .line 536
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 538
    .end local v2    # "i":I
    :cond_37
    goto/16 :goto_f5

    .line 520
    :pswitch_39
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3a
    if-ge v2, v0, :cond_46

    .line 521
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 523
    .end local v2    # "i":I
    :cond_46
    goto/16 :goto_f5

    .line 505
    :pswitch_48
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_49
    if-ge v2, v0, :cond_55

    .line 506
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 508
    .end local v2    # "i":I
    :cond_55
    goto/16 :goto_f5

    .line 490
    :pswitch_57
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_58
    if-ge v2, v0, :cond_64

    .line 491
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 493
    .end local v2    # "i":I
    :cond_64
    goto/16 :goto_f5

    .line 545
    :pswitch_66
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_67
    if-ge v2, v0, :cond_73

    .line 546
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 548
    .end local v2    # "i":I
    :cond_73
    goto/16 :goto_f5

    .line 525
    :pswitch_75
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_76
    if-ge v2, v0, :cond_82

    .line 526
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 528
    .end local v2    # "i":I
    :cond_82
    goto/16 :goto_f5

    .line 480
    :pswitch_84
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_85
    if-ge v2, v0, :cond_91

    .line 481
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 480
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 483
    .end local v2    # "i":I
    :cond_91
    goto/16 :goto_f5

    .line 485
    :pswitch_93
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_94
    if-ge v2, v0, :cond_a0

    .line 486
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 488
    .end local v2    # "i":I
    :cond_a0
    goto :goto_f5

    .line 500
    :pswitch_a1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a2
    if-ge v2, v0, :cond_ae

    .line 501
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    .line 503
    .end local v2    # "i":I
    :cond_ae
    goto :goto_f5

    .line 515
    :pswitch_af
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b0
    if-ge v2, v0, :cond_bc

    .line 516
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 518
    .end local v2    # "i":I
    :cond_bc
    goto :goto_f5

    .line 540
    :pswitch_bd
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_be
    if-ge v2, v0, :cond_ca

    .line 541
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_be

    .line 543
    .end local v2    # "i":I
    :cond_ca
    goto :goto_f5

    .line 530
    :pswitch_cb
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_cc
    if-ge v2, v0, :cond_d8

    .line 531
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_cc

    .line 533
    .end local v2    # "i":I
    :cond_d8
    goto :goto_f5

    .line 495
    :pswitch_d9
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_da
    if-ge v2, v0, :cond_e6

    .line 496
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v3

    invoke-virtual {p2, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_da

    .line 498
    .end local v2    # "i":I
    :cond_e6
    goto :goto_f5

    .line 510
    :pswitch_e7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e8
    if-ge v2, v0, :cond_f4

    .line 511
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    .line 513
    .end local v2    # "i":I
    :cond_f4
    nop

    .line 555
    :goto_f5
    nop

    .line 556
    .end local v0    # "arrayLength":I
    .end local v1    # "dataSize":I
    nop

    .line 561
    :goto_f7
    return-void

    .line 550
    .restart local v0    # "arrayLength":I
    .restart local v1    # "dataSize":I
    :goto_f8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unpackable type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "arrayLength":I
    .end local v1    # "dataSize":I
    .end local p0    # "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    .end local p1    # "array":Ljava/lang/Object;
    .end local p2    # "output":Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    throw v2
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_111} :catch_111

    .line 552
    .restart local v0    # "arrayLength":I
    .restart local v1    # "dataSize":I
    .restart local p0    # "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    .restart local p1    # "array":Ljava/lang/Object;
    .restart local p2    # "output":Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    :catch_111
    move-exception v2

    .line 554
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 557
    .end local v0    # "arrayLength":I
    .end local v1    # "dataSize":I
    .end local v2    # "e":Ljava/io/IOException;
    :cond_118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected repeated extension tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unequal to both non-packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and packed variant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_e7
        :pswitch_d9
        :pswitch_cb
        :pswitch_bd
        :pswitch_af
        :pswitch_a1
        :pswitch_93
        :pswitch_84
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_75
        :pswitch_66
        :pswitch_57
        :pswitch_48
        :pswitch_39
        :pswitch_2a
    .end packed-switch
.end method

.method protected final blacklist writeSingularData(Ljava/lang/Object;Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;

    .line 389
    .local p0, "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    :try_start_0
    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 390
    iget v0, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v0, :pswitch_data_de

    .line 456
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_bd

    .line 452
    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 453
    .local v0, "sint64Value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    .line 454
    goto/16 :goto_bb

    .line 448
    .end local v0    # "sint64Value":Ljava/lang/Long;
    :pswitch_1a
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 449
    .local v0, "sint32Value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    .line 450
    goto/16 :goto_bb

    .line 444
    .end local v0    # "sint32Value":Ljava/lang/Integer;
    :pswitch_26
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 445
    .local v0, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    .line 446
    goto/16 :goto_bb

    .line 440
    .end local v0    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_32
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 441
    .local v0, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    .line 442
    goto/16 :goto_bb

    .line 436
    .end local v0    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_3e
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 437
    .local v0, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    .line 438
    goto/16 :goto_bb

    .line 432
    .end local v0    # "enumValue":Ljava/lang/Integer;
    :pswitch_4a
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 433
    .local v0, "uint32Value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    .line 434
    goto :goto_bb

    .line 428
    .end local v0    # "uint32Value":Ljava/lang/Integer;
    :pswitch_55
    move-object v0, p1

    check-cast v0, [B

    .line 429
    .local v0, "bytesValue":[B
    invoke-virtual {p2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    .line 430
    goto :goto_bb

    .line 424
    .end local v0    # "bytesValue":[B
    :pswitch_5c
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 425
    .local v0, "stringValue":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    .line 426
    goto :goto_bb

    .line 420
    .end local v0    # "stringValue":Ljava/lang/String;
    :pswitch_63
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 421
    .local v0, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 422
    goto :goto_bb

    .line 416
    .end local v0    # "boolValue":Ljava/lang/Boolean;
    :pswitch_6e
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 417
    .local v0, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    .line 418
    goto :goto_bb

    .line 412
    .end local v0    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_79
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 413
    .local v0, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    .line 414
    goto :goto_bb

    .line 408
    .end local v0    # "fixed64Value":Ljava/lang/Long;
    :pswitch_84
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 409
    .local v0, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 410
    goto :goto_bb

    .line 404
    .end local v0    # "int32Value":Ljava/lang/Integer;
    :pswitch_8f
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 405
    .local v0, "uint64Value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    .line 406
    goto :goto_bb

    .line 400
    .end local v0    # "uint64Value":Ljava/lang/Long;
    :pswitch_9a
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 401
    .local v0, "int64Value":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 402
    goto :goto_bb

    .line 396
    .end local v0    # "int64Value":Ljava/lang/Long;
    :pswitch_a5
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    .line 397
    .local v0, "floatValue":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 398
    goto :goto_bb

    .line 392
    .end local v0    # "floatValue":Ljava/lang/Float;
    :pswitch_b0
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    .line 393
    .local v0, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 394
    nop

    .line 461
    .end local v0    # "doubleValue":Ljava/lang/Double;
    :goto_bb
    nop

    .line 462
    return-void

    .line 456
    :goto_bd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    .end local p1    # "value":Ljava/lang/Object;
    .end local p2    # "output":Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    throw v0
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d6} :catch_d6

    .line 458
    .restart local p0    # "this":Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension;, "Landroid/internal/framework/protobuf/nano/Extension$PrimitiveExtension<TM;TT;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    .restart local p2    # "output":Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    :catch_d6
    move-exception v0

    .line 460
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_a5
        :pswitch_9a
        :pswitch_8f
        :pswitch_84
        :pswitch_79
        :pswitch_6e
        :pswitch_63
        :pswitch_5c
        :pswitch_a
        :pswitch_a
        :pswitch_55
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
        :pswitch_26
        :pswitch_1a
        :pswitch_e
    .end packed-switch
.end method
