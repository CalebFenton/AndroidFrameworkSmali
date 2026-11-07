.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;
.source "MatrixTranslate.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "MatrixTranslate"

.field private static final blacklist OP_CODE:I = 0x7f


# direct methods
.method public constructor blacklist <init>(FF)V
    .registers 4
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;-><init>(FF)V

    .line 84
    const-string v0, "MatrixTranslate"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->mName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .registers 4
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "x1"    # F
    .param p2, "y1"    # F

    .line 100
    const/16 v0, 0x7f

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V

    .line 101
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 76
    const/16 v0, 0x7f

    const-string v1, "MatrixTranslate"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 77
    const-string v1, "Preconcat the current matrix with the specified translation"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 78
    const/4 v1, 0x1

    const-string v2, "dx"

    const-string v3, "The distance to translate in X"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 79
    const-string v2, "dy"

    const-string v3, "The distance to translate in Y"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 80
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 52
    const/16 v0, 0x7f

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 62
    const-string v0, "MatrixTranslate"

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

    .line 42
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate$$ExternalSyntheticLambda0;-><init>()V

    .line 43
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;
    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 89
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->mV1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->mV2:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixTranslate(FF)V

    .line 90
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 105
    const-string v0, "dx"

    const-string v1, "dy"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    const-string v1, "MatrixTranslate"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 106
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p2, "v1"    # F
    .param p3, "v2"    # F

    .line 67
    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 68
    return-void
.end method
