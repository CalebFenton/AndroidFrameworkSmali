.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawText;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "DrawText.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DrawText"

.field private static final blacklist OP_CODE:I = 0x2b


# instance fields
.field blacklist mContextEnd:I

.field blacklist mContextStart:I

.field blacklist mEnd:I

.field blacklist mOutX:F

.field blacklist mOutY:F

.field blacklist mRtl:Z

.field blacklist mStart:I

.field blacklist mTextID:I

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(IIIIIFFZ)V
    .registers 11
    .param p1, "textID"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "rtl"    # Z

    .line 58
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    .line 41
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    .line 42
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextStart:I

    .line 43
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextEnd:I

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    .line 45
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    .line 46
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutX:F

    .line 47
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutY:F

    .line 48
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mRtl:Z

    .line 59
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mTextID:I

    .line 60
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    .line 61
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    .line 62
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextStart:I

    .line 63
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextEnd:I

    .line 64
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutX:F

    .line 65
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutY:F

    .line 66
    iput-boolean p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mRtl:Z

    .line 67
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V
    .registers 10
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "textID"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "rtl"    # Z

    .line 167
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 169
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 170
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 171
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 172
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 173
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 174
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 175
    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    .line 176
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 184
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->id()I

    move-result v0

    const-string v1, "DrawText"

    const-string v2, "Draw Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 185
    const-string v1, "Draw a run of text, all in a single direction"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 186
    const/4 v1, 0x0

    const-string/jumbo v2, "textId"

    const-string v3, "id of bitmap"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 187
    const-string/jumbo v2, "start"

    const-string v3, "The start of the text to render. -1=end of string"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 191
    const-string v2, "end"

    const-string v3, "The end of the text to render"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 192
    const-string v2, "contextStart"

    const-string/jumbo v3, "the index of the start of the shaping context"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 196
    const-string v2, "contextEnd"

    const-string/jumbo v3, "the index of the end of the shaping context"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 200
    const/4 v1, 0x1

    const-string/jumbo v2, "x"

    const-string v3, "The x position at which to draw the text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 201
    const-string/jumbo v2, "y"

    const-string v3, "The y position at which to draw the text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 202
    const/4 v1, 0x2

    const-string v2, "RTL"

    const-string v3, "Whether the run is in RTL direction"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 203
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 141
    const/16 v0, 0x2b

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 132
    const-string v0, "DrawText"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 11
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

    .line 112
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 113
    .local v1, "text":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 114
    .local v2, "start":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 115
    .local v3, "end":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 116
    .local v4, "contextStart":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 117
    .local v5, "contextEnd":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 118
    .local v6, "x":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    .line 119
    .local v7, "y":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBoolean()Z

    move-result v8

    .line 120
    .local v8, "rtl":Z
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;-><init>(IIIIIFFZ)V

    .line 122
    .local v0, "op":Lcom/android/internal/widget/remotecompose/core/operations/DrawText;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 11
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 207
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mTextID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextStart:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextEnd:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutX:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutY:F

    iget-boolean v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mRtl:Z

    move-object v0, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v0, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    .line 208
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 77
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 78
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 80
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 81
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 83
    :cond_22
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 212
    nop

    .line 213
    const-string v0, "DrawText"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mTextID:I

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "textId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "start"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "end"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextStart:I

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contextStart"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextEnd:I

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contextEnd"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutX:F

    .line 219
    const-string/jumbo v3, "x"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutY:F

    .line 220
    const-string/jumbo v3, "y"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mRtl:Z

    .line 221
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "rtl"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 222
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawTextRun ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mTextID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutX:F

    .line 100
    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutY:F

    .line 102
    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 71
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutX:F

    .line 72
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mOutY:F

    .line 73
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 11
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 87
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mTextID:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mStart:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mEnd:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextStart:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mContextEnd:I

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mX:F

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mY:F

    iget-boolean v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->mRtl:Z

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    .line 88
    return-void
.end method
