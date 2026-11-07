.class final Ljava/util/CollSer;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final blacklist IMM_LIST:I = 0x1

.field static final blacklist IMM_LIST_NULLS:I = 0x4

.field static final blacklist IMM_MAP:I = 0x3

.field static final blacklist IMM_SET:I = 0x2

.field private static final whitelist serialVersionUID:J = 0x578eabb63a1ba811L


# instance fields
.field private transient blacklist array:[Ljava/lang/Object;

.field private final blacklist tag:I


# direct methods
.method varargs constructor blacklist <init>(I[Ljava/lang/Object;)V
    .registers 3
    .param p1, "t"    # I
    .param p2, "a"    # [Ljava/lang/Object;

    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1434
    iput p1, p0, Ljava/util/CollSer;->tag:I

    .line 1435
    iput-object p2, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    .line 1436
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1454
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1455
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1457
    .local v0, "len":I
    if-ltz v0, :cond_23

    .line 1461
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    invoke-interface {v1, p1, v2, v0}, Ljdk/internal/access/JavaObjectInputStreamAccess;->checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V

    .line 1462
    new-array v1, v0, [Ljava/lang/Object;

    .line 1463
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_20

    .line 1464
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1463
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1467
    .end local v2    # "i":I
    :cond_20
    iput-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    .line 1468
    return-void

    .line 1458
    .end local v1    # "a":[Ljava/lang/Object;
    :cond_23
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negative length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1512
    :try_start_0
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    if-eqz v0, :cond_66

    .line 1518
    iget v0, p0, Ljava/util/CollSer;->tag:I

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_7a

    .line 1535
    new-instance v0, Ljava/io/InvalidObjectException;

    goto :goto_52

    .line 1522
    :pswitch_e
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v1, v1

    const-class v2, [Ljava/lang/Object;

    .line 1523
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1522
    invoke-static {v0}, Ljava/util/ImmutableCollections;->listFromTrustedArrayNullsAllowed([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1527
    :pswitch_1e
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_26

    .line 1528
    sget-object v0, Ljava/util/ImmutableCollections;->EMPTY_MAP:Ljava/util/ImmutableCollections$MapN;

    return-object v0

    .line 1529
    :cond_26
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 1530
    new-instance v0, Ljava/util/ImmutableCollections$Map1;

    iget-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Ljava/util/ImmutableCollections$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1532
    :cond_3c
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    iget-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 1525
    :pswitch_44
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1520
    :pswitch_4b
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1535
    :goto_52
    const-string v1, "invalid flags 0x%x"

    iget v2, p0, Ljava/util/CollSer;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/CollSer;
    throw v0

    .line 1513
    .restart local p0    # "this":Ljava/util/CollSer;
    :cond_66
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "null array"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/CollSer;
    throw v0
    :try_end_6e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6e} :catch_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6e} :catch_6e

    .line 1537
    .restart local p0    # "this":Ljava/util/CollSer;
    :catch_6e
    move-exception v0

    .line 1538
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "invalid object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1539
    .local v1, "ioe":Ljava/io/InvalidObjectException;
    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1540
    throw v1

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_44
        :pswitch_1e
        :pswitch_e
    .end packed-switch
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1484
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1485
    iget-object v0, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 1487
    iget-object v1, p0, Ljava/util/CollSer;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1486
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1489
    .end local v0    # "i":I
    :cond_19
    return-void
.end method
