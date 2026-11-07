.class public abstract Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;>",
        "Landroid/internal/framework/protobuf/nano/MessageNano;"
    }
.end annotation


# instance fields
.field protected blacklist unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    .local p0, "this":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 165
    .local p0, "this":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->clone()Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;

    .line 166
    .local v0, "cloned":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "TM;"
    invoke-static {p0, v0}, Landroid/internal/framework/protobuf/nano/InternalNano;->cloneUnknownFieldData(Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;)V

    .line 167
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Landroid/internal/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    .local p0, "this":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->clone()Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    .local p0, "this":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->clone()Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 5

    .line 49
    .local p0, "this":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    const/4 v0, 0x0

    .line 50
    .local v0, "size":I
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    if-eqz v1, :cond_1c

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Landroid/internal/framework/protobuf/nano/FieldArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 52
    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2, v1}, Landroid/internal/framework/protobuf/nano/FieldArray;->dataAt(I)Landroid/internal/framework/protobuf/nano/FieldData;

    move-result-object v2

    .line 53
    .local v2, "field":Landroid/internal/framework/protobuf/nano/FieldData;
    invoke-virtual {v2}, Landroid/internal/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 51
    .end local v2    # "field":Landroid/internal/framework/protobuf/nano/FieldData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 56
    .end local v1    # "i":I
    :cond_1c
    return v0
.end method

.method public final blacklist getExtension(Landroid/internal/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    .line 86
    .local p0, "this":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Landroid/internal/framework/protobuf/nano/Extension;, "Landroid/internal/framework/protobuf/nano/Extension<TM;TT;>;"
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 87
    return-object v1

    .line 89
    :cond_6
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    iget v2, p1, Landroid/internal/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v2}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/internal/framework/protobuf/nano/FieldArray;->get(I)Landroid/internal/framework/protobuf/nano/FieldData;

    move-result-object v0

    .line 90
    .local v0, "field":Landroid/internal/framework/protobuf/nano/FieldData;
    if-nez v0, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {v0, p1}, Landroid/internal/framework/protobuf/nano/FieldData;->getValue(Landroid/internal/framework/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v1

    :goto_19
    return-object v1
.end method

.method public final blacklist hasExtension(Landroid/internal/framework/protobuf/nano/Extension;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "TM;*>;)Z"
        }
    .end annotation

    .line 75
    .local p0, "this":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Landroid/internal/framework/protobuf/nano/Extension;, "Landroid/internal/framework/protobuf/nano/Extension<TM;*>;"
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 76
    return v1

    .line 78
    :cond_6
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    iget v2, p1, Landroid/internal/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v2}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/internal/framework/protobuf/nano/FieldArray;->get(I)Landroid/internal/framework/protobuf/nano/FieldData;

    move-result-object v0

    .line 79
    .local v0, "field":Landroid/internal/framework/protobuf/nano/FieldData;
    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public final blacklist setExtension(Landroid/internal/framework/protobuf/nano/Extension;Ljava/lang/Object;)Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/internal/framework/protobuf/nano/Extension<",
            "TM;TT;>;TT;)TM;"
        }
    .end annotation

    .line 97
    .local p0, "this":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    .local p1, "extension":Landroid/internal/framework/protobuf/nano/Extension;, "Landroid/internal/framework/protobuf/nano/Extension<TM;TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v0, p1, Landroid/internal/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 98
    .local v0, "fieldNumber":I
    if-nez p2, :cond_1d

    .line 99
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    if-eqz v1, :cond_40

    .line 100
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1, v0}, Landroid/internal/framework/protobuf/nano/FieldArray;->remove(I)V

    .line 101
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Landroid/internal/framework/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    goto :goto_40

    .line 106
    :cond_1d
    const/4 v1, 0x0

    .line 107
    .local v1, "field":Landroid/internal/framework/protobuf/nano/FieldData;
    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_2a

    .line 108
    new-instance v2, Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-direct {v2}, Landroid/internal/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v2, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    goto :goto_30

    .line 110
    :cond_2a
    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2, v0}, Landroid/internal/framework/protobuf/nano/FieldArray;->get(I)Landroid/internal/framework/protobuf/nano/FieldData;

    move-result-object v1

    .line 112
    :goto_30
    if-nez v1, :cond_3d

    .line 113
    iget-object v2, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    new-instance v3, Landroid/internal/framework/protobuf/nano/FieldData;

    invoke-direct {v3, p1, p2}, Landroid/internal/framework/protobuf/nano/FieldData;-><init>(Landroid/internal/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Landroid/internal/framework/protobuf/nano/FieldArray;->put(ILandroid/internal/framework/protobuf/nano/FieldData;)V

    goto :goto_40

    .line 115
    :cond_3d
    invoke-virtual {v1, p1, p2}, Landroid/internal/framework/protobuf/nano/FieldData;->setValue(Landroid/internal/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    .line 120
    .end local v1    # "field":Landroid/internal/framework/protobuf/nano/FieldData;
    :cond_40
    :goto_40
    move-object v1, p0

    .line 121
    .local v1, "typedThis":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "TM;"
    return-object v1
.end method

.method protected final blacklist storeUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z
    .registers 10
    .param p1, "input"    # Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    .local p0, "this":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 141
    .local v0, "startPos":I
    invoke-virtual {p1, p2}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 142
    const/4 v1, 0x0

    return v1

    .line 144
    :cond_c
    invoke-static {p2}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    .line 145
    .local v1, "fieldNumber":I
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 146
    .local v2, "endPos":I
    sub-int v3, v2, v0

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v3

    .line 147
    .local v3, "bytes":[B
    new-instance v4, Landroid/internal/framework/protobuf/nano/UnknownFieldData;

    invoke-direct {v4, p2, v3}, Landroid/internal/framework/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    .line 149
    .local v4, "unknownField":Landroid/internal/framework/protobuf/nano/UnknownFieldData;
    const/4 v5, 0x0

    .line 150
    .local v5, "field":Landroid/internal/framework/protobuf/nano/FieldData;
    iget-object v6, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    if-nez v6, :cond_2c

    .line 151
    new-instance v6, Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-direct {v6}, Landroid/internal/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v6, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    goto :goto_32

    .line 153
    :cond_2c
    iget-object v6, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-virtual {v6, v1}, Landroid/internal/framework/protobuf/nano/FieldArray;->get(I)Landroid/internal/framework/protobuf/nano/FieldData;

    move-result-object v5

    .line 155
    :goto_32
    if-nez v5, :cond_3f

    .line 156
    new-instance v6, Landroid/internal/framework/protobuf/nano/FieldData;

    invoke-direct {v6}, Landroid/internal/framework/protobuf/nano/FieldData;-><init>()V

    move-object v5, v6

    .line 157
    iget-object v6, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-virtual {v6, v1, v5}, Landroid/internal/framework/protobuf/nano/FieldArray;->put(ILandroid/internal/framework/protobuf/nano/FieldData;)V

    .line 159
    :cond_3f
    invoke-virtual {v5, v4}, Landroid/internal/framework/protobuf/nano/FieldData;->addUnknownField(Landroid/internal/framework/protobuf/nano/UnknownFieldData;)V

    .line 160
    const/4 v6, 0x1

    return v6
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "output"    # Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p0, "this":Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;, "Landroid/internal/framework/protobuf/nano/ExtendableMessageNano<TM;>;"
    iget-object v0, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    if-nez v0, :cond_5

    .line 62
    return-void

    .line 64
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Landroid/internal/framework/protobuf/nano/FieldArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 65
    iget-object v1, p0, Landroid/internal/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Landroid/internal/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1, v0}, Landroid/internal/framework/protobuf/nano/FieldArray;->dataAt(I)Landroid/internal/framework/protobuf/nano/FieldData;

    move-result-object v1

    .line 66
    .local v1, "field":Landroid/internal/framework/protobuf/nano/FieldData;
    invoke-virtual {v1, p1}, Landroid/internal/framework/protobuf/nano/FieldData;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    .end local v1    # "field":Landroid/internal/framework/protobuf/nano/FieldData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 68
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method
