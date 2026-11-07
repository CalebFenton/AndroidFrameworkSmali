.class public Lcom/android/internal/widget/remotecompose/core/operations/PathData;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "PathData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "PathData"

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

.field private static final blacklist OP_CODE:I = 0x7b

.field public static final blacklist QUADRATIC:I = 0xc

.field public static final blacklist QUADRATIC_NAN:F


# instance fields
.field blacklist mFloatPath:[F

.field blacklist mInstanceId:I

.field blacklist mOutputPath:[F

.field private blacklist mPathChanged:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->MOVE_NAN:F

    .line 110
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->LINE_NAN:F

    .line 111
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->QUADRATIC_NAN:F

    .line 112
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CONIC_NAN:F

    .line 113
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CUBIC_NAN:F

    .line 114
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->CLOSE_NAN:F

    .line 115
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->DONE_NAN:F

    return-void
.end method

.method constructor blacklist <init>(I[F)V
    .registers 5
    .param p1, "instanceId"    # I
    .param p2, "floatPath"    # [F

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mPathChanged:Z

    .line 46
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mInstanceId:I

    .line 47
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    .line 49
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "data"    # [F

    .line 144
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 146
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 147
    array-length v0, p2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    aget v2, p2, v1

    .line 148
    .local v2, "datum":F
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 147
    .end local v2    # "datum":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 150
    :cond_18
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 174
    const/16 v0, 0x7b

    const-string v1, "PathData"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 175
    const-string v1, "Encode a Path "

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 176
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id string"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 177
    const-string v2, "length"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 178
    const/16 v1, 0xa

    const-string/jumbo v3, "pathData"

    const-string/jumbo v4, "path encoded as floats"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 179
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 133
    const/16 v0, 0x7b

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 124
    const-string v0, "PathData"

    return-object v0
.end method

.method public static blacklist pathString([F)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # [F

    .line 189
    if-nez p0, :cond_5

    .line 190
    const-string v0, "null"

    return-object v0

    .line 192
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_97

    .line 194
    if-eqz v1, :cond_15

    .line 195
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_15
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 198
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    .line 199
    .local v2, "id":I
    const/16 v3, 0x10

    if-gt v2, v3, :cond_71

    .line 200
    packed-switch v2, :pswitch_data_9c

    .line 223
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

    .line 224
    goto :goto_8d

    .line 220
    :pswitch_47
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    goto :goto_8d

    .line 217
    :pswitch_4d
    const-string v3, "Z"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    goto :goto_8d

    .line 214
    :pswitch_53
    const-string v3, "C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    goto :goto_8d

    .line 211
    :pswitch_59
    const-string v3, "R"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    goto :goto_8d

    .line 208
    :pswitch_5f
    const-string v3, "Q"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    goto :goto_8d

    .line 205
    :pswitch_65
    const-string v3, "L"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    goto :goto_8d

    .line 202
    :pswitch_6b
    const-string v3, "M"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    goto :goto_8d

    .line 227
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

    .line 229
    .end local v2    # "id":I
    :goto_8d
    goto :goto_93

    .line 230
    :cond_8e
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 193
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 233
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

    .line 159
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 160
    .local v0, "imageId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 161
    .local v1, "len":I
    new-array v2, v1, [F

    .line 162
    .local v2, "data":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    array-length v4, v2

    if-ge v3, v4, :cond_17

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    aput v4, v2, v3

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 165
    .end local v3    # "i":I
    :cond_17
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/PathData;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;-><init>(I[F)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 238
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mPathChanged:Z

    if-eqz v0, :cond_b

    .line 239
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mInstanceId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadPathData(I[F)V

    .line 241
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mPathChanged:Z

    .line 242
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->pathString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    aget v3, v0, v2

    .line 70
    .local v3, "v":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 71
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 69
    .end local v3    # "v":F
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 74
    :cond_18
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 246
    const-string v0, "PathData"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addPath(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 247
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathData["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->deepToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 54
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mFloatPath:[F

    aget v1, v1, v0

    .line 55
    .local v1, "v":F
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 56
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    aget v2, v2, v0

    .line 57
    .local v2, "tmp":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v4

    goto :goto_26

    :cond_25
    move v4, v1

    :goto_26
    aput v4, v3, v0

    .line 58
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    aget v3, v3, v0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_33

    .line 59
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mPathChanged:Z

    .line 61
    .end local v2    # "tmp":F
    :cond_33
    goto :goto_38

    .line 62
    :cond_34
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    aput v1, v2, v0

    .line 53
    .end local v1    # "v":F
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "i":I
    :cond_3b
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 78
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mInstanceId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->mOutputPath:[F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 79
    return-void
.end method
