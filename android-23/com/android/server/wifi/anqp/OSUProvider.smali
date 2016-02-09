.class public Lcom/android/server/wifi/anqp/OSUProvider;
.super Ljava/lang/Object;
.source "OSUProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;
    }
.end annotation


# instance fields
.field private final mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation
.end field

.field private final mOSUMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final mOSUServer:Ljava/lang/String;

.field private final mOsuNai:Ljava/lang/String;

.field private final mServiceDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 13
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const v11, 0xffff

    #@4
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@a
    move-result v9

    #@b
    const/16 v10, 0xb

    #@d
    if-ge v9, v10, :cond_0

    #@f
    .line 31
    new-instance v9, Ljava/net/ProtocolException;

    #@11
    new-instance v10, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v11, "Truncated OSU provider: "

    #@19
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v10

    #@1d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@20
    move-result v11

    #@21
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v10

    #@29
    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v9

    #@2d
    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@30
    move-result v9

    #@31
    and-int v4, v9, v11

    #@33
    .line 35
    .local v4, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@36
    move-result v9

    #@37
    and-int v8, v9, v11

    #@39
    .line 37
    .local v8, "namesLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@3c
    move-result-object v9

    #@3d
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@3f
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@42
    move-result-object v7

    #@43
    .line 38
    .local v7, "namesBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    #@46
    move-result v9

    #@47
    add-int/2addr v9, v8

    #@48
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@4b
    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@4e
    move-result v9

    #@4f
    add-int/2addr v9, v8

    #@50
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@53
    .line 41
    new-instance v9, Ljava/util/ArrayList;

    #@55
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@58
    iput-object v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    #@5a
    .line 43
    :goto_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@5d
    move-result v9

    #@5e
    if-eqz v9, :cond_1

    #@60
    .line 44
    iget-object v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    #@62
    new-instance v10, Lcom/android/server/wifi/anqp/I18Name;

    #@64
    invoke-direct {v10, v7}, Lcom/android/server/wifi/anqp/I18Name;-><init>(Ljava/nio/ByteBuffer;)V

    #@67
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6a
    goto :goto_0

    #@6b
    .line 47
    :cond_1
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6d
    invoke-static {p1, v12, v9}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@70
    move-result-object v9

    #@71
    iput-object v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    #@73
    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@76
    move-result v9

    #@77
    and-int/lit16 v6, v9, 0xff

    #@79
    .line 49
    .local v6, "methodLength":I
    new-instance v9, Ljava/util/ArrayList;

    #@7b
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@7e
    iput-object v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@80
    .line 50
    :goto_1
    if-lez v6, :cond_3

    #@82
    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@85
    move-result v9

    #@86
    and-int/lit16 v5, v9, 0xff

    #@88
    .line 52
    .local v5, "methodID":I
    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@8a
    invoke-static {}, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->values()[Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    #@8d
    move-result-object v9

    #@8e
    array-length v9, v9

    #@8f
    if-ge v5, v9, :cond_2

    #@91
    .line 53
    invoke-static {}, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->values()[Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    #@94
    move-result-object v9

    #@95
    aget-object v9, v9, v5

    #@97
    .line 52
    :goto_2
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9a
    .line 55
    add-int/lit8 v6, v6, -0x1

    #@9c
    goto :goto_1

    #@9d
    .line 54
    :cond_2
    const/4 v9, 0x0

    #@9e
    goto :goto_2

    #@9f
    .line 58
    .end local v5    # "methodID":I
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@a2
    move-result v9

    #@a3
    and-int v3, v9, v11

    #@a5
    .line 59
    .local v3, "iconsLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@a8
    move-result-object v9

    #@a9
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@ab
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@ae
    move-result-object v2

    #@af
    .line 60
    .local v2, "iconsBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@b2
    move-result v9

    #@b3
    add-int/2addr v9, v3

    #@b4
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@b7
    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@ba
    move-result v9

    #@bb
    add-int/2addr v9, v3

    #@bc
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@bf
    .line 63
    new-instance v9, Ljava/util/ArrayList;

    #@c1
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@c4
    iput-object v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    #@c6
    .line 65
    :goto_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@c9
    move-result v9

    #@ca
    if-eqz v9, :cond_4

    #@cc
    .line 66
    iget-object v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    #@ce
    new-instance v10, Lcom/android/server/wifi/anqp/IconInfo;

    #@d0
    invoke-direct {v10, v2}, Lcom/android/server/wifi/anqp/IconInfo;-><init>(Ljava/nio/ByteBuffer;)V

    #@d3
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d6
    goto :goto_3

    #@d7
    .line 69
    :cond_4
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d9
    invoke-static {p1, v12, v9, v12}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;

    #@dc
    move-result-object v9

    #@dd
    iput-object v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@df
    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@e2
    move-result v9

    #@e3
    and-int v1, v9, v11

    #@e5
    .line 72
    .local v1, "descriptionsLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@e8
    move-result-object v9

    #@e9
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@eb
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@ee
    move-result-object v0

    #@ef
    .line 73
    .local v0, "descriptionsBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@f2
    move-result v9

    #@f3
    add-int/2addr v9, v1

    #@f4
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@f7
    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@fa
    move-result v9

    #@fb
    add-int/2addr v9, v1

    #@fc
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@ff
    .line 76
    new-instance v9, Ljava/util/ArrayList;

    #@101
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@104
    iput-object v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@106
    .line 78
    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@109
    move-result v9

    #@10a
    if-eqz v9, :cond_5

    #@10c
    .line 79
    iget-object v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@10e
    new-instance v10, Lcom/android/server/wifi/anqp/I18Name;

    #@110
    invoke-direct {v10, v0}, Lcom/android/server/wifi/anqp/I18Name;-><init>(Ljava/nio/ByteBuffer;)V

    #@113
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@116
    goto :goto_4

    #@117
    .line 29
    :cond_5
    return-void
.end method


# virtual methods
.method public getIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/IconInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getOSUMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getOSUServer()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOsuNai()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getServiceDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x27

    #@2
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "OSUProvider{mNames="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 110
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    #@10
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 111
    const-string/jumbo v1, ", mOSUServer=\'"

    #@17
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 111
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    #@1d
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 112
    const-string/jumbo v1, ", mOSUMethods="

    #@28
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 112
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@2e
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 113
    const-string/jumbo v1, ", mIcons="

    #@35
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 113
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    #@3b
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 114
    const-string/jumbo v1, ", mOsuNai=\'"

    #@42
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 114
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@48
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 115
    const-string/jumbo v1, ", mServiceDescriptions="

    #@53
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 115
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@59
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 116
    const/16 v1, 0x7d

    #@5f
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    return-object v0
.end method
