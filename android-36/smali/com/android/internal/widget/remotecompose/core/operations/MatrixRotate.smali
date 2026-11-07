.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;
.source "MatrixRotate.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "MatrixRotate"

.field private static final blacklist OP_CODE:I = 0x81


# direct methods
.method public constructor blacklist <init>(FFF)V
    .registers 5
    .param p1, "rotate"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;-><init>(FFF)V

    .line 92
    const-string v0, "MatrixRotate"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->mName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F

    .line 109
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 112
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 113
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 78
    const/16 v0, 0x81

    const-string v1, "MatrixRotate"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 79
    const-string v1, "apply rotation to matrix"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 80
    const/4 v1, 0x1

    const-string/jumbo v2, "rotate"

    const-string v3, "Angle to rotate"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 81
    const-string/jumbo v2, "pivotX"

    const-string v3, "X Pivot point"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 82
    const-string/jumbo v2, "pivotY"

    const-string v3, "Y Pivot point"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 83
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 59
    const/16 v0, 0x81

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 69
    const-string v0, "MatrixRotate"

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
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate$1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate$1;-><init>()V

    .line 50
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;
    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 97
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->mV1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->mV2:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->mV3:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixRotate(FFF)V

    .line 98
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 117
    const-string/jumbo v0, "pivotX"

    const-string/jumbo v1, "pivotY"

    const-string/jumbo v2, "rotate"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    const-string v1, "MatrixRotate"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 118
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p2, "v1"    # F
    .param p3, "v2"    # F
    .param p4, "v3"    # F

    .line 87
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    .line 88
    return-void
.end method
