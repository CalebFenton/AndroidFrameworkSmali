.class public Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ConditionalOperations.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ConditionalOperations"

.field private static final blacklist OP_CODE:I = 0xb2

.field public static final blacklist TYPE_EQ:B = 0x0t

.field public static final blacklist TYPE_GT:B = 0x4t

.field public static final blacklist TYPE_GTE:B = 0x5t

.field public static final blacklist TYPE_LT:B = 0x2t

.field public static final blacklist TYPE_LTE:B = 0x3t

.field public static final blacklist TYPE_NEQ:B = 0x1t

.field private static final blacklist TYPE_STR:[Ljava/lang/String;


# instance fields
.field blacklist mIndexVariableId:I

.field public blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mType:B

.field blacklist mVarA:F

.field blacklist mVarAOut:F

.field blacklist mVarB:F

.field blacklist mVarBOut:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 70
    const-string v4, "GT"

    const-string v5, "GTE"

    const-string v0, "EQ"

    const-string v1, "NEQ"

    const-string v2, "LT"

    const-string v3, "LTE"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->TYPE_STR:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(BFF)V
    .registers 5
    .param p1, "type"    # B
    .param p2, "a"    # F
    .param p3, "b"    # F

    .line 100
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    .line 101
    iput-byte p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    .line 102
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    .line 103
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    .line 104
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;BFF)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "type"    # B
    .param p2, "a"    # F
    .param p3, "b"    # F

    .line 195
    const/16 v0, 0xb2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 197
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 198
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 199
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 220
    const/16 v0, 0xb2

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 221
    const-string v1, "Run if the condition is true"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 222
    const/4 v1, 0x6

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "type of comparison"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 223
    const/4 v1, 0x1

    const-string v2, "a"

    const-string v3, "first value"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 224
    const-string v2, "b"

    const-string/jumbo v3, "second value"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 225
    return-void
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 183
    const-string v0, "ConditionalOperations"

    return-object v0
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

    .line 208
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    int-to-byte v0, v0

    .line 209
    .local v0, "type":B
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 210
    .local v1, "a":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 211
    .local v2, "b":F
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;-><init>(BFF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_9

    move-object v1, p1

    goto :goto_b

    :cond_9
    const-string v1, ""

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist estimateIterations()I
    .registers 2

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    .line 147
    .local v0, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    const/4 v1, 0x0

    .line 148
    .local v1, "run":Z
    iget-byte v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_76

    goto :goto_55

    .line 165
    :pswitch_d
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_16

    goto :goto_17

    :cond_16
    move v3, v4

    :goto_17
    move v1, v3

    goto :goto_55

    .line 162
    :pswitch_19
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_22

    goto :goto_23

    :cond_22
    move v3, v4

    :goto_23
    move v1, v3

    .line 163
    goto :goto_55

    .line 159
    :pswitch_25
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_2e

    goto :goto_2f

    :cond_2e
    move v3, v4

    :goto_2f
    move v1, v3

    .line 160
    goto :goto_55

    .line 156
    :pswitch_31
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v4

    :goto_3b
    move v1, v3

    .line 157
    goto :goto_55

    .line 153
    :pswitch_3d
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_46

    goto :goto_47

    :cond_46
    move v3, v4

    :goto_47
    move v1, v3

    .line 154
    goto :goto_55

    .line 150
    :pswitch_49
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_52

    goto :goto_53

    :cond_52
    move v3, v4

    :goto_53
    move v1, v3

    .line 151
    nop

    .line 168
    :goto_55
    if-eqz v1, :cond_74

    .line 169
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 170
    .local v3, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 171
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 172
    .end local v3    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_5d

    .line 174
    :cond_74
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_49
        :pswitch_3d
        :pswitch_31
        :pswitch_25
        :pswitch_19
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 74
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 75
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 77
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 78
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 80
    :cond_22
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 238
    nop

    .line 239
    const-string v0, "ConditionalOperations"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    .line 240
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Byte;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    .line 241
    const-string/jumbo v3, "varA"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    .line 242
    const-string v3, "VarB"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    .line 243
    const-string v2, "list"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 244
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionalOperations "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->TYPE_STR:[Ljava/lang/String;

    iget-byte v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    .line 126
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    .line 128
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 131
    .local v2, "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .end local v2    # "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_4a

    .line 135
    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 84
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_15

    :cond_13
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    :goto_15
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarAOut:F

    .line 85
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    goto :goto_2c

    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    :goto_2c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarBOut:F

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 87
    .local v1, "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_50

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 88
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 90
    .end local v1    # "op":Lcom/android/internal/widget/remotecompose/core/Operation;
    :cond_50
    goto :goto_34

    .line 91
    :cond_51
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 114
    iget-byte v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mType:B

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarA:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->mVarB:F

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;BFF)V

    .line 115
    return-void
.end method
