.class public abstract Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.source "GeneratedMessageLite.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected blacklist extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 608
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 615
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->emptySet()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    return-void
.end method

.method private blacklist eagerlyMergeMessageSetExtension(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;I)V
    .registers 11
    .param p1, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .param p4, "typeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/CodedInputStream;",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p2, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    move v5, p4

    .line 871
    .local v5, "fieldNumber":I
    const/4 v0, 0x2

    invoke-static {p4, v0}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->makeTag(II)I

    move-result v4

    .line 873
    .local v4, "tag":I
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    .end local p1    # "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .end local p2    # "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    .end local p3    # "extensionRegistry":Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .local v1, "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .local v2, "extensionRegistry":Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .local v3, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z

    move-result p1

    .line 874
    .local p1, "unused":Z
    return-void
.end method

.method private blacklist mergeMessageSetExtensionFromBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .registers 10
    .param p1, "rawBytes"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p3, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    const/4 v0, 0x0

    .line 882
    .local v0, "subBuilder":Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v2, p3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 883
    .local v1, "existingValue":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    if-eqz v1, :cond_11

    .line 884
    invoke-interface {v1}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->toBuilder()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 886
    :cond_11
    if-nez v0, :cond_1b

    .line 887
    invoke-virtual {p3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->newBuilderForType()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 889
    :cond_1b
    invoke-interface {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    .line 890
    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->build()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v2

    .line 892
    .local v2, "value":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v3

    iget-object v4, p3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 893
    invoke-virtual {p3, v2}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->setField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 894
    return-void
.end method

.method private blacklist mergeMessageSetExtensionFromCodedStream(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .param p2, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Landroid/net/connectivity/com/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Landroid/net/connectivity/com/google/protobuf/CodedInputStream;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Landroid/net/connectivity/com/google/protobuf/MessageLite;, "TMessageType;"
    const/4 v0, 0x0

    .line 814
    .local v0, "typeId":I
    const/4 v1, 0x0

    .line 815
    .local v1, "rawBytes":Landroid/net/connectivity/com/google/protobuf/ByteString;
    const/4 v2, 0x0

    .line 820
    .local v2, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    :goto_3
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 821
    .local v3, "tag":I
    if-nez v3, :cond_a

    .line 822
    goto :goto_32

    .line 825
    :cond_a
    sget v4, Landroid/net/connectivity/com/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v3, v4, :cond_19

    .line 826
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 827
    if-eqz v0, :cond_47

    .line 828
    invoke-virtual {p3, p1, v0}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Landroid/net/connectivity/com/google/protobuf/MessageLite;I)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v2

    goto :goto_47

    .line 831
    :cond_19
    sget v4, Landroid/net/connectivity/com/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v3, v4, :cond_2b

    .line 832
    if-eqz v0, :cond_26

    .line 833
    if-eqz v2, :cond_26

    .line 836
    invoke-direct {p0, p2, v2, p3, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->eagerlyMergeMessageSetExtension(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;I)V

    .line 837
    const/4 v1, 0x0

    .line 838
    goto :goto_3

    .line 842
    :cond_26
    invoke-virtual {p2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_47

    .line 845
    :cond_2b
    invoke-virtual {p2, v3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_47

    .line 846
    nop

    .line 850
    .end local v3    # "tag":I
    :goto_32
    sget v3, Landroid/net/connectivity/com/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p2, v3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 853
    if-eqz v1, :cond_46

    if-eqz v0, :cond_46

    .line 854
    if-eqz v2, :cond_41

    .line 855
    invoke-direct {p0, v1, p3, v2}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    goto :goto_46

    .line 857
    :cond_41
    if-eqz v1, :cond_46

    .line 858
    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeLengthDelimitedField(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 862
    :cond_46
    :goto_46
    return-void

    .line 849
    :cond_47
    :goto_47
    goto :goto_3
.end method

.method private blacklist parseExtension(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z
    .registers 23
    .param p1, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .param p5, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/CodedInputStream;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p3, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p4 .. p4}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v4

    .line 656
    .local v4, "wireType":I
    const/4 v5, 0x0

    .line 657
    .local v5, "unknown":Z
    const/4 v6, 0x0

    .line 658
    .local v6, "packed":Z
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_14

    .line 659
    const/4 v5, 0x1

    goto :goto_41

    .line 660
    :cond_14
    iget-object v9, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 662
    invoke-virtual {v9}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object v9

    .line 661
    invoke-static {v9, v7}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getWireFormatForFieldType(Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Z)I

    move-result v9

    if-ne v4, v9, :cond_22

    .line 663
    const/4 v6, 0x0

    goto :goto_41

    .line 664
    :cond_22
    iget-object v9, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v9, v9, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v9, :cond_40

    iget-object v9, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v9, v9, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    .line 665
    invoke-virtual {v9}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v9

    if-eqz v9, :cond_40

    iget-object v9, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 668
    invoke-virtual {v9}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object v9

    .line 667
    invoke-static {v9, v8}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getWireFormatForFieldType(Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Z)I

    move-result v9

    if-ne v4, v9, :cond_40

    .line 669
    const/4 v6, 0x1

    goto :goto_41

    .line 671
    :cond_40
    const/4 v5, 0x1

    .line 674
    :goto_41
    if-eqz v5, :cond_4a

    .line 675
    move/from16 v9, p4

    invoke-virtual {v0, v9, v1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(ILandroid/net/connectivity/com/google/protobuf/CodedInputStream;)Z

    move-result v7

    return v7

    .line 679
    :cond_4a
    move/from16 v9, p4

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v10

    .line 681
    .local v10, "unused":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    if-eqz v6, :cond_af

    .line 682
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v11

    .line 683
    .local v11, "length":I
    invoke-virtual {v1, v11}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v12

    .line 684
    .local v12, "limit":I
    iget-object v13, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object v13

    sget-object v14, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->ENUM:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    if-ne v13, v14, :cond_8e

    .line 685
    :goto_64
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_8b

    .line 686
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readEnum()I

    move-result v7

    .line 687
    .local v7, "rawValue":I
    iget-object v13, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;

    move-result-object v13

    invoke-interface {v13, v7}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    move-result-object v13

    .line 688
    .local v13, "value":Ljava/lang/Object;
    if-nez v13, :cond_7b

    .line 691
    return v8

    .line 693
    :cond_7b
    iget-object v14, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v15, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 694
    move/from16 v16, v8

    invoke-virtual {v3, v13}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 693
    invoke-virtual {v14, v15, v8}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->addRepeatedField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 695
    .end local v7    # "rawValue":I
    .end local v13    # "value":Ljava/lang/Object;
    move/from16 v8, v16

    goto :goto_64

    .line 685
    :cond_8b
    move/from16 v16, v8

    goto :goto_a8

    .line 684
    :cond_8e
    move/from16 v16, v8

    .line 697
    :goto_90
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_a8

    .line 698
    iget-object v8, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 700
    invoke-virtual {v8}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object v8

    .line 699
    invoke-static {v1, v8, v7}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->readPrimitiveField(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v8

    .line 701
    .local v8, "value":Ljava/lang/Object;
    iget-object v13, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v14, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v13, v14, v8}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->addRepeatedField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 702
    .end local v8    # "value":Ljava/lang/Object;
    goto :goto_90

    .line 704
    :cond_a8
    :goto_a8
    invoke-virtual {v1, v12}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 705
    .end local v11    # "length":I
    .end local v12    # "limit":I
    move/from16 v11, p5

    goto/16 :goto_146

    .line 707
    :cond_af
    move/from16 v16, v8

    sget-object v8, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    iget-object v11, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v11}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v11

    aget v8, v8, v11

    packed-switch v8, :pswitch_data_148

    .line 739
    move/from16 v11, p5

    iget-object v8, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 741
    invoke-virtual {v8}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object v8

    .line 740
    invoke-static {v1, v8, v7}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->readPrimitiveField(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "value":Ljava/lang/Object;
    goto :goto_127

    .line 729
    .end local v8    # "value":Ljava/lang/Object;
    :pswitch_cf
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readEnum()I

    move-result v7

    .line 730
    .restart local v7    # "rawValue":I
    iget-object v8, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v8}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    move-result-object v8

    .line 733
    .restart local v8    # "value":Ljava/lang/Object;
    if-nez v8, :cond_e5

    .line 734
    move/from16 v11, p5

    invoke-virtual {v0, v11, v7}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeVarintField(II)V

    .line 735
    return v16

    .line 733
    :cond_e5
    move/from16 v11, p5

    goto :goto_127

    .line 710
    .end local v7    # "rawValue":I
    .end local v8    # "value":Ljava/lang/Object;
    :pswitch_e8
    move/from16 v11, p5

    const/4 v7, 0x0

    .line 711
    .local v7, "subBuilder":Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    iget-object v8, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v8}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v8

    if-nez v8, :cond_103

    .line 712
    iget-object v8, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v12, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v8, v12}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 713
    .local v8, "existingValue":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    if-eqz v8, :cond_103

    .line 714
    invoke-interface {v8}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->toBuilder()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v7

    .line 717
    .end local v8    # "existingValue":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    :cond_103
    if-nez v7, :cond_10d

    .line 718
    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v8}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->newBuilderForType()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v7

    .line 720
    :cond_10d
    iget-object v8, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v8}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object v8

    sget-object v12, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->GROUP:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    if-ne v8, v12, :cond_11f

    .line 721
    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v8

    invoke-virtual {v1, v8, v7, v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readGroup(ILandroid/net/connectivity/com/google/protobuf/MessageLite$Builder;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_122

    .line 723
    :cond_11f
    invoke-virtual {v1, v7, v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readMessage(Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 725
    :goto_122
    invoke-interface {v7}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->build()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v8

    .line 726
    .local v8, "value":Ljava/lang/Object;
    nop

    .line 745
    .end local v7    # "subBuilder":Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    :goto_127
    iget-object v7, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v7}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v7

    if-eqz v7, :cond_13b

    .line 746
    iget-object v7, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v12, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 747
    invoke-virtual {v3, v8}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 746
    invoke-virtual {v7, v12, v13}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->addRepeatedField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_146

    .line 749
    :cond_13b
    iget-object v7, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v12, v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v3, v8}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->setField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 752
    .end local v8    # "value":Ljava/lang/Object;
    :goto_146
    return v16

    nop

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_cf
    .end packed-switch
.end method

.method private blacklist verifyExtensionContainingType(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 905
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 911
    return-void

    .line 907
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist ensureExtensionsAreMutable()Landroid/net/connectivity/com/google/protobuf/FieldSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 898
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 899
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->clone()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    .line 901
    :cond_10
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    return-object v0
.end method

.method protected blacklist extensionsAreInitialized()Z
    .registers 2

    .line 962
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected blacklist extensionsSerializedSize()I
    .registers 2

    .line 1014
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected blacklist extensionsSerializedSizeAsMessageSet()I
    .registers 2

    .line 1018
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public final blacklist getExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 936
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;TType;>;"
    # invokes: Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->checkIsLite(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->access$000(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 938
    .local v0, "extensionLite":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 939
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 940
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_14

    .line 941
    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    return-object v2

    .line 943
    :cond_14
    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final blacklist getExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .registers 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 952
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    # invokes: Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->checkIsLite(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->access$000(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 954
    .local v0, "extensionLite":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 955
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 957
    invoke-virtual {v1, v2, p2}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getRepeatedField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v1

    .line 956
    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 955
    return-object v1
.end method

.method public final blacklist getExtensionCount(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 926
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    # invokes: Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->checkIsLite(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->access$000(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 928
    .local v0, "extensionLite":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 929
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getRepeatedFieldCount(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v1

    return v1
.end method

.method public final blacklist hasExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 916
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;TType;>;"
    # invokes: Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->checkIsLite(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->access$000(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 918
    .local v0, "extensionLite":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 919
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->hasField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v1

    return v1
.end method

.method protected final blacklist mergeExtensionFields(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 619
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "other":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "TMessageType;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 620
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->clone()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    .line 622
    :cond_10
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    iget-object v1, p1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/FieldSet;)V

    .line 623
    return-void
.end method

.method protected blacklist newExtensionWriter()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 1005
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;ZLandroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected blacklist newMessageSetExtensionWriter()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>.ExtensionWriter;"
        }
    .end annotation

    .line 1009
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;ZLandroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected blacklist parseUnknownField(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;I)Z
    .registers 11
    .param p2, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Landroid/net/connectivity/com/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Landroid/net/connectivity/com/google/protobuf/CodedInputStream;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Landroid/net/connectivity/com/google/protobuf/MessageLite;, "TMessageType;"
    invoke-static {p4}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v5

    .line 642
    .local v5, "fieldNumber":I
    nop

    .line 643
    invoke-virtual {p3, p1, v5}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Landroid/net/connectivity/com/google/protobuf/MessageLite;I)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v3

    .line 645
    .local v3, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    .end local p2    # "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .end local p3    # "extensionRegistry":Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .end local p4    # "tag":I
    .local v1, "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .local v2, "extensionRegistry":Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .local v4, "tag":I
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;II)Z

    move-result p2

    return p2
.end method

.method protected blacklist parseUnknownFieldAsMessageSet(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;I)Z
    .registers 7
    .param p2, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p3, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Landroid/net/connectivity/com/google/protobuf/MessageLite;",
            ">(TMessageType;",
            "Landroid/net/connectivity/com/google/protobuf/CodedInputStream;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Landroid/net/connectivity/com/google/protobuf/MessageLite;, "TMessageType;"
    sget v0, Landroid/net/connectivity/com/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    if-ne p4, v0, :cond_9

    .line 770
    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromCodedStream(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 771
    const/4 v0, 0x1

    return v0

    .line 776
    :cond_9
    invoke-static {p4}, Landroid/net/connectivity/com/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    .line 777
    .local v0, "wireType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 778
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    return v1

    .line 781
    :cond_15
    invoke-virtual {p2, p4}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    return v1
.end method
