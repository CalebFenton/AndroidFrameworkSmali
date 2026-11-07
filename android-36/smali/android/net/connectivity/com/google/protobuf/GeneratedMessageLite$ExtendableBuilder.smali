.class public abstract Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
.source "GeneratedMessageLite.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1030
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;, "TMessageType;"
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 1031
    return-void
.end method

.method private blacklist ensureExtensionsAreMutable()Landroid/net/connectivity/com/google/protobuf/FieldSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 1048
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    .line 1049
    .local v0, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1050
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->clone()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v0

    .line 1051
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object v0, v1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    .line 1053
    :cond_16
    return-object v0
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

    .line 1067
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->getDefaultInstanceForType()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 1073
    return-void

    .line 1069
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final blacklist addExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1130
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    .local p2, "value":Ljava/lang/Object;, "TType;"
    # invokes: Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->checkIsLite(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->access$000(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 1132
    .local v0, "extensionLite":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1133
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1134
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v1

    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1135
    invoke-virtual {v0, p2}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->addRepeatedField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1136
    return-object p0
.end method

.method public final blacklist buildPartial()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1058
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->isMutable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1059
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    return-object v0

    .line 1062
    :cond_f
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->makeImmutable()V

    .line 1063
    invoke-super {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    return-object v0
.end method

.method public bridge synthetic blacklist buildPartial()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
    .registers 2

    .line 1023
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist buildPartial()Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 2

    .line 1023
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist clearExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 1141
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;*>;"
    # invokes: Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->checkIsLite(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->access$000(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 1143
    .local v0, "extensionLite":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1144
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1145
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v1

    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1, v2}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->clearField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 1146
    return-object p0
.end method

.method protected blacklist copyOnWriteInternal()V
    .registers 3

    .line 1041
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->copyOnWriteInternal()V

    .line 1042
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->emptySet()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v1

    if-eq v0, v1, :cond_1f

    .line 1043
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->clone()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    .line 1045
    :cond_1f
    return-void
.end method

.method public final blacklist getExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 1092
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;TType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .registers 4
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

    .line 1099
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getExtensionCount(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)I
    .registers 3
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

    .line 1085
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtensionCount(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)I

    move-result v0

    return v0
.end method

.method public final blacklist hasExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 1078
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;TType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->hasExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Z

    move-result v0

    return v0
.end method

.method blacklist internalSetExtensionSet(Landroid/net/connectivity/com/google/protobuf/FieldSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1035
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extensions":Landroid/net/connectivity/com/google/protobuf/FieldSet;, "Landroid/net/connectivity/com/google/protobuf/FieldSet<Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1036
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object p1, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroid/net/connectivity/com/google/protobuf/FieldSet;

    .line 1037
    return-void
.end method

.method public final blacklist setExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;ILjava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 8
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 1117
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;Ljava/util/List<TType;>;>;"
    .local p3, "value":Ljava/lang/Object;, "TType;"
    # invokes: Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->checkIsLite(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->access$000(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 1119
    .local v0, "extensionLite":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1120
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1121
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v1

    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1123
    invoke-virtual {v0, p3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1122
    invoke-virtual {v1, v2, p2, v3}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->setRepeatedField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 1124
    return-object p0
.end method

.method public final blacklist setExtension(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1105
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, "extension":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TMessageType;TType;>;"
    .local p2, "value":Ljava/lang/Object;, "TType;"
    # invokes: Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->checkIsLite(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->access$000(Landroid/net/connectivity/com/google/protobuf/ExtensionLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    .line 1107
    .local v0, "extensionLite":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1108
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1109
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Landroid/net/connectivity/com/google/protobuf/FieldSet;

    move-result-object v1

    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1110
    invoke-virtual {v0, p2}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$GeneratedExtension;->toFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/FieldSet;->setField(Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1111
    return-object p0
.end method
