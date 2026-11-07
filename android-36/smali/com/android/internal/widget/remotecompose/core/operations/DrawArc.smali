.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;
.source "DrawArc.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawArc"

.field private static final blacklist OP_CODE:I = 0x98


# direct methods
.method public constructor blacklist <init>(FFFFFF)V
    .registers 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 132
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;-><init>(FFFFFF)V

    .line 133
    move v0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "left":F
    .local v0, "sweepAngle":F
    .local p2, "left":F
    .local p3, "top":F
    .local p4, "right":F
    .local p5, "bottom":F
    .local p6, "startAngle":F
    const-string v1, "DrawArc"

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V
    .registers 8
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "v1"    # F
    .param p2, "v2"    # F
    .param p3, "v3"    # F
    .param p4, "v4"    # F
    .param p5, "v5"    # F
    .param p6, "v6"    # F

    .line 74
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 77
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 78
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 79
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 80
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 81
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 101
    const/16 v0, 0x98

    const-string v1, "DrawArc"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 102
    const-string v1, "Draw the specified arcwhich will be scaled to fit inside the specified oval"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 105
    const/4 v1, 0x1

    const-string v2, "left"

    const-string v3, "The left side of the Oval"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 106
    const-string/jumbo v2, "top"

    const-string v3, "The top of the Oval"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 107
    const-string/jumbo v2, "right"

    const-string v3, "The right side of the Oval"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 108
    const-string v2, "bottom"

    const-string v3, "The bottom of the Oval"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 109
    const-string/jumbo v2, "startAngle"

    const-string v3, "Starting angle (in degrees) where the arc begins"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 113
    const-string/jumbo v2, "sweepAngle"

    const-string v3, "Sweep angle (in degrees) measured clockwise"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 117
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 52
    const/16 v0, 0x98

    return v0
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
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc$$ExternalSyntheticLambda0;-><init>()V

    .line 43
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;
    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 138
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV3:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV4:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV5:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->mV6:F

    move-object v0, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v0, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawArc(FFFFFF)V

    .line 139
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 10
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 143
    const-string/jumbo v6, "startAngle"

    const-string/jumbo v7, "sweepAngle"

    const-string v2, "left"

    const-string/jumbo v3, "top"

    const-string/jumbo v4, "right"

    const-string v5, "bottom"

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "serializer":Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .local v1, "serializer":Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 144
    const-string v0, "DrawArc"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 145
    return-void
.end method

.method protected blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V
    .registers 8
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p2, "v1"    # F
    .param p3, "v2"    # F
    .param p4, "v3"    # F
    .param p5, "v4"    # F
    .param p6, "v5"    # F
    .param p7, "v6"    # F

    .line 92
    invoke-static/range {p1 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 93
    return-void
.end method
