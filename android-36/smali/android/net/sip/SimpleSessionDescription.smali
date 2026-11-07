.class public Landroid/net/sip/SimpleSessionDescription;
.super Ljava/lang/Object;
.source "SimpleSessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SimpleSessionDescription$Fields;,
        Landroid/net/sip/SimpleSessionDescription$Media;
    }
.end annotation


# instance fields
.field private final greylist-max-o mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

.field private final greylist-max-o mMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/sip/SimpleSessionDescription$Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(JLjava/lang/String;)V
    .registers 9
    .param p1, "sessionId"    # J
    .param p3, "address"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string v1, "voscbtka"

    invoke-direct {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_23

    const-string v1, "IN IP4 "

    goto :goto_25

    :cond_23
    const-string v1, "IN IP6 "

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 69
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string v1, "v=0"

    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mparse(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3, p3}, [Ljava/lang/Object;

    move-result-object v2

    .line 70
    const-string v3, "o=- %d %d %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mparse(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string v1, "s=-"

    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mparse(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string v1, "t=0 0"

    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mparse(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mparse(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 18
    .param p1, "message"    # Ljava/lang/String;

    .line 82
    move-object/from16 v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/net/sip/SimpleSessionDescription$Fields;

    const-string v2, "voscbtka"

    invoke-direct {v0, v2}, Landroid/net/sip/SimpleSessionDescription$Fields;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    .line 83
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " +"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[\r\n]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "lines":[Ljava/lang/String;
    iget-object v0, v1, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    .line 86
    .local v0, "fields":Landroid/net/sip/SimpleSessionDescription$Fields;
    array-length v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    move v0, v5

    .end local v0    # "fields":Landroid/net/sip/SimpleSessionDescription$Fields;
    .local v6, "fields":Landroid/net/sip/SimpleSessionDescription$Fields;
    :goto_2d
    if-ge v0, v4, :cond_ab

    aget-object v7, v2, v0

    .line 88
    .local v7, "line":Ljava/lang/String;
    const/4 v8, 0x1

    :try_start_32
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_8b

    .line 91
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x6d

    if-ne v9, v10, :cond_84

    .line 92
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, "parts":[Ljava/lang/String;
    aget-object v11, v10, v8

    const-string v12, "/"

    invoke-virtual {v11, v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, "ports":[Ljava/lang/String;
    aget-object v12, v10, v5

    aget-object v13, v11, v5

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 95
    array-length v14, v11

    if-ge v14, v9, :cond_60

    :goto_5f
    goto :goto_67

    :cond_60
    aget-object v8, v11, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_5f

    :goto_67
    aget-object v9, v10, v9

    .line 94
    invoke-virtual {v1, v12, v13, v8, v9}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v8

    .line 97
    .local v8, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    const/4 v9, 0x3

    aget-object v9, v10, v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v12, v9

    move v13, v5

    :goto_76
    if-ge v13, v12, :cond_81

    aget-object v14, v9, v13

    .line 98
    .local v14, "format":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v14    # "format":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_76

    .line 100
    :cond_81
    nop

    .line 101
    .end local v6    # "fields":Landroid/net/sip/SimpleSessionDescription$Fields;
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v11    # "ports":[Ljava/lang/String;
    .local v8, "fields":Landroid/net/sip/SimpleSessionDescription$Fields;
    move-object v6, v8

    goto :goto_87

    .line 102
    .end local v8    # "fields":Landroid/net/sip/SimpleSessionDescription$Fields;
    .restart local v6    # "fields":Landroid/net/sip/SimpleSessionDescription$Fields;
    :cond_84
    invoke-static {v6, v7}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mparse(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/String;)V

    .line 106
    :goto_87
    nop

    .line 86
    .end local v7    # "line":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 89
    .restart local v7    # "line":Ljava/lang/String;
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v2    # "lines":[Ljava/lang/String;
    .end local v6    # "fields":Landroid/net/sip/SimpleSessionDescription$Fields;
    .end local v7    # "line":Ljava/lang/String;
    .end local p0    # "this":Landroid/net/sip/SimpleSessionDescription;
    .end local p1    # "message":Ljava/lang/String;
    throw v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_91} :catch_91

    .line 104
    .restart local v2    # "lines":[Ljava/lang/String;
    .restart local v6    # "fields":Landroid/net/sip/SimpleSessionDescription$Fields;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local p0    # "this":Landroid/net/sip/SimpleSessionDescription;
    .restart local p1    # "message":Ljava/lang/String;
    :catch_91
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid SDP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "line":Ljava/lang/String;
    :cond_ab
    return-void
.end method


# virtual methods
.method public greylist-max-o encode()Ljava/lang/String;
    .registers 4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-static {v1, v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->-$$Nest$mwrite(Landroid/net/sip/SimpleSessionDescription$Fields;Ljava/lang/StringBuilder;)V

    .line 140
    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SimpleSessionDescription$Media;

    .line 141
    .local v2, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-static {v2, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->-$$Nest$mwrite(Landroid/net/sip/SimpleSessionDescription$Media;Ljava/lang/StringBuilder;)V

    .line 142
    .end local v2    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    goto :goto_10

    .line 143
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getAddress()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAttributeNames()[Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBandwidth(Ljava/lang/String;)I
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getBandwidthTypes()[Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getBandwidthTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEncryptionKey()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEncryptionMethod()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription$Fields;->getEncryptionMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;
    .registers 3

    .line 129
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/sip/SimpleSessionDescription$Media;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/sip/SimpleSessionDescription$Media;

    return-object v0
.end method

.method public greylist-max-o newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "portCount"    # I
    .param p4, "protocol"    # Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/net/sip/SimpleSessionDescription$Media;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "portCount":I
    .end local p4    # "protocol":Ljava/lang/String;
    .local v1, "type":Ljava/lang/String;
    .local v2, "port":I
    .local v3, "portCount":I
    .local v4, "protocol":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/net/sip/SimpleSessionDescription$Media;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/net/sip/SimpleSessionDescription-IA;)V

    .line 121
    .local v0, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    iget-object p1, p0, Landroid/net/sip/SimpleSessionDescription;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-object v0
.end method

.method public greylist-max-o setAddress(Ljava/lang/String;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAddress(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public greylist-max-o setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public greylist-max-o setBandwidth(Ljava/lang/String;I)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 203
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setBandwidth(Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method public greylist-max-o setEncryption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Landroid/net/sip/SimpleSessionDescription;->mFields:Landroid/net/sip/SimpleSessionDescription$Fields;

    invoke-virtual {v0, p1, p2}, Landroid/net/sip/SimpleSessionDescription$Fields;->setEncryption(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method
