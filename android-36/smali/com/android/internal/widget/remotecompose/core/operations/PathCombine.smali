.class public Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "PathCombine.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "PathCombine"

.field private static final blacklist OP_CODE:I = 0xaf

.field public static final blacklist OP_DIFFERENCE:B = 0x0t

.field public static final blacklist OP_INTERSECT:B = 0x1t

.field public static final blacklist OP_REVERSE_DIFFERENCE:B = 0x2t

.field public static final blacklist OP_UNION:B = 0x3t

.field public static final blacklist OP_XOR:B = 0x4t


# instance fields
.field private blacklist mOperation:B

.field public blacklist mOutId:I

.field public blacklist mPathId1:I

.field public blacklist mPathId2:I


# direct methods
.method public constructor blacklist <init>(IIIB)V
    .registers 5
    .param p1, "outId"    # I
    .param p2, "pathId1"    # I
    .param p3, "pathId2"    # I
    .param p4, "operation"    # B

    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 61
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOutId:I

    .line 62
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId1:I

    .line 63
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId2:I

    .line 64
    iput-byte p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOperation:B

    .line 65
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIB)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "outId"    # I
    .param p2, "pathId1"    # I
    .param p3, "pathId2"    # I
    .param p4, "op"    # B

    .line 122
    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 125
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 126
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 127
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 149
    const/16 v0, 0xaf

    const-string v1, "PathCombine"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 150
    const-string v1, "Merge two string into one"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 151
    const/4 v1, 0x0

    const-string/jumbo v2, "srcPathId1"

    const-string v3, "id of the path"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 152
    const-string/jumbo v3, "x Shift of the path"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 153
    const/4 v1, 0x6

    const-string v2, "operation"

    const-string/jumbo v3, "the operation"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 154
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 108
    const/16 v0, 0xaf

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 99
    const-string v0, "PathCombine"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 7
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

    .line 136
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 137
    .local v0, "outId1":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 138
    .local v1, "pathId1":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 139
    .local v2, "pathId2":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v3

    int-to-byte v3, v3

    .line 140
    .local v3, "op":B
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;-><init>(IIIB)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 164
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOutId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId1:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId2:I

    iget-byte v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOperation:B

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->combinePath(IIIB)V

    .line 165
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 71
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 169
    nop

    .line 170
    const-string v0, "PathCombine"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOutId:I

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "outId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId1:I

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "pathId1"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId2:I

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "pathId2"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOperation:B

    .line 174
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "operation"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Byte;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 175
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathCombine["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOutId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] + [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOperation:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 68
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOutId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId1:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mPathId2:I

    iget-byte v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->mOperation:B

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIB)V

    .line 76
    return-void
.end method
