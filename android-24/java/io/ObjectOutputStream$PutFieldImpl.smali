.class Ljava/io/ObjectOutputStream$PutFieldImpl;
.super Ljava/io/ObjectOutputStream$PutField;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PutFieldImpl"
.end annotation


# instance fields
.field private final desc:Ljava/io/ObjectStreamClass;

.field private final objVals:[Ljava/lang/Object;

.field private final primVals:[B

.field final synthetic this$0:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor <init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V
    .locals 1
    .param p1, "this$0"    # Ljava/io/ObjectOutputStream;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;

    #@0
    .prologue
    .line 1652
    iput-object p1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    #@2
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    #@5
    .line 1653
    iput-object p2, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    #@7
    .line 1654
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    #@a
    move-result v0

    #@b
    new-array v0, v0, [B

    #@d
    iput-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@f
    .line 1655
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    #@12
    move-result v0

    #@13
    new-array v0, v0, [Ljava/lang/Object;

    #@15
    iput-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    #@17
    .line 1652
    return-void
.end method

.method private getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1760
    iget-object v1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    #@2
    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    #@5
    move-result-object v0

    #@6
    .line 1761
    .local v0, "field":Ljava/io/ObjectStreamField;
    if-nez v0, :cond_0

    #@8
    .line 1762
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "no such field "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    .line 1763
    const-string/jumbo v3, " with type "

    #@1d
    .line 1762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 1765
    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    #@30
    move-result v1

    #@31
    return v1
.end method


# virtual methods
.method public put(Ljava/lang/String;B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B

    #@0
    .prologue
    .line 1663
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@2
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@7
    move-result v1

    #@8
    aput-byte p2, v0, v1

    #@a
    .line 1662
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C

    #@0
    .prologue
    .line 1667
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putChar([BIC)V

    #@b
    .line 1666
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D

    #@0
    .prologue
    .line 1687
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@2
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1, p2, p3}, Ljava/io/Bits;->putDouble([BID)V

    #@b
    .line 1686
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F

    #@0
    .prologue
    .line 1679
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@2
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putFloat([BIF)V

    #@b
    .line 1678
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    #@0
    .prologue
    .line 1675
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putInt([BII)V

    #@b
    .line 1674
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    #@0
    .prologue
    .line 1683
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1, p2, p3}, Ljava/io/Bits;->putLong([BIJ)V

    #@b
    .line 1682
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1691
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    #@2
    const-class v1, Ljava/lang/Object;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@7
    move-result v1

    #@8
    aput-object p2, v0, v1

    #@a
    .line 1690
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S

    #@0
    .prologue
    .line 1671
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putShort([BIS)V

    #@b
    .line 1670
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    #@0
    .prologue
    .line 1659
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putBoolean([BIZ)V

    #@b
    .line 1658
    return-void
.end method

.method public write(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1711
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    #@3
    if-eq v3, p1, :cond_0

    #@5
    .line 1712
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v4, "wrong stream"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 1714
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@10
    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@12
    array-length v4, v4

    #@13
    invoke-interface {p1, v3, v5, v4}, Ljava/io/ObjectOutput;->write([BII)V

    #@16
    .line 1716
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    #@18
    invoke-virtual {v3, v5}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    #@1b
    move-result-object v0

    #@1c
    .line 1717
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v3, v0

    #@1d
    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    #@1f
    array-length v4, v4

    #@20
    sub-int v2, v3, v4

    #@22
    .line 1719
    .local v2, "numPrimFields":I
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    #@25
    array-length v3, v3

    #@26
    if-ge v1, v3, :cond_2

    #@28
    .line 1720
    add-int v3, v2, v1

    #@2a
    aget-object v3, v0, v3

    #@2c
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 1721
    new-instance v3, Ljava/io/IOException;

    #@34
    const-string/jumbo v4, "cannot write unshared object"

    #@37
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v3

    #@3b
    .line 1723
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    #@3d
    aget-object v3, v3, v1

    #@3f
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    #@42
    .line 1719
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 1695
    :cond_2
    return-void
.end method

.method writeFields()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1731
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    #@3
    invoke-static {v3}, Ljava/io/ObjectOutputStream;->-get0(Ljava/io/ObjectOutputStream;)Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    #@6
    move-result-object v3

    #@7
    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@9
    iget-object v5, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    #@b
    array-length v5, v5

    #@c
    invoke-virtual {v3, v4, v6, v5, v6}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    #@f
    .line 1733
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    #@11
    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    #@14
    move-result-object v0

    #@15
    .line 1734
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v3, v0

    #@16
    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    #@18
    array-length v4, v4

    #@19
    sub-int v2, v3, v4

    #@1b
    .line 1735
    .local v2, "numPrimFields":I
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    #@1e
    array-length v3, v3

    #@1f
    if-ge v1, v3, :cond_0

    #@21
    .line 1743
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    #@23
    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    #@25
    aget-object v4, v4, v1

    #@27
    .line 1744
    add-int v5, v2, v1

    #@29
    aget-object v5, v0, v5

    #@2b
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@2e
    move-result v5

    #@2f
    .line 1743
    invoke-static {v3, v4, v5}, Ljava/io/ObjectOutputStream;->-wrap2(Ljava/io/ObjectOutputStream;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 1735
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1745
    :catchall_0
    move-exception v3

    #@36
    throw v3

    #@37
    .line 1730
    :cond_0
    return-void
.end method
