.class public Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;,
        Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;
    }
.end annotation


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final FALSE:Ljava/lang/Boolean;

.field private static final NULL_COUNTER:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

.field public static final TRUE:Ljava/lang/Boolean;


# instance fields
.field private cachedSize:I

.field private msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

.field private final values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

.field private wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 52
    new-instance v0, Ljava/lang/Boolean;

    #@3
    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    #@6
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    #@8
    .line 53
    new-instance v0, Ljava/lang/Boolean;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@e
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    #@10
    .line 54
    new-array v0, v2, [B

    #@12
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    #@14
    .line 381
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;)V

    #@1a
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->NULL_COUNTER:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    #@1c
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V
    .locals 1
    .param p1, "type"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, -0x80000000

    #@5
    .line 88
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->cachedSize:I

    #@7
    .line 96
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@9
    .line 97
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@b
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    #@e
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@10
    .line 98
    return-void
.end method

.method private addObject(ILjava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1249
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, v0, p2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    #@5
    .line 1250
    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1009
    return-void
.end method

.method private static checkTag(I)V
    .locals 0
    .param p0, "tag"    # I

    #@0
    .prologue
    .line 1101
    return-void
.end method

.method private static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "tagType"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1257
    packed-switch p1, :pswitch_data_0

    #@4
    .line 1318
    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v4, "Unsupp.Type"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 1259
    :pswitch_1
    return-object p0

    #@e
    .line 1262
    :pswitch_2
    instance-of v3, p0, Ljava/lang/Boolean;

    #@10
    if-nez v3, :cond_0

    #@12
    .line 1265
    check-cast p0, Ljava/lang/Long;

    #@14
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@17
    move-result-wide v4

    #@18
    long-to-int v3, v4

    #@19
    packed-switch v3, :pswitch_data_1

    #@1c
    .line 1271
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v4, "Type mismatch"

    #@21
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v3

    #@25
    .line 1263
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    return-object p0

    #@26
    .line 1267
    .end local p0    # "obj":Ljava/lang/Object;
    :pswitch_3
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    #@28
    return-object v3

    #@29
    .line 1269
    :pswitch_4
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    #@2b
    return-object v3

    #@2c
    .line 1281
    .restart local p0    # "obj":Ljava/lang/Object;
    :pswitch_5
    instance-of v3, p0, Ljava/lang/Boolean;

    #@2e
    if-nez v3, :cond_1

    #@30
    .line 1284
    return-object p0

    #@31
    .line 1282
    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    #@33
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_2

    #@39
    const-wide/16 v4, 0x0

    #@3b
    :goto_0
    invoke-static {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    #@3e
    move-result-object v3

    #@3f
    return-object v3

    #@40
    :cond_2
    const-wide/16 v4, 0x1

    #@42
    goto :goto_0

    #@43
    .line 1287
    .restart local p0    # "obj":Ljava/lang/Object;
    :pswitch_6
    instance-of v3, p0, Ljava/lang/String;

    #@45
    if-nez v3, :cond_3

    #@47
    .line 1289
    instance-of v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@49
    if-nez v3, :cond_4

    #@4b
    .line 1298
    return-object p0

    #@4c
    .line 1288
    :cond_3
    check-cast p0, Ljava/lang/String;

    #@4e
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    #@51
    move-result-object v3

    #@52
    return-object v3

    #@53
    .line 1290
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@55
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@58
    .line 1292
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@5a
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    #@5d
    .line 1293
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    move-result-object v3

    #@61
    return-object v3

    #@62
    :catch_0
    move-exception v2

    #@63
    .line 1295
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@65
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v3

    #@6d
    .line 1301
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :pswitch_7
    instance-of v3, p0, [B

    #@6f
    if-nez v3, :cond_5

    #@71
    .line 1305
    return-object p0

    #@72
    .line 1302
    :cond_5
    check-cast p0, [B

    #@74
    .end local p0    # "obj":Ljava/lang/Object;
    move-object v1, p0

    #@75
    check-cast v1, [B

    #@77
    .line 1303
    .local v1, "data":[B
    array-length v3, v1

    #@78
    const/4 v4, 0x1

    #@79
    invoke-static {v1, v5, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    return-object v3

    #@7e
    .line 1308
    .end local v1    # "data":[B
    .restart local p0    # "obj":Ljava/lang/Object;
    :pswitch_8
    instance-of v3, p0, [B

    #@80
    if-nez v3, :cond_6

    #@82
    .line 1315
    return-object p0

    #@83
    .line 1310
    :cond_6
    :try_start_1
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@85
    const/4 v4, 0x0

    #@86
    invoke-direct {v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    #@89
    check-cast p0, [B

    #@8b
    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    #@8d
    invoke-virtual {v3, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse([B)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@90
    move-result-object v3

    #@91
    return-object v3

    #@92
    :catch_1
    move-exception v2

    #@93
    .line 1312
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@95
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@98
    move-result-object v4

    #@99
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v3

    #@9d
    .line 1257
    nop

    #@9e
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    #@cc
    .line 1265
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getCount(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 533
    if-eqz p0, :cond_0

    #@3
    instance-of v0, p0, Ljava/util/Vector;

    #@5
    if-nez v0, :cond_1

    #@7
    const/4 v0, 0x1

    #@8
    .end local p0    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    #@9
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p0, Ljava/util/Vector;

    #@b
    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method private getDefault(I)Ljava/lang/Object;
    .locals 1
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 1084
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 1090
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@9
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    :sswitch_0
    const/4 v0, 0x0

    #@f
    .line 1088
    return-object v0

    #@10
    .line 1084
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method private getObject(II)Ljava/lang/Object;
    .locals 4
    .param p1, "tag"    # I
    .param p2, "desiredType"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1110
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    #@4
    .line 1111
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@6
    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1112
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    #@d
    move-result v0

    #@e
    .line 1114
    .local v0, "count":I
    if-eqz v0, :cond_0

    #@10
    const/4 v2, 0x1

    #@11
    .line 1118
    if-gt v0, v2, :cond_1

    #@13
    .line 1121
    invoke-direct {p0, p1, v3, p2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 1115
    :cond_0
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    return-object v2

    #@1d
    .line 1119
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@22
    throw v2
.end method

.method private getObject(III)Ljava/lang/Object;
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "desiredType"    # I

    #@0
    .prologue
    .line 1130
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    #@3
    .line 1131
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@5
    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .line 1132
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    .line 1134
    .local v0, "count":I
    if-ge p2, v0, :cond_0

    #@f
    .line 1137
    invoke-direct {p0, p1, p2, p3, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 1135
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@16
    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@19
    throw v2
.end method

.method private getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "desiredType"    # I
    .param p4, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1146
    .local v1, "v":Ljava/util/Vector;
    instance-of v2, p4, Ljava/util/Vector;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 1151
    .end local v1    # "v":Ljava/util/Vector;
    :goto_0
    invoke-static {p4, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .line 1153
    .local v0, "o2":Ljava/lang/Object;
    if-ne v0, p4, :cond_2

    #@b
    .line 1160
    :cond_0
    :goto_1
    return-object v0

    #@c
    .end local v0    # "o2":Ljava/lang/Object;
    .restart local v1    # "v":Ljava/util/Vector;
    :cond_1
    move-object v1, p4

    #@d
    .line 1147
    check-cast v1, Ljava/util/Vector;

    #@f
    .line 1148
    .local v1, "v":Ljava/util/Vector;
    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@12
    move-result-object p4

    #@13
    goto :goto_0

    #@14
    .line 1153
    .end local v1    # "v":Ljava/util/Vector;
    .restart local v0    # "o2":Ljava/lang/Object;
    :cond_2
    if-eqz p4, :cond_0

    #@16
    .line 1154
    if-eqz v1, :cond_3

    #@18
    .line 1157
    invoke-virtual {v1, v0, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@1b
    goto :goto_1

    #@1c
    .line 1155
    :cond_3
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    #@1f
    goto :goto_1
.end method

.method private static getVarIntSize(J)I
    .locals 6
    .param p0, "i"    # J

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const-wide/16 v4, 0x0

    #@4
    .line 666
    cmp-long v1, p0, v4

    #@6
    if-ltz v1, :cond_0

    #@8
    move v1, v2

    #@9
    :goto_0
    if-nez v1, :cond_1

    #@b
    const/16 v1, 0xa

    #@d
    .line 667
    return v1

    #@e
    :cond_0
    move v1, v3

    #@f
    .line 666
    goto :goto_0

    #@10
    :cond_1
    const/4 v0, 0x1

    #@11
    .local v0, "size":I
    :goto_1
    const-wide/16 v4, 0x80

    #@13
    .line 670
    cmp-long v1, p0, v4

    #@15
    if-gez v1, :cond_2

    #@17
    move v1, v2

    #@18
    :goto_2
    if-nez v1, :cond_3

    #@1a
    .line 671
    add-int/lit8 v0, v0, 0x1

    #@1c
    const/4 v1, 0x7

    #@1d
    .line 672
    shr-long/2addr p0, v1

    #@1e
    goto :goto_1

    #@1f
    :cond_2
    move v1, v3

    #@20
    .line 670
    goto :goto_2

    #@21
    .line 674
    :cond_3
    return v0
.end method

.method private final getWireType(I)I
    .locals 5
    .param p1, "tag"    # I

    #@0
    .prologue
    const/16 v4, 0x2f

    #@2
    .line 1170
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    #@5
    move-result v0

    #@6
    .line 1172
    .local v0, "tagType":I
    packed-switch v0, :pswitch_data_0

    #@9
    .line 1207
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Unsupp.Type:"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 1179
    :pswitch_1
    return v0

    #@36
    :pswitch_2
    const/4 v1, 0x0

    #@37
    .line 1189
    return v1

    #@38
    :pswitch_3
    const/4 v1, 0x2

    #@39
    .line 1195
    return v1

    #@3a
    :pswitch_4
    const/4 v1, 0x1

    #@3b
    .line 1199
    return v1

    #@3c
    :pswitch_5
    const/4 v1, 0x5

    #@3d
    .line 1203
    return v1

    #@3e
    :pswitch_6
    const/4 v1, 0x3

    #@3f
    .line 1205
    return v1

    #@40
    .line 1172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private insertObject(IILjava/lang/Object;Z)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "o"    # Ljava/lang/Object;
    .param p4, "appendToEnd"    # Z

    #@0
    .prologue
    .line 1225
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    #@3
    .line 1226
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@5
    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .local v0, "current":Ljava/lang/Object;
    const/4 v1, 0x0

    #@a
    .line 1228
    .local v1, "v":Ljava/util/Vector;
    instance-of v2, v0, Ljava/util/Vector;

    #@c
    if-nez v2, :cond_1

    #@e
    .line 1231
    .end local v1    # "v":Ljava/util/Vector;
    :goto_0
    if-nez v0, :cond_2

    #@10
    .line 1232
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    #@13
    .line 1246
    :goto_1
    return-void

    #@14
    .restart local v1    # "v":Ljava/util/Vector;
    :cond_1
    move-object v1, v0

    #@15
    .line 1229
    check-cast v1, Ljava/util/Vector;

    #@17
    .local v1, "v":Ljava/util/Vector;
    goto :goto_0

    #@18
    .line 1231
    .end local v1    # "v":Ljava/util/Vector;
    :cond_2
    if-nez v1, :cond_3

    #@1a
    .line 1234
    :goto_2
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    #@1d
    .line 1235
    if-eqz v1, :cond_4

    #@1f
    .line 1240
    :goto_3
    if-nez p4, :cond_5

    #@21
    .line 1243
    invoke-virtual {v1, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@24
    goto :goto_1

    #@25
    .line 1231
    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_0

    #@2b
    goto :goto_2

    #@2c
    .line 1236
    :cond_4
    new-instance v1, Ljava/util/Vector;

    #@2e
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@31
    .line 1237
    .restart local v1    # "v":Ljava/util/Vector;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@34
    .line 1238
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@36
    invoke-virtual {v2, p1, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    #@39
    goto :goto_3

    #@3a
    .line 1241
    .end local v1    # "v":Ljava/util/Vector;
    :cond_5
    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@3d
    goto :goto_1
.end method

.method private isZigZagEncodedType(I)Z
    .locals 2
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 849
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    #@3
    move-result v0

    #@4
    .local v0, "declaredType":I
    const/16 v1, 0x21

    #@6
    .line 850
    if-ne v0, v1, :cond_1

    #@8
    :cond_0
    const/4 v1, 0x1

    #@9
    :goto_0
    return v1

    #@a
    :cond_1
    const/16 v1, 0x22

    #@c
    if-eq v0, v1, :cond_0

    #@e
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method private outputField(ILandroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I
    .locals 22
    .param p1, "tag"    # I
    .param p2, "os"    # Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 763
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@3
    move-result v12

    #@4
    .line 764
    .local v12, "size":I
    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getWireType(I)I

    #@7
    move-result v15

    #@8
    .line 765
    .local v15, "wireType":I
    shl-int/lit8 v19, p1, 0x3

    #@a
    or-int v18, v19, v15

    #@c
    .local v18, "wireTypeTag":I
    const/4 v14, 0x0

    #@d
    .local v14, "totalSize":I
    const/4 v9, 0x0

    #@e
    .line 770
    .local v9, "i":I
    :goto_0
    if-lt v9, v12, :cond_0

    #@10
    .line 833
    return v14

    #@11
    .line 771
    :cond_0
    move/from16 v0, v18

    #@13
    int-to-long v0, v0

    #@14
    move-wide/from16 v20, v0

    #@16
    move-object/from16 v0, p2

    #@18
    move-wide/from16 v1, v20

    #@1a
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    #@1d
    move-result v19

    #@1e
    add-int v14, v14, v19

    #@20
    .line 772
    const/4 v4, 0x0

    #@21
    .line 773
    .local v4, "added":Z
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    #@24
    move-result v7

    #@25
    .line 774
    .local v7, "contentStart":I
    packed-switch v15, :pswitch_data_0

    #@28
    .line 827
    :pswitch_0
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@2a
    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2d
    throw v19

    #@2e
    :pswitch_1
    const/16 v19, 0x13

    #@30
    .line 777
    move-object/from16 v0, p0

    #@32
    move/from16 v1, p1

    #@34
    move/from16 v2, v19

    #@36
    invoke-direct {v0, v1, v9, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    #@39
    move-result-object v19

    #@3a
    check-cast v19, Ljava/lang/Long;

    #@3c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    #@3f
    move-result-wide v16

    #@40
    .local v16, "v":J
    const/16 v19, 0x5

    #@42
    .line 779
    move/from16 v0, v19

    #@44
    if-eq v15, v0, :cond_1

    #@46
    const/16 v6, 0x8

    #@48
    .local v6, "cnt":I
    :goto_1
    const/4 v5, 0x0

    #@49
    .line 780
    .local v5, "b":I
    :goto_2
    if-lt v5, v6, :cond_2

    #@4b
    .line 829
    .end local v5    # "b":I
    .end local v6    # "cnt":I
    .end local v16    # "v":J
    :goto_3
    if-eqz v4, :cond_6

    #@4d
    .line 770
    :goto_4
    add-int/lit8 v9, v9, 0x1

    #@4f
    goto :goto_0

    #@50
    .restart local v16    # "v":J
    :cond_1
    const/4 v6, 0x4

    #@51
    .line 779
    goto :goto_1

    #@52
    .restart local v5    # "b":I
    .restart local v6    # "cnt":I
    :cond_2
    const-wide/16 v20, 0xff

    #@54
    .line 781
    and-long v20, v20, v16

    #@56
    move-wide/from16 v0, v20

    #@58
    long-to-int v0, v0

    #@59
    move/from16 v19, v0

    #@5b
    move-object/from16 v0, p2

    #@5d
    move/from16 v1, v19

    #@5f
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->write(I)V

    #@62
    const/16 v19, 0x8

    #@64
    .line 782
    shr-long v16, v16, v19

    #@66
    .line 780
    add-int/lit8 v5, v5, 0x1

    #@68
    goto :goto_2

    #@69
    .end local v5    # "b":I
    .end local v6    # "cnt":I
    .end local v16    # "v":J
    :pswitch_2
    const/16 v19, 0x13

    #@6b
    .line 787
    move-object/from16 v0, p0

    #@6d
    move/from16 v1, p1

    #@6f
    move/from16 v2, v19

    #@71
    invoke-direct {v0, v1, v9, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    #@74
    move-result-object v19

    #@75
    check-cast v19, Ljava/lang/Long;

    #@77
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    #@7a
    move-result-wide v16

    #@7b
    .line 788
    .restart local v16    # "v":J
    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    #@7e
    move-result v19

    #@7f
    if-nez v19, :cond_3

    #@81
    .line 791
    :goto_5
    move-object/from16 v0, p2

    #@83
    move-wide/from16 v1, v16

    #@85
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    #@88
    goto :goto_3

    #@89
    .line 789
    :cond_3
    invoke-static/range {v16 .. v17}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    #@8c
    move-result-wide v16

    #@8d
    goto :goto_5

    #@8e
    .line 795
    .end local v16    # "v":J
    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    #@91
    move-result v19

    #@92
    const/16 v20, 0x1b

    #@94
    move/from16 v0, v19

    #@96
    move/from16 v1, v20

    #@98
    if-eq v0, v1, :cond_4

    #@9a
    const/16 v19, 0x19

    #@9c
    :goto_6
    move-object/from16 v0, p0

    #@9e
    move/from16 v1, p1

    #@a0
    move/from16 v2, v19

    #@a2
    invoke-direct {v0, v1, v9, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    #@a5
    move-result-object v10

    #@a6
    .line 800
    .local v10, "o":Ljava/lang/Object;
    instance-of v0, v10, [B

    #@a8
    move/from16 v19, v0

    #@aa
    if-nez v19, :cond_5

    #@ac
    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    #@af
    move-result v19

    #@b0
    move-object/from16 v0, p2

    #@b2
    move/from16 v1, v19

    #@b4
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->addMarker(I)V

    #@b7
    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->numMarkers()I

    #@ba
    move-result v13

    #@bb
    .local v13, "tmpPos":I
    const/16 v19, -0x1

    #@bd
    .line 808
    move-object/from16 v0, p2

    #@bf
    move/from16 v1, v19

    #@c1
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->addMarker(I)V

    #@c4
    .line 809
    check-cast v10, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@c6
    .end local v10    # "o":Ljava/lang/Object;
    move-object/from16 v0, p2

    #@c8
    invoke-direct {v10, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    #@cb
    move-result v11

    #@cc
    .line 811
    .local v11, "protoSize":I
    move-object/from16 v0, p2

    #@ce
    invoke-virtual {v0, v13, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->setMarker(II)V

    #@d1
    .line 813
    int-to-long v0, v11

    #@d2
    move-wide/from16 v20, v0

    #@d4
    invoke-static/range {v20 .. v21}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    #@d7
    move-result v19

    #@d8
    add-int v19, v19, v11

    #@da
    add-int v14, v14, v19

    #@dc
    .line 814
    const/4 v4, 0x1

    #@dd
    goto/16 :goto_3

    #@df
    .end local v11    # "protoSize":I
    .end local v13    # "tmpPos":I
    :cond_4
    const/16 v19, 0x10

    #@e1
    .line 795
    goto :goto_6

    #@e2
    .line 801
    .restart local v10    # "o":Ljava/lang/Object;
    :cond_5
    check-cast v10, [B

    #@e4
    .end local v10    # "o":Ljava/lang/Object;
    move-object v8, v10

    #@e5
    check-cast v8, [B

    #@e7
    .line 802
    .local v8, "data":[B
    array-length v0, v8

    #@e8
    move/from16 v19, v0

    #@ea
    move/from16 v0, v19

    #@ec
    int-to-long v0, v0

    #@ed
    move-wide/from16 v20, v0

    #@ef
    move-object/from16 v0, p2

    #@f1
    move-wide/from16 v1, v20

    #@f3
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    #@f6
    .line 803
    move-object/from16 v0, p2

    #@f8
    invoke-virtual {v0, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->write([B)V

    #@fb
    goto/16 :goto_3

    #@fd
    .end local v8    # "data":[B
    :pswitch_4
    const/16 v19, 0x1a

    #@ff
    .line 820
    move-object/from16 v0, p0

    #@101
    move/from16 v1, p1

    #@103
    move/from16 v2, v19

    #@105
    invoke-direct {v0, v1, v9, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    #@108
    move-result-object v19

    #@109
    check-cast v19, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@10b
    move-object/from16 v0, v19

    #@10d
    move-object/from16 v1, p2

    #@10f
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    #@112
    move-result v19

    #@113
    add-int v14, v14, v19

    #@115
    .line 822
    shl-int/lit8 v19, p1, 0x3

    #@117
    or-int/lit8 v19, v19, 0x4

    #@119
    move/from16 v0, v19

    #@11b
    int-to-long v0, v0

    #@11c
    move-wide/from16 v20, v0

    #@11e
    move-object/from16 v0, p2

    #@120
    move-wide/from16 v1, v20

    #@122
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    #@125
    move-result v19

    #@126
    add-int v14, v14, v19

    #@128
    .line 823
    const/4 v4, 0x1

    #@129
    goto/16 :goto_3

    #@12b
    .line 830
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    #@12e
    move-result v19

    #@12f
    sub-int v19, v19, v7

    #@131
    add-int v14, v14, v19

    #@133
    goto/16 :goto_4

    #@135
    .line 774
    nop

    #@136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private outputTo(Ljava/io/OutputStream;Z)V
    .locals 8
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "addSize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 717
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;

    #@2
    invoke-direct {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;-><init>()V

    #@5
    .line 718
    .local v2, "mos":Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;
    invoke-direct {p0, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    #@8
    move-result v5

    #@9
    .line 720
    .local v5, "size":I
    if-nez p2, :cond_0

    #@b
    :goto_0
    const/4 v4, 0x0

    #@c
    .local v4, "previous":I
    const/4 v1, 0x0

    #@d
    .line 726
    .local v1, "i":I
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->numMarkers()I

    #@10
    move-result v3

    #@11
    .local v3, "n":I
    :goto_1
    if-lt v1, v3, :cond_1

    #@13
    .line 732
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    #@16
    move-result v6

    #@17
    if-lt v4, v6, :cond_2

    #@19
    .line 735
    :goto_2
    return-void

    #@1a
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v4    # "previous":I
    :cond_0
    move-object v6, p1

    #@1b
    .line 722
    check-cast v6, Ljava/io/DataOutput;

    #@1d
    invoke-interface {v6, v5}, Ljava/io/DataOutput;->writeInt(I)V

    #@20
    goto :goto_0

    #@21
    .line 727
    .restart local v1    # "i":I
    .restart local v3    # "n":I
    .restart local v4    # "previous":I
    :cond_1
    invoke-virtual {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->getMarker(I)I

    #@24
    move-result v0

    #@25
    .line 728
    .local v0, "current":I
    sub-int v6, v0, v4

    #@27
    invoke-virtual {v2, p1, v4, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    #@2a
    .line 729
    add-int/lit8 v6, v1, 0x1

    #@2c
    invoke-virtual {v2, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->getMarker(I)I

    #@2f
    move-result v6

    #@30
    int-to-long v6, v6

    #@31
    invoke-static {p1, v6, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    #@34
    .line 730
    move v4, v0

    #@35
    .line 726
    add-int/lit8 v1, v1, 0x2

    #@37
    goto :goto_1

    #@38
    .line 733
    .end local v0    # "current":I
    :cond_2
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    #@3b
    move-result v6

    #@3c
    sub-int/2addr v6, v4

    #@3d
    invoke-virtual {v2, p1, v4, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    #@40
    goto :goto_2
.end method

.method private outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I
    .locals 4
    .param p1, "os"    # Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 744
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@2
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->keys()Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;

    #@5
    move-result-object v0

    #@6
    .local v0, "itr":Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;
    const/4 v2, 0x0

    #@7
    .line 746
    .local v2, "totalSize":I
    :goto_0
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 750
    return v2

    #@e
    .line 747
    :cond_0
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->next()I

    #@11
    move-result v1

    #@12
    .line 748
    .local v1, "tag":I
    invoke-direct {p0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputField(ILandroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    #@15
    move-result v3

    #@16
    add-int/2addr v2, v3

    #@17
    goto :goto_0
.end method

.method private parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I
    .locals 25
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "available"    # I
    .param p3, "clear"    # Z
    .param p4, "counter"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 415
    if-nez p3, :cond_1

    #@2
    .line 418
    :goto_0
    if-gtz p2, :cond_2

    #@4
    .line 509
    :cond_0
    if-ltz p2, :cond_d

    #@6
    .line 513
    return p2

    #@7
    .line 416
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->clear()V

    #@a
    goto :goto_0

    #@b
    .line 419
    :cond_2
    const/16 v22, 0x1

    #@d
    move-object/from16 v0, p1

    #@f
    move/from16 v1, v22

    #@11
    move-object/from16 v2, p4

    #@13
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    #@16
    move-result-wide v14

    #@17
    .local v14, "tagAndType":J
    const-wide/16 v22, -0x1

    #@19
    .line 421
    cmp-long v22, v14, v22

    #@1b
    if-eqz v22, :cond_0

    #@1d
    .line 424
    move-object/from16 v0, p4

    #@1f
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    #@21
    move/from16 v22, v0

    #@23
    sub-int p2, p2, v22

    #@25
    .line 425
    long-to-int v0, v14

    #@26
    move/from16 v22, v0

    #@28
    and-int/lit8 v21, v22, 0x7

    #@2a
    .local v21, "wireType":I
    const/16 v22, 0x4

    #@2c
    .line 426
    move/from16 v0, v21

    #@2e
    move/from16 v1, v22

    #@30
    if-eq v0, v1, :cond_0

    #@32
    const/16 v22, 0x3

    #@34
    .line 429
    ushr-long v22, v14, v22

    #@36
    move-wide/from16 v0, v22

    #@38
    long-to-int v13, v0

    #@39
    .line 431
    .local v13, "tag":I
    move-object/from16 v0, p0

    #@3b
    invoke-virtual {v0, v13}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    #@3e
    move-result v16

    #@3f
    .local v16, "tagType":I
    const/16 v22, 0x10

    #@41
    .line 432
    move/from16 v0, v16

    #@43
    move/from16 v1, v22

    #@45
    if-eq v0, v1, :cond_3

    #@47
    .line 442
    :goto_1
    packed-switch v21, :pswitch_data_0

    #@4a
    .line 503
    :pswitch_0
    new-instance v22, Ljava/io/IOException;

    #@4c
    new-instance v23, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v24, "Unknown wire type "

    #@54
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v23

    #@58
    move-object/from16 v0, v23

    #@5a
    move/from16 v1, v21

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v23

    #@60
    const-string/jumbo v24, ", reading garbage data?"

    #@63
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v23

    #@67
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v23

    #@6b
    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v22

    #@6f
    .line 433
    :cond_3
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@73
    move-object/from16 v22, v0

    #@75
    if-eqz v22, :cond_4

    #@77
    .line 436
    :goto_2
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@7b
    move-object/from16 v22, v0

    #@7d
    invoke-static/range {v21 .. v21}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    #@80
    move-result-object v23

    #@81
    move-object/from16 v0, v22

    #@83
    move-object/from16 v1, v23

    #@85
    invoke-virtual {v0, v13, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    #@88
    .line 437
    move/from16 v16, v21

    #@8a
    goto :goto_1

    #@8b
    .line 434
    :cond_4
    new-instance v22, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@8d
    invoke-direct/range {v22 .. v22}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    #@90
    move-object/from16 v0, v22

    #@92
    move-object/from16 v1, p0

    #@94
    iput-object v0, v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@96
    goto :goto_2

    #@97
    .line 444
    :pswitch_1
    const/16 v22, 0x0

    #@99
    move-object/from16 v0, p1

    #@9b
    move/from16 v1, v22

    #@9d
    move-object/from16 v2, p4

    #@9f
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    #@a2
    move-result-wide v18

    #@a3
    .line 445
    .local v18, "v":J
    move-object/from16 v0, p4

    #@a5
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    #@a7
    move/from16 v22, v0

    #@a9
    sub-int p2, p2, v22

    #@ab
    .line 446
    move-object/from16 v0, p0

    #@ad
    invoke-direct {v0, v13}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    #@b0
    move-result v22

    #@b1
    if-nez v22, :cond_5

    #@b3
    .line 449
    :goto_3
    invoke-static/range {v18 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    #@b6
    move-result-object v20

    #@b7
    .line 506
    .end local v18    # "v":J
    .local v20, "value":Ljava/lang/Object;
    :goto_4
    move-object/from16 v0, p0

    #@b9
    move-object/from16 v1, v20

    #@bb
    invoke-direct {v0, v13, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    #@be
    goto/16 :goto_0

    #@c0
    .line 447
    .end local v20    # "value":Ljava/lang/Object;
    .restart local v18    # "v":J
    :cond_5
    invoke-static/range {v18 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    #@c3
    move-result-wide v18

    #@c4
    goto :goto_3

    #@c5
    .end local v18    # "v":J
    :pswitch_2
    const-wide/16 v18, 0x0

    #@c7
    .restart local v18    # "v":J
    const/4 v12, 0x0

    #@c8
    .local v12, "shift":I
    const/16 v22, 0x5

    #@ca
    .line 457
    move/from16 v0, v21

    #@cc
    move/from16 v1, v22

    #@ce
    if-eq v0, v1, :cond_6

    #@d0
    const/16 v4, 0x8

    #@d2
    .line 458
    .local v4, "count":I
    :goto_5
    sub-int p2, p2, v4

    #@d4
    move v5, v4

    #@d5
    .line 460
    .end local v4    # "count":I
    .local v5, "count":I
    :goto_6
    add-int/lit8 v4, v5, -0x1

    #@d7
    .end local v5    # "count":I
    .restart local v4    # "count":I
    if-gtz v5, :cond_7

    #@d9
    .line 466
    invoke-static/range {v18 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    #@dc
    move-result-object v20

    #@dd
    .restart local v20    # "value":Ljava/lang/Object;
    goto :goto_4

    #@de
    .end local v4    # "count":I
    .end local v20    # "value":Ljava/lang/Object;
    :cond_6
    const/4 v4, 0x4

    #@df
    .line 457
    goto :goto_5

    #@e0
    .line 461
    .restart local v4    # "count":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    #@e3
    move-result v22

    #@e4
    move/from16 v0, v22

    #@e6
    int-to-long v8, v0

    #@e7
    .line 462
    .local v8, "l":J
    shl-long v22, v8, v12

    #@e9
    or-long v18, v18, v22

    #@eb
    .line 463
    add-int/lit8 v12, v12, 0x8

    #@ed
    move v5, v4

    #@ee
    .line 464
    .end local v4    # "count":I
    .restart local v5    # "count":I
    goto :goto_6

    #@ef
    .line 470
    .end local v5    # "count":I
    .end local v8    # "l":J
    .end local v12    # "shift":I
    .end local v18    # "v":J
    :pswitch_3
    const/16 v22, 0x0

    #@f1
    move-object/from16 v0, p1

    #@f3
    move/from16 v1, v22

    #@f5
    move-object/from16 v2, p4

    #@f7
    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    #@fa
    move-result-wide v22

    #@fb
    move-wide/from16 v0, v22

    #@fd
    long-to-int v0, v0

    #@fe
    move/from16 v17, v0

    #@100
    .line 471
    .local v17, "total":I
    move-object/from16 v0, p4

    #@102
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    #@104
    move/from16 v22, v0

    #@106
    sub-int p2, p2, v22

    #@108
    .line 472
    sub-int p2, p2, v17

    #@10a
    const/16 v22, 0x1b

    #@10c
    .line 474
    move/from16 v0, v16

    #@10e
    move/from16 v1, v22

    #@110
    if-eq v0, v1, :cond_8

    #@112
    .line 480
    if-eqz v17, :cond_9

    #@114
    move/from16 v0, v17

    #@116
    new-array v6, v0, [B

    #@118
    .local v6, "data":[B
    :goto_7
    const/4 v11, 0x0

    #@119
    .line 482
    .local v11, "pos":I
    :goto_8
    move/from16 v0, v17

    #@11b
    if-lt v11, v0, :cond_a

    #@11d
    .line 489
    move-object/from16 v20, v6

    #@11f
    .restart local v20    # "value":Ljava/lang/Object;
    goto :goto_4

    #@120
    .line 475
    .end local v6    # "data":[B
    .end local v11    # "pos":I
    .end local v20    # "value":Ljava/lang/Object;
    :cond_8
    new-instance v10, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@122
    move-object/from16 v0, p0

    #@124
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@126
    move-object/from16 v22, v0

    #@128
    move-object/from16 v0, v22

    #@12a
    invoke-virtual {v0, v13}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    #@12d
    move-result-object v22

    #@12e
    check-cast v22, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@130
    move-object/from16 v0, v22

    #@132
    invoke-direct {v10, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    #@135
    .line 477
    .local v10, "msg":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x0

    #@137
    move-object/from16 v0, p1

    #@139
    move/from16 v1, v17

    #@13b
    move/from16 v2, v22

    #@13d
    move-object/from16 v3, p4

    #@13f
    invoke-direct {v10, v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    #@142
    .line 478
    move-object/from16 v20, v10

    #@144
    .restart local v20    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    #@146
    .line 480
    .end local v10    # "msg":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .end local v20    # "value":Ljava/lang/Object;
    :cond_9
    sget-object v6, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    #@148
    goto :goto_7

    #@149
    .line 483
    .restart local v6    # "data":[B
    .restart local v11    # "pos":I
    :cond_a
    sub-int v22, v17, v11

    #@14b
    move-object/from16 v0, p1

    #@14d
    move/from16 v1, v22

    #@14f
    invoke-virtual {v0, v6, v11, v1}, Ljava/io/InputStream;->read([BII)I

    #@152
    move-result v4

    #@153
    .line 484
    .restart local v4    # "count":I
    if-lez v4, :cond_b

    #@155
    .line 487
    add-int/2addr v11, v4

    #@156
    goto :goto_8

    #@157
    .line 485
    :cond_b
    new-instance v22, Ljava/io/IOException;

    #@159
    const-string/jumbo v23, "Unexp.EOF"

    #@15c
    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15f
    throw v22

    #@160
    .line 494
    .end local v4    # "count":I
    .end local v6    # "data":[B
    .end local v11    # "pos":I
    .end local v17    # "total":I
    :pswitch_4
    new-instance v7, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@162
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@166
    move-object/from16 v22, v0

    #@168
    if-eqz v22, :cond_c

    #@16a
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@16e
    move-object/from16 v22, v0

    #@170
    move-object/from16 v0, v22

    #@172
    invoke-virtual {v0, v13}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    #@175
    move-result-object v22

    #@176
    check-cast v22, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@178
    :goto_9
    move-object/from16 v0, v22

    #@17a
    invoke-direct {v7, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    #@17d
    .line 498
    .local v7, "group":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x0

    #@17f
    move-object/from16 v0, p1

    #@181
    move/from16 v1, p2

    #@183
    move/from16 v2, v22

    #@185
    move-object/from16 v3, p4

    #@187
    invoke-direct {v7, v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    #@18a
    move-result p2

    #@18b
    .line 499
    move-object/from16 v20, v7

    #@18d
    .restart local v20    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    #@18f
    .end local v7    # "group":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .end local v20    # "value":Ljava/lang/Object;
    :cond_c
    const/16 v22, 0x0

    #@191
    .line 494
    goto :goto_9

    #@192
    .line 510
    .end local v13    # "tag":I
    .end local v14    # "tagAndType":J
    .end local v16    # "tagType":I
    .end local v21    # "wireType":I
    :cond_d
    new-instance v22, Ljava/io/IOException;

    #@194
    invoke-direct/range {v22 .. v22}, Ljava/io/IOException;-><init>()V

    #@197
    throw v22

    #@198
    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "permitEOF"    # Z
    .param p2, "counter"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const-wide/16 v2, 0x0

    #@3
    .local v2, "result":J
    const/4 v4, 0x0

    #@4
    .line 1358
    .local v4, "shift":I
    iput v5, p2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    #@6
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    const/16 v5, 0xa

    #@9
    .line 1362
    if-lt v0, v5, :cond_1

    #@b
    .line 1380
    :cond_0
    add-int/lit8 v5, v0, 0x1

    #@d
    iput v5, p2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    #@f
    .line 1381
    return-wide v2

    #@10
    .line 1363
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@13
    move-result v1

    #@14
    .local v1, "in":I
    const/4 v5, -0x1

    #@15
    .line 1365
    if-eq v1, v5, :cond_2

    #@17
    .line 1372
    and-int/lit8 v5, v1, 0x7f

    #@19
    int-to-long v6, v5

    #@1a
    shl-long/2addr v6, v4

    #@1b
    or-long/2addr v2, v6

    #@1c
    .line 1374
    and-int/lit16 v5, v1, 0x80

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 1378
    add-int/lit8 v4, v4, 0x7

    #@22
    .line 1362
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1366
    :cond_2
    if-eqz v0, :cond_4

    #@27
    .line 1369
    :cond_3
    new-instance v5, Ljava/io/IOException;

    #@29
    const-string/jumbo v6, "EOF"

    #@2c
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v5

    #@30
    .line 1366
    :cond_4
    if-eqz p1, :cond_3

    #@32
    const-wide/16 v6, -0x1

    #@34
    .line 1367
    return-wide v6
.end method

.method private setObject(ILjava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1389
    if-ltz p1, :cond_0

    #@2
    .line 1392
    if-nez p2, :cond_1

    #@4
    .line 1395
    :goto_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    #@9
    .line 1396
    return-void

    #@a
    .line 1390
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@c
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@f
    throw v0

    #@10
    .line 1393
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    #@13
    goto :goto_0
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)I
    .locals 5
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    #@3
    .line 1405
    if-lt v0, v2, :cond_0

    #@5
    .line 1418
    return v0

    #@6
    :cond_0
    const-wide/16 v2, 0x7f

    #@8
    .line 1407
    and-long/2addr v2, p1

    #@9
    long-to-int v1, v2

    #@a
    .local v1, "toWrite":I
    const/4 v2, 0x7

    #@b
    .line 1409
    ushr-long/2addr p1, v2

    #@c
    const-wide/16 v2, 0x0

    #@e
    .line 1411
    cmp-long v2, p1, v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 1412
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    #@15
    .line 1413
    add-int/lit8 v2, v0, 0x1

    #@17
    return v2

    #@18
    .line 1415
    :cond_1
    or-int/lit16 v2, v1, 0x80

    #@1a
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    #@1d
    .line 1405
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0
.end method

.method private static zigZagDecode(J)J
    .locals 4
    .param p0, "v"    # J

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 866
    ushr-long v0, p0, v0

    #@3
    const-wide/16 v2, 0x1

    #@5
    and-long/2addr v2, p0

    #@6
    neg-long v2, v2

    #@7
    xor-long p0, v0, v2

    #@9
    .line 867
    return-wide p0
.end method

.method private static zigZagEncode(J)J
    .locals 4
    .param p0, "v"    # J

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 858
    shl-long v0, p0, v0

    #@3
    const/16 v2, 0x3f

    #@5
    ushr-long v2, p0, v2

    #@7
    neg-long v2, v2

    #@8
    xor-long p0, v0, v2

    #@a
    .line 859
    return-wide p0
.end method


# virtual methods
.method public addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "value"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@0
    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    #@3
    .line 164
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->clear()V

    #@5
    const/4 v0, 0x0

    #@6
    .line 105
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@8
    .line 106
    return-void
.end method

.method public getBool(I)Z
    .locals 1
    .param p1, "tag"    # I

    #@0
    .prologue
    const/16 v0, 0x18

    #@2
    .line 177
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Boolean;

    #@8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "tag"    # I

    #@0
    .prologue
    const/16 v0, 0x19

    #@2
    .line 193
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    check-cast v0, [B

    #@a
    return-object v0
.end method

.method public getCount(I)I
    .locals 1
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@2
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "tag"    # I

    #@0
    .prologue
    const/16 v0, 0x15

    #@2
    .line 207
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Long;

    #@8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v0

    #@c
    long-to-int v0, v0

    #@d
    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "tag"    # I

    #@0
    .prologue
    const/16 v0, 0x13

    #@2
    .line 222
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Long;

    #@8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 1
    .param p1, "tag"    # I

    #@0
    .prologue
    const/16 v0, 0x1a

    #@2
    .line 272
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@8
    return-object v0
.end method

.method public getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    const/16 v0, 0x1a

    #@2
    .line 280
    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@8
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # I

    #@0
    .prologue
    const/16 v0, 0x1c

    #@2
    .line 288
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    const/16 v0, 0x1c

    #@2
    .line 296
    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getType(I)I
    .locals 6
    .param p1, "tag"    # I

    #@0
    .prologue
    const/16 v5, 0x10

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    const/16 v1, 0x10

    #@6
    .line 560
    .local v1, "tagType":I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@8
    if-nez v3, :cond_2

    #@a
    .line 564
    :goto_0
    if-eq v1, v5, :cond_3

    #@c
    .line 571
    :cond_0
    :goto_1
    if-eq v1, v5, :cond_5

    #@e
    .line 578
    :cond_1
    :goto_2
    return v1

    #@f
    .line 561
    :cond_2
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@11
    invoke-virtual {v3, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getType(I)I

    #@14
    move-result v1

    #@15
    goto :goto_0

    #@16
    .line 565
    :cond_3
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@18
    if-nez v3, :cond_4

    #@1a
    .line 566
    .local v2, "tagTypeObj":Ljava/lang/Integer;
    :goto_3
    if-eqz v2, :cond_0

    #@1c
    .line 567
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1f
    move-result v1

    #@20
    goto :goto_1

    #@21
    .line 565
    .end local v2    # "tagTypeObj":Ljava/lang/Integer;
    :cond_4
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@23
    invoke-virtual {v3, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Ljava/lang/Integer;

    #@29
    move-object v2, v3

    #@2a
    goto :goto_3

    #@2b
    .line 571
    :cond_5
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@2e
    move-result v3

    #@2f
    if-lez v3, :cond_1

    #@31
    .line 572
    invoke-direct {p0, p1, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    .line 574
    .local v0, "o":Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Long;

    #@37
    if-eqz v3, :cond_7

    #@39
    :cond_6
    move v1, v4

    #@3a
    :goto_4
    goto :goto_2

    #@3b
    :cond_7
    instance-of v3, v0, Ljava/lang/Boolean;

    #@3d
    if-nez v3, :cond_6

    #@3f
    const/4 v1, 0x2

    #@40
    goto :goto_4
.end method

.method public has(I)Z
    .locals 2
    .param p1, "tag"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 338
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_1

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_1
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    if-nez v1, :cond_0

    #@f
    goto :goto_0
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 696
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    #@4
    .line 697
    return-void
.end method

.method public outputWithSizeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    #@4
    .line 687
    return-void
.end method

.method public parse(Ljava/io/InputStream;I)I
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;)V

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {p0, p1, p2, v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public parse(Ljava/io/InputStream;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    .line 366
    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    #@6
    .line 367
    return-object p0
.end method

.method public parse([B)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    array-length v1, p1

    #@6
    invoke-virtual {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    #@9
    .line 352
    return-object p0
.end method

.method public setInt(II)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 906
    int-to-long v0, p2

    #@1
    invoke-virtual {p0, p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    #@4
    .line 907
    return-void
.end method

.method public setLong(IJ)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 913
    invoke-static {p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    #@7
    .line 914
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 943
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    #@3
    .line 944
    return-void
.end method
