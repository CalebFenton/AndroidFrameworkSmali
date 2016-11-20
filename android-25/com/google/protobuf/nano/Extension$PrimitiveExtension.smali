.class Lcom/google/protobuf/nano/Extension$PrimitiveExtension;
.super Lcom/google/protobuf/nano/Extension;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/nano/Extension",
        "<TM;TT;>;"
    }
.end annotation


# instance fields
.field private final nonPackedTag:I

.field private final packedTag:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;IZII)V
    .locals 6
    .param p1, "type"    # I
    .param p3, "tag"    # I
    .param p4, "repeated"    # Z
    .param p5, "nonPackedTag"    # I
    .param p6, "packedTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 352
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZLcom/google/protobuf/nano/Extension;)V

    #@9
    .line 353
    iput p5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    #@b
    .line 354
    iput p6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    #@d
    .line 351
    return-void
.end method

.method private computePackedDataSize(Ljava/lang/Object;)I
    .locals 6
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 599
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    const/4 v1, 0x0

    #@1
    .line 600
    .local v1, "dataSize":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@4
    move-result v0

    #@5
    .line 601
    .local v0, "arrayLength":I
    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    #@7
    packed-switch v3, :pswitch_data_0

    #@a
    .line 659
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Unexpected non-packable type "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v3

    #@26
    .line 604
    :pswitch_1
    move v1, v0

    #@27
    .line 661
    :cond_0
    :goto_0
    return v1

    #@28
    .line 609
    :pswitch_2
    mul-int/lit8 v1, v0, 0x4

    #@2a
    .line 610
    goto :goto_0

    #@2b
    .line 614
    :pswitch_3
    mul-int/lit8 v1, v0, 0x8

    #@2d
    .line 615
    goto :goto_0

    #@2e
    .line 617
    :pswitch_4
    const/4 v2, 0x0

    #@2f
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    #@31
    .line 619
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    #@34
    move-result v3

    #@35
    .line 618
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    #@38
    move-result v3

    #@39
    add-int/2addr v1, v3

    #@3a
    .line 617
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 623
    .end local v2    # "i":I
    :pswitch_5
    const/4 v2, 0x0

    #@3e
    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    #@40
    .line 625
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    #@43
    move-result v3

    #@44
    .line 624
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    #@47
    move-result v3

    #@48
    add-int/2addr v1, v3

    #@49
    .line 623
    add-int/lit8 v2, v2, 0x1

    #@4b
    goto :goto_2

    #@4c
    .line 629
    .end local v2    # "i":I
    :pswitch_6
    const/4 v2, 0x0

    #@4d
    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_0

    #@4f
    .line 631
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    #@52
    move-result v3

    #@53
    .line 630
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    #@56
    move-result v3

    #@57
    add-int/2addr v1, v3

    #@58
    .line 629
    add-int/lit8 v2, v2, 0x1

    #@5a
    goto :goto_3

    #@5b
    .line 635
    .end local v2    # "i":I
    :pswitch_7
    const/4 v2, 0x0

    #@5c
    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_0

    #@5e
    .line 637
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    #@61
    move-result-wide v4

    #@62
    .line 636
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    #@65
    move-result v3

    #@66
    add-int/2addr v1, v3

    #@67
    .line 635
    add-int/lit8 v2, v2, 0x1

    #@69
    goto :goto_4

    #@6a
    .line 641
    .end local v2    # "i":I
    :pswitch_8
    const/4 v2, 0x0

    #@6b
    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v0, :cond_0

    #@6d
    .line 643
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    #@70
    move-result-wide v4

    #@71
    .line 642
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    #@74
    move-result v3

    #@75
    add-int/2addr v1, v3

    #@76
    .line 641
    add-int/lit8 v2, v2, 0x1

    #@78
    goto :goto_5

    #@79
    .line 647
    .end local v2    # "i":I
    :pswitch_9
    const/4 v2, 0x0

    #@7a
    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v0, :cond_0

    #@7c
    .line 649
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    #@7f
    move-result-wide v4

    #@80
    .line 648
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    #@83
    move-result v3

    #@84
    add-int/2addr v1, v3

    #@85
    .line 647
    add-int/lit8 v2, v2, 0x1

    #@87
    goto :goto_6

    #@88
    .line 653
    .end local v2    # "i":I
    :pswitch_a
    const/4 v2, 0x0

    #@89
    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v0, :cond_0

    #@8b
    .line 655
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    #@8e
    move-result v3

    #@8f
    .line 654
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    #@92
    move-result v3

    #@93
    add-int/2addr v1, v3

    #@94
    .line 653
    add-int/lit8 v2, v2, 0x1

    #@96
    goto :goto_7

    #@97
    .line 601
    nop

    #@98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 5
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 666
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    #@2
    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 668
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 669
    :cond_0
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    #@d
    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    #@f
    if-ne v2, v3, :cond_1

    #@11
    .line 671
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    #@14
    move-result v0

    #@15
    .line 673
    .local v0, "dataSize":I
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@18
    move-result v2

    #@19
    add-int v1, v0, v2

    #@1b
    .line 674
    .local v1, "payloadSize":I
    iget v2, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    #@1d
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    #@20
    move-result v2

    #@21
    add-int/2addr v2, v1

    #@22
    return v2

    #@23
    .line 676
    .end local v0    # "dataSize":I
    .end local v1    # "payloadSize":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "Unexpected repeated extension tag "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    .line 677
    const-string/jumbo v4, ", unequal to both non-packed variant "

    #@3a
    .line 676
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 677
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    #@40
    .line 676
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 678
    const-string/jumbo v4, " and packed variant "

    #@47
    .line 676
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    .line 678
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    #@4d
    .line 676
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v2
.end method

.method protected final computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 22
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 684
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    #@4
    move/from16 v19, v0

    #@6
    invoke-static/range {v19 .. v19}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    #@9
    move-result v6

    #@a
    .line 685
    .local v6, "fieldNumber":I
    move-object/from16 v0, p0

    #@c
    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    #@e
    move/from16 v19, v0

    #@10
    packed-switch v19, :pswitch_data_0

    #@13
    .line 737
    :pswitch_0
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v20, Ljava/lang/StringBuilder;

    #@17
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v21, "Unknown type "

    #@1d
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v20

    #@21
    move-object/from16 v0, p0

    #@23
    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    #@25
    move/from16 v21, v0

    #@27
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v20

    #@2b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v20

    #@2f
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v19

    #@33
    :pswitch_1
    move-object/from16 v4, p1

    #@35
    .line 687
    check-cast v4, Ljava/lang/Double;

    #@37
    .line 688
    .local v4, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    #@3a
    move-result-wide v20

    #@3b
    move-wide/from16 v0, v20

    #@3d
    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    #@40
    move-result v19

    #@41
    return v19

    #@42
    .end local v4    # "doubleValue":Ljava/lang/Double;
    :pswitch_2
    move-object/from16 v9, p1

    #@44
    .line 690
    check-cast v9, Ljava/lang/Float;

    #@46
    .line 691
    .local v9, "floatValue":Ljava/lang/Float;
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    #@49
    move-result v19

    #@4a
    move/from16 v0, v19

    #@4c
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    #@4f
    move-result v19

    #@50
    return v19

    #@51
    .end local v9    # "floatValue":Ljava/lang/Float;
    :pswitch_3
    move-object/from16 v11, p1

    #@53
    .line 693
    check-cast v11, Ljava/lang/Long;

    #@55
    .line 694
    .local v11, "int64Value":Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    #@58
    move-result-wide v20

    #@59
    move-wide/from16 v0, v20

    #@5b
    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    #@5e
    move-result v19

    #@5f
    return v19

    #@60
    .end local v11    # "int64Value":Ljava/lang/Long;
    :pswitch_4
    move-object/from16 v18, p1

    #@62
    .line 696
    check-cast v18, Ljava/lang/Long;

    #@64
    .line 697
    .local v18, "uint64Value":Ljava/lang/Long;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    #@67
    move-result-wide v20

    #@68
    move-wide/from16 v0, v20

    #@6a
    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    #@6d
    move-result v19

    #@6e
    return v19

    #@6f
    .end local v18    # "uint64Value":Ljava/lang/Long;
    :pswitch_5
    move-object/from16 v10, p1

    #@71
    .line 699
    check-cast v10, Ljava/lang/Integer;

    #@73
    .line 700
    .local v10, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@76
    move-result v19

    #@77
    move/from16 v0, v19

    #@79
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    #@7c
    move-result v19

    #@7d
    return v19

    #@7e
    .end local v10    # "int32Value":Ljava/lang/Integer;
    :pswitch_6
    move-object/from16 v8, p1

    #@80
    .line 702
    check-cast v8, Ljava/lang/Long;

    #@82
    .line 703
    .local v8, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@85
    move-result-wide v20

    #@86
    move-wide/from16 v0, v20

    #@88
    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    #@8b
    move-result v19

    #@8c
    return v19

    #@8d
    .end local v8    # "fixed64Value":Ljava/lang/Long;
    :pswitch_7
    move-object/from16 v7, p1

    #@8f
    .line 705
    check-cast v7, Ljava/lang/Integer;

    #@91
    .line 706
    .local v7, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@94
    move-result v19

    #@95
    move/from16 v0, v19

    #@97
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    #@9a
    move-result v19

    #@9b
    return v19

    #@9c
    .end local v7    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_8
    move-object/from16 v2, p1

    #@9e
    .line 708
    check-cast v2, Ljava/lang/Boolean;

    #@a0
    .line 709
    .local v2, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@a3
    move-result v19

    #@a4
    move/from16 v0, v19

    #@a6
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    #@a9
    move-result v19

    #@aa
    return v19

    #@ab
    .end local v2    # "boolValue":Ljava/lang/Boolean;
    :pswitch_9
    move-object/from16 v16, p1

    #@ad
    .line 711
    check-cast v16, Ljava/lang/String;

    #@af
    .line 712
    .local v16, "stringValue":Ljava/lang/String;
    move-object/from16 v0, v16

    #@b1
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    #@b4
    move-result v19

    #@b5
    return v19

    #@b6
    .end local v16    # "stringValue":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v3, p1

    #@b8
    .line 714
    check-cast v3, [B

    #@ba
    .line 715
    .local v3, "bytesValue":[B
    invoke-static {v6, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    #@bd
    move-result v19

    #@be
    return v19

    #@bf
    .end local v3    # "bytesValue":[B
    :pswitch_b
    move-object/from16 v17, p1

    #@c1
    .line 717
    check-cast v17, Ljava/lang/Integer;

    #@c3
    .line 718
    .local v17, "uint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@c6
    move-result v19

    #@c7
    move/from16 v0, v19

    #@c9
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    #@cc
    move-result v19

    #@cd
    return v19

    #@ce
    .end local v17    # "uint32Value":Ljava/lang/Integer;
    :pswitch_c
    move-object/from16 v5, p1

    #@d0
    .line 720
    check-cast v5, Ljava/lang/Integer;

    #@d2
    .line 721
    .local v5, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@d5
    move-result v19

    #@d6
    move/from16 v0, v19

    #@d8
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    #@db
    move-result v19

    #@dc
    return v19

    #@dd
    .end local v5    # "enumValue":Ljava/lang/Integer;
    :pswitch_d
    move-object/from16 v12, p1

    #@df
    .line 723
    check-cast v12, Ljava/lang/Integer;

    #@e1
    .line 725
    .local v12, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@e4
    move-result v19

    #@e5
    .line 724
    move/from16 v0, v19

    #@e7
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    #@ea
    move-result v19

    #@eb
    return v19

    #@ec
    .end local v12    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_e
    move-object/from16 v13, p1

    #@ee
    .line 727
    check-cast v13, Ljava/lang/Long;

    #@f0
    .line 729
    .local v13, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    #@f3
    move-result-wide v20

    #@f4
    .line 728
    move-wide/from16 v0, v20

    #@f6
    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    #@f9
    move-result v19

    #@fa
    return v19

    #@fb
    .end local v13    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_f
    move-object/from16 v14, p1

    #@fd
    .line 731
    check-cast v14, Ljava/lang/Integer;

    #@ff
    .line 732
    .local v14, "sint32Value":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@102
    move-result v19

    #@103
    move/from16 v0, v19

    #@105
    invoke-static {v6, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    #@108
    move-result v19

    #@109
    return v19

    #@10a
    .end local v14    # "sint32Value":Ljava/lang/Integer;
    :pswitch_10
    move-object/from16 v15, p1

    #@10c
    .line 734
    check-cast v15, Ljava/lang/Long;

    #@10e
    .line 735
    .local v15, "sint64Value":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    #@111
    move-result-wide v20

    #@112
    move-wide/from16 v0, v20

    #@114
    invoke-static {v6, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    #@117
    move-result v19

    #@118
    return v19

    #@119
    .line 685
    nop

    #@11a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    #@0
    .prologue
    .line 360
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    :try_start_0
    iget v1, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 394
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Unknown type "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 396
    :catch_0
    move-exception v0

    #@22
    .line 397
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v2, "Error reading extension field"

    #@27
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2a
    throw v1

    #@2b
    .line 362
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    #@2e
    move-result-wide v2

    #@2f
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 364
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    #@37
    move-result v1

    #@38
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 366
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    #@40
    move-result-wide v2

    #@41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@44
    move-result-object v1

    #@45
    return-object v1

    #@46
    .line 368
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    #@49
    move-result-wide v2

    #@4a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4d
    move-result-object v1

    #@4e
    return-object v1

    #@4f
    .line 370
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    #@52
    move-result v1

    #@53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v1

    #@57
    return-object v1

    #@58
    .line 372
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    #@5b
    move-result-wide v2

    #@5c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5f
    move-result-object v1

    #@60
    return-object v1

    #@61
    .line 374
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    #@64
    move-result v1

    #@65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v1

    #@69
    return-object v1

    #@6a
    .line 376
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    #@6d
    move-result v1

    #@6e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@71
    move-result-object v1

    #@72
    return-object v1

    #@73
    .line 378
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    return-object v1

    #@78
    .line 380
    :pswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    #@7b
    move-result-object v1

    #@7c
    return-object v1

    #@7d
    .line 382
    :pswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    #@80
    move-result v1

    #@81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v1

    #@85
    return-object v1

    #@86
    .line 384
    :pswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readEnum()I

    #@89
    move-result v1

    #@8a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v1

    #@8e
    return-object v1

    #@8f
    .line 386
    :pswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    #@92
    move-result v1

    #@93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@96
    move-result-object v1

    #@97
    return-object v1

    #@98
    .line 388
    :pswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSFixed64()J

    #@9b
    move-result-wide v2

    #@9c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9f
    move-result-object v1

    #@a0
    return-object v1

    #@a1
    .line 390
    :pswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    #@a4
    move-result v1

    #@a5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a8
    move-result-object v1

    #@a9
    return-object v1

    #@aa
    .line 392
    :pswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt64()J

    #@ad
    move-result-wide v2

    #@ae
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@b1
    move-result-object v1

    #@b2
    return-object v1

    #@b3
    .line 360
    nop

    #@b4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected readDataInto(Lcom/google/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .locals 4
    .param p1, "data"    # Lcom/google/protobuf/nano/UnknownFieldData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 405
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    .local p2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    #@2
    iget v3, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    #@4
    if-ne v2, v3, :cond_1

    #@6
    .line 406
    iget-object v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    #@8
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p0, v2}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 402
    :cond_0
    return-void

    #@14
    .line 409
    :cond_1
    iget-object v2, p1, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    #@16
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    #@19
    move-result-object v0

    #@1a
    .line 411
    .local v0, "buffer":Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v0, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 415
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_0

    #@27
    .line 416
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_0

    #@2f
    .line 412
    :catch_0
    move-exception v1

    #@30
    .line 413
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v3, "Error reading extension field"

    #@35
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38
    throw v2
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    #@0
    .prologue
    .line 501
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    #@2
    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    #@4
    if-ne v4, v5, :cond_1

    #@6
    .line 503
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    #@9
    .line 500
    :cond_0
    return-void

    #@a
    .line 504
    :cond_1
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    #@c
    iget v5, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    #@e
    if-ne v4, v5, :cond_2

    #@10
    .line 507
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@13
    move-result v0

    #@14
    .line 508
    .local v0, "arrayLength":I
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    #@17
    move-result v1

    #@18
    .line 511
    .local v1, "dataSize":I
    :try_start_0
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    #@1a
    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@1d
    .line 512
    invoke-virtual {p2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@20
    .line 513
    iget v4, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    #@22
    packed-switch v4, :pswitch_data_0

    #@25
    .line 585
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v6, "Unpackable type "

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    iget v6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 587
    :catch_0
    move-exception v2

    #@42
    .line 589
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    #@44
    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@47
    throw v4

    #@48
    .line 515
    .end local v2    # "e":Ljava/io/IOException;
    :pswitch_1
    const/4 v3, 0x0

    #@49
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@4b
    .line 516
    :try_start_1
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    #@4e
    move-result v4

    #@4f
    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    #@52
    .line 515
    add-int/lit8 v3, v3, 0x1

    #@54
    goto :goto_0

    #@55
    .line 520
    .end local v3    # "i":I
    :pswitch_2
    const/4 v3, 0x0

    #@56
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    #@58
    .line 521
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    #@5b
    move-result v4

    #@5c
    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    #@5f
    .line 520
    add-int/lit8 v3, v3, 0x1

    #@61
    goto :goto_1

    #@62
    .line 525
    .end local v3    # "i":I
    :pswitch_3
    const/4 v3, 0x0

    #@63
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_0

    #@65
    .line 526
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    #@68
    move-result v4

    #@69
    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    #@6c
    .line 525
    add-int/lit8 v3, v3, 0x1

    #@6e
    goto :goto_2

    #@6f
    .line 530
    .end local v3    # "i":I
    :pswitch_4
    const/4 v3, 0x0

    #@70
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_0

    #@72
    .line 531
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    #@75
    move-result v4

    #@76
    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    #@79
    .line 530
    add-int/lit8 v3, v3, 0x1

    #@7b
    goto :goto_3

    #@7c
    .line 535
    .end local v3    # "i":I
    :pswitch_5
    const/4 v3, 0x0

    #@7d
    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_0

    #@7f
    .line 536
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    #@82
    move-result-wide v4

    #@83
    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    #@86
    .line 535
    add-int/lit8 v3, v3, 0x1

    #@88
    goto :goto_4

    #@89
    .line 540
    .end local v3    # "i":I
    :pswitch_6
    const/4 v3, 0x0

    #@8a
    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_0

    #@8c
    .line 541
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    #@8f
    move-result-wide v4

    #@90
    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    #@93
    .line 540
    add-int/lit8 v3, v3, 0x1

    #@95
    goto :goto_5

    #@96
    .line 545
    .end local v3    # "i":I
    :pswitch_7
    const/4 v3, 0x0

    #@97
    .restart local v3    # "i":I
    :goto_6
    if-ge v3, v0, :cond_0

    #@99
    .line 546
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    #@9c
    move-result-wide v4

    #@9d
    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    #@a0
    .line 545
    add-int/lit8 v3, v3, 0x1

    #@a2
    goto :goto_6

    #@a3
    .line 550
    .end local v3    # "i":I
    :pswitch_8
    const/4 v3, 0x0

    #@a4
    .restart local v3    # "i":I
    :goto_7
    if-ge v3, v0, :cond_0

    #@a6
    .line 551
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    #@a9
    move-result v4

    #@aa
    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    #@ad
    .line 550
    add-int/lit8 v3, v3, 0x1

    #@af
    goto :goto_7

    #@b0
    .line 555
    .end local v3    # "i":I
    :pswitch_9
    const/4 v3, 0x0

    #@b1
    .restart local v3    # "i":I
    :goto_8
    if-ge v3, v0, :cond_0

    #@b3
    .line 556
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    #@b6
    move-result v4

    #@b7
    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    #@ba
    .line 555
    add-int/lit8 v3, v3, 0x1

    #@bc
    goto :goto_8

    #@bd
    .line 560
    .end local v3    # "i":I
    :pswitch_a
    const/4 v3, 0x0

    #@be
    .restart local v3    # "i":I
    :goto_9
    if-ge v3, v0, :cond_0

    #@c0
    .line 561
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    #@c3
    move-result v4

    #@c4
    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    #@c7
    .line 560
    add-int/lit8 v3, v3, 0x1

    #@c9
    goto :goto_9

    #@ca
    .line 565
    .end local v3    # "i":I
    :pswitch_b
    const/4 v3, 0x0

    #@cb
    .restart local v3    # "i":I
    :goto_a
    if-ge v3, v0, :cond_0

    #@cd
    .line 566
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    #@d0
    move-result-wide v4

    #@d1
    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    #@d4
    .line 565
    add-int/lit8 v3, v3, 0x1

    #@d6
    goto :goto_a

    #@d7
    .line 570
    .end local v3    # "i":I
    :pswitch_c
    const/4 v3, 0x0

    #@d8
    .restart local v3    # "i":I
    :goto_b
    if-ge v3, v0, :cond_0

    #@da
    .line 571
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    #@dd
    move-result-wide v4

    #@de
    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    #@e1
    .line 570
    add-int/lit8 v3, v3, 0x1

    #@e3
    goto :goto_b

    #@e4
    .line 575
    .end local v3    # "i":I
    :pswitch_d
    const/4 v3, 0x0

    #@e5
    .restart local v3    # "i":I
    :goto_c
    if-ge v3, v0, :cond_0

    #@e7
    .line 576
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    #@ea
    move-result-wide v4

    #@eb
    invoke-virtual {p2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    #@ee
    .line 575
    add-int/lit8 v3, v3, 0x1

    #@f0
    goto :goto_c

    #@f1
    .line 580
    .end local v3    # "i":I
    :pswitch_e
    const/4 v3, 0x0

    #@f2
    .restart local v3    # "i":I
    :goto_d
    if-ge v3, v0, :cond_0

    #@f4
    .line 581
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    #@f7
    move-result v4

    #@f8
    invoke-virtual {p2, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@fb
    .line 580
    add-int/lit8 v3, v3, 0x1

    #@fd
    goto :goto_d

    #@fe
    .line 592
    .end local v0    # "arrayLength":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@100
    new-instance v5, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v6, "Unexpected repeated extension tag "

    #@108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v5

    #@10c
    iget v6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    #@10e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@111
    move-result-object v5

    #@112
    .line 593
    const-string/jumbo v6, ", unequal to both non-packed variant "

    #@115
    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v5

    #@119
    .line 593
    iget v6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    #@11b
    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v5

    #@11f
    .line 594
    const-string/jumbo v6, " and packed variant "

    #@122
    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v5

    #@126
    .line 594
    iget v6, p0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    #@128
    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v5

    #@12c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v5

    #@130
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@133
    throw v4

    #@134
    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_8
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_e
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method protected final writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 24
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    #@0
    .prologue
    .line 424
    .local p0, "this":Lcom/google/protobuf/nano/Extension$PrimitiveExtension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>.PrimitiveExtension<TM;TT;>;"
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    #@4
    move/from16 v21, v0

    #@6
    move-object/from16 v0, p2

    #@8
    move/from16 v1, v21

    #@a
    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@d
    .line 425
    move-object/from16 v0, p0

    #@f
    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    #@11
    move/from16 v21, v0

    #@13
    packed-switch v21, :pswitch_data_0

    #@16
    .line 491
    :pswitch_0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v22, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v23, "Unknown type "

    #@20
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v22

    #@24
    move-object/from16 v0, p0

    #@26
    iget v0, v0, Lcom/google/protobuf/nano/Extension$PrimitiveExtension;->type:I

    #@28
    move/from16 v23, v0

    #@2a
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v22

    #@2e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v22

    #@32
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v21
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 493
    :catch_0
    move-exception v7

    #@37
    .line 495
    .local v7, "e":Ljava/io/IOException;
    new-instance v21, Ljava/lang/IllegalStateException;

    #@39
    move-object/from16 v0, v21

    #@3b
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@3e
    throw v21

    #@3f
    .line 427
    .end local v7    # "e":Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    #@41
    check-cast v0, Ljava/lang/Double;

    #@43
    move-object v6, v0

    #@44
    .line 428
    .local v6, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    #@47
    move-result-wide v22

    #@48
    move-object/from16 v0, p2

    #@4a
    move-wide/from16 v1, v22

    #@4c
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    #@4f
    .line 422
    .end local v6    # "doubleValue":Ljava/lang/Double;
    :goto_0
    return-void

    #@50
    .line 431
    :pswitch_2
    move-object/from16 v0, p1

    #@52
    check-cast v0, Ljava/lang/Float;

    #@54
    move-object v11, v0

    #@55
    .line 432
    .local v11, "floatValue":Ljava/lang/Float;
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    #@58
    move-result v21

    #@59
    move-object/from16 v0, p2

    #@5b
    move/from16 v1, v21

    #@5d
    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    #@60
    goto :goto_0

    #@61
    .line 435
    .end local v11    # "floatValue":Ljava/lang/Float;
    :pswitch_3
    move-object/from16 v0, p1

    #@63
    check-cast v0, Ljava/lang/Long;

    #@65
    move-object v13, v0

    #@66
    .line 436
    .local v13, "int64Value":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    #@69
    move-result-wide v22

    #@6a
    move-object/from16 v0, p2

    #@6c
    move-wide/from16 v1, v22

    #@6e
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    #@71
    goto :goto_0

    #@72
    .line 439
    .end local v13    # "int64Value":Ljava/lang/Long;
    :pswitch_4
    move-object/from16 v0, p1

    #@74
    check-cast v0, Ljava/lang/Long;

    #@76
    move-object/from16 v20, v0

    #@78
    .line 440
    .local v20, "uint64Value":Ljava/lang/Long;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    #@7b
    move-result-wide v22

    #@7c
    move-object/from16 v0, p2

    #@7e
    move-wide/from16 v1, v22

    #@80
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    #@83
    goto :goto_0

    #@84
    .line 443
    .end local v20    # "uint64Value":Ljava/lang/Long;
    :pswitch_5
    move-object/from16 v0, p1

    #@86
    check-cast v0, Ljava/lang/Integer;

    #@88
    move-object v12, v0

    #@89
    .line 444
    .local v12, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@8c
    move-result v21

    #@8d
    move-object/from16 v0, p2

    #@8f
    move/from16 v1, v21

    #@91
    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    #@94
    goto :goto_0

    #@95
    .line 447
    .end local v12    # "int32Value":Ljava/lang/Integer;
    :pswitch_6
    move-object/from16 v0, p1

    #@97
    check-cast v0, Ljava/lang/Long;

    #@99
    move-object v10, v0

    #@9a
    .line 448
    .local v10, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@9d
    move-result-wide v22

    #@9e
    move-object/from16 v0, p2

    #@a0
    move-wide/from16 v1, v22

    #@a2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    #@a5
    goto :goto_0

    #@a6
    .line 451
    .end local v10    # "fixed64Value":Ljava/lang/Long;
    :pswitch_7
    move-object/from16 v0, p1

    #@a8
    check-cast v0, Ljava/lang/Integer;

    #@aa
    move-object v9, v0

    #@ab
    .line 452
    .local v9, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@ae
    move-result v21

    #@af
    move-object/from16 v0, p2

    #@b1
    move/from16 v1, v21

    #@b3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    #@b6
    goto :goto_0

    #@b7
    .line 455
    .end local v9    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_8
    move-object/from16 v0, p1

    #@b9
    check-cast v0, Ljava/lang/Boolean;

    #@bb
    move-object v4, v0

    #@bc
    .line 456
    .local v4, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@bf
    move-result v21

    #@c0
    move-object/from16 v0, p2

    #@c2
    move/from16 v1, v21

    #@c4
    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    #@c7
    goto :goto_0

    #@c8
    .line 459
    .end local v4    # "boolValue":Ljava/lang/Boolean;
    :pswitch_9
    move-object/from16 v0, p1

    #@ca
    check-cast v0, Ljava/lang/String;

    #@cc
    move-object/from16 v18, v0

    #@ce
    .line 460
    .local v18, "stringValue":Ljava/lang/String;
    move-object/from16 v0, p2

    #@d0
    move-object/from16 v1, v18

    #@d2
    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    #@d5
    goto/16 :goto_0

    #@d7
    .line 463
    .end local v18    # "stringValue":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p1

    #@d9
    check-cast v0, [B

    #@db
    move-object v5, v0

    #@dc
    .line 464
    .local v5, "bytesValue":[B
    move-object/from16 v0, p2

    #@de
    invoke-virtual {v0, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 467
    .end local v5    # "bytesValue":[B
    :pswitch_b
    move-object/from16 v0, p1

    #@e5
    check-cast v0, Ljava/lang/Integer;

    #@e7
    move-object/from16 v19, v0

    #@e9
    .line 468
    .local v19, "uint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    #@ec
    move-result v21

    #@ed
    move-object/from16 v0, p2

    #@ef
    move/from16 v1, v21

    #@f1
    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    #@f4
    goto/16 :goto_0

    #@f6
    .line 471
    .end local v19    # "uint32Value":Ljava/lang/Integer;
    :pswitch_c
    move-object/from16 v0, p1

    #@f8
    check-cast v0, Ljava/lang/Integer;

    #@fa
    move-object v8, v0

    #@fb
    .line 472
    .local v8, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@fe
    move-result v21

    #@ff
    move-object/from16 v0, p2

    #@101
    move/from16 v1, v21

    #@103
    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    #@106
    goto/16 :goto_0

    #@108
    .line 475
    .end local v8    # "enumValue":Ljava/lang/Integer;
    :pswitch_d
    move-object/from16 v0, p1

    #@10a
    check-cast v0, Ljava/lang/Integer;

    #@10c
    move-object v14, v0

    #@10d
    .line 476
    .local v14, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@110
    move-result v21

    #@111
    move-object/from16 v0, p2

    #@113
    move/from16 v1, v21

    #@115
    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    #@118
    goto/16 :goto_0

    #@11a
    .line 479
    .end local v14    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_e
    move-object/from16 v0, p1

    #@11c
    check-cast v0, Ljava/lang/Long;

    #@11e
    move-object v15, v0

    #@11f
    .line 480
    .local v15, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    #@122
    move-result-wide v22

    #@123
    move-object/from16 v0, p2

    #@125
    move-wide/from16 v1, v22

    #@127
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    #@12a
    goto/16 :goto_0

    #@12c
    .line 483
    .end local v15    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_f
    move-object/from16 v0, p1

    #@12e
    check-cast v0, Ljava/lang/Integer;

    #@130
    move-object/from16 v16, v0

    #@132
    .line 484
    .local v16, "sint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    #@135
    move-result v21

    #@136
    move-object/from16 v0, p2

    #@138
    move/from16 v1, v21

    #@13a
    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    #@13d
    goto/16 :goto_0

    #@13f
    .line 487
    .end local v16    # "sint32Value":Ljava/lang/Integer;
    :pswitch_10
    move-object/from16 v0, p1

    #@141
    check-cast v0, Ljava/lang/Long;

    #@143
    move-object/from16 v17, v0

    #@145
    .line 488
    .local v17, "sint64Value":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    #@148
    move-result-wide v22

    #@149
    move-object/from16 v0, p2

    #@14b
    move-wide/from16 v1, v22

    #@14d
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@150
    goto/16 :goto_0

    #@152
    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
