.class public abstract Lcom/android/phone/ecc/nano/ExtendableMessageNano;
.super Lcom/android/phone/ecc/nano/MessageNano;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/phone/ecc/nano/ExtendableMessageNano<",
        "TM;>;>",
        "Lcom/android/phone/ecc/nano/MessageNano;"
    }
.end annotation


# instance fields
.field protected blacklist unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/android/phone/ecc/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/android/phone/ecc/nano/ExtendableMessageNano;
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
    invoke-super {p0}, Lcom/android/phone/ecc/nano/MessageNano;->clone()Lcom/android/phone/ecc/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ecc/nano/ExtendableMessageNano;

    .line 166
    invoke-static {p0, v0}, Lcom/android/phone/ecc/nano/InternalNano;->cloneUnknownFieldData(Lcom/android/phone/ecc/nano/ExtendableMessageNano;Lcom/android/phone/ecc/nano/ExtendableMessageNano;)V

    return-object v0
.end method

.method public bridge synthetic blacklist clone()Lcom/android/phone/ecc/nano/MessageNano;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->clone()Lcom/android/phone/ecc/nano/ExtendableMessageNano;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->clone()Lcom/android/phone/ecc/nano/ExtendableMessageNano;

    move-result-object p0

    return-object p0
.end method

.method protected final blacklist storeUnknownField(Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 141
    invoke-virtual {p1, p2}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 144
    :cond_c
    invoke-static {p2}, Lcom/android/phone/ecc/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    .line 145
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    .line 146
    invoke-virtual {p1, v0, v2}, Lcom/android/phone/ecc/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object p1

    .line 147
    new-instance v0, Lcom/android/phone/ecc/nano/UnknownFieldData;

    invoke-direct {v0, p2, p1}, Lcom/android/phone/ecc/nano/UnknownFieldData;-><init>(I[B)V

    .line 150
    iget-object p1, p0, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;

    if-nez p1, :cond_2b

    .line 151
    new-instance p1, Lcom/android/phone/ecc/nano/FieldArray;

    invoke-direct {p1}, Lcom/android/phone/ecc/nano/FieldArray;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;

    const/4 p1, 0x0

    goto :goto_2f

    .line 153
    :cond_2b
    invoke-virtual {p1, v1}, Lcom/android/phone/ecc/nano/FieldArray;->get(I)Lcom/android/phone/ecc/nano/FieldData;

    move-result-object p1

    :goto_2f
    if-nez p1, :cond_3b

    .line 156
    new-instance p1, Lcom/android/phone/ecc/nano/FieldData;

    invoke-direct {p1}, Lcom/android/phone/ecc/nano/FieldData;-><init>()V

    .line 157
    iget-object p0, p0, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/ecc/nano/FieldArray;->put(ILcom/android/phone/ecc/nano/FieldData;)V

    .line 159
    :cond_3b
    invoke-virtual {p1, v0}, Lcom/android/phone/ecc/nano/FieldData;->addUnknownField(Lcom/android/phone/ecc/nano/UnknownFieldData;)V

    const/4 p0, 0x1

    return p0
.end method
