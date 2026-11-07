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
.field private final greylist-max-o desc:Ljava/io/ObjectStreamClass;

.field private final greylist-max-o objVals:[Ljava/lang/Object;

.field private final greylist-max-o primVals:[B

.field final synthetic blacklist this$0:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V
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

    .line 1688
    iput-object p1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    .line 1689
    iput-object p2, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    .line 1690
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    .line 1691
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    .line 1692
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

    .line 1796
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1797
    .local v0, "field":Ljava/io/ObjectStreamField;
    if-eqz v0, :cond_d

    .line 1801
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v1

    return v1

    .line 1798
    :cond_d
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
.method public whitelist test-api put(Ljava/lang/String;B)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B

    .line 1699
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    aput-byte p2, v0, v1

    .line 1700
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;C)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C

    .line 1703
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putChar([BIC)V

    .line 1704
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;D)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D

    .line 1723
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Ljava/io/Bits;->putDouble([BID)V

    .line 1724
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;F)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F

    .line 1715
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putFloat([BIF)V

    .line 1716
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 1711
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putInt([BII)V

    .line 1712
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    .line 1719
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Ljava/io/Bits;->putLong([BIJ)V

    .line 1720
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .line 1727
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    aput-object p2, v0, v1

    .line 1728
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;S)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S

    .line 1707
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putShort([BIS)V

    .line 1708
    return-void
.end method

.method public whitelist test-api put(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .line 1695
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Ljava/io/ObjectOutputStream$PutFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 1696
    return-void
.end method

.method public whitelist test-api write(Ljava/io/ObjectOutput;)V
    .registers 7
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1747
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    if-ne v0, p1, :cond_3b

    .line 1750
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    iget-object v1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ljava/io/ObjectOutput;->write([BII)V

    .line 1752
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, v2}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1753
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v1, v0

    iget-object v2, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 1755
    .local v1, "numPrimFields":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_3a

    .line 1756
    add-int v3, v1, v2

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v3

    if-nez v3, :cond_32

    .line 1759
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1755
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1757
    :cond_32
    new-instance v3, Ljava/io/IOException;

    const-string v4, "cannot write unshared object"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1761
    .end local v2    # "i":I
    :cond_3a
    return-void

    .line 1748
    .end local v0    # "fields":[Ljava/io/ObjectStreamField;
    .end local v1    # "numPrimFields":I
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o writeFields()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1767
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    invoke-static {v0}, Ljava/io/ObjectOutputStream;->-$$Nest$fgetbout(Ljava/io/ObjectOutputStream;)Ljava/io/ObjectOutputStream$BlockDataOutputStream;

    move-result-object v0

    iget-object v1, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    iget-object v2, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->primVals:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1769
    iget-object v0, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    .line 1770
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v1, v0

    iget-object v2, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 1771
    .local v1, "numPrimFields":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_37

    .line 1779
    :try_start_20
    iget-object v3, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->this$0:Ljava/io/ObjectOutputStream;

    iget-object v4, p0, Ljava/io/ObjectOutputStream$PutFieldImpl;->objVals:[Ljava/lang/Object;

    aget-object v4, v4, v2

    add-int v5, v1, v2

    aget-object v5, v0, v5

    .line 1780
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v5

    .line 1779
    invoke-static {v3, v4, v5}, Ljava/io/ObjectOutputStream;->-$$Nest$mwriteObject0(Ljava/io/ObjectOutputStream;Ljava/lang/Object;Z)V
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_35

    .line 1785
    nop

    .line 1771
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1782
    :catchall_35
    move-exception v3

    .line 1785
    throw v3

    .line 1787
    .end local v2    # "i":I
    :cond_37
    return-void
.end method
