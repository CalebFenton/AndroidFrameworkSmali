.class final Ljava/io/ObjectInputStream$FieldValues;
.super Ljava/io/ObjectInputStream$GetField;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FieldValues"
.end annotation


# instance fields
.field private final blacklist desc:Ljava/io/ObjectStreamClass;

.field private final blacklist objHandles:[I

.field final blacklist objValues:[Ljava/lang/Object;

.field final blacklist primValues:[B

.field final synthetic blacklist this$0:Ljava/io/ObjectInputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;Z)V
    .registers 13
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;
    .param p3, "recordDependencies"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
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

    .line 2282
    iput-object p1, p0, Ljava/io/ObjectInputStream$FieldValues;->this$0:Ljava/io/ObjectInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream$GetField;-><init>()V

    .line 2283
    iput-object p2, p0, Ljava/io/ObjectInputStream$FieldValues;->desc:Ljava/io/ObjectStreamClass;

    .line 2285
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result v0

    .line 2286
    .local v0, "primDataSize":I
    const/4 v1, 0x0

    if-lez v0, :cond_11

    new-array v2, v0, [B

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    iput-object v2, p0, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

    .line 2287
    const/4 v2, 0x0

    if-lez v0, :cond_20

    .line 2288
    invoke-static {p1}, Ljava/io/ObjectInputStream;->-$$Nest$fgetbin(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;

    move-result-object v3

    iget-object v4, p0, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

    invoke-virtual {v3, v4, v2, v0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 2291
    :cond_20
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result v3

    .line 2292
    .local v3, "numObjFields":I
    if-lez v3, :cond_29

    new-array v4, v3, [Ljava/lang/Object;

    goto :goto_2a

    :cond_29
    move-object v4, v1

    :goto_2a
    iput-object v4, p0, Ljava/io/ObjectInputStream$FieldValues;->objValues:[Ljava/lang/Object;

    .line 2293
    if-lez v3, :cond_30

    new-array v1, v3, [I

    :cond_30
    iput-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->objHandles:[I

    .line 2294
    if-lez v3, :cond_78

    .line 2295
    invoke-static {p1}, Ljava/io/ObjectInputStream;->-$$Nest$fgetpassHandle(Ljava/io/ObjectInputStream;)I

    move-result v1

    .line 2296
    .local v1, "objHandle":I
    invoke-virtual {p2, v2}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v2

    .line 2297
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    array-length v4, v2

    iget-object v5, p0, Ljava/io/ObjectInputStream$FieldValues;->objValues:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v4, v5

    .line 2298
    .local v4, "numPrimFields":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_42
    iget-object v6, p0, Ljava/io/ObjectInputStream$FieldValues;->objValues:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v5, v6, :cond_75

    .line 2299
    add-int v6, v4, v5

    aget-object v6, v2, v6

    .line 2303
    .local v6, "f":Ljava/io/ObjectStreamField;
    iget-object v7, p0, Ljava/io/ObjectInputStream$FieldValues;->objValues:[Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v8

    invoke-static {p1, v8}, Ljava/io/ObjectInputStream;->-$$Nest$mreadObject0(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v5

    .line 2304
    iget-object v7, p0, Ljava/io/ObjectInputStream$FieldValues;->objHandles:[I

    invoke-static {p1}, Ljava/io/ObjectInputStream;->-$$Nest$fgetpassHandle(Ljava/io/ObjectInputStream;)I

    move-result v8

    aput v8, v7, v5

    .line 2305
    if-eqz p3, :cond_72

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v7

    if-eqz v7, :cond_72

    .line 2306
    invoke-static {p1}, Ljava/io/ObjectInputStream;->-$$Nest$fgethandles(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v7

    invoke-static {p1}, Ljava/io/ObjectInputStream;->-$$Nest$fgetpassHandle(Ljava/io/ObjectInputStream;)I

    move-result v8

    invoke-virtual {v7, v1, v8}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 2298
    .end local v6    # "f":Ljava/io/ObjectStreamField;
    :cond_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 2309
    .end local v5    # "i":I
    :cond_75
    invoke-static {p1, v1}, Ljava/io/ObjectInputStream;->-$$Nest$fputpassHandle(Ljava/io/ObjectInputStream;I)V

    .line 2311
    .end local v1    # "objHandle":I
    .end local v2    # "fields":[Ljava/io/ObjectStreamField;
    .end local v4    # "numPrimFields":I
    :cond_78
    return-void
.end method

.method private blacklist getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I
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

    .line 2399
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/io/ObjectInputStream$FieldValues;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 2400
    .local v0, "field":Ljava/io/ObjectStreamField;
    if-eqz v0, :cond_d

    .line 2401
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v1

    return v1

    .line 2402
    :cond_d
    iget-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getLocalDesc()Ljava/io/ObjectStreamClass;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 2403
    const/4 v1, -0x1

    return v1

    .line 2405
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

    .line 2318
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$FieldValues;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

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

    .line 2327
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$FieldValues;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2328
    .local v0, "off":I
    if-ltz v0, :cond_d

    iget-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

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

    .line 2332
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$FieldValues;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2333
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

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

    .line 2357
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$FieldValues;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2358
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

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

    .line 2347
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$FieldValues;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2348
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

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

    .line 2342
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$FieldValues;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2343
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

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

    .line 2352
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$FieldValues;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2353
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

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

    .line 2362
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$FieldValues;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2363
    .local v0, "off":I
    if-ltz v0, :cond_2e

    .line 2364
    iget-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->objHandles:[I

    aget v1, v1, v0

    .line 2365
    .local v1, "objHandle":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$FieldValues;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v2}, Ljava/io/ObjectInputStream;->-$$Nest$fgethandles(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v2

    iget-object v3, p0, Ljava/io/ObjectInputStream$FieldValues;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v3}, Ljava/io/ObjectInputStream;->-$$Nest$fgetpassHandle(Ljava/io/ObjectInputStream;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    .line 2366
    iget-object v2, p0, Ljava/io/ObjectInputStream$FieldValues;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v2}, Ljava/io/ObjectInputStream;->-$$Nest$fgethandles(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 2367
    iget-object v2, p0, Ljava/io/ObjectInputStream$FieldValues;->objValues:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 2366
    :goto_2d
    return-object v2

    .line 2369
    .end local v1    # "objHandle":I
    :cond_2e
    return-object p2
.end method

.method public whitelist test-api get(Ljava/lang/String;S)S
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S

    .line 2337
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$FieldValues;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2338
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

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

    .line 2322
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectInputStream$FieldValues;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v0

    .line 2323
    .local v0, "off":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Ljava/io/ObjectInputStream$FieldValues;->primValues:[B

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

    .line 2314
    iget-object v0, p0, Ljava/io/ObjectInputStream$FieldValues;->desc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method
