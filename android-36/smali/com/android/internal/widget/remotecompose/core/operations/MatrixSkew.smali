.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;
.source "MatrixSkew.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "MatrixSkew"

.field private static final blacklist OP_CODE:I = 0x80


# direct methods
.method public constructor blacklist <init>(FF)V
    .registers 4
    .param p1, "skewX"    # F
    .param p2, "skewY"    # F

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;-><init>(FF)V

    .line 85
    const-string v0, "MatrixSkew"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "x1"    # F
    .param p2, "y1"    # F

    .line 101
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V

    .line 102
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 77
    const/16 v0, 0x80

    const-string v1, "MatrixSkew"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 78
    const-string v1, "Current matrix with the specified skew."

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    const-string/jumbo v2, "skewX"

    const-string v3, "The amount to skew in X"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 80
    const-string/jumbo v2, "skewY"

    const-string v3, "The amount to skew in Y"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 81
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 53
    const/16 v0, 0x80

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 63
    const-string v0, "MatrixSkew"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 3
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

    .line 43
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$$ExternalSyntheticLambda0;-><init>()V

    .line 44
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;
    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 90
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mV1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->mV2:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixSkew(FF)V

    .line 91
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 106
    const-string/jumbo v0, "skewX"

    const-string/jumbo v1, "skewY"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    const-string v1, "MatrixSkew"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 107
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p2, "v1"    # F
    .param p3, "v2"    # F

    .line 68
    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 69
    return-void
.end method
