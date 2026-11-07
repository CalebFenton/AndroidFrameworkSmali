.class public Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "DataMapLookup.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "DataMapLookup"

.field private static final blacklist OP_CODE:I = 0x9a


# instance fields
.field public blacklist mDataMapId:I

.field public blacklist mId:I

.field public blacklist mStringId:I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "dataMapId"    # I
    .param p3, "keyStringId"    # I

    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    .line 50
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    .line 51
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    .line 52
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "dataMapId"    # I
    .param p3, "keyStringId"    # I

    .line 93
    const/16 v0, 0x9a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 95
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 96
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 97
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 118
    const/16 v0, 0x9a

    const-string v1, "DataMapLookup"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 119
    const-string v1, "Look up a value in a data map"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 120
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "id of float"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 121
    const-string v2, "dataMapId"

    const-string v3, "32-bit float value"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 122
    const-string/jumbo v2, "stringId"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 123
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 81
    const/16 v0, 0x9a

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 72
    const-string v0, "DataMapLookup"

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

    .line 106
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 107
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 108
    .local v1, "mapId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 109
    .local v2, "stringId":I
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;-><init>(III)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 11
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 127
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    move-result-object v1

    .line 129
    .local v1, "data":Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->getPos(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, "pos":I
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->getType(I)B

    move-result v3

    .line 131
    .local v3, "type":B
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;->getId(I)I

    move-result v4

    .line 132
    .local v4, "dataId":I
    packed-switch v3, :pswitch_data_5c

    goto :goto_5b

    .line 147
    :pswitch_1c
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;

    .line 148
    .local v5, "bc":Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->getValue()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    goto :goto_5b

    .line 143
    .end local v5    # "bc":Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;
    :pswitch_2c
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 144
    .local v5, "lc":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    .line 145
    goto :goto_5b

    .line 140
    .end local v5    # "lc":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    :pswitch_3d
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 141
    goto :goto_5b

    .line 137
    :pswitch_47
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadInteger(II)V

    .line 138
    goto :goto_5b

    .line 134
    :pswitch_51
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadText(ILjava/lang/String;)V

    .line 135
    nop

    .line 151
    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_51
        :pswitch_47
        :pswitch_3d
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataMapLookup["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 5
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mDataMapId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->mStringId:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 57
    return-void
.end method
