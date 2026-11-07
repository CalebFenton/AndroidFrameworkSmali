.class public Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "PathCreate.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "PathCreate"

.field public static final blacklist CLOSE:I = 0xf

.field public static final blacklist CLOSE_NAN:F

.field public static final blacklist CONIC:I = 0xd

.field public static final blacklist CONIC_NAN:F

.field public static final blacklist CUBIC:I = 0xe

.field public static final blacklist CUBIC_NAN:F

.field public static final blacklist DONE:I = 0x10

.field public static final blacklist DONE_NAN:F

.field public static final blacklist LINE:I = 0xb

.field public static final blacklist LINE_NAN:F

.field public static final blacklist MOVE:I = 0xa

.field public static final blacklist MOVE_NAN:F

.field private static final blacklist OP_CODE:I = 0x9f

.field public static final blacklist QUADRATIC:I = 0xc

.field public static final blacklist QUADRATIC_NAN:F


# instance fields
.field blacklist mFloatPath:[F

.field blacklist mInstanceId:I

.field blacklist mOutputPath:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->MOVE_NAN:F

    .line 110
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->LINE_NAN:F

    .line 111
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->QUADRATIC_NAN:F

    .line 112
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->CONIC_NAN:F

    .line 113
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->CUBIC_NAN:F

    .line 114
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->CLOSE_NAN:F

    .line 115
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->DONE_NAN:F

    return-void
.end method

.method constructor blacklist <init>(IFF)V
    .registers 7
    .param p1, "instanceId"    # I
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mInstanceId:I

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [F

    sget v1, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->MOVE_NAN:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    .line 49
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 145
    const/16 v0, 0x9f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 147
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 148
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 149
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 171
    const/16 v0, 0x9f

    const-string v1, "PathCreate"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 172
    const-string v1, "Encode a Path "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 173
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of path"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 174
    const/4 v1, 0x1

    const-string/jumbo v2, "startX"

    const-string v3, "initial start x"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 175
    const-string v3, "initial start y"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 176
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 133
    const/16 v0, 0x9f

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 124
    const-string v0, "PathCreate"

    return-object v0
.end method

.method public static blacklist pathString([F)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # [F

    .line 186
    if-nez p0, :cond_5

    .line 187
    const-string v0, "null"

    return-object v0

    .line 189
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_97

    .line 191
    if-eqz v1, :cond_15

    .line 192
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_15
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 195
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    .line 196
    .local v2, "id":I
    const/16 v3, 0x10

    if-gt v2, v3, :cond_71

    .line 197
    packed-switch v2, :pswitch_data_9c

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    goto :goto_8d

    .line 217
    :pswitch_47
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    goto :goto_8d

    .line 214
    :pswitch_4d
    const-string v3, "Z"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    goto :goto_8d

    .line 211
    :pswitch_53
    const-string v3, "C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    goto :goto_8d

    .line 208
    :pswitch_59
    const-string v3, "R"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    goto :goto_8d

    .line 205
    :pswitch_5f
    const-string v3, "Q"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    goto :goto_8d

    .line 202
    :pswitch_65
    const-string v3, "L"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    goto :goto_8d

    .line 199
    :pswitch_6b
    const-string v3, "M"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    goto :goto_8d

    .line 224
    :cond_71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .end local v2    # "id":I
    :goto_8d
    goto :goto_93

    .line 227
    :cond_8e
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 190
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 230
    .end local v1    # "i":I
    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_9c
    .packed-switch 0xa
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
    .end packed-switch
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

    .line 159
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 160
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 161
    .local v1, "startX":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 162
    .local v2, "startY":F
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;-><init>(IFF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 240
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mInstanceId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadPathData(I[F)V

    .line 241
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->pathString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 235
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 236
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    aget v3, v0, v2

    .line 67
    .local v3, "v":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 68
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 66
    .end local v3    # "v":F
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 71
    :cond_18
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 245
    const-string v0, "PathCreate"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addPath(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 246
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathCreate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v1, " "

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->deepToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 93
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 97
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 55
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    aget v1, v1, v0

    .line 56
    .local v1, "v":F
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 57
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    goto :goto_22

    :cond_21
    move v3, v1

    :goto_22
    aput v3, v2, v0

    goto :goto_29

    .line 59
    :cond_25
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mOutputPath:[F

    aput v1, v2, v0

    .line 54
    .end local v1    # "v":F
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mInstanceId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->mFloatPath:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V

    .line 76
    return-void
.end method
