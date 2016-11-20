.class Lsun/net/ftp/impl/FtpClient$DefaultParser;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Lsun/net/ftp/FtpDirParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/impl/FtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultParser"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method private constructor <init>(Lsun/net/ftp/impl/FtpClient;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;

    #@0
    .prologue
    .line 205
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$DefaultParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$DefaultParser;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient$DefaultParser;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    #@3
    return-void
.end method


# virtual methods
.method public parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .locals 24
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 209
    const/4 v6, 0x0

    #@1
    .line 210
    .local v6, "fdate":Ljava/lang/String;
    const/4 v9, 0x0

    #@2
    .line 211
    .local v9, "fsize":Ljava/lang/String;
    const/16 v18, 0x0

    #@4
    .line 212
    .local v18, "time":Ljava/lang/String;
    const/4 v8, 0x0

    #@5
    .line 213
    .local v8, "filename":Ljava/lang/String;
    const/16 v17, 0x0

    #@7
    .line 214
    .local v17, "permstring":Ljava/lang/String;
    const/16 v19, 0x0

    #@9
    .line 215
    .local v19, "username":Ljava/lang/String;
    const/4 v10, 0x0

    #@a
    .line 216
    .local v10, "groupname":Ljava/lang/String;
    const/4 v4, 0x0

    #@b
    .line 217
    .local v4, "dir":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@e
    move-result-object v15

    #@f
    .line 218
    .local v15, "now":Ljava/util/Calendar;
    const/16 v21, 0x1

    #@11
    move/from16 v0, v21

    #@13
    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    #@16
    move-result v20

    #@17
    .line 220
    .local v20, "year":I
    const/4 v13, 0x0

    #@18
    .line 221
    .local v13, "m":Ljava/util/regex/Matcher;
    const/4 v12, 0x0

    #@19
    .end local v4    # "dir":Z
    .end local v6    # "fdate":Ljava/lang/String;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "fsize":Ljava/lang/String;
    .end local v10    # "groupname":Ljava/lang/String;
    .end local v13    # "m":Ljava/util/regex/Matcher;
    .end local v17    # "permstring":Ljava/lang/String;
    .end local v18    # "time":Ljava/lang/String;
    .end local v19    # "username":Ljava/lang/String;
    .local v12, "j":I
    :goto_0
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get3()[Ljava/util/regex/Pattern;

    #@1c
    move-result-object v21

    #@1d
    move-object/from16 v0, v21

    #@1f
    array-length v0, v0

    #@20
    move/from16 v21, v0

    #@22
    move/from16 v0, v21

    #@24
    if-ge v12, v0, :cond_7

    #@26
    .line 222
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get3()[Ljava/util/regex/Pattern;

    #@29
    move-result-object v21

    #@2a
    aget-object v21, v21, v12

    #@2c
    move-object/from16 v0, v21

    #@2e
    move-object/from16 v1, p1

    #@30
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@33
    move-result-object v13

    #@34
    .line 223
    .local v13, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    #@37
    move-result v21

    #@38
    if-eqz v21, :cond_5

    #@3a
    .line 226
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@3d
    move-result-object v21

    #@3e
    aget-object v21, v21, v12

    #@40
    const/16 v22, 0x0

    #@42
    aget v21, v21, v22

    #@44
    move/from16 v0, v21

    #@46
    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    .line 227
    .local v8, "filename":Ljava/lang/String;
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@4d
    move-result-object v21

    #@4e
    aget-object v21, v21, v12

    #@50
    const/16 v22, 0x1

    #@52
    aget v21, v21, v22

    #@54
    move/from16 v0, v21

    #@56
    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@59
    move-result-object v9

    #@5a
    .line 228
    .local v9, "fsize":Ljava/lang/String;
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@5d
    move-result-object v21

    #@5e
    aget-object v21, v21, v12

    #@60
    const/16 v22, 0x2

    #@62
    aget v21, v21, v22

    #@64
    move/from16 v0, v21

    #@66
    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    .line 229
    .local v6, "fdate":Ljava/lang/String;
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@6d
    move-result-object v21

    #@6e
    aget-object v21, v21, v12

    #@70
    const/16 v22, 0x4

    #@72
    aget v21, v21, v22

    #@74
    if-lez v21, :cond_6

    #@76
    .line 230
    new-instance v21, Ljava/lang/StringBuilder;

    #@78
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    move-object/from16 v0, v21

    #@7d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v21

    #@81
    const-string/jumbo v22, ", "

    #@84
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v21

    #@88
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@8b
    move-result-object v22

    #@8c
    aget-object v22, v22, v12

    #@8e
    const/16 v23, 0x4

    #@90
    aget v22, v22, v23

    #@92
    move/from16 v0, v22

    #@94
    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@97
    move-result-object v22

    #@98
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v21

    #@9c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    .line 234
    :cond_0
    :goto_1
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@a3
    move-result-object v21

    #@a4
    aget-object v21, v21, v12

    #@a6
    const/16 v22, 0x3

    #@a8
    aget v21, v21, v22

    #@aa
    if-lez v21, :cond_1

    #@ac
    .line 235
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@af
    move-result-object v21

    #@b0
    aget-object v21, v21, v12

    #@b2
    const/16 v22, 0x3

    #@b4
    aget v21, v21, v22

    #@b6
    move/from16 v0, v21

    #@b8
    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@bb
    move-result-object v18

    #@bc
    .line 237
    :cond_1
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@bf
    move-result-object v21

    #@c0
    aget-object v21, v21, v12

    #@c2
    const/16 v22, 0x5

    #@c4
    aget v21, v21, v22

    #@c6
    if-lez v21, :cond_2

    #@c8
    .line 238
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@cb
    move-result-object v21

    #@cc
    aget-object v21, v21, v12

    #@ce
    const/16 v22, 0x5

    #@d0
    aget v21, v21, v22

    #@d2
    move/from16 v0, v21

    #@d4
    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@d7
    move-result-object v17

    #@d8
    .line 239
    .local v17, "permstring":Ljava/lang/String;
    const-string/jumbo v21, "d"

    #@db
    move-object/from16 v0, v17

    #@dd
    move-object/from16 v1, v21

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e2
    move-result v4

    #@e3
    .line 241
    .end local v17    # "permstring":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@e6
    move-result-object v21

    #@e7
    aget-object v21, v21, v12

    #@e9
    const/16 v22, 0x6

    #@eb
    aget v21, v21, v22

    #@ed
    if-lez v21, :cond_3

    #@ef
    .line 242
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@f2
    move-result-object v21

    #@f3
    aget-object v21, v21, v12

    #@f5
    const/16 v22, 0x6

    #@f7
    aget v21, v21, v22

    #@f9
    move/from16 v0, v21

    #@fb
    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@fe
    move-result-object v19

    #@ff
    .line 244
    :cond_3
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@102
    move-result-object v21

    #@103
    aget-object v21, v21, v12

    #@105
    const/16 v22, 0x7

    #@107
    aget v21, v21, v22

    #@109
    if-lez v21, :cond_4

    #@10b
    .line 245
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@10e
    move-result-object v21

    #@10f
    aget-object v21, v21, v12

    #@111
    const/16 v22, 0x7

    #@113
    aget v21, v21, v22

    #@115
    move/from16 v0, v21

    #@117
    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@11a
    move-result-object v10

    #@11b
    .line 248
    :cond_4
    const-string/jumbo v21, "<DIR>"

    #@11e
    move-object/from16 v0, v21

    #@120
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@123
    move-result v21

    #@124
    if-eqz v21, :cond_5

    #@126
    .line 249
    const/4 v4, 0x1

    #@127
    .line 250
    .restart local v4    # "dir":Z
    const/4 v9, 0x0

    #@128
    .line 221
    .end local v4    # "dir":Z
    .end local v6    # "fdate":Ljava/lang/String;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "fsize":Ljava/lang/String;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    #@12a
    goto/16 :goto_0

    #@12c
    .line 231
    .restart local v6    # "fdate":Ljava/lang/String;
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v9    # "fsize":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get2()[[I

    #@12f
    move-result-object v21

    #@130
    aget-object v21, v21, v12

    #@132
    const/16 v22, 0x3

    #@134
    aget v21, v21, v22

    #@136
    if-lez v21, :cond_0

    #@138
    .line 232
    new-instance v21, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    move-object/from16 v0, v21

    #@13f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v21

    #@143
    const-string/jumbo v22, ", "

    #@146
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v21

    #@14a
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@14d
    move-result-object v22

    #@14e
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v21

    #@152
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v6

    #@156
    goto/16 :goto_1

    #@158
    .line 255
    .end local v6    # "fdate":Ljava/lang/String;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "fsize":Ljava/lang/String;
    .end local v13    # "m":Ljava/util/regex/Matcher;
    :cond_7
    if-eqz v8, :cond_f

    #@15a
    .line 258
    :try_start_0
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Lsun/net/ftp/impl/FtpClient$DefaultParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    #@15e
    move-object/from16 v21, v0

    #@160
    invoke-static/range {v21 .. v21}, Lsun/net/ftp/impl/FtpClient;->-get0(Lsun/net/ftp/impl/FtpClient;)Ljava/text/DateFormat;

    #@163
    move-result-object v21

    #@164
    move-object/from16 v0, v21

    #@166
    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@169
    move-result-object v3

    #@16a
    .line 262
    :goto_2
    if-eqz v3, :cond_8

    #@16c
    if-eqz v18, :cond_8

    #@16e
    .line 263
    const-string/jumbo v21, ":"

    #@171
    move-object/from16 v0, v18

    #@173
    move-object/from16 v1, v21

    #@175
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@178
    move-result v2

    #@179
    .line 264
    .local v2, "c":I
    invoke-virtual {v15, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@17c
    .line 265
    const/16 v21, 0x0

    #@17e
    move-object/from16 v0, v18

    #@180
    move/from16 v1, v21

    #@182
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@185
    move-result-object v21

    #@186
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@189
    move-result v21

    #@18a
    const/16 v22, 0xa

    #@18c
    move/from16 v0, v22

    #@18e
    move/from16 v1, v21

    #@190
    invoke-virtual {v15, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@193
    .line 266
    add-int/lit8 v21, v2, 0x1

    #@195
    move-object/from16 v0, v18

    #@197
    move/from16 v1, v21

    #@199
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@19c
    move-result-object v21

    #@19d
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a0
    move-result v21

    #@1a1
    const/16 v22, 0xc

    #@1a3
    move/from16 v0, v22

    #@1a5
    move/from16 v1, v21

    #@1a7
    invoke-virtual {v15, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@1aa
    .line 267
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@1ad
    move-result-object v3

    #@1ae
    .line 271
    .end local v2    # "c":I
    :cond_8
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-get1()Ljava/util/regex/Pattern;

    #@1b1
    move-result-object v21

    #@1b2
    move-object/from16 v0, v21

    #@1b4
    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1b7
    move-result-object v14

    #@1b8
    .line 272
    .local v14, "m2":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    #@1bb
    move-result v21

    #@1bc
    if-eqz v21, :cond_9

    #@1be
    .line 274
    const/16 v21, 0x1

    #@1c0
    move/from16 v0, v21

    #@1c2
    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1c5
    move-result-object v8

    #@1c6
    .line 276
    :cond_9
    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@1c8
    const/16 v22, 0x3

    #@1ca
    const/16 v23, 0x3

    #@1cc
    filled-new-array/range {v22 .. v23}, [I

    #@1cf
    move-result-object v22

    #@1d0
    invoke-static/range {v21 .. v22}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@1d3
    move-result-object v16

    #@1d4
    check-cast v16, [[Z

    #@1d6
    .line 277
    .local v16, "perms":[[Z
    const/4 v11, 0x0

    #@1d7
    .local v11, "i":I
    :goto_3
    const/16 v21, 0x3

    #@1d9
    move/from16 v0, v21

    #@1db
    if-ge v11, v0, :cond_c

    #@1dd
    .line 278
    const/4 v12, 0x0

    #@1de
    :goto_4
    const/16 v21, 0x3

    #@1e0
    move/from16 v0, v21

    #@1e2
    if-ge v12, v0, :cond_b

    #@1e4
    .line 279
    aget-object v22, v16, v11

    #@1e6
    mul-int/lit8 v21, v11, 0x3

    #@1e8
    add-int v21, v21, v12

    #@1ea
    move-object/from16 v0, v17

    #@1ec
    move/from16 v1, v21

    #@1ee
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1f1
    move-result v21

    #@1f2
    const/16 v23, 0x2d

    #@1f4
    move/from16 v0, v21

    #@1f6
    move/from16 v1, v23

    #@1f8
    if-eq v0, v1, :cond_a

    #@1fa
    const/16 v21, 0x1

    #@1fc
    :goto_5
    aput-boolean v21, v22, v12

    #@1fe
    .line 278
    add-int/lit8 v12, v12, 0x1

    #@200
    goto :goto_4

    #@201
    .line 259
    .end local v11    # "i":I
    .end local v14    # "m2":Ljava/util/regex/Matcher;
    .end local v16    # "perms":[[Z
    :catch_0
    move-exception v5

    #@202
    .line 260
    .local v5, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    #@203
    .local v3, "d":Ljava/util/Date;
    goto/16 :goto_2

    #@205
    .line 279
    .end local v3    # "d":Ljava/util/Date;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v11    # "i":I
    .restart local v14    # "m2":Ljava/util/regex/Matcher;
    .restart local v16    # "perms":[[Z
    :cond_a
    const/16 v21, 0x0

    #@207
    goto :goto_5

    #@208
    .line 277
    :cond_b
    add-int/lit8 v11, v11, 0x1

    #@20a
    goto :goto_3

    #@20b
    .line 282
    :cond_c
    new-instance v7, Lsun/net/ftp/FtpDirEntry;

    #@20d
    invoke-direct {v7, v8}, Lsun/net/ftp/FtpDirEntry;-><init>(Ljava/lang/String;)V

    #@210
    .line 283
    .local v7, "file":Lsun/net/ftp/FtpDirEntry;
    move-object/from16 v0, v19

    #@212
    invoke-virtual {v7, v0}, Lsun/net/ftp/FtpDirEntry;->setUser(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    #@215
    move-result-object v21

    #@216
    move-object/from16 v0, v21

    #@218
    invoke-virtual {v0, v10}, Lsun/net/ftp/FtpDirEntry;->setGroup(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    #@21b
    .line 284
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@21e
    move-result-wide v22

    #@21f
    move-wide/from16 v0, v22

    #@221
    invoke-virtual {v7, v0, v1}, Lsun/net/ftp/FtpDirEntry;->setSize(J)Lsun/net/ftp/FtpDirEntry;

    #@224
    move-result-object v21

    #@225
    move-object/from16 v0, v21

    #@227
    invoke-virtual {v0, v3}, Lsun/net/ftp/FtpDirEntry;->setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    #@22a
    .line 285
    move-object/from16 v0, v16

    #@22c
    invoke-virtual {v7, v0}, Lsun/net/ftp/FtpDirEntry;->setPermissions([[Z)Lsun/net/ftp/FtpDirEntry;

    #@22f
    .line 286
    if-eqz v4, :cond_d

    #@231
    sget-object v21, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    #@233
    :goto_6
    move-object/from16 v0, v21

    #@235
    invoke-virtual {v7, v0}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    #@238
    .line 287
    return-object v7

    #@239
    .line 286
    :cond_d
    const/16 v21, 0x0

    #@23b
    move-object/from16 v0, p1

    #@23d
    move/from16 v1, v21

    #@23f
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@242
    move-result v21

    #@243
    const/16 v22, 0x6c

    #@245
    move/from16 v0, v21

    #@247
    move/from16 v1, v22

    #@249
    if-ne v0, v1, :cond_e

    #@24b
    sget-object v21, Lsun/net/ftp/FtpDirEntry$Type;->LINK:Lsun/net/ftp/FtpDirEntry$Type;

    #@24d
    goto :goto_6

    #@24e
    :cond_e
    sget-object v21, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    #@250
    goto :goto_6

    #@251
    .line 289
    .end local v7    # "file":Lsun/net/ftp/FtpDirEntry;
    .end local v11    # "i":I
    .end local v14    # "m2":Ljava/util/regex/Matcher;
    .end local v16    # "perms":[[Z
    :cond_f
    const/16 v21, 0x0

    #@253
    return-object v21
.end method
