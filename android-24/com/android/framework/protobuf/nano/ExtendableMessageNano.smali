.class public abstract Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<TM;>;>",
        "Lcom/android/framework/protobuf/nano/MessageNano;"
    }
.end annotation


# instance fields
.field protected unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .locals 1
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

    #@0
    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    #@6
    .line 166
    .local v0, "cloned":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "TM;"
    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/InternalNano;->cloneUnknownFieldData(Lcom/android/framework/protobuf/nano/ExtendableMessageNano;Lcom/android/framework/protobuf/nano/ExtendableMessageNano;)V

    #@9
    .line 167
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    #@0
    .prologue
    .line 49
    const/4 v2, 0x0

    #@1
    .line 50
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 51
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@8
    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    #@b
    move-result v3

    #@c
    if-ge v1, v3, :cond_0

    #@e
    .line 52
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@10
    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    #@13
    move-result-object v0

    #@14
    .line 53
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    #@17
    move-result v3

    #@18
    add-int/2addr v2, v3

    #@19
    .line 51
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 56
    .end local v0    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    .end local v1    # "i":I
    :cond_0
    return v2
.end method

.method public final getExtension(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "extension":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    const/4 v1, 0x0

    #@1
    .line 86
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 87
    return-object v1

    #@6
    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@8
    iget v3, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    #@a
    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    #@d
    move-result v3

    #@e
    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    #@11
    move-result-object v0

    #@12
    .line 90
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    if-nez v0, :cond_1

    #@14
    :goto_0
    return-object v1

    #@15
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/FieldData;->getValue(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    goto :goto_0
.end method

.method public final hasExtension(Lcom/android/framework/protobuf/nano/Extension;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "extension":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<TM;*>;"
    const/4 v1, 0x0

    #@1
    .line 75
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 76
    return v1

    #@6
    .line 78
    :cond_0
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@8
    iget v3, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    #@a
    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    #@d
    move-result v3

    #@e
    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    #@11
    move-result-object v0

    #@12
    .line 79
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    if-eqz v0, :cond_1

    #@14
    const/4 v1, 0x1

    #@15
    :cond_1
    return v1
.end method

.method public final setExtension(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;TT;)TM;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "extension":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    #@1
    .line 97
    iget v3, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    #@3
    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    #@6
    move-result v1

    #@7
    .line 98
    .local v1, "fieldNumber":I
    if-nez p2, :cond_1

    #@9
    .line 99
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 100
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@f
    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->remove(I)V

    #@12
    .line 101
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@14
    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/FieldArray;->isEmpty()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 102
    iput-object v4, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@1c
    .line 120
    :cond_0
    :goto_0
    move-object v2, p0

    #@1d
    .line 121
    .local v2, "typedThis":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "TM;"
    return-object p0

    #@1e
    .line 106
    .end local v2    # "typedThis":Lcom/android/framework/protobuf/nano/ExtendableMessageNano;, "TM;"
    :cond_1
    const/4 v0, 0x0

    #@1f
    .line 107
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@21
    if-nez v3, :cond_2

    #@23
    .line 108
    new-instance v3, Lcom/android/framework/protobuf/nano/FieldArray;

    #@25
    invoke-direct {v3}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    #@28
    iput-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@2a
    .line 112
    .end local v0    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :goto_1
    if-nez v0, :cond_3

    #@2c
    .line 113
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@2e
    new-instance v4, Lcom/android/framework/protobuf/nano/FieldData;

    #@30
    invoke-direct {v4, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;-><init>(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    #@33
    invoke-virtual {v3, v1, v4}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    #@36
    goto :goto_0

    #@37
    .line 110
    .restart local v0    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_2
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@39
    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    #@3c
    move-result-object v0

    #@3d
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    goto :goto_1

    #@3e
    .line 115
    .end local v0    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;->setValue(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    #@41
    goto :goto_0
.end method

.method protected final storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 7
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@3
    move-result v4

    #@4
    .line 141
    .local v4, "startPos":I
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    #@7
    move-result v6

    #@8
    if-nez v6, :cond_0

    #@a
    .line 142
    const/4 v6, 0x0

    #@b
    return v6

    #@c
    .line 144
    :cond_0
    invoke-static {p2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    #@f
    move-result v3

    #@10
    .line 145
    .local v3, "fieldNumber":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    #@13
    move-result v1

    #@14
    .line 146
    .local v1, "endPos":I
    sub-int v6, v1, v4

    #@16
    invoke-virtual {p1, v4, v6}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    #@19
    move-result-object v0

    #@1a
    .line 147
    .local v0, "bytes":[B
    new-instance v5, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    #@1c
    invoke-direct {v5, p2, v0}, Lcom/android/framework/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    #@1f
    .line 149
    .local v5, "unknownField":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    const/4 v2, 0x0

    #@20
    .line 150
    .local v2, "field":Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@22
    if-nez v6, :cond_2

    #@24
    .line 151
    new-instance v6, Lcom/android/framework/protobuf/nano/FieldArray;

    #@26
    invoke-direct {v6}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    #@29
    iput-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@2b
    .line 155
    .end local v2    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :goto_0
    if-nez v2, :cond_1

    #@2d
    .line 156
    new-instance v2, Lcom/android/framework/protobuf/nano/FieldData;

    #@2f
    invoke-direct {v2}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    #@32
    .line 157
    .local v2, "field":Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@34
    invoke-virtual {v6, v3, v2}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    #@37
    .line 159
    .end local v2    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/framework/protobuf/nano/FieldData;->addUnknownField(Lcom/android/framework/protobuf/nano/UnknownFieldData;)V

    #@3a
    .line 160
    const/4 v6, 0x1

    #@3b
    return v6

    #@3c
    .line 153
    .local v2, "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_2
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@3e
    invoke-virtual {v6, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    #@41
    move-result-object v2

    #@42
    .local v2, "field":Lcom/android/framework/protobuf/nano/FieldData;
    goto :goto_0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 62
    return-void

    #@5
    .line 64
    :cond_0
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@8
    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    #@b
    move-result v2

    #@c
    if-ge v1, v2, :cond_1

    #@e
    .line 65
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    #@10
    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    #@13
    move-result-object v0

    #@14
    .line 66
    .local v0, "field":Lcom/android/framework/protobuf/nano/FieldData;
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/FieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@17
    .line 64
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 60
    .end local v0    # "field":Lcom/android/framework/protobuf/nano/FieldData;
    :cond_1
    return-void
.end method
