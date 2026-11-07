.class public Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtensionWriter"
.end annotation


# instance fields
.field private final blacklist iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist messageSetWireFormat:Z

.field private blacklist next:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;
    .param p2, "messageSetWireFormat"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 978
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>.ExtensionWriter;"
    iput-object p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->this$0:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->this$0:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    .line 979
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 980
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    .line 982
    :cond_21
    iput-boolean p2, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->messageSetWireFormat:Z

    .line 983
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/android/framework/protobuf/GeneratedMessageLite$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/android/framework/protobuf/GeneratedMessageLite$1;

    .line 970
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>.ExtensionWriter;"
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;Z)V

    return-void
.end method


# virtual methods
.method public blacklist writeUntil(ILcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 6
    .param p1, "end"    # I
    .param p2, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 986
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;, "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;TBuilderType;>.ExtensionWriter;"
    nop

    :goto_1
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    if-ge v0, p1, :cond_5d

    .line 987
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 988
    .local v0, "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    iget-boolean v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->messageSetWireFormat:Z

    if-eqz v1, :cond_3d

    .line 989
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_3d

    .line 990
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 991
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p2, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V

    goto :goto_46

    .line 993
    :cond_3d
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/framework/protobuf/FieldSet;->writeField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 995
    :goto_46
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 996
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    goto :goto_5c

    .line 998
    :cond_59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    .line 1000
    .end local v0    # "extension":Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    :goto_5c
    goto :goto_1

    .line 1001
    :cond_5d
    return-void
.end method
