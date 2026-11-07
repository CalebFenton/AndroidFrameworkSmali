.class public Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "IntegerConstant.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "IntegerConstant"


# instance fields
.field public final blacklist mId:I

.field private blacklist mValue:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 40
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    .line 42
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mValue:I

    .line 43
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "textId"    # I
    .param p2, "value"    # I

    .line 103
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 106
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 127
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->id()I

    move-result v0

    const-string v1, "IntegerConstant"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 128
    const-string v1, "A integer and its associated id"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of Int"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 130
    const-string/jumbo v2, "value"

    const-string v3, "32-bit int value"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 131
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 92
    const/16 v0, 0x8c

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 83
    const-string v0, "IntegerConstant"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 5
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

    .line 115
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 117
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 118
    .local v1, "value":I
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;-><init>(II)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 61
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mValue:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    .line 62
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 135
    const-string v0, "IntegerConstant"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 136
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntegerConstant["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;)V
    .registers 3
    .param p1, "ic"    # Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    .line 51
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mValue:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mValue:I

    .line 52
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mValue:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 57
    return-void
.end method
