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
.field private final mHashCode:I

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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v10

    #@7
    const/16 v11, 0xb

    #@9
    if-ge v10, v11, :cond_0

    #@b
    .line 32
    new-instance v10, Ljava/net/ProtocolException;

    #@d
    new-instance v11, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v12, "Truncated OSU provider: "

    #@15
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v11

    #@19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@1c
    move-result v12

    #@1d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v11

    #@21
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v11

    #@25
    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@28
    throw v10

    #@29
    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@2c
    move-result v10

    #@2d
    const v11, 0xffff

    #@30
    and-int v4, v10, v11

    #@32
    .line 36
    .local v4, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@35
    move-result v10

    #@36
    const v11, 0xffff

    #@39
    and-int v8, v10, v11

    #@3b
    .line 38
    .local v8, "namesLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@3e
    move-result-object v10

    #@3f
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@41
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@44
    move-result-object v7

    #@45
    .line 39
    .local v7, "namesBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    #@48
    move-result v10

    #@49
    add-int/2addr v10, v8

    #@4a
    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@4d
    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@50
    move-result v10

    #@51
    add-int/2addr v10, v8

    #@52
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@55
    .line 42
    new-instance v10, Ljava/util/ArrayList;

    #@57
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@5a
    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    #@5c
    .line 44
    :goto_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@5f
    move-result v10

    #@60
    if-eqz v10, :cond_1

    #@62
    .line 45
    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    #@64
    new-instance v11, Lcom/android/server/wifi/anqp/I18Name;

    #@66
    invoke-direct {v11, v7}, Lcom/android/server/wifi/anqp/I18Name;-><init>(Ljava/nio/ByteBuffer;)V

    #@69
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6c
    goto :goto_0

    #@6d
    .line 48
    :cond_1
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6f
    const/4 v11, 0x1

    #@70
    invoke-static {p1, v11, v10}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    #@73
    move-result-object v10

    #@74
    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    #@76
    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@79
    move-result v10

    #@7a
    and-int/lit16 v6, v10, 0xff

    #@7c
    .line 50
    .local v6, "methodLength":I
    new-instance v10, Ljava/util/ArrayList;

    #@7e
    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@81
    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@83
    .line 51
    :goto_1
    if-lez v6, :cond_3

    #@85
    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@88
    move-result v10

    #@89
    and-int/lit16 v5, v10, 0xff

    #@8b
    .line 53
    .local v5, "methodID":I
    iget-object v11, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@8d
    invoke-static {}, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->values()[Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    #@90
    move-result-object v10

    #@91
    array-length v10, v10

    #@92
    if-ge v5, v10, :cond_2

    #@94
    .line 54
    invoke-static {}, Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;->values()[Lcom/android/server/wifi/anqp/OSUProvider$OSUMethod;

    #@97
    move-result-object v10

    #@98
    aget-object v10, v10, v5

    #@9a
    .line 53
    :goto_2
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9d
    .line 56
    add-int/lit8 v6, v6, -0x1

    #@9f
    goto :goto_1

    #@a0
    .line 55
    :cond_2
    const/4 v10, 0x0

    #@a1
    goto :goto_2

    #@a2
    .line 59
    .end local v5    # "methodID":I
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@a5
    move-result v10

    #@a6
    const v11, 0xffff

    #@a9
    and-int v3, v10, v11

    #@ab
    .line 60
    .local v3, "iconsLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@ae
    move-result-object v10

    #@af
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@b1
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b4
    move-result-object v2

    #@b5
    .line 61
    .local v2, "iconsBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@b8
    move-result v10

    #@b9
    add-int/2addr v10, v3

    #@ba
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@bd
    .line 62
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@c0
    move-result v10

    #@c1
    add-int/2addr v10, v3

    #@c2
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@c5
    .line 64
    new-instance v10, Ljava/util/ArrayList;

    #@c7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@ca
    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    #@cc
    .line 66
    :goto_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@cf
    move-result v10

    #@d0
    if-eqz v10, :cond_4

    #@d2
    .line 67
    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    #@d4
    new-instance v11, Lcom/android/server/wifi/anqp/IconInfo;

    #@d6
    invoke-direct {v11, v2}, Lcom/android/server/wifi/anqp/IconInfo;-><init>(Ljava/nio/ByteBuffer;)V

    #@d9
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@dc
    goto :goto_3

    #@dd
    .line 70
    :cond_4
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@df
    const/4 v11, 0x1

    #@e0
    const/4 v12, 0x1

    #@e1
    invoke-static {p1, v11, v10, v12}, Lcom/android/server/wifi/anqp/Constants;->getPrefixedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;Z)Ljava/lang/String;

    #@e4
    move-result-object v10

    #@e5
    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@e7
    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    #@ea
    move-result v10

    #@eb
    const v11, 0xffff

    #@ee
    and-int v1, v10, v11

    #@f0
    .line 73
    .local v1, "descriptionsLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@f3
    move-result-object v10

    #@f4
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@f6
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@f9
    move-result-object v0

    #@fa
    .line 74
    .local v0, "descriptionsBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@fd
    move-result v10

    #@fe
    add-int/2addr v10, v1

    #@ff
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@102
    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@105
    move-result v10

    #@106
    add-int/2addr v10, v1

    #@107
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@10a
    .line 77
    new-instance v10, Ljava/util/ArrayList;

    #@10c
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@10f
    iput-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@111
    .line 79
    :goto_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@114
    move-result v10

    #@115
    if-eqz v10, :cond_5

    #@117
    .line 80
    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@119
    new-instance v11, Lcom/android/server/wifi/anqp/I18Name;

    #@11b
    invoke-direct {v11, v0}, Lcom/android/server/wifi/anqp/I18Name;-><init>(Ljava/nio/ByteBuffer;)V

    #@11e
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@121
    goto :goto_4

    #@122
    .line 83
    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    #@124
    invoke-interface {v10}, Ljava/util/List;->hashCode()I

    #@127
    move-result v9

    #@128
    .line 84
    .local v9, "result":I
    mul-int/lit8 v10, v9, 0x1f

    #@12a
    iget-object v11, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    #@12c
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    #@12f
    move-result v11

    #@130
    add-int v9, v10, v11

    #@132
    .line 85
    mul-int/lit8 v10, v9, 0x1f

    #@134
    iget-object v11, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@136
    invoke-interface {v11}, Ljava/util/List;->hashCode()I

    #@139
    move-result v11

    #@13a
    add-int v9, v10, v11

    #@13c
    .line 86
    mul-int/lit8 v10, v9, 0x1f

    #@13e
    iget-object v11, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    #@140
    invoke-interface {v11}, Ljava/util/List;->hashCode()I

    #@143
    move-result v11

    #@144
    add-int v9, v10, v11

    #@146
    .line 87
    mul-int/lit8 v11, v9, 0x1f

    #@148
    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@14a
    if-eqz v10, :cond_6

    #@14c
    iget-object v10, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@14e
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    #@151
    move-result v10

    #@152
    :goto_5
    add-int v9, v11, v10

    #@154
    .line 88
    mul-int/lit8 v10, v9, 0x1f

    #@156
    iget-object v11, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@158
    invoke-interface {v11}, Ljava/util/List;->hashCode()I

    #@15b
    move-result v11

    #@15c
    add-int v9, v10, v11

    #@15e
    .line 89
    iput v9, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mHashCode:I

    #@160
    .line 30
    return-void

    #@161
    .line 87
    :cond_6
    const/4 v10, 0x0

    #@162
    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 118
    if-ne p0, p1, :cond_0

    #@4
    return v4

    #@5
    .line 119
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/OSUProvider;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 121
    check-cast v0, Lcom/android/server/wifi/anqp/OSUProvider;

    #@15
    .line 123
    .local v0, "that":Lcom/android/server/wifi/anqp/OSUProvider;
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    #@17
    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_3

    #@1f
    return v3

    #@20
    .line 124
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    #@22
    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    #@24
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_4

    #@2a
    return v3

    #@2b
    .line 125
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@2d
    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@2f
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_5

    #@35
    return v3

    #@36
    .line 126
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    #@38
    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    #@3a
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_6

    #@40
    return v3

    #@41
    .line 127
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@43
    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@45
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_7

    #@4b
    return v3

    #@4c
    .line 128
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@4e
    if-eqz v1, :cond_9

    #@50
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@52
    iget-object v2, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_a

    #@5a
    .line 130
    :cond_8
    return v4

    #@5b
    .line 128
    :cond_9
    iget-object v1, v0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@5d
    if-eqz v1, :cond_8

    #@5f
    :cond_a
    return v3
.end method

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
    .line 105
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
    .line 93
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
    .line 101
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getOSUServer()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOsuNai()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
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
    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mHashCode:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x27

    #@2
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "OSUProvider{names="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 141
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mNames:Ljava/util/List;

    #@10
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 142
    const-string/jumbo v1, ", OSUServer=\'"

    #@17
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 142
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUServer:Ljava/lang/String;

    #@1d
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 143
    const-string/jumbo v1, ", OSUMethods="

    #@28
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 143
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOSUMethods:Ljava/util/List;

    #@2e
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 144
    const-string/jumbo v1, ", icons="

    #@35
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 144
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mIcons:Ljava/util/List;

    #@3b
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 145
    const-string/jumbo v1, ", NAI=\'"

    #@42
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 145
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mOsuNai:Ljava/lang/String;

    #@48
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 146
    const-string/jumbo v1, ", serviceDescriptions="

    #@53
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 146
    iget-object v1, p0, Lcom/android/server/wifi/anqp/OSUProvider;->mServiceDescriptions:Ljava/util/List;

    #@59
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 147
    const/16 v1, 0x7d

    #@5f
    .line 140
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
