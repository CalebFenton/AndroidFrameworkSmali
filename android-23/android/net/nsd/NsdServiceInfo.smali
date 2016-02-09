.class public final Landroid/net/nsd/NsdServiceInfo;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/NsdServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NsdServiceInfo"


# instance fields
.field private mHost:Ljava/net/InetAddress;

.field private mPort:I

.field private mServiceName:Ljava/lang/String;

.field private mServiceType:Ljava/lang/String;

.field private final mTxtRecord:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/nsd/NsdServiceInfo;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/nsd/NsdServiceInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 263
    new-instance v0, Landroid/net/nsd/NsdServiceInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo$1;-><init>()V

    #@5
    .line 262
    sput-object v0, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@a
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "rt"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@a
    .line 54
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    #@c
    .line 55
    iput-object p2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@e
    .line 53
    return-void
.end method

.method private getTxtRecordSize()I
    .locals 5

    #@0
    .prologue
    .line 169
    const/4 v2, 0x0

    #@1
    .line 170
    .local v2, "txtRecordSize":I
    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@6
    move-result-object v4

    #@7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 171
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    add-int/lit8 v2, v2, 0x2

    #@19
    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Ljava/lang/String;

    #@1f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@22
    move-result v4

    #@23
    add-int/2addr v2, v4

    #@24
    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, [B

    #@2a
    .line 174
    .local v3, "value":[B
    if-nez v3, :cond_0

    #@2c
    const/4 v4, 0x0

    #@2d
    :goto_1
    add-int/2addr v2, v4

    #@2e
    goto :goto_0

    #@2f
    :cond_0
    array-length v4, v3

    #@30
    goto :goto_1

    #@31
    .line 176
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v3    # "value":[B
    :cond_1
    return v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 231
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHost()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 90
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    #@2
    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTxtRecord()[B
    .locals 11

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 181
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    #@5
    move-result v6

    #@6
    .line 182
    .local v6, "txtRecordSize":I
    if-nez v6, :cond_0

    #@8
    .line 183
    return-object v8

    #@9
    .line 186
    :cond_0
    new-array v5, v6, [B

    #@b
    .line 187
    .local v5, "txtRecord":[B
    const/4 v3, 0x0

    #@c
    .line 188
    .local v3, "ptr":I
    iget-object v8, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@11
    move-result-object v8

    #@12
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_2

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map$Entry;

    #@22
    .line 189
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/lang/String;

    #@28
    .line 190
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2b
    move-result-object v7

    #@2c
    check-cast v7, [B

    #@2e
    .line 193
    .local v7, "value":[B
    add-int/lit8 v4, v3, 0x1

    #@30
    .end local v3    # "ptr":I
    .local v4, "ptr":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@33
    move-result v10

    #@34
    if-nez v7, :cond_1

    #@36
    move v8, v9

    #@37
    :goto_1
    add-int/2addr v8, v10

    #@38
    add-int/lit8 v8, v8, 0x1

    #@3a
    int-to-byte v8, v8

    #@3b
    aput-byte v8, v5, v3

    #@3d
    .line 198
    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@3f
    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@42
    move-result-object v8

    #@43
    .line 199
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@46
    move-result v10

    #@47
    .line 198
    invoke-static {v8, v9, v5, v4, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4a
    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4d
    move-result v8

    #@4e
    add-int v3, v4, v8

    #@50
    .line 203
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    add-int/lit8 v4, v3, 0x1

    #@52
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    const/16 v8, 0x3d

    #@54
    aput-byte v8, v5, v3

    #@56
    .line 206
    if-eqz v7, :cond_3

    #@58
    .line 207
    array-length v8, v7

    #@59
    invoke-static {v7, v9, v5, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5c
    .line 208
    array-length v8, v7

    #@5d
    add-int v3, v4, v8

    #@5f
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0

    #@60
    .line 193
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_1
    array-length v8, v7

    #@61
    goto :goto_1

    #@62
    .line 211
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "ptr":I
    .end local v7    # "value":[B
    .restart local v3    # "ptr":I
    :cond_2
    return-object v5

    #@63
    .end local v3    # "ptr":I
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "ptr":I
    .restart local v7    # "value":[B
    :cond_3
    move v3, v4

    #@64
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 154
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    if-nez p2, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    :try_start_0
    check-cast v1, [B

    #@5
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V

    #@8
    .line 145
    return-void

    #@9
    .line 147
    :cond_0
    const-string/jumbo v1, "UTF-8"

    #@c
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    goto :goto_0

    #@11
    .line 148
    :catch_0
    move-exception v0

    #@12
    .line 149
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v2, "Value must be UTF-8"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 101
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v5

    #@6
    if-ge v2, v5, :cond_3

    #@8
    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    .line 103
    .local v0, "character":C
    const/16 v5, 0x20

    #@e
    if-lt v0, v5, :cond_0

    #@10
    const/16 v5, 0x7e

    #@12
    if-le v0, v5, :cond_1

    #@14
    .line 104
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v5, "Key strings must be printable US-ASCII"

    #@19
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v4

    #@1d
    .line 105
    :cond_1
    const/16 v5, 0x3d

    #@1f
    if-ne v0, v5, :cond_2

    #@21
    .line 106
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v5, "Key strings must not include \'=\'"

    #@26
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v4

    #@2a
    .line 101
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 111
    .end local v0    # "character":C
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@30
    move-result v6

    #@31
    if-nez p2, :cond_4

    #@33
    move v5, v4

    #@34
    :goto_1
    add-int/2addr v5, v6

    #@35
    const/16 v6, 0xff

    #@37
    if-lt v5, v6, :cond_5

    #@39
    .line 112
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@3b
    const-string/jumbo v5, "Key length + value length must be < 255 bytes"

    #@3e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v4

    #@42
    .line 111
    :cond_4
    array-length v5, p2

    #@43
    goto :goto_1

    #@44
    .line 116
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@47
    move-result v5

    #@48
    const/16 v6, 0x9

    #@4a
    if-le v5, v6, :cond_6

    #@4c
    .line 117
    const-string/jumbo v5, "NsdServiceInfo"

    #@4f
    new-instance v6, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v7, "Key lengths > 9 are discouraged: "

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 122
    :cond_6
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    #@69
    move-result v3

    #@6a
    .line 123
    .local v3, "txtRecordSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6d
    move-result v5

    #@6e
    add-int/2addr v5, v3

    #@6f
    if-nez p2, :cond_7

    #@71
    :goto_2
    add-int/2addr v4, v5

    #@72
    add-int/lit8 v1, v4, 0x2

    #@74
    .line 124
    .local v1, "futureSize":I
    const/16 v4, 0x514

    #@76
    if-le v1, v4, :cond_8

    #@78
    .line 125
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@7a
    const-string/jumbo v5, "Total length of attributes must be < 1300 bytes"

    #@7d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@80
    throw v4

    #@81
    .line 123
    .end local v1    # "futureSize":I
    :cond_7
    array-length v4, p2

    #@82
    goto :goto_2

    #@83
    .line 126
    .restart local v1    # "futureSize":I
    :cond_8
    const/16 v4, 0x190

    #@85
    if-le v1, v4, :cond_9

    #@87
    .line 127
    const-string/jumbo v4, "NsdServiceInfo"

    #@8a
    const-string/jumbo v5, "Total length of all attributes exceeds 400 bytes; truncation may occur"

    #@8d
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 130
    :cond_9
    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@92
    invoke-virtual {v4, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    .line 99
    return-void
.end method

.method public setHost(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "s"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 85
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@2
    .line 84
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "p"    # I

    #@0
    .prologue
    .line 95
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    #@2
    .line 94
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    #@2
    .line 64
    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@2
    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 217
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "name: "

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v2

    #@12
    .line 218
    const-string/jumbo v3, ", type: "

    #@15
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v2

    #@19
    .line 218
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@1b
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v2

    #@1f
    .line 219
    const-string/jumbo v3, ", host: "

    #@22
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    move-result-object v2

    #@26
    .line 219
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@28
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2b
    move-result-object v2

    #@2c
    .line 220
    const-string/jumbo v3, ", port: "

    #@2f
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    move-result-object v2

    #@33
    .line 220
    iget v3, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    #@35
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@38
    .line 222
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecord()[B

    #@3b
    move-result-object v1

    #@3c
    .line 223
    .local v1, "txtRecord":[B
    if-eqz v1, :cond_0

    #@3e
    .line 224
    const-string/jumbo v2, ", txtRecord: "

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@44
    move-result-object v2

    #@45
    new-instance v3, Ljava/lang/String;

    #@47
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@49
    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f
    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 236
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 237
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 238
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 239
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 240
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@15
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1c
    .line 244
    :goto_0
    iget v3, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    #@1e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 247
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@23
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@26
    move-result v3

    #@27
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 248
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@2c
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@2f
    move-result-object v3

    #@30
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Ljava/lang/String;

    #@40
    .line 249
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@42
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, [B

    #@48
    .line 250
    .local v2, "value":[B
    if-eqz v2, :cond_1

    #@4a
    .line 251
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 252
    array-length v3, v2

    #@4e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 253
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@54
    .line 257
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@57
    goto :goto_1

    #@58
    .line 242
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "value":[B
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    goto :goto_0

    #@5c
    .line 255
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "value":[B
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    goto :goto_2

    #@60
    .line 235
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":[B
    :cond_2
    return-void
.end method
