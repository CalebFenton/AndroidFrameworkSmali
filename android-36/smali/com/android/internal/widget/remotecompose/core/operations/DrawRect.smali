.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
.source "DrawRect.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawRect"

.field private static final blacklist OP_CODE:I = 0x2a


# direct methods
.method public constructor blacklist <init>(FFFF)V
    .registers 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;-><init>(FFFF)V

    .line 86
    const-string v0, "DrawRect"

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .registers 11
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 104
    const/16 v1, 0x2a

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .end local p1    # "x1":F
    .end local p2    # "y1":F
    .end local p3    # "x2":F
    .end local p4    # "y2":F
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v2, "x1":F
    .local v3, "y1":F
    .local v4, "x2":F
    .local v5, "y2":F
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V

    .line 105
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 71
    const/16 v0, 0x2a

    const-string v1, "DrawRect"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 72
    const-string v1, "Draw the specified rectangle"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 73
    const/4 v1, 0x1

    const-string v2, "left"

    const-string v3, "The left side of the rectangle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 74
    const-string/jumbo v2, "top"

    const-string v3, "The top of the rectangle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 75
    const-string/jumbo v2, "right"

    const-string v3, "The right side of the rectangle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 76
    const-string v2, "bottom"

    const-string v3, "The bottom of the rectangle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 77
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 52
    const/16 v0, 0x2a

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 62
    const-string v0, "DrawRect"

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
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect$$ExternalSyntheticLambda0;-><init>()V

    .line 43
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;
    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 91
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mX1:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mY1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mX2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->mY2:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawRect(FFFF)V

    .line 92
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 8
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 109
    const-string/jumbo v4, "right"

    const-string v5, "bottom"

    const-string v2, "left"

    const-string/jumbo v3, "top"

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "serializer":Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .local v1, "serializer":Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "DrawRect"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 110
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p2, "v1"    # F
    .param p3, "v2"    # F
    .param p4, "v3"    # F
    .param p5, "v4"    # F

    .line 81
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 82
    return-void
.end method
