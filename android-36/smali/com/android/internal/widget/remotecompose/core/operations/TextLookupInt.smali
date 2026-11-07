.class public Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "TextLookupInt.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TextFromINT"

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0

.field private static final blacklist OP_CODE:I = 0x99


# instance fields
.field public blacklist mDataSetId:I

.field public blacklist mIndex:I

.field public blacklist mOutIndex:I

.field public blacklist mTextId:I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "textId"    # I
    .param p2, "dataSetId"    # I
    .param p3, "indexId"    # I

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mTextId:I

    .line 47
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mDataSetId:I

    .line 48
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mIndex:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mOutIndex:I

    .line 49
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "textId"    # I
    .param p2, "dataSet"    # I
    .param p3, "indexId"    # I

    .line 105
    const/16 v0, 0x99

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 108
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 109
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 130
    const/16 v0, 0x99

    const-string v1, "TextFromINT"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 131
    const-string v1, "Look up an array and turn into a text object"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    const-string/jumbo v2, "textId"

    const-string v3, "id of the text generated"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 133
    const-string v2, "dataSetId"

    const-string v3, "id to the array/list to turn int a string"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 134
    const-string v2, "index"

    const-string v3, "index of the element to return"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 135
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 93
    const/16 v0, 0x99

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 84
    const-string v0, "TextFromINT"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 119
    .local v0, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 120
    .local v1, "dataSetId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 121
    .local v2, "indexId":I
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;-><init>(III)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 139
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mDataSetId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mOutIndex:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getId(II)I

    move-result v0

    .line 140
    .local v0, "id":I
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mTextId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadText(ILjava/lang/String;)V

    .line 141
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 74
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mIndex:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 75
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 151
    nop

    .line 152
    const-string v0, "TextFromINT"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mTextId:I

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "textId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mDataSetId:I

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dataSetId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mIndex:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mOutIndex:I

    int-to-float v2, v2

    .line 155
    const-string v3, "indexId"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 156
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextLookupInt["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mTextId:I

    .line 60
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mDataSetId:I

    .line 62
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 69
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mIndex:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mOutIndex:I

    .line 70
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 53
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mTextId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mDataSetId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->mIndex:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 54
    return-void
.end method
