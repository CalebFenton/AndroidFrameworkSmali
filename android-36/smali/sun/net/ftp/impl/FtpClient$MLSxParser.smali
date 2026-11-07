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
.field private blacklist df:Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor blacklist <init>(Lsun/net/ftp/impl/FtpClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddhhmmss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient$MLSxParser;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    return-void
.end method


# virtual methods
.method public blacklist parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .registers 10
    .param p1, "line"    # Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "name":Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 299
    .local v2, "i":I
    const/4 v3, 0x0

    if-lez v2, :cond_19

    .line 300
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    .line 303
    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string p1, ""

    .line 306
    :goto_1f
    new-instance v4, Lsun/net/ftp/FtpDirEntry;

    invoke-direct {v4, v0}, Lsun/net/ftp/FtpDirEntry;-><init>(Ljava/lang/String;)V

    .line 307
    .local v4, "file":Lsun/net/ftp/FtpDirEntry;
    :goto_24
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_54

    .line 309
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 310
    if-lez v2, :cond_3b

    .line 311
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, "s":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    .line 314
    .end local v5    # "s":Ljava/lang/String;
    :cond_3b
    move-object v5, p1

    .line 315
    .restart local v5    # "s":Ljava/lang/String;
    const-string p1, ""

    .line 317
    :goto_3e
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 318
    if-lez v2, :cond_53

    .line 319
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, "fact":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v4, v6, v7}, Lsun/net/ftp/FtpDirEntry;->addFact(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    .line 323
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "fact":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_53
    goto :goto_24

    .line 324
    :cond_54
    const-string v1, "Size"

    invoke-virtual {v4, v1}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_63

    .line 326
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lsun/net/ftp/FtpDirEntry;->setSize(J)Lsun/net/ftp/FtpDirEntry;

    .line 328
    :cond_63
    const-string v3, "Modify"

    invoke-virtual {v4, v3}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_7a

    .line 330
    const/4 v3, 0x0

    .line 332
    .local v3, "d":Ljava/util/Date;
    :try_start_6c
    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5
    :try_end_72
    .catch Ljava/text/ParseException; {:try_start_6c .. :try_end_72} :catch_74

    move-object v3, v5

    .line 334
    goto :goto_75

    .line 333
    :catch_74
    move-exception v5

    .line 335
    :goto_75
    if-eqz v3, :cond_7a

    .line 336
    invoke-virtual {v4, v3}, Lsun/net/ftp/FtpDirEntry;->setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    .line 339
    .end local v3    # "d":Ljava/util/Date;
    :cond_7a
    const-string v3, "Create"

    invoke-virtual {v4, v3}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_91

    .line 341
    const/4 v3, 0x0

    .line 343
    .restart local v3    # "d":Ljava/util/Date;
    :try_start_83
    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5
    :try_end_89
    .catch Ljava/text/ParseException; {:try_start_83 .. :try_end_89} :catch_8b

    move-object v3, v5

    .line 345
    goto :goto_8c

    .line 344
    :catch_8b
    move-exception v5

    .line 346
    :goto_8c
    if-eqz v3, :cond_91

    .line 347
    invoke-virtual {v4, v3}, Lsun/net/ftp/FtpDirEntry;->setCreated(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    .line 350
    .end local v3    # "d":Ljava/util/Date;
    :cond_91
    const-string v3, "Type"

    invoke-virtual {v4, v3}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_cd

    .line 352
    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 353
    sget-object v3, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v4, v3}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 355
    :cond_a6
    const-string v3, "dir"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 356
    sget-object v3, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v4, v3}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 358
    :cond_b3
    const-string v3, "cdir"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 359
    sget-object v3, Lsun/net/ftp/FtpDirEntry$Type;->CDIR:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v4, v3}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 361
    :cond_c0
    const-string v3, "pdir"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 362
    sget-object v3, Lsun/net/ftp/FtpDirEntry$Type;->PDIR:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v4, v3}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 365
    :cond_cd
    return-object v4
.end method
