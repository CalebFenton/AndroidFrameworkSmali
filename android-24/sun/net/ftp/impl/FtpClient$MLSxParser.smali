.class Lsun/net/ftp/impl/FtpClient$MLSxParser;
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
    name = "MLSxParser"
.end annotation


# instance fields
.field private df:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method private constructor <init>(Lsun/net/ftp/impl/FtpClient;)V
    .locals 2
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;

    #@0
    .prologue
    .line 293
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 295
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@7
    const-string/jumbo v1, "yyyyMMddhhmmss"

    #@a
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@d
    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    #@f
    .line 293
    return-void
.end method

.method synthetic constructor <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$MLSxParser;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient$MLSxParser;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    #@3
    return-void
.end method


# virtual methods
.method public parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .locals 10
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 298
    const/4 v5, 0x0

    #@2
    .line 299
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v8, ";"

    #@5
    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@8
    move-result v4

    #@9
    .line 300
    .local v4, "i":I
    if-lez v4, :cond_1

    #@b
    .line 301
    add-int/lit8 v8, v4, 0x1

    #@d
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@10
    move-result-object v8

    #@11
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 302
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object p1

    #@19
    .line 307
    :goto_0
    new-instance v3, Lsun/net/ftp/FtpDirEntry;

    #@1b
    invoke-direct {v3, v5}, Lsun/net/ftp/FtpDirEntry;-><init>(Ljava/lang/String;)V

    #@1e
    .line 308
    .local v3, "file":Lsun/net/ftp/FtpDirEntry;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@21
    move-result v8

    #@22
    if-nez v8, :cond_3

    #@24
    .line 310
    const-string/jumbo v8, ";"

    #@27
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2a
    move-result v4

    #@2b
    .line 311
    if-lez v4, :cond_2

    #@2d
    .line 312
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    .line 313
    .local v6, "s":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    #@33
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@36
    move-result-object p1

    #@37
    .line 318
    :goto_2
    const-string/jumbo v8, "="

    #@3a
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3d
    move-result v4

    #@3e
    .line 319
    if-lez v4, :cond_0

    #@40
    .line 320
    invoke-virtual {v6, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 321
    .local v2, "fact":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    #@46
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    .line 322
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v3, v2, v7}, Lsun/net/ftp/FtpDirEntry;->addFact(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    #@4d
    goto :goto_1

    #@4e
    .line 304
    .end local v2    # "fact":Ljava/lang/String;
    .end local v3    # "file":Lsun/net/ftp/FtpDirEntry;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 305
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo p1, ""

    #@55
    goto :goto_0

    #@56
    .line 315
    .restart local v3    # "file":Lsun/net/ftp/FtpDirEntry;
    :cond_2
    move-object v6, p1

    #@57
    .line 316
    .restart local v6    # "s":Ljava/lang/String;
    const-string/jumbo p1, ""

    #@5a
    goto :goto_2

    #@5b
    .line 325
    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "Size"

    #@5e
    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    .line 326
    .restart local v6    # "s":Ljava/lang/String;
    if-eqz v6, :cond_4

    #@64
    .line 327
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@67
    move-result-wide v8

    #@68
    invoke-virtual {v3, v8, v9}, Lsun/net/ftp/FtpDirEntry;->setSize(J)Lsun/net/ftp/FtpDirEntry;

    #@6b
    .line 329
    :cond_4
    const-string/jumbo v8, "Modify"

    #@6e
    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    .line 330
    if-eqz v6, :cond_5

    #@74
    .line 331
    const/4 v0, 0x0

    #@75
    .line 333
    .local v0, "d":Ljava/util/Date;
    :try_start_0
    iget-object v8, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    #@77
    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    #@7a
    move-result-object v0

    #@7b
    .line 336
    .end local v0    # "d":Ljava/util/Date;
    :goto_3
    if-eqz v0, :cond_5

    #@7d
    .line 337
    invoke-virtual {v3, v0}, Lsun/net/ftp/FtpDirEntry;->setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    #@80
    .line 340
    :cond_5
    const-string/jumbo v8, "Create"

    #@83
    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    .line 341
    if-eqz v6, :cond_6

    #@89
    .line 342
    const/4 v0, 0x0

    #@8a
    .line 344
    .restart local v0    # "d":Ljava/util/Date;
    :try_start_1
    iget-object v8, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    #@8c
    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    #@8f
    move-result-object v0

    #@90
    .line 347
    .end local v0    # "d":Ljava/util/Date;
    :goto_4
    if-eqz v0, :cond_6

    #@92
    .line 348
    invoke-virtual {v3, v0}, Lsun/net/ftp/FtpDirEntry;->setCreated(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    #@95
    .line 351
    :cond_6
    const-string/jumbo v8, "Type"

    #@98
    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    #@9b
    move-result-object v6

    #@9c
    .line 352
    if-eqz v6, :cond_a

    #@9e
    .line 353
    const-string/jumbo v8, "file"

    #@a1
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a4
    move-result v8

    #@a5
    if-eqz v8, :cond_7

    #@a7
    .line 354
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    #@a9
    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    #@ac
    .line 356
    :cond_7
    const-string/jumbo v8, "dir"

    #@af
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b2
    move-result v8

    #@b3
    if-eqz v8, :cond_8

    #@b5
    .line 357
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    #@b7
    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    #@ba
    .line 359
    :cond_8
    const-string/jumbo v8, "cdir"

    #@bd
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c0
    move-result v8

    #@c1
    if-eqz v8, :cond_9

    #@c3
    .line 360
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->CDIR:Lsun/net/ftp/FtpDirEntry$Type;

    #@c5
    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    #@c8
    .line 362
    :cond_9
    const-string/jumbo v8, "pdir"

    #@cb
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ce
    move-result v8

    #@cf
    if-eqz v8, :cond_a

    #@d1
    .line 363
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->PDIR:Lsun/net/ftp/FtpDirEntry$Type;

    #@d3
    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    #@d6
    .line 366
    :cond_a
    return-object v3

    #@d7
    .line 345
    .restart local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    #@d8
    .local v1, "ex":Ljava/text/ParseException;
    goto :goto_4

    #@d9
    .line 334
    .end local v1    # "ex":Ljava/text/ParseException;
    :catch_1
    move-exception v1

    #@da
    .restart local v1    # "ex":Ljava/text/ParseException;
    goto :goto_3
.end method
