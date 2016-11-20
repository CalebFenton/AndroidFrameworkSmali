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
    .line 357
    new-instance v0, Landroid/net/nsd/NsdServiceInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo$1;-><init>()V

    #@5
    .line 356
    sput-object v0, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@a
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "rt"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@a
    .line 57
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    #@c
    .line 58
    iput-object p2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@e
    .line 56
    return-void
.end method

.method private getTxtRecordSize()I
    .locals 5

    #@0
    .prologue
    .line 263
    const/4 v2, 0x0

    #@1
    .line 264
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
    .line 265
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    add-int/lit8 v2, v2, 0x2

    #@19
    .line 266
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
    .line 267
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, [B

    #@2a
    .line 268
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
    .line 270
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
    .line 325
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
    .line 259
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
    .line 83
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    #@2
    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTxtRecord()[B
    .locals 11

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 275
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    #@4
    move-result v6

    #@5
    .line 276
    .local v6, "txtRecordSize":I
    if-nez v6, :cond_0

    #@7
    .line 277
    new-array v8, v9, [B

    #@9
    return-object v8

    #@a
    .line 280
    :cond_0
    new-array v5, v6, [B

    #@c
    .line 281
    .local v5, "txtRecord":[B
    const/4 v3, 0x0

    #@d
    .line 282
    .local v3, "ptr":I
    iget-object v8, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@12
    move-result-object v8

    #@13
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_2

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/util/Map$Entry;

    #@23
    .line 283
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Ljava/lang/String;

    #@29
    .line 284
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, [B

    #@2f
    .line 287
    .local v7, "value":[B
    add-int/lit8 v4, v3, 0x1

    #@31
    .end local v3    # "ptr":I
    .local v4, "ptr":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@34
    move-result v10

    #@35
    if-nez v7, :cond_1

    #@37
    move v8, v9

    #@38
    :goto_1
    add-int/2addr v8, v10

    #@39
    add-int/lit8 v8, v8, 0x1

    #@3b
    int-to-byte v8, v8

    #@3c
    aput-byte v8, v5, v3

    #@3e
    .line 292
    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@40
    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@43
    move-result-object v8

    #@44
    .line 293
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@47
    move-result v10

    #@48
    .line 292
    invoke-static {v8, v9, v5, v4, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4b
    .line 294
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4e
    move-result v8

    #@4f
    add-int v3, v4, v8

    #@51
    .line 297
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    add-int/lit8 v4, v3, 0x1

    #@53
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    const/16 v8, 0x3d

    #@55
    aput-byte v8, v5, v3

    #@57
    .line 300
    if-eqz v7, :cond_3

    #@59
    .line 301
    array-length v8, v7

    #@5a
    invoke-static {v7, v9, v5, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5d
    .line 302
    array-length v8, v7

    #@5e
    add-int v3, v4, v8

    #@60
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0

    #@61
    .line 287
    .end local v3    # "ptr":I
    .restart local v4    # "ptr":I
    :cond_1
    array-length v8, v7

    #@62
    goto :goto_1

    #@63
    .line 305
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "ptr":I
    .end local v7    # "value":[B
    .restart local v3    # "ptr":I
    :cond_2
    return-object v5

    #@64
    .end local v3    # "ptr":I
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "ptr":I
    .restart local v7    # "value":[B
    :cond_3
    move v3, v4

    #@65
    .end local v4    # "ptr":I
    .restart local v3    # "ptr":I
    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 248
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 241
    if-nez p2, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    :try_start_0
    nop

    #@4
    nop

    #@5
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V

    #@8
    .line 239
    return-void

    #@9
    .line 241
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
    .line 242
    :catch_0
    move-exception v0

    #@12
    .line 243
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
    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 191
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v5, "Key cannot be empty"

    #@c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v4

    #@10
    .line 195
    :cond_0
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@14
    move-result v5

    #@15
    if-ge v2, v5, :cond_4

    #@17
    .line 196
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v0

    #@1b
    .line 197
    .local v0, "character":C
    const/16 v5, 0x20

    #@1d
    if-lt v0, v5, :cond_1

    #@1f
    const/16 v5, 0x7e

    #@21
    if-le v0, v5, :cond_2

    #@23
    .line 198
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v5, "Key strings must be printable US-ASCII"

    #@28
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v4

    #@2c
    .line 199
    :cond_2
    const/16 v5, 0x3d

    #@2e
    if-ne v0, v5, :cond_3

    #@30
    .line 200
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v5, "Key strings must not include \'=\'"

    #@35
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v4

    #@39
    .line 195
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 205
    .end local v0    # "character":C
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3f
    move-result v6

    #@40
    if-nez p2, :cond_5

    #@42
    move v5, v4

    #@43
    :goto_1
    add-int/2addr v5, v6

    #@44
    const/16 v6, 0xff

    #@46
    if-lt v5, v6, :cond_6

    #@48
    .line 206
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4a
    const-string/jumbo v5, "Key length + value length must be < 255 bytes"

    #@4d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v4

    #@51
    .line 205
    :cond_5
    array-length v5, p2

    #@52
    goto :goto_1

    #@53
    .line 210
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@56
    move-result v5

    #@57
    const/16 v6, 0x9

    #@59
    if-le v5, v6, :cond_7

    #@5b
    .line 211
    const-string/jumbo v5, "NsdServiceInfo"

    #@5e
    new-instance v6, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v7, "Key lengths > 9 are discouraged: "

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 216
    :cond_7
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    #@78
    move-result v3

    #@79
    .line 217
    .local v3, "txtRecordSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7c
    move-result v5

    #@7d
    add-int/2addr v5, v3

    #@7e
    if-nez p2, :cond_8

    #@80
    :goto_2
    add-int/2addr v4, v5

    #@81
    add-int/lit8 v1, v4, 0x2

    #@83
    .line 218
    .local v1, "futureSize":I
    const/16 v4, 0x514

    #@85
    if-le v1, v4, :cond_9

    #@87
    .line 219
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@89
    const-string/jumbo v5, "Total length of attributes must be < 1300 bytes"

    #@8c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v4

    #@90
    .line 217
    .end local v1    # "futureSize":I
    :cond_8
    array-length v4, p2

    #@91
    goto :goto_2

    #@92
    .line 220
    .restart local v1    # "futureSize":I
    :cond_9
    const/16 v4, 0x190

    #@94
    if-le v1, v4, :cond_a

    #@96
    .line 221
    const-string/jumbo v4, "NsdServiceInfo"

    #@99
    const-string/jumbo v5, "Total length of all attributes exceeds 400 bytes; truncation may occur"

    #@9c
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 224
    :cond_a
    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@a1
    invoke-virtual {v4, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    .line 189
    return-void
.end method

.method public setHost(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "s"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@2
    .line 87
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "p"    # I

    #@0
    .prologue
    .line 98
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    #@2
    .line 97
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    #@2
    .line 67
    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@2
    .line 77
    return-void
.end method

.method public setTxtRecords(Ljava/lang/String;)V
    .locals 11
    .param p1, "rawRecords"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 109
    invoke-static {p1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@4
    move-result-object v5

    #@5
    .line 131
    .local v5, "txtRecordsRawBytes":[B
    const/4 v3, 0x0

    #@6
    .line 132
    .local v3, "pos":I
    :goto_0
    array-length v8, v5

    #@7
    if-ge v3, v8, :cond_9

    #@9
    .line 134
    aget-byte v8, v5, v3

    #@b
    and-int/lit16 v4, v8, 0xff

    #@d
    .line 135
    .local v4, "recordLen":I
    add-int/lit8 v3, v3, 0x1

    #@f
    .line 138
    if-nez v4, :cond_0

    #@11
    .line 139
    :try_start_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v9, "Zero sized txt record"

    #@16
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 180
    :catch_0
    move-exception v0

    #@1b
    .line 181
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "NsdServiceInfo"

    #@1e
    new-instance v9, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v10, "While parsing txt records (pos = "

    #@26
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v9

    #@2e
    const-string/jumbo v10, "): "

    #@31
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@38
    move-result-object v10

    #@39
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v9

    #@41
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 184
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    add-int/2addr v3, v4

    #@45
    goto :goto_0

    #@46
    .line 140
    :cond_0
    add-int v8, v3, v4

    #@48
    :try_start_1
    array-length v9, v5

    #@49
    if-le v8, v9, :cond_1

    #@4b
    .line 141
    const-string/jumbo v8, "NsdServiceInfo"

    #@4e
    new-instance v9, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v10, "Corrupt record length (pos = "

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    const-string/jumbo v10, "): "

    #@61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v9

    #@6d
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 142
    array-length v8, v5

    #@71
    sub-int v4, v8, v3

    #@73
    .line 146
    :cond_1
    const/4 v2, 0x0

    #@74
    .line 147
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x0

    #@75
    .line 148
    .local v6, "value":[B
    const/4 v7, 0x0

    #@76
    .line 149
    .local v7, "valueLen":I
    move v1, v3

    #@77
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":[B
    .local v1, "i":I
    :goto_2
    add-int v8, v3, v4

    #@79
    if-ge v1, v8, :cond_5

    #@7b
    .line 150
    if-nez v2, :cond_3

    #@7d
    .line 151
    aget-byte v8, v5, v1

    #@7f
    const/16 v9, 0x3d

    #@81
    if-ne v8, v9, :cond_2

    #@83
    .line 152
    new-instance v2, Ljava/lang/String;

    #@85
    sub-int v8, v1, v3

    #@87
    .line 153
    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@89
    .line 152
    invoke-direct {v2, v5, v3, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@8c
    .line 149
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@8e
    goto :goto_2

    #@8f
    .line 156
    :cond_3
    if-nez v6, :cond_4

    #@91
    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@94
    move-result v8

    #@95
    sub-int v8, v4, v8

    #@97
    add-int/lit8 v8, v8, -0x1

    #@99
    new-array v6, v8, [B

    #@9b
    .line 159
    :cond_4
    aget-byte v8, v5, v1

    #@9d
    aput-byte v8, v6, v7

    #@9f
    .line 160
    add-int/lit8 v7, v7, 0x1

    #@a1
    goto :goto_3

    #@a2
    .line 165
    :cond_5
    if-nez v2, :cond_6

    #@a4
    .line 166
    new-instance v2, Ljava/lang/String;

    #@a6
    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@a8
    invoke-direct {v2, v5, v3, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@ab
    .line 169
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ae
    move-result v8

    #@af
    if-eqz v8, :cond_7

    #@b1
    .line 171
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@b3
    const-string/jumbo v9, "Invalid txt record (key is empty)"

    #@b6
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v8

    #@ba
    .line 174
    :cond_7
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getAttributes()Ljava/util/Map;

    #@bd
    move-result-object v8

    #@be
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@c1
    move-result v8

    #@c2
    if-eqz v8, :cond_8

    #@c4
    .line 176
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@c6
    new-instance v9, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v10, "Invalid txt record (duplicate key \""

    #@ce
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v9

    #@d2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v9

    #@d6
    const-string/jumbo v10, "\")"

    #@d9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v9

    #@dd
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v9

    #@e1
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e4
    throw v8

    #@e5
    .line 179
    :cond_8
    invoke-virtual {p0, v2, v6}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@e8
    goto/16 :goto_1

    #@ea
    .line 108
    .end local v1    # "i":I
    .end local v4    # "recordLen":I
    .end local v7    # "valueLen":I
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 311
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
    .line 312
    const-string/jumbo v3, ", type: "

    #@15
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v2

    #@19
    .line 312
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@1b
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v2

    #@1f
    .line 313
    const-string/jumbo v3, ", host: "

    #@22
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    move-result-object v2

    #@26
    .line 313
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@28
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2b
    move-result-object v2

    #@2c
    .line 314
    const-string/jumbo v3, ", port: "

    #@2f
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    move-result-object v2

    #@33
    .line 314
    iget v3, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    #@35
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@38
    .line 316
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecord()[B

    #@3b
    move-result-object v1

    #@3c
    .line 317
    .local v1, "txtRecord":[B
    if-eqz v1, :cond_0

    #@3e
    .line 318
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
    .line 320
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
    .line 330
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 331
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 332
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 333
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 334
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    #@15
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1c
    .line 338
    :goto_0
    iget v3, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    #@1e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 341
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@23
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@26
    move-result v3

    #@27
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 342
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
    .line 343
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    #@42
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    check-cast v2, [B

    #@48
    .line 344
    .local v2, "value":[B
    if-eqz v2, :cond_1

    #@4a
    .line 345
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 346
    array-length v3, v2

    #@4e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 347
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@54
    .line 351
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@57
    goto :goto_1

    #@58
    .line 336
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "value":[B
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    goto :goto_0

    #@5c
    .line 349
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "value":[B
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    goto :goto_2

    #@60
    .line 329
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":[B
    :cond_2
    return-void
.end method
