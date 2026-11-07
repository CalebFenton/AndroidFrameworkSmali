.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;
.super Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;
.source "DrawRoundRect.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawRoundRect"

.field private static final blacklist OP_CODE:I = 0x33


# direct methods
.method public constructor blacklist <init>(FFFFFF)V
    .registers 9
    .param p1, "v1"    # F
    .param p2, "v2"    # F
    .param p3, "v3"    # F
    .param p4, "v4"    # F
    .param p5, "v5"    # F
    .param p6, "v6"    # F

    .line 118
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6;-><init>(FFFFFF)V

    .line 119
    move v0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "v1":F
    .local v0, "v6":F
    .local p2, "v1":F
    .local p3, "v2":F
    .local p4, "v3":F
    .local p5, "v4":F
    .local p6, "v5":F
    const-string v1, "DrawRoundRect"

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mName:Ljava/lang/String;

    .line 120
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
    const/16 v0, 0x33

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
    const/16 v0, 0x33

    const-string v1, "DrawRoundRect"

    const-string v2, "Canvas Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 102
    const-string v1, "Draw the specified round-rect"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 103
    const/4 v1, 0x1

    const-string v2, "left"

    const-string v3, "The left side of the rect"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 104
    const-string/jumbo v2, "top"

    const-string v3, "The top of the rect"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 105
    const-string/jumbo v2, "right"

    const-string v3, "The right side of the rect"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 106
    const-string v2, "bottom"

    const-string v3, "The bottom of the rect"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 107
    const-string/jumbo v2, "rx"

    const-string v3, "The x-radius of the oval used to round the corners"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 111
    const-string/jumbo v2, "ry"

    const-string v3, "The y-radius of the oval used to round the corners"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 115
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 52
    const/16 v0, 0x33

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
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect$$ExternalSyntheticLambda0;-><init>()V

    .line 43
    .local v0, "m":Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;
    invoke-static {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->read(Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Maker;Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 124
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV1:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV2:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV3:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV4:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV5:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->mV6:F

    move-object v0, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v0, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawRoundRect(FFFFFF)V

    .line 125
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 10
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 129
    const-string/jumbo v6, "rx"

    const-string/jumbo v7, "ry"

    const-string v2, "left"

    const-string/jumbo v3, "top"

    const-string/jumbo v4, "right"

    const-string v5, "bottom"

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "serializer":Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    .local v1, "serializer":Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "DrawRoundRect"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 130
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
    invoke-static/range {p1 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 93
    return-void
.end method
