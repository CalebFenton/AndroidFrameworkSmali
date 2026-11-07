.class public final Ljava/lang/StringBuilder;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuilder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/AbstractStringBuilder;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/StringBuilder;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x3cd5fb145a4c6acbL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 103
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 104
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 2
    .param p1, "capacity"    # I
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 119
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 147
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 149
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 508
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 509
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Ljava/lang/StringBuilder;->count:I

    .line 510
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 511
    .local v0, "val":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/StringBuilder;->initBytes([CII)V

    .line 512
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 492
    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 493
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v0

    new-array v0, v0, [C

    .line 494
    .local v0, "val":[C
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isLatin1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 495
    iget-object v1, p0, Ljava/lang/StringBuilder;->value:[B

    iget v3, p0, Ljava/lang/StringBuilder;->count:I

    invoke-static {v1, v2, v3, v0, v2}, Ljava/lang/StringLatin1;->getChars([BII[CI)V

    goto :goto_24

    .line 497
    :cond_1d
    iget-object v1, p0, Ljava/lang/StringBuilder;->value:[B

    iget v3, p0, Ljava/lang/StringBuilder;->count:I

    invoke-static {v1, v2, v3, v0, v2}, Ljava/lang/StringUTF16;->getChars([BII[CI)V

    .line 499
    :goto_24
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 500
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist append(C)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(D)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(F)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(I)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(J)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(Z)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append([C)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append([CII)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api append(C)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "c"    # C
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 257
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    .line 258
    return-object p0
.end method

.method public whitelist test-api append(D)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "d"    # D
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 286
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(D)Ljava/lang/AbstractStringBuilder;

    .line 287
    return-object p0
.end method

.method public whitelist test-api append(F)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "f"    # F
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 279
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(F)Ljava/lang/AbstractStringBuilder;

    .line 280
    return-object p0
.end method

.method public whitelist test-api append(I)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "i"    # I
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 265
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(I)Ljava/lang/AbstractStringBuilder;

    .line 266
    return-object p0
.end method

.method public whitelist test-api append(J)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "lng"    # J
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 272
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(J)Ljava/lang/AbstractStringBuilder;

    .line 273
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 217
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    .line 218
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 226
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    .line 227
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 179
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 186
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 187
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 210
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;

    .line 211
    return-object p0
.end method

.method public whitelist test-api append(Z)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "b"    # Z
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 249
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Z)Ljava/lang/AbstractStringBuilder;

    .line 250
    return-object p0
.end method

.method public whitelist test-api append([C)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "str"    # [C
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 233
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append([C)Ljava/lang/AbstractStringBuilder;

    .line 234
    return-object p0
.end method

.method public whitelist test-api append([CII)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 242
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    .line 243
    return-object p0
.end method

.method public bridge synthetic blacklist appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api appendCodePoint(I)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "codePoint"    # I

    .line 295
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->appendCodePoint(I)Ljava/lang/AbstractStringBuilder;

    .line 296
    return-object p0
.end method

.method public bridge synthetic whitelist test-api capacity()I
    .registers 2

    .line 87
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api charAt(I)C
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api chars()Ljava/util/stream/IntStream;
    .registers 2

    .line 87
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api codePointAt(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api codePointBefore(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api codePointCount(II)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api codePoints()Ljava/util/stream/IntStream;
    .registers 2

    .line 87
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->compareTo(Ljava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/lang/StringBuilder;)I
    .registers 3
    .param p1, "another"    # Ljava/lang/StringBuilder;

    .line 173
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->compareTo(Ljava/lang/AbstractStringBuilder;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist delete(II)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api delete(II)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 304
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->delete(II)Ljava/lang/AbstractStringBuilder;

    .line 305
    return-object p0
.end method

.method public bridge synthetic blacklist deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api deleteCharAt(I)Ljava/lang/StringBuilder;
    .registers 2
    .param p1, "index"    # I

    .line 313
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->deleteCharAt(I)Ljava/lang/AbstractStringBuilder;

    .line 314
    return-object p0
.end method

.method public bridge synthetic whitelist test-api ensureCapacity(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V

    return-void
.end method

.method public bridge synthetic whitelist test-api getChars(II[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V

    return-void
.end method

.method public whitelist test-api indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 440
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 445
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist insert(IC)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ID)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(ID)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(IF)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IF)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(II)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(IJ)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(IZ)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(IZ)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(I[C)Ljava/lang/AbstractStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api insert(IC)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .line 398
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IC)Ljava/lang/AbstractStringBuilder;

    .line 399
    return-object p0
.end method

.method public whitelist test-api insert(ID)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .line 434
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(ID)Ljava/lang/AbstractStringBuilder;

    .line 435
    return-object p0
.end method

.method public whitelist test-api insert(IF)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .line 425
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IF)Ljava/lang/AbstractStringBuilder;

    .line 426
    return-object p0
.end method

.method public whitelist test-api insert(II)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .line 407
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(II)Ljava/lang/AbstractStringBuilder;

    .line 408
    return-object p0
.end method

.method public whitelist test-api insert(IJ)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .line 416
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(IJ)Ljava/lang/AbstractStringBuilder;

    .line 417
    return-object p0
.end method

.method public whitelist test-api insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .line 369
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    .line 370
    return-object p0
.end method

.method public whitelist test-api insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 380
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    .line 381
    return-object p0
.end method

.method public whitelist test-api insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 342
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;

    .line 343
    return-object p0
.end method

.method public whitelist test-api insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 351
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 352
    return-object p0
.end method

.method public whitelist test-api insert(IZ)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .line 389
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IZ)Ljava/lang/AbstractStringBuilder;

    .line 390
    return-object p0
.end method

.method public whitelist test-api insert(I[C)Ljava/lang/StringBuilder;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    .line 360
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(I[C)Ljava/lang/AbstractStringBuilder;

    .line 361
    return-object p0
.end method

.method public whitelist test-api insert(I[CII)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 333
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(I[CII)Ljava/lang/AbstractStringBuilder;

    .line 334
    return-object p0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 450
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 455
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api length()I
    .registers 2
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 87
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api offsetByCodePoints(II)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .line 322
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    .line 323
    return-object p0
.end method

.method public bridge synthetic blacklist reverse()Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reverse()Ljava/lang/StringBuilder;
    .registers 1

    .line 460
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->reverse()Ljava/lang/AbstractStringBuilder;

    .line 461
    return-object p0
.end method

.method public bridge synthetic whitelist test-api setCharAt(IC)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V

    return-void
.end method

.method public bridge synthetic whitelist test-api setLength(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V

    return-void
.end method

.method public bridge synthetic whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api substring(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api substring(II)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 469
    iget v0, p0, Ljava/lang/StringBuilder;->count:I

    if-nez v0, :cond_7

    .line 470
    const-string v0, ""

    return-object v0

    .line 474
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isLatin1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljava/lang/StringBuilder;->value:[B

    iget v2, p0, Ljava/lang/StringBuilder;->count:I

    invoke-static {v0, v1, v2}, Ljava/lang/StringLatin1;->newString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 475
    :cond_17
    iget-object v0, p0, Ljava/lang/StringBuilder;->value:[B

    iget v2, p0, Ljava/lang/StringBuilder;->count:I

    invoke-static {v0, v1, v2}, Ljava/lang/StringUTF16;->newString([BII)Ljava/lang/String;

    move-result-object v0

    .line 474
    :goto_1f
    return-object v0
.end method

.method public bridge synthetic whitelist test-api trimToSize()V
    .registers 1

    .line 87
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V

    return-void
.end method
