.class public final Ljava/lang/StringBuilder;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuilder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field static final serialVersionUID:J = 0x3cd5fb145a4c6acbL


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 86
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    #@5
    .line 85
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    #@3
    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 124
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, 0x10

    #@6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@c
    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, 0x10

    #@6
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    #@9
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 109
    return-void
.end method

.method private append(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 139
    if-nez p1, :cond_0

    #@2
    .line 140
    const-string/jumbo v2, "null"

    #@5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v2

    #@9
    return-object v2

    #@a
    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@d
    move-result v0

    #@e
    .line 142
    .local v0, "len":I
    iget v2, p0, Ljava/lang/StringBuilder;->count:I

    #@10
    add-int v1, v2, v0

    #@12
    .line 143
    .local v1, "newcount":I
    iget-object v2, p0, Ljava/lang/StringBuilder;->value:[C

    #@14
    array-length v2, v2

    #@15
    if-le v1, v2, :cond_1

    #@17
    .line 144
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->expandCapacity(I)V

    #@1a
    .line 145
    :cond_1
    iget-object v2, p0, Ljava/lang/StringBuilder;->value:[C

    #@1c
    iget v3, p0, Ljava/lang/StringBuilder;->count:I

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-virtual {p1, v4, v0, v2, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    #@22
    .line 146
    iput v1, p0, Ljava/lang/StringBuilder;->count:I

    #@24
    .line 147
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 436
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Ljava/lang/StringBuilder;->count:I

    #@9
    .line 437
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [C

    #@f
    iput-object v0, p0, Ljava/lang/StringBuilder;->value:[C

    #@11
    .line 434
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 425
    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    #@5
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@8
    .line 426
    iget-object v0, p0, Ljava/lang/StringBuilder;->value:[C

    #@a
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@d
    .line 423
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 214
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(D)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(F)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "f"    # F

    #@0
    .prologue
    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(I)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(J)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "lng"    # J

    #@0
    .prologue
    .line 224
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 191
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Z)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 209
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append([C)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "str"    # [C

    #@0
    .prologue
    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append([CII)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 204
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public append(C)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 215
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 216
    return-object p0
.end method

.method public append(D)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(D)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 236
    return-object p0
.end method

.method public append(F)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "f"    # F

    #@0
    .prologue
    .line 230
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(F)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 231
    return-object p0
.end method

.method public append(I)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 220
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(I)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 221
    return-object p0
.end method

.method public append(J)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "lng"    # J

    #@0
    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(J)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 226
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 177
    if-nez p1, :cond_0

    #@2
    .line 178
    const-string/jumbo p1, "null"

    #@5
    .line 179
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 180
    check-cast p1, Ljava/lang/String;

    #@b
    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 181
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 182
    check-cast p1, Ljava/lang/StringBuffer;

    #@16
    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 183
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_2
    instance-of v0, p1, Ljava/lang/StringBuilder;

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 184
    check-cast p1, Ljava/lang/StringBuilder;

    #@21
    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 185
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@29
    move-result v0

    #@2a
    const/4 v1, 0x0

    #@2b
    invoke-virtual {p0, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 193
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 129
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 134
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 170
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 171
    return-object p0
.end method

.method public append(Z)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 210
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Z)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 211
    return-object p0
.end method

.method public append([C)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "str"    # [C

    #@0
    .prologue
    .line 197
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append([C)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 198
    return-object p0
.end method

.method public append([CII)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 206
    return-object p0
.end method

.method public bridge synthetic appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "codePoint"    # I

    #@0
    .prologue
    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "codePoint"    # I

    #@0
    .prologue
    .line 243
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->appendCodePoint(I)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 244
    return-object p0
.end method

.method public bridge synthetic capacity()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->capacity()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic charAt(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic codePointAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic codePointBefore(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic codePointCount(II)I
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic delete(II)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 250
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public delete(II)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 251
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->delete(II)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 252
    return-object p0
.end method

.method public bridge synthetic deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 258
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public deleteCharAt(I)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 259
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->deleteCharAt(I)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 260
    return-object p0
.end method

.method public bridge synthetic ensureCapacity(I)V
    .locals 0
    .param p1, "minimumCapacity"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V

    #@3
    return-void
.end method

.method public bridge synthetic getChars(II[CI)V
    .locals 0
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V

    #@3
    return-void
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 373
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 380
    iget-object v0, p0, Ljava/lang/StringBuilder;->value:[C

    #@3
    iget v2, p0, Ljava/lang/StringBuilder;->count:I

    #@5
    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v5

    #@d
    move v4, v1

    #@e
    move v6, p2

    #@f
    .line 380
    invoke-static/range {v0 .. v6}, Ljava/lang/String;->indexOf([CII[CIII)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public bridge synthetic insert(IC)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "c"    # C

    #@0
    .prologue
    .line 336
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(ID)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "d"    # D

    #@0
    .prologue
    .line 365
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(ID)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(IF)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "f"    # F

    #@0
    .prologue
    .line 358
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IF)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(II)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(IJ)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "l"    # J

    #@0
    .prologue
    .line 351
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 307
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 318
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 284
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 291
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(IZ)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    #@0
    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IZ)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(I[C)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    #@0
    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 274
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public insert(IC)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "c"    # C

    #@0
    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IC)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 338
    return-object p0
.end method

.method public insert(ID)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "d"    # D

    #@0
    .prologue
    .line 366
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(IF)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "f"    # F

    #@0
    .prologue
    .line 359
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(II)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 345
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(IJ)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "l"    # J

    #@0
    .prologue
    .line 352
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 308
    if-nez p2, :cond_0

    #@2
    .line 309
    const-string/jumbo p2, "null"

    #@5
    .line 310
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 311
    check-cast p2, Ljava/lang/String;

    #@b
    .end local p2    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 312
    .restart local p2    # "s":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v0

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {p0, p1, p2, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 321
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 322
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 285
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 293
    return-object p0
.end method

.method public insert(IZ)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    #@0
    .prologue
    .line 329
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IZ)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 330
    return-object p0
.end method

.method public insert(I[C)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    #@0
    .prologue
    .line 300
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(I[C)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 301
    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(I[CII)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 278
    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 388
    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 395
    iget-object v0, p0, Ljava/lang/StringBuilder;->value:[C

    #@3
    iget v2, p0, Ljava/lang/StringBuilder;->count:I

    #@5
    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v5

    #@d
    move v4, v1

    #@e
    move v6, p2

    #@f
    .line 395
    invoke-static/range {v0 .. v6}, Ljava/lang/String;->lastIndexOf([CII[CIII)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public bridge synthetic length()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic offsetByCodePoints(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 266
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 267
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@3
    .line 268
    return-object p0
.end method

.method public bridge synthetic reverse()Ljava/lang/AbstractStringBuilder;
    .locals 1

    #@0
    .prologue
    .line 399
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public reverse()Ljava/lang/StringBuilder;
    .locals 0

    #@0
    .prologue
    .line 400
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->reverse()Ljava/lang/AbstractStringBuilder;

    #@3
    .line 401
    return-object p0
.end method

.method public bridge synthetic setCharAt(IC)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "ch"    # C

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V

    #@3
    return-void
.end method

.method public bridge synthetic setLength(I)V
    .locals 0
    .param p1, "newLength"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V

    #@3
    return-void
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 405
    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 406
    const-string/jumbo v0, ""

    #@8
    return-object v0

    #@9
    .line 408
    :cond_0
    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    #@b
    iget-object v1, p0, Ljava/lang/StringBuilder;->value:[C

    #@d
    invoke-static {v2, v0, v1}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public bridge synthetic trimToSize()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V

    #@3
    return-void
.end method
