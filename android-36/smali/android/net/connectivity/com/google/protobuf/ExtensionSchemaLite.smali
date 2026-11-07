.class final Landroid/net/connectivity/com/google/protobuf/ExtensionSchemaLite;
.super Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;
.source "ExtensionSchemaLite.java"


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist extensionNumber(Ljava/util/Map$Entry;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 330
    .local p1, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    nop

    .line 331
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 332
    .local v0, "descriptor":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    return v1
.end method

.method blacklist findExtensionByNumber(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/MessageLite;I)Ljava/lang/Object;
    .registers 5
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .param p2, "defaultInstance"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .param p3, "number"    # I

    .line 541
    invoke-virtual {p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Landroid/net/connectivity/com/google/protobuf/MessageLite;I)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method blacklist getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 50
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    return-object v0
.end method

.method blacklist getMutableExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 60
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method blacklist hasExtensions(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Z
    .registers 3
    .param p1, "prototype"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 45
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    return v0
.end method

.method blacklist makeImmutable(Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchemaLite;->getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->makeImmutable()V

    .line 66
    return-void
.end method

.method blacklist parseExtension(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Reader;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/FieldSet;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 16
    .param p1, "containerMessage"    # Ljava/lang/Object;
    .param p2, "reader"    # Landroid/net/connectivity/com/google/protobuf/Reader;
    .param p3, "extensionObject"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;TUB;",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    .local p5, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p7, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    move-object v0, p3

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 80
    .local v0, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v2

    .line 82
    .local v2, "fieldNumber":I
    iget-object v1, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_125

    iget-object v1, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v1

    if-eqz v1, :cond_125

    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, "value":Ljava/lang/Object;
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_298

    .line 192
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local v1, "containerMessage":Ljava/lang/Object;
    .local v5, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v6, "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Type cannot be packed: "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    iget-object p7, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 193
    invoke-virtual {p7}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p1, p6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local p1    # "containerMessage":Ljava/lang/Object;
    .restart local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, v3}, Landroid/net/connectivity/com/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 180
    iget-object v1, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 185
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;

    move-result-object v4

    .line 181
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    invoke-static/range {v1 .. v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p6

    .line 188
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    move-object p1, v3

    .line 189
    .end local v7    # "value":Ljava/lang/Object;
    .local p1, "value":Ljava/lang/Object;
    goto/16 :goto_11e

    .line 171
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_61
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 173
    move-object p6, p1

    .line 174
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_11e

    .line 164
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_70
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 166
    move-object p6, p1

    .line 167
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_11e

    .line 157
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_7f
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 159
    move-object p6, p1

    .line 160
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_11e

    .line 150
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_8e
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 152
    move-object p6, p1

    .line 153
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_11e

    .line 143
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_9d
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 145
    move-object p6, p1

    .line 146
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_11e

    .line 136
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_ac
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 138
    move-object p6, p1

    .line 139
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_11e

    .line 129
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_bb
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 131
    move-object p6, p1

    .line 132
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_11e

    .line 122
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_ca
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 124
    move-object p6, p1

    .line 125
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_11e

    .line 115
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_d9
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 117
    move-object p6, p1

    .line 118
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto :goto_11e

    .line 108
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_e7
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 110
    move-object p6, p1

    .line 111
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto :goto_11e

    .line 101
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_f5
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 103
    move-object p6, p1

    .line 104
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto :goto_11e

    .line 94
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_103
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 96
    move-object p6, p1

    .line 97
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto :goto_11e

    .line 87
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_111
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p2, p1}, Landroid/net/connectivity/com/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 89
    move-object p6, p1

    .line 90
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    .line 195
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p1, "value":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    :goto_11e
    iget-object p7, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p7, p1}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->setField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 196
    .end local p1    # "value":Ljava/lang/Object;
    goto/16 :goto_297

    .line 82
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p1, "containerMessage":Ljava/lang/Object;
    .restart local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :cond_125
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .line 197
    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;, "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    const/4 p1, 0x0

    .line 199
    .local p1, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object p6

    sget-object p7, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->ENUM:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    if-ne p6, p7, :cond_14c

    .line 200
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt32()I

    move-result p6

    .line 201
    .local p6, "number":I
    iget-object p7, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p7}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;

    move-result-object p7

    invoke-interface {p7, p6}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    move-result-object p7

    .line 202
    .local p7, "enumValue":Ljava/lang/Object;
    if-nez p7, :cond_146

    .line 203
    invoke-static {v1, v2, p6, v5, v6}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 208
    :cond_146
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 209
    .end local p6    # "number":I
    .end local p7    # "enumValue":Ljava/lang/Object;
    goto/16 :goto_269

    .line 210
    :cond_14c
    sget-object p6, Landroid/net/connectivity/com/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object p7

    invoke-virtual {p7}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p7

    aget p6, p6, p7

    packed-switch p6, :pswitch_data_2b8

    goto/16 :goto_269

    .line 284
    :pswitch_15d
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p6

    if-nez p6, :cond_18f

    .line 285
    iget-object p6, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p6}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p6

    .line 286
    .local p6, "oldValue":Ljava/lang/Object;
    instance-of p7, p6, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    if-eqz p7, :cond_18f

    .line 287
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object p7

    invoke-virtual {p7, p6}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object p7

    .line 288
    .local p7, "extSchema":Landroid/net/connectivity/com/google/protobuf/Schema;
    move-object v3, p6

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v3

    if-nez v3, :cond_18b

    .line 289
    invoke-interface {p7}, Landroid/net/connectivity/com/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 290
    .local v3, "newValue":Ljava/lang/Object;
    invoke-interface {p7, v3, p6}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    iget-object v4, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, v4, v3}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->setField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 292
    move-object p6, v3

    .line 294
    .end local v3    # "newValue":Ljava/lang/Object;
    :cond_18b
    invoke-interface {p2, p6, p7, p4}, Landroid/net/connectivity/com/google/protobuf/Reader;->mergeMessageField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 295
    return-object v5

    .line 298
    .end local p6    # "oldValue":Ljava/lang/Object;
    .end local p7    # "extSchema":Landroid/net/connectivity/com/google/protobuf/Schema;
    :cond_18f
    nop

    .line 300
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 299
    invoke-interface {p2, p6, p4}, Landroid/net/connectivity/com/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    .line 301
    goto/16 :goto_269

    .line 261
    :pswitch_19e
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p6

    if-nez p6, :cond_1d0

    .line 262
    iget-object p6, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p6}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p6

    .line 263
    .restart local p6    # "oldValue":Ljava/lang/Object;
    instance-of p7, p6, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    if-eqz p7, :cond_1d0

    .line 264
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object p7

    invoke-virtual {p7, p6}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object p7

    .line 265
    .restart local p7    # "extSchema":Landroid/net/connectivity/com/google/protobuf/Schema;
    move-object v3, p6

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v3

    if-nez v3, :cond_1cc

    .line 266
    invoke-interface {p7}, Landroid/net/connectivity/com/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 267
    .restart local v3    # "newValue":Ljava/lang/Object;
    invoke-interface {p7, v3, p6}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    iget-object v4, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, v4, v3}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->setField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 269
    move-object p6, v3

    .line 271
    .end local v3    # "newValue":Ljava/lang/Object;
    :cond_1cc
    invoke-interface {p2, p6, p7, p4}, Landroid/net/connectivity/com/google/protobuf/Reader;->mergeGroupField(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 272
    return-object v5

    .line 275
    .end local p6    # "oldValue":Ljava/lang/Object;
    .end local p7    # "extSchema":Landroid/net/connectivity/com/google/protobuf/Schema;
    :cond_1d0
    nop

    .line 277
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 276
    invoke-interface {p2, p6, p4}, Landroid/net/connectivity/com/google/protobuf/Reader;->readGroup(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    .line 278
    goto/16 :goto_269

    .line 255
    :pswitch_1df
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 256
    goto/16 :goto_269

    .line 236
    :pswitch_1e5
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object p1

    .line 237
    goto/16 :goto_269

    .line 304
    :pswitch_1eb
    new-instance p6, Ljava/lang/IllegalStateException;

    const-string p7, "Shouldn\'t reach here."

    invoke-direct {p6, p7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p6

    .line 251
    :pswitch_1f3
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt64()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 252
    goto/16 :goto_269

    .line 248
    :pswitch_1fd
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSInt32()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 249
    goto :goto_269

    .line 245
    :pswitch_206
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed64()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 246
    goto :goto_269

    .line 242
    :pswitch_20f
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readSFixed32()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 243
    goto :goto_269

    .line 239
    :pswitch_218
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt32()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 240
    goto :goto_269

    .line 233
    :pswitch_221
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readBool()Z

    move-result p6

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 234
    goto :goto_269

    .line 230
    :pswitch_22a
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed32()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 231
    goto :goto_269

    .line 227
    :pswitch_233
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFixed64()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 228
    goto :goto_269

    .line 224
    :pswitch_23c
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt32()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 225
    goto :goto_269

    .line 221
    :pswitch_245
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readUInt64()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 222
    goto :goto_269

    .line 218
    :pswitch_24e
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readInt64()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 219
    goto :goto_269

    .line 215
    :pswitch_257
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readFloat()F

    move-result p6

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 216
    goto :goto_269

    .line 212
    :pswitch_260
    invoke-interface {p2}, Landroid/net/connectivity/com/google/protobuf/Reader;->readDouble()D

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 213
    nop

    .line 307
    :goto_269
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p6

    if-eqz p6, :cond_275

    .line 308
    iget-object p6, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p6, p1}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->addRepeatedField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_296

    .line 310
    :cond_275
    sget-object p6, Landroid/net/connectivity/com/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object p7

    invoke-virtual {p7}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p7

    aget p6, p6, p7

    packed-switch p6, :pswitch_data_2e0

    goto :goto_291

    .line 314
    :pswitch_285
    iget-object p6, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p6}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->getField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p6

    .line 315
    .restart local p6    # "oldValue":Ljava/lang/Object;
    if-eqz p6, :cond_291

    .line 316
    invoke-static {p6, p1}, Landroid/net/connectivity/com/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 322
    .end local p6    # "oldValue":Ljava/lang/Object;
    :cond_291
    :goto_291
    iget-object p6, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p6, p1}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->setField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 325
    .end local p1    # "value":Ljava/lang/Object;
    :goto_296
    move-object p6, v5

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    :goto_297
    return-object p6

    :pswitch_data_298
    .packed-switch 0x1
        :pswitch_111
        :pswitch_103
        :pswitch_f5
        :pswitch_e7
        :pswitch_d9
        :pswitch_ca
        :pswitch_bb
        :pswitch_ac
        :pswitch_9d
        :pswitch_8e
        :pswitch_7f
        :pswitch_70
        :pswitch_61
        :pswitch_49
    .end packed-switch

    :pswitch_data_2b8
    .packed-switch 0x1
        :pswitch_260
        :pswitch_257
        :pswitch_24e
        :pswitch_245
        :pswitch_23c
        :pswitch_233
        :pswitch_22a
        :pswitch_221
        :pswitch_218
        :pswitch_20f
        :pswitch_206
        :pswitch_1fd
        :pswitch_1f3
        :pswitch_1eb
        :pswitch_1e5
        :pswitch_1df
        :pswitch_19e
        :pswitch_15d
    .end packed-switch

    :pswitch_data_2e0
    .packed-switch 0x11
        :pswitch_285
        :pswitch_285
    .end packed-switch
.end method

.method blacklist parseLengthPrefixedMessageSetItem(Landroid/net/connectivity/com/google/protobuf/Reader;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/FieldSet;)V
    .registers 8
    .param p1, "reader"    # Landroid/net/connectivity/com/google/protobuf/Reader;
    .param p2, "extensionObject"    # Ljava/lang/Object;
    .param p3, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    .local p4, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 553
    .local v0, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    nop

    .line 554
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1, p3}, Landroid/net/connectivity/com/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    .line 555
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, v2, v1}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->setField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method blacklist parseMessageSetItem(Landroid/net/connectivity/com/google/protobuf/ByteString;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/FieldSet;)V
    .registers 10
    .param p1, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p2, "extensionObject"    # Ljava/lang/Object;
    .param p3, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    .local p4, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p2

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 568
    .local v0, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->newBuilderForType()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v1

    .line 570
    .local v1, "builder":Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->newCodedInput()Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    move-result-object v2

    .line 572
    .local v2, "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    invoke-interface {v1, v2, p3}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    .line 573
    iget-object v3, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-interface {v1}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->buildPartial()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->setField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 574
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 575
    return-void
.end method

.method blacklist serializeExtension(Landroid/net/connectivity/com/google/protobuf/Writer;Ljava/util/Map$Entry;)V
    .registers 9
    .param p1, "writer"    # Landroid/net/connectivity/com/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/Writer;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    .local p2, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    nop

    .line 338
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 339
    .local v0, "descriptor":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_1ae

    .line 340
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_31e

    goto/16 :goto_1ac

    .line 461
    :pswitch_1f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 462
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_1ac

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1ac

    .line 463
    nop

    .line 464
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v3

    .line 465
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 467
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v2

    .line 463
    invoke-static {v3, v4, p1, v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    goto/16 :goto_1ac

    .line 449
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_4d
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 450
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_79

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_79

    .line 451
    nop

    .line 452
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v3

    .line 453
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 455
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v2

    .line 451
    invoke-static {v3, v4, p1, v2}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 458
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_79
    goto/16 :goto_1ac

    .line 444
    :pswitch_7b
    nop

    .line 445
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 444
    invoke-static {v1, v2, p1}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 446
    goto/16 :goto_1ac

    .line 398
    :pswitch_8b
    nop

    .line 399
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 398
    invoke-static {v1, v2, p1}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;)V

    .line 400
    goto/16 :goto_1ac

    .line 437
    :pswitch_9b
    nop

    .line 438
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 439
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 441
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 437
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 442
    goto/16 :goto_1ac

    .line 430
    :pswitch_af
    nop

    .line 431
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 432
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 434
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 430
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 435
    goto/16 :goto_1ac

    .line 423
    :pswitch_c3
    nop

    .line 424
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 425
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 427
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 423
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 428
    goto/16 :goto_1ac

    .line 416
    :pswitch_d7
    nop

    .line 417
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 418
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 420
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 416
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 421
    goto/16 :goto_1ac

    .line 409
    :pswitch_eb
    nop

    .line 410
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 411
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 413
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 409
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 414
    goto/16 :goto_1ac

    .line 402
    :pswitch_ff
    nop

    .line 403
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 404
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 406
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 402
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 407
    goto/16 :goto_1ac

    .line 391
    :pswitch_113
    nop

    .line 392
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 393
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 395
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 391
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 396
    goto/16 :goto_1ac

    .line 384
    :pswitch_127
    nop

    .line 385
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 386
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 388
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 384
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 389
    goto :goto_1ac

    .line 377
    :pswitch_13a
    nop

    .line 378
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 379
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 381
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 377
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 382
    goto :goto_1ac

    .line 370
    :pswitch_14d
    nop

    .line 371
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 372
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 374
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 370
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 375
    goto :goto_1ac

    .line 363
    :pswitch_160
    nop

    .line 364
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 365
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 367
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 363
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 368
    goto :goto_1ac

    .line 356
    :pswitch_173
    nop

    .line 357
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 358
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 360
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 356
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 361
    goto :goto_1ac

    .line 349
    :pswitch_186
    nop

    .line 350
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 351
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 353
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 349
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 354
    goto :goto_1ac

    .line 342
    :pswitch_199
    nop

    .line 343
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 344
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 346
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 342
    invoke-static {v1, v2, p1, v3}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroid/net/connectivity/com/google/protobuf/Writer;Z)V

    .line 347
    nop

    .line 470
    :cond_1ac
    :goto_1ac
    goto/16 :goto_31c

    .line 473
    :cond_1ae
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_346

    goto/16 :goto_31c

    .line 529
    :pswitch_1bf
    nop

    .line 530
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 531
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 532
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v3

    .line 529
    invoke-interface {p1, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    goto/16 :goto_31c

    .line 523
    :pswitch_1dd
    nop

    .line 524
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 525
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 526
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v3

    .line 523
    invoke-interface {p1, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Schema;)V

    .line 527
    goto/16 :goto_31c

    .line 520
    :pswitch_1fb
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 521
    goto/16 :goto_31c

    .line 499
    :pswitch_20a
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 500
    goto/16 :goto_31c

    .line 517
    :pswitch_219
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt32(II)V

    .line 518
    goto/16 :goto_31c

    .line 514
    :pswitch_22c
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 515
    goto/16 :goto_31c

    .line 511
    :pswitch_23f
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSInt32(II)V

    .line 512
    goto/16 :goto_31c

    .line 508
    :pswitch_252
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 509
    goto/16 :goto_31c

    .line 505
    :pswitch_265
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeSFixed32(II)V

    .line 506
    goto/16 :goto_31c

    .line 502
    :pswitch_278
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt32(II)V

    .line 503
    goto/16 :goto_31c

    .line 496
    :pswitch_28b
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBool(IZ)V

    .line 497
    goto/16 :goto_31c

    .line 493
    :pswitch_29e
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed32(II)V

    .line 494
    goto :goto_31c

    .line 490
    :pswitch_2b0
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 491
    goto :goto_31c

    .line 487
    :pswitch_2c2
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt32(II)V

    .line 488
    goto :goto_31c

    .line 484
    :pswitch_2d4
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 485
    goto :goto_31c

    .line 481
    :pswitch_2e6
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeInt64(IJ)V

    .line 482
    goto :goto_31c

    .line 478
    :pswitch_2f8
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeFloat(IF)V

    .line 479
    goto :goto_31c

    .line 475
    :pswitch_30a
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeDouble(ID)V

    .line 476
    nop

    .line 536
    :goto_31c
    return-void

    nop

    :pswitch_data_31e
    .packed-switch 0x1
        :pswitch_199
        :pswitch_186
        :pswitch_173
        :pswitch_160
        :pswitch_14d
        :pswitch_13a
        :pswitch_127
        :pswitch_113
        :pswitch_ff
        :pswitch_eb
        :pswitch_d7
        :pswitch_c3
        :pswitch_af
        :pswitch_9b
        :pswitch_8b
        :pswitch_7b
        :pswitch_4d
        :pswitch_1f
    .end packed-switch

    :pswitch_data_346
    .packed-switch 0x1
        :pswitch_30a
        :pswitch_2f8
        :pswitch_2e6
        :pswitch_2d4
        :pswitch_2c2
        :pswitch_2b0
        :pswitch_29e
        :pswitch_28b
        :pswitch_278
        :pswitch_265
        :pswitch_252
        :pswitch_23f
        :pswitch_22c
        :pswitch_219
        :pswitch_20a
        :pswitch_1fb
        :pswitch_1dd
        :pswitch_1bf
    .end packed-switch
.end method

.method blacklist setExtensions(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/FieldSet;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object p2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    .line 56
    return-void
.end method
