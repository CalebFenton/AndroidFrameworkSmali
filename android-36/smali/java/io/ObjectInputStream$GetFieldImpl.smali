.class Ljava/io/ObjectInputStream$GetFieldImpl;
.super Ljava/io/ObjectInputStream$GetField;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFieldImpl"
.end annotation


# instance fields
.field private final greylist-max-o desc:Ljava/io/ObjectStreamClass;

.field private final greylist-max-o objHandles:[I

.field private final greylist-max-o objVals:[Ljava/lang/Object;

.field private final greylist-max-o primVals:[B

.field final synthetic blacklist this$0:Ljava/io/ObjectInputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V
    .registers 3
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2429
    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream$GetField;-><init>()V

    .line 2430
    iput-object p2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    .line 2431
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    .line 2432
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    .line 2433
    iget-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    .line 2434
    return-void
.end method

.method private greylist-max-o getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2523
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 2524
    .local v0, "field":Ljava/io/ObjectStreamField;
    if-eqz v0, :cond_d

    .line 2525
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v1

    return v1

    .line 2526
    :cond_d
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getLocalDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 2527
    const/4 v1, -0x1

    return v1

    .line 2529
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api defaulted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2441
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api get(Ljava/lang/String;B)B
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2450
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2451
    .local v0, "off":I
    if-ltz v0, :cond_d

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    aget-byte v1, v1, v0

    goto :goto_e

    :cond_d
    move v1, p2

    :goto_e
    return v1
.end method

.method public whitelist test-api get(Ljava/lang/String;C)C
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2455
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2456
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getChar([BI)C

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p2

    :goto_10
    return v1
.end method

.method public whitelist test-api get(Ljava/lang/String;D)D
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2480
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2481
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide v1

    goto :goto_10

    :cond_f
    move-wide v1, p2

    :goto_10
    return-wide v1
.end method

.method public whitelist test-api get(Ljava/lang/String;F)F
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2470
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2471
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getFloat([BI)F

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p2

    :goto_10
    return v1
.end method

.method public whitelist test-api get(Ljava/lang/String;I)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2465
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2466
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getInt([BI)I

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p2

    :goto_10
    return v1
.end method

.method public whitelist test-api get(Ljava/lang/String;J)J
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2475
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2476
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v1

    goto :goto_10

    :cond_f
    move-wide v1, p2

    :goto_10
    return-wide v1
.end method

.method public whitelist test-api get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2485
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2486
    .local v0, "off":I
    if-ltz v0, :cond_2e

    .line 2487
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    aget v1, v1, v0

    .line 2488
    .local v1, "objHandle":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v2}, Ljava/io/ObjectInputStream;->-$$Nest$fgethandles(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v2

    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v3}, Ljava/io/ObjectInputStream;->-$$Nest$fgetpassHandle(Ljava/io/ObjectInputStream;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 2489
    iget-object v2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v2}, Ljava/io/ObjectInputStream;->-$$Nest$fgethandles(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 2490
    iget-object v2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 2489
    :goto_2d
    return-object v2

    .line 2492
    .end local v1    # "objHandle":I
    :cond_2e
    return-object p2
.end method

.method public whitelist test-api get(Ljava/lang/String;S)S
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2460
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2461
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getShort([BI)S

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p2

    :goto_10
    return v1
.end method

.method public whitelist test-api get(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2445
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2446
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    invoke-static {v1, v0}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p2

    :goto_10
    return v1
.end method

.method public whitelist test-api getObjectStreamClass()Ljava/io/ObjectStreamClass;
    .registers 2

    .line 2437
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method greylist-max-o readFields()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2500
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v0}, Ljava/io/ObjectInputStream;->-$$Nest$fgetbin(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-result-object v0

    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    iget-object v2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 2502
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v0}, Ljava/io/ObjectInputStream;->-$$Nest$fgetpassHandle(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 2503
    .local v0, "oldHandle":I
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v1

    .line 2504
    .local v1, "fields":[Ljava/io/ObjectStreamField;
    array-length v2, v1

    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v2, v3

    .line 2505
    .local v2, "numPrimFields":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v3, v4, :cond_45

    .line 2506
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    add-int v6, v2, v3

    aget-object v6, v1, v6

    .line 2507
    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v6

    invoke-static {v5, v6}, Ljava/io/ObjectInputStream;->-$$Nest$mreadObject0(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    .line 2508
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v5}, Ljava/io/ObjectInputStream;->-$$Nest$fgetpassHandle(Ljava/io/ObjectInputStream;)I

    move-result v5

    aput v5, v4, v3

    .line 2505
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 2510
    .end local v3    # "i":I
    :cond_45
    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v3, v0}, Ljava/io/ObjectInputStream;->-$$Nest$fputpassHandle(Ljava/io/ObjectInputStream;I)V

    .line 2511
    return-void
.end method
