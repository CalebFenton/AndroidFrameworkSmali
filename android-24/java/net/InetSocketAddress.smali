.class public Ljava/net/InetSocketAddress;
.super Ljava/net/SocketAddress;
.source "InetSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    }
.end annotation


# static fields
.field private static final FIELDS_OFFSET:J

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x467194616ff9aa45L


# instance fields
.field private final transient holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 274
    const/4 v2, 0x3

    #@1
    new-array v2, v2, [Ljava/io/ObjectStreamField;

    #@3
    .line 275
    new-instance v3, Ljava/io/ObjectStreamField;

    #@5
    const-string/jumbo v4, "hostname"

    #@8
    const-class v5, Ljava/lang/String;

    #@a
    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d
    const/4 v4, 0x0

    #@e
    aput-object v3, v2, v4

    #@10
    .line 276
    new-instance v3, Ljava/io/ObjectStreamField;

    #@12
    const-string/jumbo v4, "addr"

    #@15
    const-class v5, Ljava/net/InetAddress;

    #@17
    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1a
    const/4 v4, 0x1

    #@1b
    aput-object v3, v2, v4

    #@1d
    .line 277
    new-instance v3, Ljava/io/ObjectStreamField;

    #@1f
    const-string/jumbo v4, "port"

    #@22
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@24
    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@27
    const/4 v4, 0x2

    #@28
    aput-object v3, v2, v4

    #@2a
    .line 274
    sput-object v2, Ljava/net/InetSocketAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@2c
    .line 321
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@2f
    move-result-object v1

    #@30
    .line 323
    .local v1, "unsafe":Lsun/misc/Unsafe;
    const-class v2, Ljava/net/InetSocketAddress;

    #@32
    const-string/jumbo v3, "holder"

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@38
    move-result-object v2

    #@39
    .line 322
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@3c
    move-result-wide v2

    #@3d
    sput-wide v2, Ljava/net/InetSocketAddress;->FIELDS_OFFSET:J

    #@3f
    .line 324
    sput-object v1, Ljava/net/InetSocketAddress;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 53
    return-void

    #@42
    .line 325
    :catch_0
    move-exception v0

    #@43
    .line 326
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    #@45
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@48
    throw v2
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 157
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    #@4
    .line 159
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, v2, v2, v1, v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    #@a
    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@c
    .line 157
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    #@0
    .prologue
    .line 175
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/net/InetAddress;

    #@3
    invoke-direct {p0, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@6
    .line 174
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 240
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    #@4
    .line 241
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@6
    invoke-direct {v0, p2, v1, p1, v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    #@9
    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@b
    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    #@3
    .line 228
    invoke-static {p1}, Ljava/net/InetSocketAddress;->checkHost(Ljava/lang/String;)Ljava/lang/String;

    #@6
    .line 229
    const/4 v0, 0x0

    #@7
    .line 230
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v2, 0x0

    #@8
    .line 232
    .local v2, "host":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v0

    #@c
    .line 236
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "host":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@e
    invoke-static {p2}, Ljava/net/InetSocketAddress;->checkPort(I)I

    #@11
    move-result v4

    #@12
    const/4 v5, 0x0

    #@13
    invoke-direct {v3, v2, v0, v4, v5}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    #@16
    iput-object v3, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@18
    .line 227
    return-void

    #@19
    .line 233
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "host":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@1a
    .line 234
    .local v1, "e":Ljava/net/UnknownHostException;
    move-object v2, p1

    #@1b
    .local v2, "host":Ljava/lang/String;
    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 193
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    #@4
    .line 194
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@6
    .line 199
    if-nez p1, :cond_0

    #@8
    sget-object p1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@a
    .line 200
    .end local p1    # "addr":Ljava/net/InetAddress;
    :cond_0
    invoke-static {p2}, Ljava/net/InetSocketAddress;->checkPort(I)I

    #@d
    move-result v1

    #@e
    .line 194
    invoke-direct {v0, v2, p1, v1, v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    #@11
    iput-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@13
    .line 193
    return-void
.end method

.method private static checkHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 149
    if-nez p0, :cond_0

    #@2
    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "hostname can\'t be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 151
    :cond_0
    return-object p0
.end method

.method private static checkPort(I)I
    .locals 3
    .param p0, "port"    # I

    #@0
    .prologue
    .line 143
    if-ltz p0, :cond_0

    #@2
    const v0, 0xffff

    #@5
    if-le p0, v0, :cond_1

    #@7
    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "port out of range:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 145
    :cond_1
    return p0
.end method

.method public static createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    #@0
    .prologue
    .line 266
    new-instance v0, Ljava/net/InetSocketAddress;

    #@2
    invoke-static {p1}, Ljava/net/InetSocketAddress;->checkPort(I)I

    #@5
    move-result v1

    #@6
    invoke-static {p0}, Ljava/net/InetSocketAddress;->checkHost(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(ILjava/lang/String;)V

    #@d
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 294
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@4
    move-result-object v2

    #@5
    .line 295
    .local v2, "oisFields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v5, "hostname"

    #@8
    invoke-virtual {v2, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Ljava/lang/String;

    #@e
    .line 296
    .local v3, "oisHostname":Ljava/lang/String;
    const-string/jumbo v5, "addr"

    #@11
    invoke-virtual {v2, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/net/InetAddress;

    #@17
    .line 297
    .local v1, "oisAddr":Ljava/net/InetAddress;
    const-string/jumbo v5, "port"

    #@1a
    const/4 v6, -0x1

    #@1b
    invoke-virtual {v2, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@1e
    move-result v4

    #@1f
    .line 300
    .local v4, "oisPort":I
    invoke-static {v4}, Ljava/net/InetSocketAddress;->checkPort(I)I

    #@22
    .line 301
    if-nez v3, :cond_0

    #@24
    if-nez v1, :cond_0

    #@26
    .line 302
    new-instance v5, Ljava/io/InvalidObjectException;

    #@28
    const-string/jumbo v6, "hostname and addr can\'t both be null"

    #@2b
    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v5

    #@2f
    .line 305
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@31
    invoke-direct {v0, v3, v1, v4, v7}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V

    #@34
    .line 308
    .local v0, "h":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    sget-object v5, Ljava/net/InetSocketAddress;->UNSAFE:Lsun/misc/Unsafe;

    #@36
    sget-wide v6, Ljava/net/InetSocketAddress;->FIELDS_OFFSET:J

    #@38
    invoke-virtual {v5, p0, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@3b
    .line 291
    return-void
.end method

.method private readObjectNoData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2
    const-string/jumbo v1, "Stream data required"

    #@5
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 283
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v0

    #@4
    .line 284
    .local v0, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "hostname"

    #@7
    iget-object v2, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@9
    invoke-static {v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-get1(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@10
    .line 285
    const-string/jumbo v1, "addr"

    #@13
    iget-object v2, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@15
    invoke-static {v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-get0(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@1c
    .line 286
    const-string/jumbo v1, "port"

    #@1f
    iget-object v2, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@21
    invoke-static {v2}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-get2(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I

    #@24
    move-result v2

    #@25
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@28
    .line 287
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@2b
    .line 280
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 417
    if-eqz p1, :cond_0

    #@2
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 419
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@8
    check-cast p1, Ljava/net/InetSocketAddress;

    #@a
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@c
    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 418
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@2
    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap4(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@2
    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap2(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getHostString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@2
    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap3(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getPort()I
    .locals 1

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@2
    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap1(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@2
    invoke-virtual {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isUnresolved()Z
    .locals 1

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@2
    invoke-static {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->-wrap0(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Ljava/net/InetSocketAddress;->holder:Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    #@2
    invoke-virtual {v0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
