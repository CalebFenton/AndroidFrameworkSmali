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
.field final synthetic blacklist this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method private constructor blacklist <init>(Lsun/net/ftp/impl/FtpClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$DefaultParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method synthetic constructor blacklist <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient$DefaultParser;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    return-void
.end method


# virtual methods
.method public blacklist parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .registers 26
    .param p1, "line"    # Ljava/lang/String;

    .line 208
    move-object/from16 v1, p1

    const/4 v0, 0x0

    .line 209
    .local v0, "fdate":Ljava/lang/String;
    const/4 v2, 0x0

    .line 210
    .local v2, "fsize":Ljava/lang/String;
    const/4 v3, 0x0

    .line 211
    .local v3, "time":Ljava/lang/String;
    const/4 v4, 0x0

    .line 212
    .local v4, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 213
    .local v5, "permstring":Ljava/lang/String;
    const/4 v6, 0x0

    .line 214
    .local v6, "username":Ljava/lang/String;
    const/4 v7, 0x0

    .line 215
    .local v7, "groupname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 216
    .local v8, "dir":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 217
    .local v9, "now":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 219
    .local v11, "year":I
    const/4 v12, 0x0

    .line 220
    .local v12, "m":Ljava/util/regex/Matcher;
    const/4 v13, 0x0

    move-object/from16 v23, v2

    move-object v2, v0

    move v0, v13

    move-object v13, v12

    move v12, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v23

    .local v0, "j":I
    .local v2, "fdate":Ljava/lang/String;
    .local v3, "fsize":Ljava/lang/String;
    .local v4, "time":Ljava/lang/String;
    .local v5, "filename":Ljava/lang/String;
    .local v6, "permstring":Ljava/lang/String;
    .local v7, "username":Ljava/lang/String;
    .local v8, "groupname":Ljava/lang/String;
    .local v12, "dir":Z
    .local v13, "m":Ljava/util/regex/Matcher;
    :goto_22
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatterns()[Ljava/util/regex/Pattern;

    move-result-object v14

    array-length v14, v14

    const/16 v16, 0x2

    const/4 v15, 0x0

    move/from16 v17, v10

    const/4 v10, 0x3

    if-ge v0, v14, :cond_129

    .line 221
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatterns()[Ljava/util/regex/Pattern;

    move-result-object v14

    aget-object v14, v14, v0

    invoke-virtual {v14, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 222
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_123

    .line 225
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v14

    aget-object v14, v14, v0

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v14

    aget-object v14, v14, v0

    aget v14, v14, v17

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v14

    aget-object v14, v14, v0

    aget v14, v14, v16

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v14

    aget-object v14, v14, v0

    const/4 v15, 0x4

    aget v14, v14, v15

    move/from16 v16, v15

    const-string v15, ", "

    if-lez v14, :cond_94

    .line 229
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v15

    aget-object v15, v15, v0

    aget v15, v15, v16

    invoke-virtual {v13, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b7

    .line 230
    :cond_94
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v14

    aget-object v14, v14, v0

    aget v14, v14, v10

    if-lez v14, :cond_b7

    .line 231
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    :cond_b7
    :goto_b7
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v14

    aget-object v14, v14, v0

    aget v14, v14, v10

    if-lez v14, :cond_cd

    .line 234
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v14

    aget-object v14, v14, v0

    aget v10, v14, v10

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 236
    :cond_cd
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v10

    aget-object v10, v10, v0

    const/4 v14, 0x5

    aget v10, v10, v14

    if-lez v10, :cond_ea

    .line 237
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v10

    aget-object v10, v10, v0

    aget v10, v10, v14

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 238
    const-string v10, "d"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 240
    :cond_ea
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v10

    aget-object v10, v10, v0

    const/4 v14, 0x6

    aget v10, v10, v14

    if-lez v10, :cond_101

    .line 241
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v10

    aget-object v10, v10, v0

    aget v10, v10, v14

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 243
    :cond_101
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v10

    aget-object v10, v10, v0

    const/4 v14, 0x7

    aget v10, v10, v14

    if-lez v10, :cond_118

    .line 244
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetpatternGroups()[[I

    move-result-object v10

    aget-object v10, v10, v0

    aget v10, v10, v14

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 247
    :cond_118
    const-string v10, "<DIR>"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_123

    .line 248
    const/4 v10, 0x1

    .line 249
    .end local v12    # "dir":Z
    .local v10, "dir":Z
    const/4 v3, 0x0

    move v12, v10

    .line 220
    .end local v10    # "dir":Z
    .restart local v12    # "dir":Z
    :cond_123
    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v17

    goto/16 :goto_22

    .line 254
    .end local v0    # "j":I
    :cond_129
    if-eqz v5, :cond_20e

    .line 257
    move-object/from16 v14, p0

    :try_start_12d
    iget-object v0, v14, Lsun/net/ftp/impl/FtpClient$DefaultParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-static {v0}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$fgetdf(Lsun/net/ftp/impl/FtpClient;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_137} :catch_138

    .line 260
    .local v0, "d":Ljava/util/Date;
    goto :goto_13d

    .line 258
    .end local v0    # "d":Ljava/util/Date;
    :catch_138
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    .line 261
    .local v0, "d":Ljava/util/Date;
    :goto_13d
    if-eqz v0, :cond_171

    if-eqz v4, :cond_171

    .line 262
    move/from16 v18, v10

    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 263
    .local v10, "c":I
    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 264
    invoke-virtual {v4, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move/from16 v20, v15

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v19, v0

    .end local v0    # "d":Ljava/util/Date;
    .local v19, "d":Ljava/util/Date;
    const/16 v0, 0xa

    invoke-virtual {v9, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 265
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v15, 0xc

    invoke-virtual {v9, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 266
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .end local v19    # "d":Ljava/util/Date;
    .restart local v0    # "d":Ljava/util/Date;
    goto :goto_179

    .line 261
    .end local v10    # "c":I
    :cond_171
    move-object/from16 v19, v0

    move/from16 v18, v10

    move/from16 v20, v15

    .line 270
    .end local v0    # "d":Ljava/util/Date;
    .restart local v19    # "d":Ljava/util/Date;
    move-object/from16 v0, v19

    .end local v19    # "d":Ljava/util/Date;
    .restart local v0    # "d":Ljava/util/Date;
    :goto_179
    invoke-static {}, Lsun/net/ftp/impl/FtpClient;->-$$Nest$sfgetlinkp()Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 271
    .local v10, "m2":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_18e

    .line 273
    move/from16 v15, v17

    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_190

    .line 271
    :cond_18e
    move/from16 v15, v17

    .line 275
    :goto_190
    move/from16 v17, v15

    move/from16 v15, v16

    new-array v15, v15, [I

    aput v18, v15, v17

    aput v18, v15, v20

    move-object/from16 v16, v2

    .end local v2    # "fdate":Ljava/lang/String;
    .local v16, "fdate":Ljava/lang/String;
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    .line 276
    .local v2, "perms":[[Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1a5
    move-object/from16 v19, v3

    move/from16 v3, v18

    .end local v3    # "fsize":Ljava/lang/String;
    .local v19, "fsize":Ljava/lang/String;
    if-ge v15, v3, :cond_1d9

    .line 277
    const/16 v18, 0x0

    move-object/from16 v21, v4

    move/from16 v4, v18

    .local v4, "j":I
    .local v21, "time":Ljava/lang/String;
    :goto_1b1
    if-ge v4, v3, :cond_1ce

    .line 278
    aget-object v18, v2, v15

    mul-int/lit8 v22, v15, 0x3

    add-int v3, v22, v4

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v22, v4

    .end local v4    # "j":I
    .local v22, "j":I
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1c6

    move/from16 v3, v17

    goto :goto_1c8

    :cond_1c6
    move/from16 v3, v20

    :goto_1c8
    aput-boolean v3, v18, v22

    .line 277
    add-int/lit8 v4, v22, 0x1

    const/4 v3, 0x3

    .end local v22    # "j":I
    .restart local v4    # "j":I
    goto :goto_1b1

    :cond_1ce
    move/from16 v22, v4

    .line 276
    .end local v4    # "j":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    const/16 v18, 0x3

    goto :goto_1a5

    .end local v21    # "time":Ljava/lang/String;
    .local v4, "time":Ljava/lang/String;
    :cond_1d9
    move-object/from16 v21, v4

    .line 281
    .end local v4    # "time":Ljava/lang/String;
    .end local v15    # "i":I
    .restart local v21    # "time":Ljava/lang/String;
    new-instance v3, Lsun/net/ftp/FtpDirEntry;

    invoke-direct {v3, v5}, Lsun/net/ftp/FtpDirEntry;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, "file":Lsun/net/ftp/FtpDirEntry;
    invoke-virtual {v3, v7}, Lsun/net/ftp/FtpDirEntry;->setUser(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    move-result-object v4

    invoke-virtual {v4, v8}, Lsun/net/ftp/FtpDirEntry;->setGroup(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    .line 283
    move-object v15, v5

    .end local v5    # "filename":Ljava/lang/String;
    .local v15, "filename":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lsun/net/ftp/FtpDirEntry;->setSize(J)Lsun/net/ftp/FtpDirEntry;

    move-result-object v4

    invoke-virtual {v4, v0}, Lsun/net/ftp/FtpDirEntry;->setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    .line 284
    invoke-virtual {v3, v2}, Lsun/net/ftp/FtpDirEntry;->setPermissions([[Z)Lsun/net/ftp/FtpDirEntry;

    .line 285
    if-eqz v12, :cond_1fb

    sget-object v4, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    goto :goto_20a

    :cond_1fb
    move/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_208

    sget-object v4, Lsun/net/ftp/FtpDirEntry$Type;->LINK:Lsun/net/ftp/FtpDirEntry$Type;

    goto :goto_20a

    :cond_208
    sget-object v4, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    :goto_20a
    invoke-virtual {v3, v4}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 286
    return-object v3

    .line 288
    .end local v0    # "d":Ljava/util/Date;
    .end local v10    # "m2":Ljava/util/regex/Matcher;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "fdate":Ljava/lang/String;
    .end local v19    # "fsize":Ljava/lang/String;
    .end local v21    # "time":Ljava/lang/String;
    .local v2, "fdate":Ljava/lang/String;
    .local v3, "fsize":Ljava/lang/String;
    .restart local v4    # "time":Ljava/lang/String;
    .restart local v5    # "filename":Ljava/lang/String;
    :cond_20e
    const/4 v0, 0x0

    return-object v0
.end method
