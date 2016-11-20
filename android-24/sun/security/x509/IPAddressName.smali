.class public Lsun/security/x509/IPAddressName;
.super Ljava/lang/Object;
.source "IPAddressName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final MASKSIZE:I = 0x10


# instance fields
.field private address:[B

.field private isIPv4:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 128
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 129
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "IPAddress cannot be null or empty"

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@18
    move-result v0

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v0

    #@1f
    const/16 v1, 0x2f

    #@21
    if-ne v0, v1, :cond_2

    #@23
    .line 132
    new-instance v0, Ljava/io/IOException;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Invalid IPAddress: "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 135
    :cond_2
    const/16 v0, 0x3a

    #@3f
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@42
    move-result v0

    #@43
    if-ltz v0, :cond_3

    #@45
    .line 139
    invoke-direct {p0, p1}, Lsun/security/x509/IPAddressName;->parseIPv6(Ljava/lang/String;)V

    #@48
    .line 140
    iput-boolean v2, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    #@4a
    .line 126
    :goto_0
    return-void

    #@4b
    .line 141
    :cond_3
    const/16 v0, 0x2e

    #@4d
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    #@50
    move-result v0

    #@51
    if-ltz v0, :cond_4

    #@53
    .line 143
    invoke-direct {p0, p1}, Lsun/security/x509/IPAddressName;->parseIPv4(Ljava/lang/String;)V

    #@56
    .line 144
    const/4 v0, 0x1

    #@57
    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    #@59
    goto :goto_0

    #@5a
    .line 146
    :cond_4
    new-instance v0, Ljava/io/IOException;

    #@5c
    new-instance v1, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v2, "Invalid IPAddress: "

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@73
    throw v0
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOctetString()[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lsun/security/x509/IPAddressName;-><init>([B)V

    #@7
    .line 81
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "address"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    array-length v0, p1

    #@4
    const/4 v1, 0x4

    #@5
    if-eq v0, v1, :cond_0

    #@7
    array-length v0, p1

    #@8
    const/16 v1, 0x8

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 98
    :cond_0
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    #@f
    .line 104
    :goto_0
    iput-object p1, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@11
    .line 91
    return-void

    #@12
    .line 99
    :cond_1
    array-length v0, p1

    #@13
    const/16 v1, 0x10

    #@15
    if-eq v0, v1, :cond_2

    #@17
    array-length v0, p1

    #@18
    const/16 v1, 0x20

    #@1a
    if-ne v0, v1, :cond_3

    #@1c
    .line 100
    :cond_2
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    #@1f
    goto :goto_0

    #@20
    .line 102
    :cond_3
    new-instance v0, Ljava/io/IOException;

    #@22
    const-string/jumbo v1, "Invalid IPAddressName"

    #@25
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0
.end method

.method private parseIPv4(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x0

    #@2
    .line 159
    const/16 v3, 0x2f

    #@4
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v2

    #@8
    .line 160
    .local v2, "slashNdx":I
    const/4 v3, -0x1

    #@9
    if-ne v2, v3, :cond_0

    #@b
    .line 161
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    #@12
    move-result-object v3

    #@13
    iput-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@15
    .line 156
    :goto_0
    return-void

    #@16
    .line 163
    :cond_0
    const/16 v3, 0x8

    #@18
    new-array v3, v3, [B

    #@1a
    iput-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@1c
    .line 167
    add-int/lit8 v3, v2, 0x1

    #@1e
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 166
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    #@29
    move-result-object v1

    #@2a
    .line 171
    .local v1, "mask":[B
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 170
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    #@35
    move-result-object v0

    #@36
    .line 173
    .local v0, "host":[B
    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@38
    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3b
    .line 174
    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@3d
    invoke-static {v1, v4, v3, v5, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@40
    goto :goto_0
.end method

.method private parseIPv6(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x80

    #@2
    const/16 v9, 0x10

    #@4
    const/4 v7, 0x0

    #@5
    .line 189
    const/16 v6, 0x2f

    #@7
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v5

    #@b
    .line 190
    .local v5, "slashNdx":I
    const/4 v6, -0x1

    #@c
    if-ne v5, v6, :cond_1

    #@e
    .line 191
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    #@15
    move-result-object v6

    #@16
    iput-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@18
    .line 187
    :cond_0
    return-void

    #@19
    .line 193
    :cond_1
    const/16 v6, 0x20

    #@1b
    new-array v6, v6, [B

    #@1d
    iput-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@1f
    .line 195
    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    .line 194
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    #@2a
    move-result-object v0

    #@2b
    .line 196
    .local v0, "base":[B
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@2d
    invoke-static {v0, v7, v6, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@30
    .line 199
    add-int/lit8 v6, v5, 0x1

    #@32
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@39
    move-result v4

    #@3a
    .line 200
    .local v4, "prefixLen":I
    if-le v4, v8, :cond_2

    #@3c
    .line 201
    new-instance v6, Ljava/io/IOException;

    #@3e
    const-string/jumbo v7, "IPv6Address prefix is longer than 128"

    #@41
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v6

    #@45
    .line 204
    :cond_2
    new-instance v1, Lsun/security/util/BitArray;

    #@47
    invoke-direct {v1, v8}, Lsun/security/util/BitArray;-><init>(I)V

    #@4a
    .line 207
    .local v1, "bitArray":Lsun/security/util/BitArray;
    const/4 v2, 0x0

    #@4b
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    #@4d
    .line 208
    const/4 v6, 0x1

    #@4e
    invoke-virtual {v1, v2, v6}, Lsun/security/util/BitArray;->set(IZ)V

    #@51
    .line 207
    add-int/lit8 v2, v2, 0x1

    #@53
    goto :goto_0

    #@54
    .line 209
    :cond_3
    invoke-virtual {v1}, Lsun/security/util/BitArray;->toByteArray()[B

    #@57
    move-result-object v3

    #@58
    .line 212
    .local v3, "maskArray":[B
    const/4 v2, 0x0

    #@59
    :goto_1
    if-ge v2, v9, :cond_0

    #@5b
    .line 213
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@5d
    add-int/lit8 v7, v2, 0x10

    #@5f
    aget-byte v8, v3, v2

    #@61
    aput-byte v8, v6, v7

    #@63
    .line 212
    add-int/lit8 v2, v2, 0x1

    #@65
    goto :goto_1
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 13
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x4

    #@1
    const/16 v11, 0x20

    #@3
    const/16 v10, 0x8

    #@5
    .line 396
    if-nez p1, :cond_0

    #@7
    .line 397
    const/4 v0, -0x1

    #@8
    .line 474
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    .local v0, "constraintType":I
    :goto_0
    return v0

    #@9
    .line 398
    .end local v0    # "constraintType":I
    .restart local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@c
    move-result v8

    #@d
    const/4 v9, 0x7

    #@e
    if-eq v8, v9, :cond_1

    #@10
    .line 399
    const/4 v0, -0x1

    #@11
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@12
    .end local v0    # "constraintType":I
    :cond_1
    move-object v8, p1

    #@13
    .line 400
    check-cast v8, Lsun/security/x509/IPAddressName;

    #@15
    invoke-virtual {v8, p0}, Lsun/security/x509/IPAddressName;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_2

    #@1b
    .line 401
    const/4 v0, 0x0

    #@1c
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@1d
    .line 403
    .end local v0    # "constraintType":I
    :cond_2
    check-cast p1, Lsun/security/x509/IPAddressName;

    #@1f
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/IPAddressName;->getBytes()[B

    #@22
    move-result-object v3

    #@23
    .line 404
    .local v3, "otherAddress":[B
    array-length v8, v3

    #@24
    if-ne v8, v12, :cond_3

    #@26
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@28
    array-length v8, v8

    #@29
    if-ne v8, v12, :cond_3

    #@2b
    .line 406
    const/4 v0, 0x3

    #@2c
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@2d
    .line 407
    .end local v0    # "constraintType":I
    :cond_3
    array-length v8, v3

    #@2e
    if-ne v8, v10, :cond_b

    #@30
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@32
    array-length v8, v8

    #@33
    if-ne v8, v10, :cond_b

    #@35
    .line 411
    :cond_4
    const/4 v5, 0x1

    #@36
    .line 412
    .local v5, "otherSubsetOfThis":Z
    const/4 v7, 0x1

    #@37
    .line 413
    .local v7, "thisSubsetOfOther":Z
    const/4 v6, 0x0

    #@38
    .line 414
    .local v6, "thisEmpty":Z
    const/4 v4, 0x0

    #@39
    .line 415
    .local v4, "otherEmpty":Z
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@3b
    array-length v8, v8

    #@3c
    div-int/lit8 v2, v8, 0x2

    #@3e
    .line 416
    .local v2, "maskOffset":I
    const/4 v1, 0x0

    #@3f
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_f

    #@41
    .line 417
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@43
    aget-byte v8, v8, v1

    #@45
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@47
    add-int v10, v1, v2

    #@49
    aget-byte v9, v9, v10

    #@4b
    and-int/2addr v8, v9

    #@4c
    int-to-byte v8, v8

    #@4d
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@4f
    aget-byte v9, v9, v1

    #@51
    if-eq v8, v9, :cond_5

    #@53
    .line 418
    const/4 v6, 0x1

    #@54
    .line 419
    :cond_5
    aget-byte v8, v3, v1

    #@56
    add-int v9, v1, v2

    #@58
    aget-byte v9, v3, v9

    #@5a
    and-int/2addr v8, v9

    #@5b
    int-to-byte v8, v8

    #@5c
    aget-byte v9, v3, v1

    #@5e
    if-eq v8, v9, :cond_6

    #@60
    .line 420
    const/4 v4, 0x1

    #@61
    .line 421
    :cond_6
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@63
    add-int v9, v1, v2

    #@65
    aget-byte v8, v8, v9

    #@67
    add-int v9, v1, v2

    #@69
    aget-byte v9, v3, v9

    #@6b
    and-int/2addr v8, v9

    #@6c
    int-to-byte v8, v8

    #@6d
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@6f
    add-int v10, v1, v2

    #@71
    aget-byte v9, v9, v10

    #@73
    if-ne v8, v9, :cond_7

    #@75
    .line 422
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@77
    aget-byte v8, v8, v1

    #@79
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@7b
    add-int v10, v1, v2

    #@7d
    aget-byte v9, v9, v10

    #@7f
    and-int/2addr v8, v9

    #@80
    int-to-byte v8, v8

    #@81
    aget-byte v9, v3, v1

    #@83
    iget-object v10, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@85
    add-int v11, v1, v2

    #@87
    aget-byte v10, v10, v11

    #@89
    and-int/2addr v9, v10

    #@8a
    int-to-byte v9, v9

    #@8b
    if-eq v8, v9, :cond_8

    #@8d
    .line 423
    :cond_7
    const/4 v5, 0x0

    #@8e
    .line 425
    :cond_8
    add-int v8, v1, v2

    #@90
    aget-byte v8, v3, v8

    #@92
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@94
    add-int v10, v1, v2

    #@96
    aget-byte v9, v9, v10

    #@98
    and-int/2addr v8, v9

    #@99
    int-to-byte v8, v8

    #@9a
    add-int v9, v1, v2

    #@9c
    aget-byte v9, v3, v9

    #@9e
    if-ne v8, v9, :cond_9

    #@a0
    .line 426
    aget-byte v8, v3, v1

    #@a2
    add-int v9, v1, v2

    #@a4
    aget-byte v9, v3, v9

    #@a6
    and-int/2addr v8, v9

    #@a7
    int-to-byte v8, v8

    #@a8
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@aa
    aget-byte v9, v9, v1

    #@ac
    add-int v10, v1, v2

    #@ae
    aget-byte v10, v3, v10

    #@b0
    and-int/2addr v9, v10

    #@b1
    int-to-byte v9, v9

    #@b2
    if-eq v8, v9, :cond_a

    #@b4
    .line 427
    :cond_9
    const/4 v7, 0x0

    #@b5
    .line 416
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@b7
    goto :goto_1

    #@b8
    .line 408
    .end local v1    # "i":I
    .end local v2    # "maskOffset":I
    .end local v4    # "otherEmpty":Z
    .end local v5    # "otherSubsetOfThis":Z
    .end local v6    # "thisEmpty":Z
    .end local v7    # "thisSubsetOfOther":Z
    :cond_b
    array-length v8, v3

    #@b9
    if-ne v8, v11, :cond_c

    #@bb
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@bd
    array-length v8, v8

    #@be
    if-eq v8, v11, :cond_4

    #@c0
    .line 443
    :cond_c
    array-length v8, v3

    #@c1
    if-eq v8, v10, :cond_d

    #@c3
    array-length v8, v3

    #@c4
    if-ne v8, v11, :cond_18

    #@c6
    .line 445
    :cond_d
    const/4 v1, 0x0

    #@c7
    .line 446
    .restart local v1    # "i":I
    array-length v8, v3

    #@c8
    div-int/lit8 v2, v8, 0x2

    #@ca
    .line 447
    .restart local v2    # "maskOffset":I
    :goto_2
    if-ge v1, v2, :cond_e

    #@cc
    .line 450
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@ce
    aget-byte v8, v8, v1

    #@d0
    add-int v9, v1, v2

    #@d2
    aget-byte v9, v3, v9

    #@d4
    and-int/2addr v8, v9

    #@d5
    aget-byte v9, v3, v1

    #@d7
    if-eq v8, v9, :cond_16

    #@d9
    .line 453
    :cond_e
    if-ne v1, v2, :cond_17

    #@db
    .line 454
    const/4 v0, 0x2

    #@dc
    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    #@de
    .line 430
    .end local v0    # "constraintType":I
    .restart local v4    # "otherEmpty":Z
    .restart local v5    # "otherSubsetOfThis":Z
    .restart local v6    # "thisEmpty":Z
    .restart local v7    # "thisSubsetOfOther":Z
    :cond_f
    if-nez v6, :cond_10

    #@e0
    if-eqz v4, :cond_13

    #@e2
    .line 431
    :cond_10
    if-eqz v6, :cond_11

    #@e4
    if-eqz v4, :cond_11

    #@e6
    .line 432
    const/4 v0, 0x0

    #@e7
    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    #@e9
    .line 433
    .end local v0    # "constraintType":I
    :cond_11
    if-eqz v6, :cond_12

    #@eb
    .line 434
    const/4 v0, 0x2

    #@ec
    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    #@ee
    .line 436
    .end local v0    # "constraintType":I
    :cond_12
    const/4 v0, 0x1

    #@ef
    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    #@f1
    .line 437
    .end local v0    # "constraintType":I
    :cond_13
    if-eqz v5, :cond_14

    #@f3
    .line 438
    const/4 v0, 0x1

    #@f4
    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    #@f6
    .line 439
    .end local v0    # "constraintType":I
    :cond_14
    if-eqz v7, :cond_15

    #@f8
    .line 440
    const/4 v0, 0x2

    #@f9
    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    #@fb
    .line 442
    .end local v0    # "constraintType":I
    :cond_15
    const/4 v0, 0x3

    #@fc
    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    #@fe
    .line 447
    .end local v0    # "constraintType":I
    .end local v4    # "otherEmpty":Z
    .end local v5    # "otherSubsetOfThis":Z
    .end local v6    # "thisEmpty":Z
    .end local v7    # "thisSubsetOfOther":Z
    :cond_16
    add-int/lit8 v1, v1, 0x1

    #@100
    goto :goto_2

    #@101
    .line 456
    :cond_17
    const/4 v0, 0x3

    #@102
    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    #@104
    .line 457
    .end local v0    # "constraintType":I
    .end local v1    # "i":I
    .end local v2    # "maskOffset":I
    :cond_18
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@106
    array-length v8, v8

    #@107
    if-eq v8, v10, :cond_19

    #@109
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@10b
    array-length v8, v8

    #@10c
    if-ne v8, v11, :cond_1d

    #@10e
    .line 459
    :cond_19
    const/4 v1, 0x0

    #@10f
    .line 460
    .restart local v1    # "i":I
    iget-object v8, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@111
    array-length v8, v8

    #@112
    div-int/lit8 v2, v8, 0x2

    #@114
    .line 461
    .restart local v2    # "maskOffset":I
    :goto_3
    if-ge v1, v2, :cond_1a

    #@116
    .line 463
    aget-byte v8, v3, v1

    #@118
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@11a
    add-int v10, v1, v2

    #@11c
    aget-byte v9, v9, v10

    #@11e
    and-int/2addr v8, v9

    #@11f
    iget-object v9, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@121
    aget-byte v9, v9, v1

    #@123
    if-eq v8, v9, :cond_1b

    #@125
    .line 466
    :cond_1a
    if-ne v1, v2, :cond_1c

    #@127
    .line 467
    const/4 v0, 0x1

    #@128
    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    #@12a
    .line 461
    .end local v0    # "constraintType":I
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    #@12c
    goto :goto_3

    #@12d
    .line 469
    :cond_1c
    const/4 v0, 0x3

    #@12e
    .restart local v0    # "constraintType":I
    goto/16 :goto_0

    #@130
    .line 471
    .end local v0    # "constraintType":I
    .end local v1    # "i":I
    .end local v2    # "maskOffset":I
    :cond_1d
    const/4 v0, 0x3

    #@131
    .restart local v0    # "constraintType":I
    goto/16 :goto_0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@2
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@5
    .line 230
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 314
    if-ne p0, p1, :cond_0

    #@4
    .line 315
    return v9

    #@5
    .line 317
    :cond_0
    instance-of v5, p1, Lsun/security/x509/IPAddressName;

    #@7
    if-nez v5, :cond_1

    #@9
    .line 318
    return v8

    #@a
    .line 320
    :cond_1
    nop

    #@b
    nop

    #@c
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/IPAddressName;->getBytes()[B

    #@f
    move-result-object v4

    #@10
    .line 322
    .local v4, "other":[B
    array-length v5, v4

    #@11
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@13
    array-length v6, v6

    #@14
    if-eq v5, v6, :cond_2

    #@16
    .line 323
    return v8

    #@17
    .line 325
    :cond_2
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@19
    array-length v5, v5

    #@1a
    const/16 v6, 0x8

    #@1c
    if-eq v5, v6, :cond_3

    #@1e
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@20
    array-length v5, v5

    #@21
    const/16 v6, 0x20

    #@23
    if-ne v5, v6, :cond_8

    #@25
    .line 328
    :cond_3
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@27
    array-length v5, v5

    #@28
    div-int/lit8 v1, v5, 0x2

    #@2a
    .line 329
    .local v1, "maskLen":I
    new-array v3, v1, [B

    #@2c
    .line 330
    .local v3, "maskedThis":[B
    new-array v2, v1, [B

    #@2e
    .line 331
    .local v2, "maskedOther":[B
    const/4 v0, 0x0

    #@2f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@31
    .line 332
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@33
    aget-byte v5, v5, v0

    #@35
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@37
    add-int v7, v0, v1

    #@39
    aget-byte v6, v6, v7

    #@3b
    and-int/2addr v5, v6

    #@3c
    int-to-byte v5, v5

    #@3d
    aput-byte v5, v3, v0

    #@3f
    .line 333
    aget-byte v5, v4, v0

    #@41
    add-int v6, v0, v1

    #@43
    aget-byte v6, v4, v6

    #@45
    and-int/2addr v5, v6

    #@46
    int-to-byte v5, v5

    #@47
    aput-byte v5, v2, v0

    #@49
    .line 334
    aget-byte v5, v3, v0

    #@4b
    aget-byte v6, v2, v0

    #@4d
    if-eq v5, v6, :cond_4

    #@4f
    .line 335
    return v8

    #@50
    .line 331
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_0

    #@53
    .line 339
    :cond_5
    move v0, v1

    #@54
    :goto_1
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@56
    array-length v5, v5

    #@57
    if-ge v0, v5, :cond_7

    #@59
    .line 340
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@5b
    aget-byte v5, v5, v0

    #@5d
    aget-byte v6, v4, v0

    #@5f
    if-eq v5, v6, :cond_6

    #@61
    .line 341
    return v8

    #@62
    .line 339
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@64
    goto :goto_1

    #@65
    .line 342
    :cond_7
    return v9

    #@66
    .line 346
    .end local v0    # "i":I
    .end local v1    # "maskLen":I
    .end local v2    # "maskedOther":[B
    .end local v3    # "maskedThis":[B
    :cond_8
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@68
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    #@6b
    move-result v5

    #@6c
    return v5
.end method

.method public getBytes()[B
    .locals 1

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x20

    #@2
    const/16 v9, 0x80

    #@4
    const/16 v6, 0x10

    #@6
    const/4 v8, 0x4

    #@7
    const/4 v7, 0x0

    #@8
    .line 255
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 256
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    #@e
    return-object v5

    #@f
    .line 258
    :cond_0
    iget-boolean v5, p0, Lsun/security/x509/IPAddressName;->isIPv4:Z

    #@11
    if-eqz v5, :cond_2

    #@13
    .line 260
    new-array v1, v8, [B

    #@15
    .line 261
    .local v1, "host":[B
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@17
    invoke-static {v5, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a
    .line 262
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    #@24
    .line 263
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@26
    array-length v5, v5

    #@27
    const/16 v6, 0x8

    #@29
    if-ne v5, v6, :cond_1

    #@2b
    .line 264
    new-array v3, v8, [B

    #@2d
    .line 265
    .local v3, "mask":[B
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@2f
    invoke-static {v5, v8, v3, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@32
    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    const-string/jumbo v6, "/"

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    .line 267
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    #@56
    .line 298
    .end local v3    # "mask":[B
    :cond_1
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    #@58
    return-object v5

    #@59
    .line 271
    .end local v1    # "host":[B
    :cond_2
    new-array v1, v6, [B

    #@5b
    .line 272
    .restart local v1    # "host":[B
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@5d
    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@60
    .line 273
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    #@6a
    .line 274
    iget-object v5, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@6c
    array-length v5, v5

    #@6d
    if-ne v5, v10, :cond_1

    #@6f
    .line 278
    new-array v4, v6, [B

    #@71
    .line 279
    .local v4, "maskBytes":[B
    const/16 v2, 0x10

    #@73
    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_3

    #@75
    .line 280
    add-int/lit8 v5, v2, -0x10

    #@77
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@79
    aget-byte v6, v6, v2

    #@7b
    aput-byte v6, v4, v5

    #@7d
    .line 279
    add-int/lit8 v2, v2, 0x1

    #@7f
    goto :goto_0

    #@80
    .line 281
    :cond_3
    new-instance v0, Lsun/security/util/BitArray;

    #@82
    invoke-direct {v0, v9, v4}, Lsun/security/util/BitArray;-><init>(I[B)V

    #@85
    .line 283
    .local v0, "ba":Lsun/security/util/BitArray;
    const/4 v2, 0x0

    #@86
    .line 284
    :goto_1
    if-ge v2, v9, :cond_4

    #@88
    .line 285
    invoke-virtual {v0, v2}, Lsun/security/util/BitArray;->get(I)Z

    #@8b
    move-result v5

    #@8c
    if-nez v5, :cond_5

    #@8e
    .line 288
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    iget-object v6, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    #@95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v5

    #@99
    const-string/jumbo v6, "/"

    #@9c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v5

    #@a4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v5

    #@a8
    iput-object v5, p0, Lsun/security/x509/IPAddressName;->name:Ljava/lang/String;

    #@aa
    .line 290
    :goto_2
    if-ge v2, v9, :cond_1

    #@ac
    .line 291
    invoke-virtual {v0, v2}, Lsun/security/util/BitArray;->get(I)Z

    #@af
    move-result v5

    #@b0
    if-eqz v5, :cond_6

    #@b2
    .line 292
    new-instance v5, Ljava/io/IOException;

    #@b4
    new-instance v6, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v7, "Invalid IPv6 subdomain - set bit "

    #@bc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v6

    #@c0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    .line 293
    const-string/jumbo v7, " not contiguous"

    #@c7
    .line 292
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v6

    #@cb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v6

    #@cf
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d2
    throw v5

    #@d3
    .line 284
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@d5
    goto :goto_1

    #@d6
    .line 290
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@d8
    goto :goto_2
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 221
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 356
    const/4 v1, 0x0

    #@1
    .line 358
    .local v1, "retval":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 359
    iget-object v2, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@9
    aget-byte v2, v2, v0

    #@b
    mul-int/2addr v2, v0

    #@c
    add-int/2addr v1, v2

    #@d
    .line 358
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 361
    :cond_0
    return v1
.end method

.method public subtreeDepth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 486
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 487
    const-string/jumbo v1, "subtreeDepth() not defined for IPAddressName"

    #@5
    .line 486
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 239
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "IPAddress: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p0}, Lsun/security/x509/IPAddressName;->getName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 240
    :catch_0
    move-exception v1

    #@1a
    .line 242
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v0, Lsun/misc/HexDumpEncoder;

    #@1c
    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@1f
    .line 243
    .local v0, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "IPAddress: "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    iget-object v3, p0, Lsun/security/x509/IPAddressName;->address:[B

    #@2d
    invoke-virtual {v0, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    return-object v2
.end method
