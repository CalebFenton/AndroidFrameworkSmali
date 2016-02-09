.class public final Ljava/lang/StringBuilder;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3cd5fb145a4c6acbL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    #@3
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 81
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    #@3
    .line 94
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 679
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 680
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v0

    #@7
    .line 681
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, [C

    #@d
    .line 682
    .local v1, "value":[C
    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->set([CI)V

    #@10
    .line 678
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 697
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 698
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v0

    #@7
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@a
    .line 699
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->getValue()[C

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@11
    .line 696
    return-void
.end method


# virtual methods
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
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
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
    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0(C)V

    #@3
    .line 125
    return-object p0
.end method

.method public append(D)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 184
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/RealToString;->appendDouble(Ljava/lang/AbstractStringBuilder;D)V

    #@7
    .line 185
    return-object p0
.end method

.method public append(F)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "f"    # F

    #@0
    .prologue
    .line 169
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->appendFloat(Ljava/lang/AbstractStringBuilder;F)V

    #@7
    .line 170
    return-object p0
.end method

.method public append(I)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 139
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    #@3
    .line 140
    return-object p0
.end method

.method public append(J)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "l"    # J

    #@0
    .prologue
    .line 154
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    #@3
    .line 155
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 285
    if-nez p1, :cond_0

    #@2
    .line 286
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    #@5
    .line 290
    :goto_0
    return-object p0

    #@6
    .line 288
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {p0, p1, v1, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    #@e
    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 311
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    #@3
    .line 312
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 199
    if-nez p1, :cond_0

    #@2
    .line 200
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    #@5
    .line 204
    :goto_0
    return-object p0

    #@6
    .line 202
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    #@d
    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    #@3
    .line 217
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 230
    if-nez p1, :cond_0

    #@2
    .line 231
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    #@5
    .line 235
    :goto_0
    return-object p0

    #@6
    .line 233
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {p0, v0, v2, v1}, Ljava/lang/StringBuilder;->append0([CII)V

    #@12
    goto :goto_0
.end method

.method public append(Z)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 109
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "true"

    #@5
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    #@8
    .line 110
    return-object p0

    #@9
    .line 109
    :cond_0
    const-string/jumbo v0, "false"

    #@c
    goto :goto_0
.end method

.method public append([C)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "chars"    # [C

    #@0
    .prologue
    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0([C)V

    #@3
    .line 250
    return-object p0
.end method

.method public append([CII)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 271
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append0([CII)V

    #@3
    .line 272
    return-object p0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "codePoint"    # I

    #@0
    .prologue
    .line 325
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0([C)V

    #@7
    .line 326
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
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public delete(II)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 343
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete0(II)V

    #@3
    .line 344
    return-object p0
.end method

.method public deleteCharAt(I)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 359
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt0(I)V

    #@3
    .line 360
    return-object p0
.end method

.method public bridge synthetic ensureCapacity(I)V
    .locals 0
    .param p1, "min"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V

    #@3
    return-void
.end method

.method public bridge synthetic getChars(II[CI)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dst"    # [C
    .param p4, "dstStart"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V

    #@3
    return-void
.end method

.method public bridge synthetic indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic indexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public insert(IC)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "c"    # C

    #@0
    .prologue
    .line 400
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(IC)V

    #@3
    .line 401
    return-object p0
.end method

.method public insert(ID)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "d"    # D

    #@0
    .prologue
    .line 481
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    #@7
    .line 482
    return-object p0
.end method

.method public insert(IF)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "f"    # F

    #@0
    .prologue
    .line 460
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    #@7
    .line 461
    return-object p0
.end method

.method public insert(II)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 420
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    #@7
    .line 421
    return-object p0
.end method

.method public insert(IJ)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "l"    # J

    #@0
    .prologue
    .line 440
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    #@7
    .line 441
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 587
    if-nez p2, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    #@8
    .line 588
    return-object p0

    #@9
    .line 587
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 615
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/CharSequence;II)V

    #@3
    .line 616
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 501
    if-nez p2, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    #@8
    .line 502
    return-object p0

    #@9
    .line 501
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 519
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    #@3
    .line 520
    return-object p0
.end method

.method public insert(IZ)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    #@0
    .prologue
    .line 380
    if-eqz p2, :cond_0

    #@2
    const-string/jumbo v0, "true"

    #@5
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    #@8
    .line 381
    return-object p0

    #@9
    .line 380
    :cond_0
    const-string/jumbo v0, "false"

    #@c
    goto :goto_0
.end method

.method public insert(I[C)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "ch"    # [C

    #@0
    .prologue
    .line 539
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(I[C)V

    #@3
    .line 540
    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "str"    # [C
    .param p3, "strOffset"    # I
    .param p4, "strLen"    # I

    #@0
    .prologue
    .line 566
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert0(I[CII)V

    #@3
    .line 567
    return-object p0
.end method

.method public bridge synthetic lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic lastIndexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
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

.method public replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 637
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace0(IILjava/lang/String;)V

    #@3
    .line 638
    return-object p0
.end method

.method public reverse()Ljava/lang/StringBuilder;
    .locals 0

    #@0
    .prologue
    .line 647
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse0()V

    #@3
    .line 648
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
    .param p1, "length"    # I

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
    .locals 1

    #@0
    .prologue
    .line 663
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
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
