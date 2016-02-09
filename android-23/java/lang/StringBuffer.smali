.class public final Ljava/lang/StringBuffer;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuffer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x2f0707d9eac8ead3L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 50
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@3
    .line 51
    new-instance v1, Ljava/io/ObjectStreamField;

    #@5
    const-string/jumbo v2, "count"

    #@8
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@a
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d
    const/4 v2, 0x0

    #@e
    aput-object v1, v0, v2

    #@10
    .line 52
    new-instance v1, Ljava/io/ObjectStreamField;

    #@12
    const-string/jumbo v2, "shared"

    #@15
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@17
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1a
    const/4 v2, 0x1

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 53
    new-instance v1, Ljava/io/ObjectStreamField;

    #@1f
    const-string/jumbo v2, "value"

    #@22
    const-class v3, [C

    #@24
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@27
    const/4 v2, 0x2

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 50
    sput-object v0, Ljava/lang/StringBuffer;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@2c
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    #@3
    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    #@3
    .line 82
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 742
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@3
    move-result-object v1

    #@4
    .line 743
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v3, "count"

    #@7
    const/4 v4, 0x0

    #@8
    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 744
    .local v0, "count":I
    const-string/jumbo v3, "value"

    #@f
    const/4 v4, 0x0

    #@10
    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, [C

    #@16
    .line 745
    .local v2, "value":[C
    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuffer;->set([CI)V

    #@19
    .line 741
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 733
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@4
    move-result-object v0

    #@5
    .line 734
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "count"

    #@8
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@b
    move-result v2

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@f
    .line 735
    const-string/jumbo v1, "shared"

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@16
    .line 736
    const-string/jumbo v1, "value"

    #@19
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->getValue()[C

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@20
    .line 737
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 732
    return-void

    #@25
    .end local v0    # "fields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

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
    .line 294
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

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
    .line 322
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public declared-synchronized append(C)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "ch"    # C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 127
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public append(D)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 140
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/RealToString;->appendDouble(Ljava/lang/AbstractStringBuilder;D)V

    #@7
    .line 141
    return-object p0
.end method

.method public append(F)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "f"    # F

    #@0
    .prologue
    .line 154
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->appendFloat(Ljava/lang/AbstractStringBuilder;F)V

    #@7
    .line 155
    return-object p0
.end method

.method public append(I)Ljava/lang/StringBuffer;
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 168
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    #@3
    .line 169
    return-object p0
.end method

.method public append(J)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "l"    # J

    #@0
    .prologue
    .line 182
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    #@3
    .line 183
    return-object p0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 295
    if-nez p1, :cond_0

    #@3
    .line 296
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    .line 300
    return-object p0

    #@8
    .line 298
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, p1, v1, v0}, Ljava/lang/StringBuffer;->append0(Ljava/lang/CharSequence;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    goto :goto_0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 323
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append0(Ljava/lang/CharSequence;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 324
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 200
    if-nez p1, :cond_0

    #@3
    .line 201
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    .line 205
    return-object p0

    #@8
    .line 203
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 219
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 220
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 237
    if-nez p1, :cond_0

    #@3
    .line 238
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->appendNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    .line 244
    return-object p0

    #@8
    .line 240
    :cond_0
    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    .line 241
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p0, v0, v2, v1}, Ljava/lang/StringBuffer;->append0([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@15
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@16
    goto :goto_0

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0

    #@1a
    .line 240
    :catchall_1
    move-exception v0

    #@1b
    :try_start_4
    monitor-exit p1

    #@1c
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public append(Z)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 114
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "true"

    #@5
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    :cond_0
    const-string/jumbo v0, "false"

    #@d
    goto :goto_0
.end method

.method public declared-synchronized append([C)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "chars"    # [C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 257
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append0([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 258
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized append([CII)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 278
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append0([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 279
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "codePoint"    # I

    #@0
    .prologue
    .line 341
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
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

.method public declared-synchronized charAt(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 346
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized codePointAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 351
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized codePointBefore(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 356
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized codePointCount(II)I
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 361
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized delete(II)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 377
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->delete0(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 378
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized deleteCharAt(I)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "location"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 391
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->deleteCharAt0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 392
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .locals 1
    .param p1, "min"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 397
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 396
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized getChars(II[CI)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "buffer"    # [C
    .param p4, "idx"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 419
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 418
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
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

.method public declared-synchronized indexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 424
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized insert(IC)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 439
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(IC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 440
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public insert(ID)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "d"    # D

    #@0
    .prologue
    .line 504
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(IF)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "f"    # F

    #@0
    .prologue
    .line 520
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(II)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 472
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(IJ)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "l"    # J

    #@0
    .prologue
    .line 488
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public declared-synchronized insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 622
    if-nez p2, :cond_0

    #@3
    :try_start_0
    const-string/jumbo v0, "null"

    #@6
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 623
    return-object p0

    #@b
    .line 622
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    move-result-object v0

    #@f
    goto :goto_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public declared-synchronized insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 651
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/CharSequence;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 652
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 540
    if-nez p2, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method public declared-synchronized insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "string"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 558
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 559
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public insert(IZ)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # Z

    #@0
    .prologue
    .line 456
    if-eqz p2, :cond_0

    #@2
    const-string/jumbo v0, "true"

    #@5
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    :cond_0
    const-string/jumbo v0, "false"

    #@d
    goto :goto_0
.end method

.method public declared-synchronized insert(I[C)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "chars"    # [C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 576
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert0(I[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 577
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized insert(I[CII)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "chars"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 601
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert0(I[CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 602
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
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

.method public declared-synchronized lastIndexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 657
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
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

.method public declared-synchronized offsetByCodePoints(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 662
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "string"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 682
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace0(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 683
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized reverse()Ljava/lang/StringBuffer;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 692
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->reverse0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 693
    return-object p0

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized setCharAt(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 698
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 697
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized setLength(I)V
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 703
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 702
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 708
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 713
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 718
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 723
    :try_start_0
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized trimToSize()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 728
    :try_start_0
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 727
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method
