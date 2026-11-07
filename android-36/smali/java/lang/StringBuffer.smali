.class public final Ljava/lang/StringBuffer;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuffer.java"

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
        "Ljava/lang/StringBuffer;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = 0x2f0707d9eac8ead3L


# instance fields
.field private transient blacklist toStringCache:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 740
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "value"

    const-class v3, [C

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "count"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "shared"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljava/lang/StringBuffer;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 127
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 128
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .line 140
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 141
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 170
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 172
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 772
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 773
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    .line 774
    .local v1, "val":[C
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/lang/StringBuffer;->initBytes([CII)V

    .line 775
    const-string v2, "count"

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/lang/StringBuffer;->count:I

    .line 776
    return-void
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 753
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 754
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [C

    .line 755
    .local v1, "val":[C
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->isLatin1()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    .line 756
    iget-object v2, p0, Ljava/lang/StringBuffer;->value:[B

    iget v4, p0, Ljava/lang/StringBuffer;->count:I

    invoke-static {v2, v3, v4, v1, v3}, Ljava/lang/StringLatin1;->getChars([BII[CI)V

    goto :goto_21

    .line 758
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :cond_1a
    iget-object v2, p0, Ljava/lang/StringBuffer;->value:[B

    iget v4, p0, Ljava/lang/StringBuffer;->count:I

    invoke-static {v2, v3, v4, v1, v3}, Ljava/lang/StringUTF16;->getChars([BII[CI)V

    .line 760
    :goto_21
    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    const-string v2, "count"

    iget v4, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {v0, v2, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 762
    const-string v2, "shared"

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 763
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 764
    monitor-exit p0

    return-void

    .line 752
    .end local v0    # "fields":Ljava/io/ObjectOutputStream$PutField;
    .end local v1    # "val":[C
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic blacklist append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist test-api append(C)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "c"    # C

    monitor-enter p0

    .line 430
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 431
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 432
    monitor-exit p0

    return-object p0

    .line 429
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "c":C
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(D)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "d"    # D

    monitor-enter p0

    .line 469
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 470
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(D)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 471
    monitor-exit p0

    return-object p0

    .line 468
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "d":D
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(F)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "f"    # F

    monitor-enter p0

    .line 462
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 463
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(F)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 464
    monitor-exit p0

    return-object p0

    .line 461
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "f":F
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(I)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "i"    # I

    monitor-enter p0

    .line 438
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 439
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(I)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 440
    monitor-exit p0

    return-object p0

    .line 437
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "i":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(J)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "lng"    # J

    monitor-enter p0

    .line 455
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 456
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(J)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 457
    monitor-exit p0

    return-object p0

    .line 454
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "lng":J
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method declared-synchronized greylist-max-o append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "asb"    # Ljava/lang/AbstractStringBuilder;

    monitor-enter p0

    .line 358
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 359
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 360
    monitor-exit p0

    return-object p0

    .line 357
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "asb":Ljava/lang/AbstractStringBuilder;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    monitor-enter p0

    .line 386
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 387
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 388
    monitor-exit p0

    return-object p0

    .line 385
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "s":Ljava/lang/CharSequence;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    monitor-enter p0

    .line 398
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 399
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 400
    monitor-exit p0

    return-object p0

    .line 397
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "s":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 307
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 308
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 309
    monitor-exit p0

    return-object p0

    .line 306
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    monitor-enter p0

    .line 318
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 319
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 320
    monitor-exit p0

    return-object p0

    .line 317
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "str":Ljava/lang/String;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    monitor-enter p0

    .line 348
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 349
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 350
    monitor-exit p0

    return-object p0

    .line 347
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "sb":Ljava/lang/StringBuffer;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(Z)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "b"    # Z

    monitor-enter p0

    .line 422
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 423
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Z)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 424
    monitor-exit p0

    return-object p0

    .line 421
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "b":Z
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append([C)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "str"    # [C

    monitor-enter p0

    .line 405
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 406
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append([C)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 407
    monitor-exit p0

    return-object p0

    .line 404
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "str":[C
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api append([CII)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 415
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 416
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 417
    monitor-exit p0

    return-object p0

    .line 414
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "str":[C
    .end local p2    # "offset":I
    .end local p3    # "len":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist test-api appendCodePoint(I)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "codePoint"    # I

    monitor-enter p0

    .line 448
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 449
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 450
    monitor-exit p0

    return-object p0

    .line 447
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "codePoint":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api capacity()I
    .registers 2

    monitor-enter p0

    .line 213
    :try_start_1
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->capacity()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 213
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized whitelist test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 246
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 246
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public bridge synthetic whitelist test-api chars()Ljava/util/stream/IntStream;
    .registers 2

    .line 107
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api codePointAt(I)I
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 255
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 255
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized whitelist test-api codePointBefore(I)I
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 264
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 264
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized whitelist test-api codePointCount(II)I
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    monitor-enter p0

    .line 273
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 273
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "beginIndex":I
    .end local p2    # "endIndex":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public bridge synthetic whitelist test-api codePoints()Ljava/util/stream/IntStream;
    .registers 2

    .line 107
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

    .line 107
    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->compareTo(Ljava/lang/StringBuffer;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized whitelist test-api compareTo(Ljava/lang/StringBuffer;)I
    .registers 3
    .param p1, "another"    # Ljava/lang/StringBuffer;

    monitor-enter p0

    .line 200
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->compareTo(Ljava/lang/AbstractStringBuilder;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 200
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "another":Ljava/lang/StringBuffer;
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist test-api delete(II)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    monitor-enter p0

    .line 480
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 481
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->delete(II)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 482
    monitor-exit p0

    return-object p0

    .line 479
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "start":I
    .end local p2    # "end":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
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

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist test-api deleteCharAt(I)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 491
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 492
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 493
    monitor-exit p0

    return-object p0

    .line 490
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api ensureCapacity(I)V
    .registers 2
    .param p1, "minimumCapacity"    # I

    monitor-enter p0

    .line 219
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 220
    monitor-exit p0

    return-void

    .line 218
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "minimumCapacity":I
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method declared-synchronized blacklist getBytes([BIB)V
    .registers 4
    .param p1, "dst"    # [B
    .param p2, "dstBegin"    # I
    .param p3, "coder"    # B

    monitor-enter p0

    .line 779
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->getBytes([BIB)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 780
    monitor-exit p0

    return-void

    .line 778
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "dst":[B
    .end local p2    # "dstBegin":I
    .end local p3    # "coder":B
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized whitelist test-api getChars(II[CI)V
    .registers 5
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    monitor-enter p0

    .line 292
    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 293
    monitor-exit p0

    return-void

    .line 291
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "srcBegin":I
    .end local p2    # "srcEnd":I
    .end local p3    # "dst":[C
    .end local p4    # "dstBegin":I
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public whitelist test-api indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 679
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api indexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    monitor-enter p0

    .line 687
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 687
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "str":Ljava/lang/String;
    .end local p2    # "fromIndex":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->insert(ID)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IF)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->insert(IJ)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IZ)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

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

    .line 107
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist test-api insert(IC)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "c"    # C

    monitor-enter p0

    .line 620
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 621
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IC)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 622
    monitor-exit p0

    return-object p0

    .line 619
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "offset":I
    .end local p2    # "c":C
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public whitelist test-api insert(ID)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .line 669
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(ID)Ljava/lang/AbstractStringBuilder;

    .line 670
    return-object p0
.end method

.method public whitelist test-api insert(IF)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .line 657
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IF)Ljava/lang/AbstractStringBuilder;

    .line 658
    return-object p0
.end method

.method public whitelist test-api insert(II)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .line 633
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(II)Ljava/lang/AbstractStringBuilder;

    .line 634
    return-object p0
.end method

.method public whitelist test-api insert(IJ)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .line 645
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(IJ)Ljava/lang/AbstractStringBuilder;

    .line 646
    return-object p0
.end method

.method public whitelist test-api insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .line 586
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    .line 587
    return-object p0
.end method

.method public declared-synchronized whitelist test-api insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    monitor-enter p0

    .line 598
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 600
    monitor-exit p0

    return-object p0

    .line 597
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "dstOffset":I
    .end local p2    # "s":Ljava/lang/CharSequence;
    .end local p3    # "start":I
    .end local p4    # "end":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 552
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 553
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 554
    monitor-exit p0

    return-object p0

    .line 551
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "offset":I
    .end local p2    # "obj":Ljava/lang/Object;
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public declared-synchronized whitelist test-api insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    monitor-enter p0

    .line 562
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 563
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 564
    monitor-exit p0

    return-object p0

    .line 561
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "offset":I
    .end local p2    # "str":Ljava/lang/String;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public whitelist test-api insert(IZ)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .line 611
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IZ)Ljava/lang/AbstractStringBuilder;

    .line 612
    return-object p0
.end method

.method public declared-synchronized whitelist test-api insert(I[C)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    monitor-enter p0

    .line 572
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 573
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(I[C)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 574
    monitor-exit p0

    return-object p0

    .line 571
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "offset":I
    .end local p2    # "str":[C
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api insert(I[CII)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    monitor-enter p0

    .line 542
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 543
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(I[CII)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 544
    monitor-exit p0

    return-object p0

    .line 541
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    .end local p2    # "str":[C
    .end local p3    # "offset":I
    .end local p4    # "len":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 696
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    monitor-enter p0

    .line 704
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 704
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "str":Ljava/lang/String;
    .end local p2    # "fromIndex":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized whitelist test-api length()I
    .registers 2
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_1
    iget v0, p0, Ljava/lang/StringBuffer;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 208
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized whitelist test-api offsetByCodePoints(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    monitor-enter p0

    .line 282
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 282
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    .end local p2    # "codePointOffset":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
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

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist test-api replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    monitor-enter p0

    .line 502
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 503
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 504
    monitor-exit p0

    return-object p0

    .line 501
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "str":Ljava/lang/String;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public bridge synthetic blacklist reverse()Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api reverse()Ljava/lang/StringBuffer;
    .registers 2

    monitor-enter p0

    .line 712
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 713
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->reverse()Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 714
    monitor-exit p0

    return-object p0

    .line 711
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized whitelist test-api setCharAt(IC)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "ch"    # C

    monitor-enter p0

    .line 301
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 302
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 303
    monitor-exit p0

    return-void

    .line 300
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    .end local p2    # "ch":C
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api setLength(I)V
    .registers 3
    .param p1, "newLength"    # I

    monitor-enter p0

    .line 236
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    .line 237
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 238
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "newLength":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    monitor-enter p0

    .line 522
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 522
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "start":I
    .end local p2    # "end":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized whitelist test-api substring(I)Ljava/lang/String;
    .registers 3
    .param p1, "start"    # I

    monitor-enter p0

    .line 513
    :try_start_1
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 513
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "start":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    monitor-enter p0

    .line 531
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 531
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "start":I
    .end local p2    # "end":I
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 4
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    monitor-enter p0

    .line 721
    :try_start_1
    iget-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 722
    nop

    .line 723
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->isLatin1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[B

    iget v2, p0, Ljava/lang/StringBuffer;->count:I

    invoke-static {v0, v1, v2}, Ljava/lang/StringLatin1;->newString([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 724
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :cond_16
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[B

    iget v2, p0, Ljava/lang/StringBuffer;->count:I

    invoke-static {v0, v1, v2}, Ljava/lang/StringUTF16;->newString([BII)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2b

    .line 722
    monitor-exit p0

    return-object v0

    .line 726
    :cond_22
    :try_start_22
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/StringBuffer;->toStringCache:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v0

    .line 720
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public declared-synchronized whitelist test-api trimToSize()V
    .registers 2

    monitor-enter p0

    .line 227
    :try_start_1
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 228
    monitor-exit p0

    return-void

    .line 226
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method
