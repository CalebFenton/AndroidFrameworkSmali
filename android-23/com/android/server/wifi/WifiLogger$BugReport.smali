.class Lcom/android/server/wifi/WifiLogger$BugReport;
.super Ljava/lang/Object;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BugReport"
.end annotation


# instance fields
.field alertData:[B

.field errorCode:I

.field fwMemoryDump:[B

.field kernelTimeNanos:J

.field ringBuffers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[[B>;"
        }
    .end annotation
.end field

.field systemTimeMs:J


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 185
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    #@a
    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiLogger$BugReport;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger$BugReport;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 18

    #@0
    .prologue
    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 192
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@8
    move-result-object v5

    #@9
    .line 193
    .local v5, "c":Ljava/util/Calendar;
    move-object/from16 v0, p0

    #@b
    iget-wide v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->systemTimeMs:J

    #@d
    invoke-virtual {v5, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@10
    .line 194
    const-string/jumbo v14, "system time = "

    #@13
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v14

    #@17
    .line 195
    const-string/jumbo v15, "%tm-%td %tH:%tM:%tS.%tL"

    #@1a
    const/16 v16, 0x6

    #@1c
    move/from16 v0, v16

    #@1e
    new-array v0, v0, [Ljava/lang/Object;

    #@20
    move-object/from16 v16, v0

    #@22
    const/16 v17, 0x0

    #@24
    aput-object v5, v16, v17

    #@26
    const/16 v17, 0x1

    #@28
    aput-object v5, v16, v17

    #@2a
    const/16 v17, 0x2

    #@2c
    aput-object v5, v16, v17

    #@2e
    const/16 v17, 0x3

    #@30
    aput-object v5, v16, v17

    #@32
    const/16 v17, 0x4

    #@34
    aput-object v5, v16, v17

    #@36
    const/16 v17, 0x5

    #@38
    aput-object v5, v16, v17

    #@3a
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v15

    #@3e
    .line 194
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v14

    #@42
    .line 195
    const-string/jumbo v15, "\n"

    #@45
    .line 194
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 197
    move-object/from16 v0, p0

    #@4a
    iget-wide v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelTimeNanos:J

    #@4c
    const-wide/32 v16, 0xf4240

    #@4f
    div-long v10, v14, v16

    #@51
    .line 198
    .local v10, "kernelTimeMs":J
    const-string/jumbo v14, "kernel time = "

    #@54
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v14

    #@58
    const-wide/16 v16, 0x3e8

    #@5a
    div-long v16, v10, v16

    #@5c
    move-wide/from16 v0, v16

    #@5e
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@61
    move-result-object v14

    #@62
    const-string/jumbo v15, "."

    #@65
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v14

    #@69
    .line 199
    const-wide/16 v16, 0x3e8

    #@6b
    rem-long v16, v10, v16

    #@6d
    .line 198
    move-wide/from16 v0, v16

    #@6f
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@72
    move-result-object v14

    #@73
    .line 199
    const-string/jumbo v15, "\n"

    #@76
    .line 198
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 201
    move-object/from16 v0, p0

    #@7b
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    #@7d
    if-nez v14, :cond_0

    #@7f
    .line 202
    const-string/jumbo v14, "reason = "

    #@82
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v14

    #@86
    move-object/from16 v0, p0

    #@88
    iget v15, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->errorCode:I

    #@8a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v14

    #@8e
    const-string/jumbo v15, "\n"

    #@91
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 209
    :goto_0
    move-object/from16 v0, p0

    #@96
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    #@98
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@9b
    move-result-object v14

    #@9c
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9f
    move-result-object v7

    #@a0
    .local v7, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@a3
    move-result v14

    #@a4
    if-eqz v14, :cond_3

    #@a6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a9
    move-result-object v6

    #@aa
    check-cast v6, Ljava/util/Map$Entry;

    #@ac
    .line 210
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@af
    move-result-object v12

    #@b0
    check-cast v12, Ljava/lang/String;

    #@b2
    .line 211
    .local v12, "ringName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b5
    move-result-object v3

    #@b6
    check-cast v3, [[B

    #@b8
    .line 212
    .local v3, "buffers":[[B
    const-string/jumbo v14, "ring-buffer = "

    #@bb
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v14

    #@bf
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v14

    #@c3
    const-string/jumbo v15, "\n"

    #@c6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    .line 214
    const/4 v13, 0x0

    #@ca
    .line 215
    .local v13, "size":I
    const/4 v8, 0x0

    #@cb
    .local v8, "i":I
    :goto_2
    array-length v14, v3

    #@cc
    if-ge v8, v14, :cond_1

    #@ce
    .line 216
    aget-object v14, v3, v8

    #@d0
    array-length v14, v14

    #@d1
    add-int/2addr v13, v14

    #@d2
    .line 215
    add-int/lit8 v8, v8, 0x1

    #@d4
    goto :goto_2

    #@d5
    .line 204
    .end local v3    # "buffers":[[B
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    .end local v7    # "e$iterator":Ljava/util/Iterator;
    .end local v8    # "i":I
    .end local v12    # "ringName":Ljava/lang/String;
    .end local v13    # "size":I
    :cond_0
    const-string/jumbo v14, "errorCode = "

    #@d8
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v14

    #@dc
    move-object/from16 v0, p0

    #@de
    iget v15, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->errorCode:I

    #@e0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    .line 205
    const-string/jumbo v14, "data \n"

    #@e6
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    .line 206
    move-object/from16 v0, p0

    #@eb
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    #@ed
    invoke-static {v14}, Lcom/android/server/wifi/WifiLogger;->-wrap0([B)Ljava/lang/String;

    #@f0
    move-result-object v14

    #@f1
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v14

    #@f5
    const-string/jumbo v15, "\n"

    #@f8
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    goto :goto_0

    #@fc
    .line 219
    .restart local v3    # "buffers":[[B
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    .restart local v7    # "e$iterator":Ljava/util/Iterator;
    .restart local v8    # "i":I
    .restart local v12    # "ringName":Ljava/lang/String;
    .restart local v13    # "size":I
    :cond_1
    new-array v2, v13, [B

    #@fe
    .line 220
    .local v2, "buffer":[B
    const/4 v9, 0x0

    #@ff
    .line 221
    .local v9, "index":I
    const/4 v8, 0x0

    #@100
    :goto_3
    array-length v14, v3

    #@101
    if-ge v8, v14, :cond_2

    #@103
    .line 222
    aget-object v14, v3, v8

    #@105
    aget-object v15, v3, v8

    #@107
    array-length v15, v15

    #@108
    const/16 v16, 0x0

    #@10a
    move/from16 v0, v16

    #@10c
    invoke-static {v14, v0, v2, v9, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@10f
    .line 223
    aget-object v14, v3, v8

    #@111
    array-length v14, v14

    #@112
    add-int/2addr v9, v14

    #@113
    .line 221
    add-int/lit8 v8, v8, 0x1

    #@115
    goto :goto_3

    #@116
    .line 226
    :cond_2
    invoke-static {v2}, Lcom/android/server/wifi/WifiLogger;->-wrap0([B)Ljava/lang/String;

    #@119
    move-result-object v14

    #@11a
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    .line 227
    const-string/jumbo v14, "\n"

    #@120
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    goto/16 :goto_1

    #@125
    .line 230
    .end local v2    # "buffer":[B
    .end local v3    # "buffers":[[B
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v12    # "ringName":Ljava/lang/String;
    .end local v13    # "size":I
    :cond_3
    move-object/from16 v0, p0

    #@127
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    #@129
    if-eqz v14, :cond_4

    #@12b
    .line 231
    const-string/jumbo v14, "FW Memory dump \n"

    #@12e
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    .line 232
    move-object/from16 v0, p0

    #@133
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    #@135
    invoke-static {v14}, Lcom/android/server/wifi/WifiLogger;->-wrap0([B)Ljava/lang/String;

    #@138
    move-result-object v14

    #@139
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    .line 235
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v14

    #@140
    return-object v14
.end method
