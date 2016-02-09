.class public Landroid/net/sip/SimpleSessionDescription;
.super Ljava/lang/Object;
.source "SimpleSessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SimpleSessionDescription$Media;,
        Landroid/net/sip/SimpleSessionDescription$Fields;
    }
.end annotation


# instance fields
.field private final mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

.field private final mMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/sip/SimpleSessionDescription$Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 7
    .param p1, "sessionId"    # J
    .param p3, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 58
    new-instance v0, Landroid/net/sip/SimpleSessionDescription$Fields;

    #@6
    const-string/jumbo v1, "voscbtka"

    #@9
    invoke-direct {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;-><init>(Ljava/lang/String;)V

    #@c
    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@e
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    #@15
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const/16 v0, 0x3a

    #@1c
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    #@1f
    move-result v0

    #@20
    if-gez v0, :cond_0

    #@22
    const-string/jumbo v0, "IN IP4 "

    #@25
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object p3

    #@31
    .line 69
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@33
    const-string/jumbo v1, "v=0"

    #@36
    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap1(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    #@39
    .line 70
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@3b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@3d
    const-string/jumbo v2, "o=- %d %d %s"

    #@40
    const/4 v3, 0x3

    #@41
    new-array v3, v3, [Ljava/lang/Object;

    #@43
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@46
    move-result-object v4

    #@47
    aput-object v4, v3, v5

    #@49
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4c
    move-result-wide v4

    #@4d
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@50
    move-result-object v4

    #@51
    const/4 v5, 0x1

    #@52
    aput-object v4, v3, v5

    #@54
    const/4 v4, 0x2

    #@55
    aput-object p3, v3, v4

    #@57
    .line 70
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap1(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    #@5e
    .line 72
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@60
    const-string/jumbo v1, "s=-"

    #@63
    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap1(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    #@66
    .line 73
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@68
    const-string/jumbo v1, "t=0 0"

    #@6b
    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap1(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    #@6e
    .line 74
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@70
    new-instance v1, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v2, "c="

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap1(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    #@87
    .line 67
    return-void

    #@88
    .line 68
    :cond_0
    const-string/jumbo v0, "IN IP6 "

    #@8b
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 14
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v8, Landroid/net/sip/SimpleSessionDescription$Fields;

    #@5
    const-string/jumbo v9, "voscbtka"

    #@8
    invoke-direct {v8, v9}, Landroid/net/sip/SimpleSessionDescription$Fields;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v8, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@d
    .line 59
    new-instance v8, Ljava/util/ArrayList;

    #@f
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v8, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    #@14
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    const-string/jumbo v9, " +"

    #@1b
    const-string/jumbo v10, " "

    #@1e
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    const-string/jumbo v9, "[\r\n]+"

    #@25
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 84
    .local v4, "lines":[Ljava/lang/String;
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2b
    .line 86
    .local v1, "fields":Landroid/net/sip/SimpleSessionDescription$Fields;
    const/4 v8, 0x0

    #@2c
    array-length v10, v4

    #@2d
    move v9, v8

    #@2e
    :goto_0
    if-ge v9, v10, :cond_4

    #@30
    aget-object v3, v4, v9

    #@32
    .line 88
    .local v3, "line":Ljava/lang/String;
    const/4 v8, 0x1

    #@33
    :try_start_0
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v8

    #@37
    const/16 v11, 0x3d

    #@39
    if-eq v8, v11, :cond_0

    #@3b
    .line 89
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@3d
    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@40
    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 104
    :catch_0
    move-exception v0

    #@42
    .line 105
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@44
    new-instance v9, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v10, "Invalid SDP: "

    #@4c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v9

    #@50
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v9

    #@58
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v8

    #@5c
    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v8, 0x0

    #@5d
    :try_start_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    #@60
    move-result v8

    #@61
    const/16 v11, 0x6d

    #@63
    if-ne v8, v11, :cond_3

    #@65
    .line 92
    const/4 v8, 0x2

    #@66
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@69
    move-result-object v8

    #@6a
    const-string/jumbo v11, " "

    #@6d
    const/4 v12, 0x4

    #@6e
    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    .line 93
    .local v6, "parts":[Ljava/lang/String;
    const/4 v8, 0x1

    #@73
    aget-object v8, v6, v8

    #@75
    const-string/jumbo v11, "/"

    #@78
    const/4 v12, 0x2

    #@79
    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    .line 94
    .local v7, "ports":[Ljava/lang/String;
    const/4 v8, 0x0

    #@7e
    aget-object v11, v6, v8

    #@80
    const/4 v8, 0x0

    #@81
    aget-object v8, v7, v8

    #@83
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@86
    move-result v12

    #@87
    .line 95
    array-length v8, v7

    #@88
    const/4 v13, 0x2

    #@89
    if-ge v8, v13, :cond_1

    #@8b
    const/4 v8, 0x1

    #@8c
    .line 96
    :goto_1
    const/4 v13, 0x2

    #@8d
    aget-object v13, v6, v13

    #@8f
    .line 94
    invoke-virtual {p0, v11, v12, v8, v13}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    #@92
    move-result-object v5

    #@93
    .line 97
    .local v5, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    const/4 v8, 0x3

    #@94
    aget-object v8, v6, v8

    #@96
    const-string/jumbo v11, " "

    #@99
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9c
    move-result-object v11

    #@9d
    const/4 v8, 0x0

    #@9e
    array-length v12, v11

    #@9f
    :goto_2
    if-ge v8, v12, :cond_2

    #@a1
    aget-object v2, v11, v8

    #@a3
    .line 98
    .local v2, "format":Ljava/lang/String;
    const/4 v13, 0x0

    #@a4
    invoke-virtual {v5, v2, v13}, Landroid/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    #@a7
    .line 97
    add-int/lit8 v8, v8, 0x1

    #@a9
    goto :goto_2

    #@aa
    .line 95
    .end local v2    # "format":Ljava/lang/String;
    .end local v5    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_1
    const/4 v8, 0x1

    #@ab
    aget-object v8, v7, v8

    #@ad
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b0
    move-result v8

    #@b1
    goto :goto_1

    #@b2
    .line 100
    .restart local v5    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_2
    move-object v1, v5

    #@b3
    .line 86
    .end local v5    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v6    # "parts":[Ljava/lang/String;
    .end local v7    # "ports":[Ljava/lang/String;
    :goto_3
    add-int/lit8 v8, v9, 0x1

    #@b5
    move v9, v8

    #@b6
    goto/16 :goto_0

    #@b8
    .line 102
    :cond_3
    invoke-static {v1, v3}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap1(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@bb
    goto :goto_3

    #@bc
    .line 82
    .end local v3    # "line":Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 139
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@7
    invoke-static {v3, v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->-wrap3(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/StringBuilder;)V

    #@a
    .line 140
    iget-object v3, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "media$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/net/sip/SimpleSessionDescription$Media;

    #@1c
    .line 141
    .local v1, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-static {v1, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->-wrap0(Landroid/net/sip/SimpleSessionDescription$Media;Ljava/lang/StringBuilder;)V

    #@1f
    goto :goto_0

    #@20
    .line 143
    .end local v1    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    return-object v3
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAddress()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttributeNames()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBandwidth(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidth(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBandwidthTypes()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidthTypes()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncryptionKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionKey()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEncryptionMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionMethod()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;
    .locals 2

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    new-array v1, v1, [Landroid/net/sip/SimpleSessionDescription$Media;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Landroid/net/sip/SimpleSessionDescription$Media;

    #@10
    return-object v0
.end method

.method public newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "portCount"    # I
    .param p4, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    new-instance v0, Landroid/net/sip/SimpleSessionDescription$Media;

    #@2
    const/4 v5, 0x0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move-object v4, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/net/sip/SimpleSessionDescription$Media;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/net/sip/SimpleSessionDescription$Media;)V

    #@a
    .line 121
    .local v0, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    .line 122
    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAddress(Ljava/lang/String;)V

    #@5
    .line 157
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 226
    return-void
.end method

.method public setBandwidth(Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setBandwidth(Ljava/lang/String;I)V

    #@5
    .line 202
    return-void
.end method

.method public setEncryption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setEncryption(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 179
    return-void
.end method
