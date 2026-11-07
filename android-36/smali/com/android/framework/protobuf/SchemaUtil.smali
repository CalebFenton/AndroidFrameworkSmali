.class final Lcom/android/framework/protobuf/SchemaUtil;
.super Ljava/lang/Object;
.source "SchemaUtil.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist DEFAULT_LOOK_UP_START_NUMBER:I = 0x28

.field private static final blacklist GENERATED_MESSAGE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private static final blacklist PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private static final blacklist UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->getGeneratedMessageClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 47
    nop

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/framework/protobuf/SchemaUtil;->getUnknownFieldSetSchema(Z)Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    .line 49
    nop

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/framework/protobuf/SchemaUtil;->getUnknownFieldSetSchema(Z)Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    .line 51
    new-instance v0, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;

    invoke-direct {v0}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist computeSizeBoolList(ILjava/util/List;Z)I
    .registers 6
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 629
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 630
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 631
    const/4 v1, 0x0

    return v1

    .line 633
    :cond_8
    if-eqz p2, :cond_14

    .line 635
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    .line 636
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 635
    return v1

    .line 638
    :cond_14
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method static blacklist computeSizeBoolListNoTag(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 625
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method static blacklist computeSizeByteStringList(ILjava/util/List;)I
    .registers 6
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)I"
        }
    .end annotation

    .line 714
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/ByteString;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 715
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 716
    const/4 v1, 0x0

    return v1

    .line 718
    :cond_8
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 719
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 720
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 722
    .end local v2    # "i":I
    :cond_22
    return v1
.end method

.method static blacklist computeSizeEnumList(ILjava/util/List;Z)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 464
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 465
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 466
    const/4 v1, 0x0

    return v1

    .line 468
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v1

    .line 470
    .local v1, "size":I
    if-eqz p2, :cond_18

    .line 471
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 472
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 471
    return v2

    .line 474
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeEnumListNoTag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 443
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 444
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 445
    const/4 v1, 0x0

    return v1

    .line 448
    :cond_8
    const/4 v1, 0x0

    .line 450
    .local v1, "size":I
    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_20

    .line 451
    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/IntArrayList;

    .line 452
    .local v2, "primitiveList":Lcom/android/framework/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_1f

    .line 453
    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 452
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 455
    .end local v2    # "primitiveList":Lcom/android/framework/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1f
    goto :goto_35

    .line 456
    :cond_20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_35

    .line 457
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 460
    .end local v2    # "i":I
    :cond_35
    :goto_35
    return v1
.end method

.method static blacklist computeSizeFixed32List(ILjava/util/List;Z)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 592
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 593
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 594
    return v1

    .line 596
    :cond_8
    if-eqz p2, :cond_16

    .line 597
    mul-int/lit8 v1, v0, 0x4

    .line 598
    .local v1, "dataSize":I
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 599
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 598
    return v2

    .line 601
    .end local v1    # "dataSize":I
    :cond_16
    invoke-static {p0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method static blacklist computeSizeFixed32ListNoTag(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 588
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static blacklist computeSizeFixed64List(ILjava/util/List;Z)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 610
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 611
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 612
    const/4 v1, 0x0

    return v1

    .line 614
    :cond_8
    if-eqz p2, :cond_16

    .line 615
    mul-int/lit8 v1, v0, 0x8

    .line 616
    .local v1, "dataSize":I
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 617
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 616
    return v2

    .line 619
    .end local v1    # "dataSize":I
    :cond_16
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method static blacklist computeSizeFixed64ListNoTag(Ljava/util/List;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 606
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static blacklist computeSizeGroupList(ILjava/util/List;)I
    .registers 6
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">;)I"
        }
    .end annotation

    .line 726
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/MessageLite;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 727
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 728
    const/4 v1, 0x0

    return v1

    .line 730
    :cond_8
    const/4 v1, 0x0

    .line 731
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1a

    .line 732
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p0, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 731
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 734
    .end local v2    # "i":I
    :cond_1a
    return v1
.end method

.method static blacklist computeSizeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .param p2, "schema"    # Lcom/android/framework/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">;",
            "Lcom/android/framework/protobuf/Schema;",
            ")I"
        }
    .end annotation

    .line 738
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/MessageLite;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 739
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 740
    const/4 v1, 0x0

    return v1

    .line 742
    :cond_8
    const/4 v1, 0x0

    .line 743
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1a

    .line 744
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p0, v3, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v3

    add-int/2addr v1, v3

    .line 743
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 746
    .end local v2    # "i":I
    :cond_1a
    return v1
.end method

.method static blacklist computeSizeInt32List(ILjava/util/List;Z)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 500
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 501
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 502
    const/4 v1, 0x0

    return v1

    .line 504
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 506
    .local v1, "size":I
    if-eqz p2, :cond_18

    .line 507
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 508
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 507
    return v2

    .line 510
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeInt32ListNoTag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 479
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 480
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 481
    const/4 v1, 0x0

    return v1

    .line 484
    :cond_8
    const/4 v1, 0x0

    .line 486
    .local v1, "size":I
    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_20

    .line 487
    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/IntArrayList;

    .line 488
    .local v2, "primitiveList":Lcom/android/framework/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_1f

    .line 489
    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 491
    .end local v2    # "primitiveList":Lcom/android/framework/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1f
    goto :goto_35

    .line 492
    :cond_20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_35

    .line 493
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 496
    .end local v2    # "i":I
    :cond_35
    :goto_35
    return v1
.end method

.method static blacklist computeSizeInt64List(ILjava/util/List;Z)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 356
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 357
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 358
    const/4 v1, 0x0

    return v1

    .line 360
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 362
    .local v1, "size":I
    if-eqz p2, :cond_18

    .line 363
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 364
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 363
    return v2

    .line 366
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeInt64ListNoTag(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 335
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 336
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 337
    const/4 v1, 0x0

    return v1

    .line 340
    :cond_8
    const/4 v1, 0x0

    .line 342
    .local v1, "size":I
    instance-of v2, p0, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v2, :cond_20

    .line 343
    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/LongArrayList;

    .line 344
    .local v2, "primitiveList":Lcom/android/framework/protobuf/LongArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_1f

    .line 345
    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 347
    .end local v2    # "primitiveList":Lcom/android/framework/protobuf/LongArrayList;
    .end local v3    # "i":I
    :cond_1f
    goto :goto_35

    .line 348
    :cond_20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_35

    .line 349
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 352
    .end local v2    # "i":I
    :cond_35
    :goto_35
    return v1
.end method

.method static blacklist computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "schema"    # Lcom/android/framework/protobuf/Schema;

    .line 672
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;

    if-eqz v0, :cond_c

    .line 673
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v0

    return v0

    .line 675
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    return v0
.end method

.method static blacklist computeSizeMessageList(ILjava/util/List;)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 680
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 681
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 682
    const/4 v1, 0x0

    return v1

    .line 684
    :cond_8
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 685
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_2c

    .line 686
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 687
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/framework/protobuf/LazyFieldLite;

    if-eqz v4, :cond_21

    .line 688
    move-object v4, v3

    check-cast v4, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_29

    .line 690
    :cond_21
    move-object v4, v3

    check-cast v4, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    .line 685
    .end local v3    # "value":Ljava/lang/Object;
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 693
    .end local v2    # "i":I
    :cond_2c
    return v1
.end method

.method static blacklist computeSizeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I
    .registers 8
    .param p0, "fieldNumber"    # I
    .param p2, "schema"    # Lcom/android/framework/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
            ")I"
        }
    .end annotation

    .line 697
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 698
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 699
    const/4 v1, 0x0

    return v1

    .line 701
    :cond_8
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 702
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_2c

    .line 703
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 704
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/framework/protobuf/LazyFieldLite;

    if-eqz v4, :cond_21

    .line 705
    move-object v4, v3

    check-cast v4, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_29

    .line 707
    :cond_21
    move-object v4, v3

    check-cast v4, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {v4, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v4

    add-int/2addr v1, v4

    .line 702
    .end local v3    # "value":Ljava/lang/Object;
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 710
    .end local v2    # "i":I
    :cond_2c
    return v1
.end method

.method static blacklist computeSizeSInt32List(ILjava/util/List;Z)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 572
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 573
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 574
    const/4 v1, 0x0

    return v1

    .line 577
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 579
    .local v1, "size":I
    if-eqz p2, :cond_18

    .line 580
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 581
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 580
    return v2

    .line 583
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeSInt32ListNoTag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 551
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 552
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 553
    const/4 v1, 0x0

    return v1

    .line 556
    :cond_8
    const/4 v1, 0x0

    .line 558
    .local v1, "size":I
    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_20

    .line 559
    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/IntArrayList;

    .line 560
    .local v2, "primitiveList":Lcom/android/framework/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_1f

    .line 561
    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 563
    .end local v2    # "primitiveList":Lcom/android/framework/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1f
    goto :goto_35

    .line 564
    :cond_20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_35

    .line 565
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 568
    .end local v2    # "i":I
    :cond_35
    :goto_35
    return v1
.end method

.method static blacklist computeSizeSInt64List(ILjava/util/List;Z)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 428
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 429
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 430
    const/4 v1, 0x0

    return v1

    .line 432
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 434
    .local v1, "size":I
    if-eqz p2, :cond_18

    .line 435
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 436
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 435
    return v2

    .line 438
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeSInt64ListNoTag(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 407
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 408
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 409
    const/4 v1, 0x0

    return v1

    .line 412
    :cond_8
    const/4 v1, 0x0

    .line 414
    .local v1, "size":I
    instance-of v2, p0, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v2, :cond_20

    .line 415
    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/LongArrayList;

    .line 416
    .local v2, "primitiveList":Lcom/android/framework/protobuf/LongArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_1f

    .line 417
    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 419
    .end local v2    # "primitiveList":Lcom/android/framework/protobuf/LongArrayList;
    .end local v3    # "i":I
    :cond_1f
    goto :goto_35

    .line 420
    :cond_20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_35

    .line 421
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 424
    .end local v2    # "i":I
    :cond_35
    :goto_35
    return v1
.end method

.method static blacklist computeSizeStringList(ILjava/util/List;)I
    .registers 8
    .param p0, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 643
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 644
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 645
    const/4 v1, 0x0

    return v1

    .line 647
    :cond_8
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 648
    .local v1, "size":I
    instance-of v2, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v2, :cond_34

    .line 649
    move-object v2, p1

    check-cast v2, Lcom/android/framework/protobuf/LazyStringList;

    .line 650
    .local v2, "lazyList":Lcom/android/framework/protobuf/LazyStringList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v0, :cond_33

    .line 651
    invoke-interface {v2, v3}, Lcom/android/framework/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    .line 652
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/framework/protobuf/ByteString;

    if-eqz v5, :cond_28

    .line 653
    move-object v5, v4

    check-cast v5, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_30

    .line 655
    :cond_28
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 650
    .end local v4    # "value":Ljava/lang/Object;
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 658
    .end local v2    # "lazyList":Lcom/android/framework/protobuf/LazyStringList;
    .end local v3    # "i":I
    :cond_33
    goto :goto_53

    .line 659
    :cond_34
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    if-ge v2, v0, :cond_53

    .line 660
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 661
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/framework/protobuf/ByteString;

    if-eqz v4, :cond_48

    .line 662
    move-object v4, v3

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_50

    .line 664
    :cond_48
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 659
    .end local v3    # "value":Ljava/lang/Object;
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 668
    .end local v2    # "i":I
    :cond_53
    :goto_53
    return v1
.end method

.method static blacklist computeSizeUInt32List(ILjava/util/List;Z)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 536
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 537
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 538
    const/4 v1, 0x0

    return v1

    .line 540
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 542
    .local v1, "size":I
    if-eqz p2, :cond_18

    .line 543
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 544
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 543
    return v2

    .line 546
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeUInt32ListNoTag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 515
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 516
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 517
    const/4 v1, 0x0

    return v1

    .line 520
    :cond_8
    const/4 v1, 0x0

    .line 522
    .local v1, "size":I
    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_20

    .line 523
    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/IntArrayList;

    .line 524
    .local v2, "primitiveList":Lcom/android/framework/protobuf/IntArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_1f

    .line 525
    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 527
    .end local v2    # "primitiveList":Lcom/android/framework/protobuf/IntArrayList;
    .end local v3    # "i":I
    :cond_1f
    goto :goto_35

    .line 528
    :cond_20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_35

    .line 529
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 532
    .end local v2    # "i":I
    :cond_35
    :goto_35
    return v1
.end method

.method static blacklist computeSizeUInt64List(ILjava/util/List;Z)I
    .registers 7
    .param p0, "fieldNumber"    # I
    .param p2, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 392
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 393
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 394
    const/4 v1, 0x0

    return v1

    .line 396
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v1

    .line 398
    .local v1, "size":I
    if-eqz p2, :cond_18

    .line 399
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 400
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 399
    return v2

    .line 402
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method static blacklist computeSizeUInt64ListNoTag(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 371
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 372
    .local v0, "length":I
    if-nez v0, :cond_8

    .line 373
    const/4 v1, 0x0

    return v1

    .line 376
    :cond_8
    const/4 v1, 0x0

    .line 378
    .local v1, "size":I
    instance-of v2, p0, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v2, :cond_20

    .line 379
    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/LongArrayList;

    .line 380
    .local v2, "primitiveList":Lcom/android/framework/protobuf/LongArrayList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_1f

    .line 381
    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 380
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 383
    .end local v2    # "primitiveList":Lcom/android/framework/protobuf/LongArrayList;
    .end local v3    # "i":I
    :cond_1f
    goto :goto_35

    .line 384
    :cond_20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_35

    .line 385
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 388
    .end local v2    # "i":I
    :cond_35
    :goto_35
    return v1
.end method

.method static blacklist filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 11
    .param p0, "containerMessage"    # Ljava/lang/Object;
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 916
    .local p2, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "enumMap":Lcom/android/framework/protobuf/Internal$EnumLiteMap;, "Lcom/android/framework/protobuf/Internal$EnumLiteMap<*>;"
    .local p4, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p5, "unknownFieldSchema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    if-nez p3, :cond_3

    .line 917
    return-object p4

    .line 920
    :cond_3
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_3d

    .line 921
    const/4 v0, 0x0

    .line 922
    .local v0, "writePos":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 923
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "readPos":I
    :goto_d
    if-ge v2, v1, :cond_33

    .line 924
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 925
    .local v3, "enumValue":I
    invoke-interface {p3, v3}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 926
    if-eq v2, v0, :cond_28

    .line 927
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 929
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 931
    :cond_2b
    nop

    .line 932
    invoke-static {p0, p1, v3, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    .line 923
    .end local v3    # "enumValue":I
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 936
    .end local v2    # "readPos":I
    :cond_33
    if-eq v0, v1, :cond_3c

    .line 937
    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 939
    .end local v0    # "writePos":I
    .end local v1    # "size":I
    :cond_3c
    goto :goto_60

    .line 940
    :cond_3d
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 941
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 942
    .local v1, "enumValue":I
    invoke-interface {p3, v1}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v2

    if-nez v2, :cond_5f

    .line 943
    nop

    .line 944
    invoke-static {p0, p1, v1, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    .line 946
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 948
    .end local v1    # "enumValue":I
    :cond_5f
    goto :goto_41

    .line 950
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_60
    :goto_60
    return-object p4
.end method

.method static blacklist filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 11
    .param p0, "containerMessage"    # Ljava/lang/Object;
    .param p1, "number"    # I
    .param p3, "enumVerifier"    # Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 962
    .local p2, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p5, "unknownFieldSchema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    if-nez p3, :cond_3

    .line 963
    return-object p4

    .line 966
    :cond_3
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_3d

    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "writePos":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 969
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "readPos":I
    :goto_d
    if-ge v2, v1, :cond_33

    .line 970
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 971
    .local v3, "enumValue":I
    invoke-interface {p3, v3}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 972
    if-eq v2, v0, :cond_28

    .line 973
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 975
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 977
    :cond_2b
    nop

    .line 978
    invoke-static {p0, p1, v3, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    .line 969
    .end local v3    # "enumValue":I
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 982
    .end local v2    # "readPos":I
    :cond_33
    if-eq v0, v1, :cond_3c

    .line 983
    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 985
    .end local v0    # "writePos":I
    .end local v1    # "size":I
    :cond_3c
    goto :goto_60

    .line 986
    :cond_3d
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 987
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 988
    .local v1, "enumValue":I
    invoke-interface {p3, v1}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 989
    nop

    .line 990
    invoke-static {p0, p1, v1, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    .line 992
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 994
    .end local v1    # "enumValue":I
    :cond_5f
    goto :goto_41

    .line 996
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_60
    :goto_60
    return-object p4
.end method

.method private static blacklist getGeneratedMessageClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 816
    :try_start_0
    const-string v0, "com.android.framework.protobuf.GeneratedMessageV3"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 817
    :catchall_7
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 832
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/SchemaUtil;->toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DefaultEntryHolder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 834
    .local v0, "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 835
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v2

    if-ne v3, v1, :cond_39

    .line 842
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 836
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to look up map field default entry holder class for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 840
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "name":Ljava/lang/String;
    throw v1
    :try_end_60
    .catchall {:try_start_0 .. :try_end_60} :catchall_60

    .line 843
    .end local v0    # "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_60
    move-exception v0

    .line 844
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist getUnknownFieldSetSchema(Z)Lcom/android/framework/protobuf/UnknownFieldSchema;
    .registers 6
    .param p0, "proto3"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 802
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->getUnknownFieldSetSchemaClass()Ljava/lang/Class;

    move-result-object v1

    .line 803
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_8

    .line 804
    return-object v0

    .line 806
    :cond_8
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/UnknownFieldSchema;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    return-object v2

    .line 807
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_23
    move-exception v1

    .line 808
    .local v1, "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static blacklist getUnknownFieldSetSchemaClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 824
    :try_start_0
    const-string v0, "com.android.framework.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 825
    :catchall_7
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist mergeExtensions(Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TFT;>;>(",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 892
    .local p0, "schema":Lcom/android/framework/protobuf/ExtensionSchema;, "Lcom/android/framework/protobuf/ExtensionSchema<TFT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    .line 893
    .local v0, "otherExtensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TFT;>;"
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 894
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v1

    .line 895
    .local v1, "messageExtensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TFT;>;"
    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/FieldSet;->mergeFrom(Lcom/android/framework/protobuf/FieldSet;)V

    .line 897
    .end local v1    # "messageExtensions":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TFT;>;"
    :cond_11
    return-void
.end method

.method static blacklist mergeMap(Lcom/android/framework/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 7
    .param p0, "mapFieldSchema"    # Lcom/android/framework/protobuf/MapFieldSchema;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 884
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "o":Ljava/lang/Object;, "TT;"
    nop

    .line 886
    invoke-static {p1, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 885
    invoke-interface {p0, v0, v1}, Lcom/android/framework/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 887
    .local v0, "merged":Ljava/lang/Object;
    invoke-static {p1, p3, p4, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 888
    return-void
.end method

.method static blacklist mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 901
    .local p0, "schema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 902
    .local v0, "messageUnknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 903
    .local v1, "otherUnknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 904
    .local v2, "merged":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, p1, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 905
    return-void
.end method

.method public static blacklist proto2UnknownFieldSetSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 789
    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->PROTO2_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static blacklist proto3UnknownFieldSetSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 793
    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->PROTO3_UNKNOWN_FIELD_SET_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static blacklist requireGeneratedMessage(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 65
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 68
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1d
    :goto_1d
    return-void
.end method

.method static blacklist safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 880
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static blacklist shouldUseTableSwitch(III)Z
    .registers 19
    .param p0, "lo"    # I
    .param p1, "hi"    # I
    .param p2, "numFields"    # I

    .line 778
    move/from16 v0, p1

    move/from16 v1, p2

    const/16 v2, 0x28

    const/4 v3, 0x1

    if-ge v0, v2, :cond_a

    .line 779
    return v3

    .line 781
    :cond_a
    int-to-long v4, v0

    move/from16 v2, p0

    int-to-long v6, v2

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 782
    .local v4, "tableSpaceCost":J
    const-wide/16 v6, 0x3

    .line 783
    .local v6, "tableTimeCost":J
    const-wide/16 v8, 0x2

    int-to-long v10, v1

    mul-long/2addr v10, v8

    const-wide/16 v8, 0x3

    add-long/2addr v10, v8

    .line 784
    .local v10, "lookupSpaceCost":J
    int-to-long v12, v1

    add-long/2addr v12, v8

    .line 785
    .local v12, "lookupTimeCost":J
    mul-long v14, v6, v8

    add-long/2addr v14, v4

    mul-long/2addr v8, v12

    add-long/2addr v8, v10

    cmp-long v8, v14, v8

    if-gtz v8, :cond_27

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    return v3
.end method

.method public static blacklist shouldUseTableSwitch([Lcom/android/framework/protobuf/FieldInfo;)Z
    .registers 4
    .param p0, "fields"    # [Lcom/android/framework/protobuf/FieldInfo;

    .line 757
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 758
    return v1

    .line 761
    :cond_5
    aget-object v0, p0, v1

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v0

    .line 762
    .local v0, "lo":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    .line 763
    .local v1, "hi":I
    array-length v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/SchemaUtil;->shouldUseTableSwitch(III)Z

    move-result v2

    return v2
.end method

.method static blacklist storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 7
    .param p0, "containerMessage"    # Ljava/lang/Object;
    .param p1, "number"    # I
    .param p2, "enumValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "IITUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1007
    .local p3, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p4, "unknownFieldSchema":Lcom/android/framework/protobuf/UnknownFieldSchema;, "Lcom/android/framework/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    if-nez p3, :cond_6

    .line 1008
    invoke-virtual {p4, p0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 1010
    :cond_6
    int-to-long v0, p2

    invoke-virtual {p4, p3, p1, v0, v1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    .line 1011
    return-object p3
.end method

.method static blacklist toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "capNext"    # Z

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 851
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 853
    .local v2, "c":C
    const/16 v3, 0x61

    if-gt v3, v2, :cond_26

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_26

    .line 854
    if-eqz p1, :cond_21

    .line 855
    add-int/lit8 v3, v2, -0x20

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 857
    :cond_21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    :goto_24
    const/4 p1, 0x0

    goto :goto_4c

    .line 860
    :cond_26
    const/16 v3, 0x41

    if-gt v3, v2, :cond_3e

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_3e

    .line 861
    if-nez v1, :cond_39

    if-nez p1, :cond_39

    .line 863
    add-int/lit8 v3, v2, 0x20

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 865
    :cond_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 867
    :goto_3c
    const/4 p1, 0x0

    goto :goto_4c

    .line 868
    :cond_3e
    const/16 v3, 0x30

    if-gt v3, v2, :cond_4b

    const/16 v3, 0x39

    if-gt v2, v3, :cond_4b

    .line 869
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 870
    const/4 p1, 0x1

    goto :goto_4c

    .line 872
    :cond_4b
    const/4 p1, 0x1

    .line 850
    .end local v2    # "c":C
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 875
    .end local v1    # "i":I
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist unknownFieldSetLiteSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 797
    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static blacklist writeBool(IZLcom/android/framework/protobuf/Writer;)V
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Z
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    if-eqz p1, :cond_6

    .line 153
    const/4 v0, 0x1

    invoke-interface {p2, p0, v0}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    .line 155
    :cond_6
    return-void
.end method

.method public static blacklist writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 279
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeBoolList(ILjava/util/List;Z)V

    .line 281
    :cond_b
    return-void
.end method

.method public static blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 175
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 177
    :cond_b
    return-void
.end method

.method public static blacklist writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/ByteString;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 293
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    .line 295
    :cond_b
    return-void
.end method

.method public static blacklist writeDouble(IDLcom/android/framework/protobuf/Writer;)V
    .registers 8
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # D
    .param p3, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 75
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    .line 77
    :cond_d
    return-void
.end method

.method public static blacklist writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 188
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeDoubleList(ILjava/util/List;Z)V

    .line 190
    :cond_b
    return-void
.end method

.method public static blacklist writeEnum(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    if-eqz p1, :cond_5

    .line 147
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    .line 149
    :cond_5
    return-void
.end method

.method public static blacklist writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 272
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeEnumList(ILjava/util/List;Z)V

    .line 274
    :cond_b
    return-void
.end method

.method public static blacklist writeFixed32(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    if-eqz p1, :cond_5

    .line 135
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    .line 137
    :cond_5
    return-void
.end method

.method public static blacklist writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 258
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    .line 260
    :cond_b
    return-void
.end method

.method public static blacklist writeFixed64(IJLcom/android/framework/protobuf/Writer;)V
    .registers 6
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    .line 105
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    .line 107
    :cond_9
    return-void
.end method

.method public static blacklist writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 223
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    .line 225
    :cond_b
    return-void
.end method

.method public static blacklist writeFloat(IFLcom/android/framework/protobuf/Writer;)V
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # F
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    .line 83
    :cond_9
    return-void
.end method

.method public static blacklist writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 195
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeFloatList(ILjava/util/List;Z)V

    .line 197
    :cond_b
    return-void
.end method

.method public static blacklist writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 323
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeGroupList(ILjava/util/List;)V

    .line 325
    :cond_b
    return-void
.end method

.method public static blacklist writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "schema"    # Lcom/android/framework/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 330
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V

    .line 332
    :cond_b
    return-void
.end method

.method public static blacklist writeInt32(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    if-eqz p1, :cond_5

    .line 117
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    .line 119
    :cond_5
    return-void
.end method

.method public static blacklist writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 237
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeInt32List(ILjava/util/List;Z)V

    .line 239
    :cond_b
    return-void
.end method

.method public static blacklist writeInt64(IJLcom/android/framework/protobuf/Writer;)V
    .registers 6
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    .line 87
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    .line 89
    :cond_9
    return-void
.end method

.method public static blacklist writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 202
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    .line 204
    :cond_b
    return-void
.end method

.method public static blacklist writeLazyFieldList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .registers 6
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 315
    .local v1, "item":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-virtual {v2, p2, p0}, Lcom/android/framework/protobuf/LazyFieldLite;->writeTo(Lcom/android/framework/protobuf/Writer;I)V

    .line 316
    .end local v1    # "item":Ljava/lang/Object;
    goto :goto_c

    .line 318
    :cond_1d
    return-void
.end method

.method public static blacklist writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    if-eqz p1, :cond_5

    .line 181
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    .line 183
    :cond_5
    return-void
.end method

.method public static blacklist writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 300
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeMessageList(ILjava/util/List;)V

    .line 302
    :cond_b
    return-void
.end method

.method public static blacklist writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "schema"    # Lcom/android/framework/protobuf/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 307
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V

    .line 309
    :cond_b
    return-void
.end method

.method public static blacklist writeSFixed32(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    if-eqz p1, :cond_5

    .line 141
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    .line 143
    :cond_5
    return-void
.end method

.method public static blacklist writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 265
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSFixed32List(ILjava/util/List;Z)V

    .line 267
    :cond_b
    return-void
.end method

.method public static blacklist writeSFixed64(IJLcom/android/framework/protobuf/Writer;)V
    .registers 6
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    .line 111
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    .line 113
    :cond_9
    return-void
.end method

.method public static blacklist writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 230
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSFixed64List(ILjava/util/List;Z)V

    .line 232
    :cond_b
    return-void
.end method

.method public static blacklist writeSInt32(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    if-eqz p1, :cond_5

    .line 129
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    .line 131
    :cond_5
    return-void
.end method

.method public static blacklist writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 251
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSInt32List(ILjava/util/List;Z)V

    .line 253
    :cond_b
    return-void
.end method

.method public static blacklist writeSInt64(IJLcom/android/framework/protobuf/Writer;)V
    .registers 6
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    .line 99
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    .line 101
    :cond_9
    return-void
.end method

.method public static blacklist writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 216
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSInt64List(ILjava/util/List;Z)V

    .line 218
    :cond_b
    return-void
.end method

.method public static blacklist writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 159
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringInternal(ILjava/lang/String;Lcom/android/framework/protobuf/Writer;)V

    goto :goto_11

    .line 161
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytes(ILcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/Writer;)V

    .line 163
    :goto_11
    return-void
.end method

.method private static blacklist writeStringInternal(ILjava/lang/String;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 168
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 170
    :cond_b
    return-void
.end method

.method public static blacklist writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 286
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeStringList(ILjava/util/List;)V

    .line 288
    :cond_b
    return-void
.end method

.method public static blacklist writeUInt32(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    if-eqz p1, :cond_5

    .line 123
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    .line 125
    :cond_5
    return-void
.end method

.method public static blacklist writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 244
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeUInt32List(ILjava/util/List;Z)V

    .line 246
    :cond_b
    return-void
.end method

.method public static blacklist writeUInt64(IJLcom/android/framework/protobuf/Writer;)V
    .registers 6
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    .line 93
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    .line 95
    :cond_9
    return-void
.end method

.method public static blacklist writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 209
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeUInt64List(ILjava/util/List;Z)V

    .line 211
    :cond_b
    return-void
.end method
