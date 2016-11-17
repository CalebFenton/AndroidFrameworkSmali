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
.field private final desc:Ljava/io/ObjectStreamClass;

.field private final objHandles:[I

.field private final objVals:[Ljava/lang/Object;

.field private final primVals:[B

.field final synthetic this$0:Ljava/io/ObjectInputStream;


# direct methods
.method constructor <init>(Ljava/io/ObjectInputStream;Ljava/io/ObjectStreamClass;)V
    .locals 1
    .param p1, "this$0"    # Ljava/io/ObjectInputStream;
    .param p2, "desc"    # Ljava/io/ObjectStreamClass;

    #@0
    .prologue
    .line 2082
    iput-object p1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    #@2
    invoke-direct {p0}, Ljava/io/ObjectInputStream$GetField;-><init>()V

    #@5
    .line 2083
    iput-object p2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    #@7
    .line 2084
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getPrimDataSize()I

    #@a
    move-result v0

    #@b
    new-array v0, v0, [B

    #@d
    iput-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@f
    .line 2085
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getNumObjFields()I

    #@12
    move-result v0

    #@13
    new-array v0, v0, [Ljava/lang/Object;

    #@15
    iput-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    #@17
    .line 2086
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    #@19
    array-length v0, v0

    #@1a
    new-array v0, v0, [I

    #@1c
    iput-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    #@1e
    .line 2082
    return-void
.end method

.method private getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 2176
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    #@2
    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    #@5
    move-result-object v0

    #@6
    .line 2177
    .local v0, "field":Ljava/io/ObjectStreamField;
    if-eqz v0, :cond_0

    #@8
    .line 2178
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 2179
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    #@f
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getLocalDesc()Ljava/io/ObjectStreamClass;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1, p2}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 2180
    const/4 v1, -0x1

    #@1a
    return v1

    #@1b
    .line 2182
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "no such field "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 2183
    const-string/jumbo v3, " with type "

    #@30
    .line 2182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2094
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@5
    move-result v1

    #@6
    if-gez v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public get(Ljava/lang/String;B)B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2103
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@5
    move-result v0

    #@6
    .line 2104
    .local v0, "off":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@a
    aget-byte p2, v1, v0

    #@c
    .end local p2    # "val":B
    :cond_0
    return p2
.end method

.method public get(Ljava/lang/String;C)C
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2108
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@5
    move-result v0

    #@6
    .line 2109
    .local v0, "off":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@a
    invoke-static {v1, v0}, Ljava/io/Bits;->getChar([BI)C

    #@d
    move-result p2

    #@e
    .end local p2    # "val":C
    :cond_0
    return p2
.end method

.method public get(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2133
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@5
    move-result v0

    #@6
    .line 2134
    .local v0, "off":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@a
    invoke-static {v1, v0}, Ljava/io/Bits;->getDouble([BI)D

    #@d
    move-result-wide p2

    #@e
    .end local p2    # "val":D
    :cond_0
    return-wide p2
.end method

.method public get(Ljava/lang/String;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2123
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@5
    move-result v0

    #@6
    .line 2124
    .local v0, "off":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@a
    invoke-static {v1, v0}, Ljava/io/Bits;->getFloat([BI)F

    #@d
    move-result p2

    #@e
    .end local p2    # "val":F
    :cond_0
    return p2
.end method

.method public get(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2118
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@5
    move-result v0

    #@6
    .line 2119
    .local v0, "off":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@a
    invoke-static {v1, v0}, Ljava/io/Bits;->getInt([BI)I

    #@d
    move-result p2

    #@e
    .end local p2    # "val":I
    :cond_0
    return p2
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2128
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@5
    move-result v0

    #@6
    .line 2129
    .local v0, "off":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@a
    invoke-static {v1, v0}, Ljava/io/Bits;->getLong([BI)J

    #@d
    move-result-wide p2

    #@e
    .end local p2    # "val":J
    :cond_0
    return-wide p2
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2138
    const-class v3, Ljava/lang/Object;

    #@3
    invoke-direct {p0, p1, v3}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@6
    move-result v1

    #@7
    .line 2139
    .local v1, "off":I
    if-ltz v1, :cond_1

    #@9
    .line 2140
    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    #@b
    aget v0, v3, v1

    #@d
    .line 2141
    .local v0, "objHandle":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    #@f
    invoke-static {v3}, Ljava/io/ObjectInputStream;->-get2(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    #@12
    move-result-object v3

    #@13
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    #@15
    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get3(Ljava/io/ObjectInputStream;)I

    #@18
    move-result v4

    #@19
    invoke-virtual {v3, v4, v0}, Ljava/io/ObjectInputStream$HandleTable;->markDependency(II)V

    #@1c
    .line 2142
    iget-object v3, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    #@1e
    invoke-static {v3}, Ljava/io/ObjectInputStream;->-get2(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$HandleTable;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v0}, Ljava/io/ObjectInputStream$HandleTable;->lookupException(I)Ljava/lang/ClassNotFoundException;

    #@25
    move-result-object v3

    #@26
    if-nez v3, :cond_0

    #@28
    .line 2143
    iget-object v2, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    #@2a
    aget-object v2, v2, v1

    #@2c
    .line 2142
    :cond_0
    return-object v2

    #@2d
    .line 2145
    .end local v0    # "objHandle":I
    :cond_1
    return-object p2
.end method

.method public get(Ljava/lang/String;S)S
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2113
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@5
    move-result v0

    #@6
    .line 2114
    .local v0, "off":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@a
    invoke-static {v1, v0}, Ljava/io/Bits;->getShort([BI)S

    #@d
    move-result p2

    #@e
    .end local p2    # "val":S
    :cond_0
    return p2
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2098
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@2
    invoke-direct {p0, p1, v1}, Ljava/io/ObjectInputStream$GetFieldImpl;->getFieldOffset(Ljava/lang/String;Ljava/lang/Class;)I

    #@5
    move-result v0

    #@6
    .line 2099
    .local v0, "off":I
    if-ltz v0, :cond_0

    #@8
    iget-object v1, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@a
    invoke-static {v1, v0}, Ljava/io/Bits;->getBoolean([BI)Z

    #@d
    move-result p2

    #@e
    .end local p2    # "val":Z
    :cond_0
    return p2
.end method

.method public getObjectStreamClass()Ljava/io/ObjectStreamClass;
    .locals 1

    #@0
    .prologue
    .line 2090
    iget-object v0, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    #@2
    return-object v0
.end method

.method readFields()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2153
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    #@3
    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get0(Ljava/io/ObjectInputStream;)Ljava/io/ObjectInputStream$BlockDataInputStream;

    #@6
    move-result-object v4

    #@7
    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@9
    iget-object v6, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->primVals:[B

    #@b
    array-length v6, v6

    #@c
    invoke-virtual {v4, v5, v7, v6, v7}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    #@f
    .line 2155
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    #@11
    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get3(Ljava/io/ObjectInputStream;)I

    #@14
    move-result v3

    #@15
    .line 2156
    .local v3, "oldHandle":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->desc:Ljava/io/ObjectStreamClass;

    #@17
    invoke-virtual {v4, v7}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    #@1a
    move-result-object v0

    #@1b
    .line 2157
    .local v0, "fields":[Ljava/io/ObjectStreamField;
    array-length v4, v0

    #@1c
    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    #@1e
    array-length v5, v5

    #@1f
    sub-int v2, v4, v5

    #@21
    .line 2158
    .local v2, "numPrimFields":I
    const/4 v1, 0x0

    #@22
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    #@24
    array-length v4, v4

    #@25
    if-ge v1, v4, :cond_0

    #@27
    .line 2159
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objVals:[Ljava/lang/Object;

    #@29
    .line 2160
    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    #@2b
    add-int v6, v2, v1

    #@2d
    aget-object v6, v0, v6

    #@2f
    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@32
    move-result v6

    #@33
    invoke-static {v5, v6}, Ljava/io/ObjectInputStream;->-wrap0(Ljava/io/ObjectInputStream;Z)Ljava/lang/Object;

    #@36
    move-result-object v5

    #@37
    .line 2159
    aput-object v5, v4, v1

    #@39
    .line 2161
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->objHandles:[I

    #@3b
    iget-object v5, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    #@3d
    invoke-static {v5}, Ljava/io/ObjectInputStream;->-get3(Ljava/io/ObjectInputStream;)I

    #@40
    move-result v5

    #@41
    aput v5, v4, v1

    #@43
    .line 2158
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_0

    #@46
    .line 2163
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectInputStream$GetFieldImpl;->this$0:Ljava/io/ObjectInputStream;

    #@48
    invoke-static {v4, v3}, Ljava/io/ObjectInputStream;->-set0(Ljava/io/ObjectInputStream;I)I

    #@4b
    .line 2152
    return-void
.end method
