.class Lcom/android/server/wifi/WifiLogger$BugReport;
.super Ljava/lang/Object;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BugReport"
.end annotation


# instance fields
.field alertData:[B

.field errorCode:I

.field fwMemoryDump:[B

.field kernelLogLines:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field kernelTimeNanos:J

.field logcatLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDriverStateDump:[B

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

.field final synthetic this$0:Lcom/android/server/wifi/WifiLogger;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiLogger;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiLogger;

    #@0
    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/server/wifi/WifiLogger$BugReport;->this$0:Lcom/android/server/wifi/WifiLogger;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 246
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    #@c
    .line 242
    return-void
.end method


# virtual methods
.method clearVerboseLogs()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 254
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    #@3
    .line 255
    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger$BugReport;->mDriverStateDump:[B

    #@5
    .line 253
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    #@0
    .prologue
    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 261
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@8
    move-result-object v5

    #@9
    .line 262
    .local v5, "c":Ljava/util/Calendar;
    move-object/from16 v0, p0

    #@b
    iget-wide v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->systemTimeMs:J

    #@d
    invoke-virtual {v5, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@10
    .line 263
    const-string/jumbo v14, "system time = "

    #@13
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v14

    #@17
    .line 264
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
    .line 263
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v14

    #@42
    .line 264
    const-string/jumbo v15, "\n"

    #@45
    .line 263
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 266
    move-object/from16 v0, p0

    #@4a
    iget-wide v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelTimeNanos:J

    #@4c
    const-wide/32 v16, 0xf4240

    #@4f
    div-long v10, v14, v16

    #@51
    .line 267
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
    .line 268
    const-wide/16 v16, 0x3e8

    #@6b
    rem-long v16, v10, v16

    #@6d
    .line 267
    move-wide/from16 v0, v16

    #@6f
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@72
    move-result-object v14

    #@73
    .line 268
    const-string/jumbo v15, "\n"

    #@76
    .line 267
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 270
    move-object/from16 v0, p0

    #@7b
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    #@7d
    if-nez v14, :cond_0

    #@7f
    .line 271
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
    .line 278
    :goto_0
    move-object/from16 v0, p0

    #@96
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@98
    if-eqz v14, :cond_2

    #@9a
    .line 279
    const-string/jumbo v14, "kernel log: \n"

    #@9d
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    .line 280
    const/4 v8, 0x0

    #@a1
    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@a3
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@a5
    invoke-virtual {v14}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    #@a8
    move-result v14

    #@a9
    if-ge v8, v14, :cond_1

    #@ab
    .line 281
    move-object/from16 v0, p0

    #@ad
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    #@af
    invoke-virtual {v14, v8}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    #@b2
    move-result-object v14

    #@b3
    check-cast v14, Ljava/lang/String;

    #@b5
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v14

    #@b9
    const-string/jumbo v15, "\n"

    #@bc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    .line 280
    add-int/lit8 v8, v8, 0x1

    #@c1
    goto :goto_1

    #@c2
    .line 273
    .end local v8    # "i":I
    :cond_0
    const-string/jumbo v14, "errorCode = "

    #@c5
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v14

    #@c9
    move-object/from16 v0, p0

    #@cb
    iget v15, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->errorCode:I

    #@cd
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d0
    .line 274
    const-string/jumbo v14, "data \n"

    #@d3
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    .line 275
    move-object/from16 v0, p0

    #@d8
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    #@da
    invoke-static {v14}, Lcom/android/server/wifi/WifiLogger;->-wrap0([B)Ljava/lang/String;

    #@dd
    move-result-object v14

    #@de
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v14

    #@e2
    const-string/jumbo v15, "\n"

    #@e5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    goto :goto_0

    #@e9
    .line 283
    .restart local v8    # "i":I
    :cond_1
    const-string/jumbo v14, "\n"

    #@ec
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    .line 286
    .end local v8    # "i":I
    :cond_2
    move-object/from16 v0, p0

    #@f1
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->logcatLines:Ljava/util/ArrayList;

    #@f3
    if-eqz v14, :cond_4

    #@f5
    .line 287
    const-string/jumbo v14, "system log: \n"

    #@f8
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    .line 288
    const/4 v8, 0x0

    #@fc
    .restart local v8    # "i":I
    :goto_2
    move-object/from16 v0, p0

    #@fe
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->logcatLines:Ljava/util/ArrayList;

    #@100
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@103
    move-result v14

    #@104
    if-ge v8, v14, :cond_3

    #@106
    .line 289
    move-object/from16 v0, p0

    #@108
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->logcatLines:Ljava/util/ArrayList;

    #@10a
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10d
    move-result-object v14

    #@10e
    check-cast v14, Ljava/lang/String;

    #@110
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v14

    #@114
    const-string/jumbo v15, "\n"

    #@117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    .line 288
    add-int/lit8 v8, v8, 0x1

    #@11c
    goto :goto_2

    #@11d
    .line 291
    :cond_3
    const-string/jumbo v14, "\n"

    #@120
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    .line 294
    .end local v8    # "i":I
    :cond_4
    move-object/from16 v0, p0

    #@125
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    #@127
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@12a
    move-result-object v14

    #@12b
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12e
    move-result-object v7

    #@12f
    .local v7, "e$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@132
    move-result v14

    #@133
    if-eqz v14, :cond_7

    #@135
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@138
    move-result-object v6

    #@139
    check-cast v6, Ljava/util/Map$Entry;

    #@13b
    .line 295
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@13e
    move-result-object v12

    #@13f
    check-cast v12, Ljava/lang/String;

    #@141
    .line 296
    .local v12, "ringName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@144
    move-result-object v3

    #@145
    check-cast v3, [[B

    #@147
    .line 297
    .local v3, "buffers":[[B
    const-string/jumbo v14, "ring-buffer = "

    #@14a
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v14

    #@14e
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v14

    #@152
    const-string/jumbo v15, "\n"

    #@155
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    .line 299
    const/4 v13, 0x0

    #@159
    .line 300
    .local v13, "size":I
    const/4 v8, 0x0

    #@15a
    .restart local v8    # "i":I
    :goto_4
    array-length v14, v3

    #@15b
    if-ge v8, v14, :cond_5

    #@15d
    .line 301
    aget-object v14, v3, v8

    #@15f
    array-length v14, v14

    #@160
    add-int/2addr v13, v14

    #@161
    .line 300
    add-int/lit8 v8, v8, 0x1

    #@163
    goto :goto_4

    #@164
    .line 304
    :cond_5
    new-array v2, v13, [B

    #@166
    .line 305
    .local v2, "buffer":[B
    const/4 v9, 0x0

    #@167
    .line 306
    .local v9, "index":I
    const/4 v8, 0x0

    #@168
    :goto_5
    array-length v14, v3

    #@169
    if-ge v8, v14, :cond_6

    #@16b
    .line 307
    aget-object v14, v3, v8

    #@16d
    aget-object v15, v3, v8

    #@16f
    array-length v15, v15

    #@170
    const/16 v16, 0x0

    #@172
    move/from16 v0, v16

    #@174
    invoke-static {v14, v0, v2, v9, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@177
    .line 308
    aget-object v14, v3, v8

    #@179
    array-length v14, v14

    #@17a
    add-int/2addr v9, v14

    #@17b
    .line 306
    add-int/lit8 v8, v8, 0x1

    #@17d
    goto :goto_5

    #@17e
    .line 311
    :cond_6
    invoke-static {v2}, Lcom/android/server/wifi/WifiLogger;->-wrap0([B)Ljava/lang/String;

    #@181
    move-result-object v14

    #@182
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    .line 312
    const-string/jumbo v14, "\n"

    #@188
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    goto :goto_3

    #@18c
    .line 315
    .end local v2    # "buffer":[B
    .end local v3    # "buffers":[[B
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[[B>;"
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v12    # "ringName":Ljava/lang/String;
    .end local v13    # "size":I
    :cond_7
    move-object/from16 v0, p0

    #@18e
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    #@190
    if-eqz v14, :cond_8

    #@192
    .line 316
    const-string/jumbo v14, "FW Memory dump"

    #@195
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    .line 317
    const-string/jumbo v14, "\n"

    #@19b
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    .line 318
    move-object/from16 v0, p0

    #@1a0
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    #@1a2
    invoke-static {v14}, Lcom/android/server/wifi/WifiLogger;->-wrap0([B)Ljava/lang/String;

    #@1a5
    move-result-object v14

    #@1a6
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    .line 319
    const-string/jumbo v14, "\n"

    #@1ac
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    .line 322
    :cond_8
    move-object/from16 v0, p0

    #@1b1
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->mDriverStateDump:[B

    #@1b3
    if-eqz v14, :cond_9

    #@1b5
    .line 323
    const-string/jumbo v14, "Driver state dump"

    #@1b8
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    .line 324
    move-object/from16 v0, p0

    #@1bd
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->mDriverStateDump:[B

    #@1bf
    invoke-static {v14}, Lcom/android/server/wifi/util/StringUtil;->isAsciiPrintable([B)Z

    #@1c2
    move-result v14

    #@1c3
    if-eqz v14, :cond_a

    #@1c5
    .line 325
    const-string/jumbo v14, " (ascii)\n"

    #@1c8
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    .line 326
    new-instance v14, Ljava/lang/String;

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iget-object v15, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->mDriverStateDump:[B

    #@1d1
    const-string/jumbo v16, "US-ASCII"

    #@1d4
    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@1d7
    move-result-object v16

    #@1d8
    invoke-direct/range {v14 .. v16}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@1db
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    .line 327
    const-string/jumbo v14, "\n"

    #@1e1
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    .line 334
    :cond_9
    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e7
    move-result-object v14

    #@1e8
    return-object v14

    #@1e9
    .line 329
    :cond_a
    const-string/jumbo v14, " (base64)\n"

    #@1ec
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    .line 330
    move-object/from16 v0, p0

    #@1f1
    iget-object v14, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->mDriverStateDump:[B

    #@1f3
    invoke-static {v14}, Lcom/android/server/wifi/WifiLogger;->-wrap0([B)Ljava/lang/String;

    #@1f6
    move-result-object v14

    #@1f7
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    goto :goto_6
.end method
