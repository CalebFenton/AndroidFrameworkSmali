.class public Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "PathAppend.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "PathAppend"

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

.field private static final blacklist OP_CODE:I = 0xa0

.field public static final blacklist QUADRATIC:I = 0xc

.field public static final blacklist QUADRATIC_NAN:F

.field public static final blacklist RESET:I = 0x11

.field public static final blacklist RESET_NAN:F


# instance fields
.field blacklist mFloatPath:[F

.field blacklist mInstanceId:I

.field blacklist mOutputPath:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->MOVE_NAN:F

    .line 108
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->LINE_NAN:F

    .line 109
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->QUADRATIC_NAN:F

    .line 110
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->CONIC_NAN:F

    .line 111
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->CUBIC_NAN:F

    .line 112
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->CLOSE_NAN:F

    .line 113
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->DONE_NAN:F

    .line 114
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->RESET_NAN:F

    return-void
.end method

.method constructor blacklist <init>(I[F)V
    .registers 5
    .param p1, "instanceId"    # I
    .param p2, "floatPath"    # [F

    .line 46
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    .line 48
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    .line 50
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V
    .registers 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "data"    # [F

    .line 144
    const/16 v0, 0xa0

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
    const/16 v0, 0xa0

    const-string v1, "PathAppend"

    const-string v2, "Data Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 175
    const-string v1, "Append to a Path"

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

    .line 132
    const/16 v0, 0xa0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 123
    const-string v0, "PathAppend"

    return-object v0
.end method

.method public static blacklist pathString([F)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # [F

    .line 217
    if-nez p0, :cond_5

    .line 218
    const-string v0, "null"

    return-object v0

    .line 220
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_89

    .line 222
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 223
    aget v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    .line 224
    .local v2, "id":I
    const/16 v3, 0x10

    if-gt v2, v3, :cond_6a

    .line 225
    packed-switch v2, :pswitch_data_8e

    .line 248
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

    .line 249
    goto :goto_86

    .line 245
    :pswitch_40
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    goto :goto_86

    .line 242
    :pswitch_46
    const-string v3, "Z"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    goto :goto_86

    .line 239
    :pswitch_4c
    const-string v3, "C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    goto :goto_86

    .line 236
    :pswitch_52
    const-string v3, "R"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    goto :goto_86

    .line 233
    :pswitch_58
    const-string v3, "Q"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    goto :goto_86

    .line 230
    :pswitch_5e
    const-string v3, "L"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    goto :goto_86

    .line 227
    :pswitch_64
    const-string v3, "M"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    goto :goto_86

    .line 252
    :cond_6a
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

    .line 221
    .end local v2    # "id":I
    :cond_86
    :goto_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 256
    .end local v1    # "i":I
    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_8e
    .packed-switch 0xa
        :pswitch_64
        :pswitch_5e
        :pswitch_58
        :pswitch_52
        :pswitch_4c
        :pswitch_46
        :pswitch_40
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
    .local v0, "id":I
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
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;-><init>(I[F)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 188
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPathData(I)[F

    move-result-object v0

    .line 189
    .local v0, "data":[F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    .line 190
    .local v1, "out":[F
    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    sget v4, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->RESET_NAN:F

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_1f

    .line 191
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    new-array v2, v2, [F

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadPathData(I[F)V

    .line 192
    return-void

    .line 194
    :cond_1f
    if-eqz v0, :cond_45

    .line 195
    array-length v2, v0

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [F

    .line 197
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    array-length v3, v0

    if-ge v2, v3, :cond_33

    .line 198
    aget v3, v0, v2

    aput v3, v1, v2

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 200
    .end local v2    # "i":I
    :cond_33
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_34
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    array-length v3, v3

    if-ge v2, v3, :cond_44

    .line 201
    array-length v3, v0

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    aget v4, v4, v2

    aput v4, v1, v3

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .end local v2    # "i":I
    :cond_44
    goto :goto_4c

    .line 204
    :cond_45
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ">>>>>>>>>>> DATA IS NULL"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    :goto_4c
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadPathData(I[F)V

    .line 207
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->pathString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 183
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 184
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 66
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

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

    .line 261
    const-string v0, "PathAppend"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addPath(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 262
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathAppend["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] += \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->pathString([F)Ljava/lang/String;

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
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 55
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mFloatPath:[F

    aget v1, v1, v0

    .line 56
    .local v1, "v":F
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 57
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

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
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

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
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mInstanceId:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->mOutputPath:[F

    invoke-static {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 76
    return-void
.end method
