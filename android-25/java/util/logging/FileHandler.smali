.class public Ljava/util/logging/FileHandler;
.super Ljava/util/logging/StreamHandler;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/FileHandler$InitializationErrorManager;,
        Ljava/util/logging/FileHandler$MeteredStream;
    }
.end annotation


# static fields
.field private static final MAX_LOCKS:I = 0x64

.field private static locks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Z

.field private count:I

.field private files:[Ljava/io/File;

.field private limit:I

.field private lockFileName:Ljava/lang/String;

.field private lockStream:Ljava/io/FileOutputStream;

.field private meter:Ljava/util/logging/FileHandler$MeteredStream;

.field private pattern:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/util/logging/FileHandler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->rotate()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    #@7
    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@3
    .line 224
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    #@6
    .line 225
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    #@9
    .line 226
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    #@c
    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 246
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@4
    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v0

    #@10
    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    #@13
    .line 251
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    #@16
    .line 252
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@18
    .line 253
    const/4 v0, 0x0

    #@19
    iput v0, p0, Ljava/util/logging/FileHandler;->limit:I

    #@1b
    .line 254
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    #@1d
    .line 255
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    #@20
    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 314
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@4
    .line 316
    if-ltz p2, :cond_0

    #@6
    if-ge p3, v1, :cond_1

    #@8
    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v0

    #@e
    .line 316
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    if-lt v0, v1, :cond_0

    #@14
    .line 319
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    #@17
    .line 320
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    #@1a
    .line 321
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@1c
    .line 322
    iput p2, p0, Ljava/util/logging/FileHandler;->limit:I

    #@1e
    .line 323
    iput p3, p0, Ljava/util/logging/FileHandler;->count:I

    #@20
    .line 324
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    #@23
    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 353
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@4
    .line 355
    if-ltz p2, :cond_0

    #@6
    if-ge p3, v1, :cond_1

    #@8
    .line 356
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v0

    #@e
    .line 355
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    if-lt v0, v1, :cond_0

    #@14
    .line 358
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    #@17
    .line 359
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    #@1a
    .line 360
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@1c
    .line 361
    iput p2, p0, Ljava/util/logging/FileHandler;->limit:I

    #@1e
    .line 362
    iput p3, p0, Ljava/util/logging/FileHandler;->count:I

    #@20
    .line 363
    iput-boolean p4, p0, Ljava/util/logging/FileHandler;->append:Z

    #@22
    .line 364
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    #@25
    .line 354
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 278
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@4
    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v0

    #@10
    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->checkPermission()V

    #@13
    .line 283
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->configure()V

    #@16
    .line 284
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@18
    .line 285
    const/4 v0, 0x0

    #@19
    iput v0, p0, Ljava/util/logging/FileHandler;->limit:I

    #@1b
    .line 286
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    #@1d
    .line 287
    iput-boolean p2, p0, Ljava/util/logging/FileHandler;->append:Z

    #@1f
    .line 288
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->openFiles()V

    #@22
    .line 278
    return-void
.end method

.method private configure()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 184
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@6
    move-result-object v3

    #@7
    .line 186
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 188
    .local v0, "cname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, ".pattern"

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    const-string/jumbo v5, "%h/java%u.log"

    #@26
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    iput-object v4, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@2c
    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    const-string/jumbo v5, ".limit"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    #@43
    move-result v4

    #@44
    iput v4, p0, Ljava/util/logging/FileHandler;->limit:I

    #@46
    .line 190
    iget v4, p0, Ljava/util/logging/FileHandler;->limit:I

    #@48
    if-gez v4, :cond_0

    #@4a
    .line 191
    iput v6, p0, Ljava/util/logging/FileHandler;->limit:I

    #@4c
    .line 193
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    const-string/jumbo v5, ".count"

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v3, v4, v8}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    #@63
    move-result v4

    #@64
    iput v4, p0, Ljava/util/logging/FileHandler;->count:I

    #@66
    .line 194
    iget v4, p0, Ljava/util/logging/FileHandler;->count:I

    #@68
    if-gtz v4, :cond_1

    #@6a
    .line 195
    iput v8, p0, Ljava/util/logging/FileHandler;->count:I

    #@6c
    .line 197
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    const-string/jumbo v5, ".append"

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@83
    move-result v4

    #@84
    iput-boolean v4, p0, Ljava/util/logging/FileHandler;->append:Z

    #@86
    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    const-string/jumbo v5, ".level"

    #@92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v4

    #@9a
    sget-object v5, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    #@9c
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    #@9f
    move-result-object v4

    #@a0
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    #@a3
    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    const-string/jumbo v5, ".filter"

    #@af
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v4

    #@b3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v4

    #@b7
    invoke-virtual {v3, v4, v7}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    #@ba
    move-result-object v4

    #@bb
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setFilter(Ljava/util/logging/Filter;)V

    #@be
    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v4

    #@c7
    const-string/jumbo v5, ".formatter"

    #@ca
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v4

    #@d2
    new-instance v5, Ljava/util/logging/XMLFormatter;

    #@d4
    invoke-direct {v5}, Ljava/util/logging/XMLFormatter;-><init>()V

    #@d7
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    #@da
    move-result-object v4

    #@db
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    #@de
    .line 202
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v4

    #@e7
    const-string/jumbo v5, ".encoding"

    #@ea
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v4

    #@ee
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v4

    #@f2
    const/4 v5, 0x0

    #@f3
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f6
    move-result-object v4

    #@f7
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@fa
    .line 183
    :goto_0
    return-void

    #@fb
    .line 203
    :catch_0
    move-exception v1

    #@fc
    .line 205
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    #@fd
    :try_start_1
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@100
    goto :goto_0

    #@101
    .line 206
    :catch_1
    move-exception v2

    #@102
    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private generate(Ljava/lang/String;II)Ljava/io/File;
    .locals 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "generation"    # I
    .param p3, "unique"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v11, 0x25

    #@2
    .line 465
    const/4 v2, 0x0

    #@3
    .line 466
    .local v2, "file":Ljava/io/File;
    const-string/jumbo v8, ""

    #@6
    .line 467
    .local v8, "word":Ljava/lang/String;
    const/4 v4, 0x0

    #@7
    .line 468
    .local v4, "ix":I
    const/4 v5, 0x0

    #@8
    .line 469
    .local v5, "sawg":Z
    const/4 v6, 0x0

    #@9
    .line 470
    .end local v2    # "file":Ljava/io/File;
    .local v6, "sawu":Z
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v9

    #@d
    if-ge v4, v9, :cond_9

    #@f
    .line 471
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 472
    .local v0, "ch":C
    add-int/lit8 v4, v4, 0x1

    #@15
    .line 473
    const/4 v1, 0x0

    #@16
    .line 474
    .local v1, "ch2":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@19
    move-result v9

    #@1a
    if-ge v4, v9, :cond_0

    #@1c
    .line 475
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v9

    #@20
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    #@23
    move-result v1

    #@24
    .line 477
    .end local v1    # "ch2":C
    :cond_0
    const/16 v9, 0x2f

    #@26
    if-ne v0, v9, :cond_2

    #@28
    .line 478
    if-nez v2, :cond_1

    #@2a
    .line 479
    new-instance v2, Ljava/io/File;

    #@2c
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2f
    .line 483
    .local v2, "file":Ljava/io/File;
    :goto_1
    const-string/jumbo v8, ""

    #@32
    goto :goto_0

    #@33
    .line 481
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/File;

    #@35
    invoke-direct {v3, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@38
    .local v3, "file":Ljava/io/File;
    move-object v2, v3

    #@39
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_1

    #@3a
    .line 485
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    if-ne v0, v11, :cond_8

    #@3c
    .line 486
    const/16 v9, 0x74

    #@3e
    if-ne v1, v9, :cond_4

    #@40
    .line 487
    const-string/jumbo v9, "java.io.tmpdir"

    #@43
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v7

    #@47
    .line 488
    .local v7, "tmpDir":Ljava/lang/String;
    if-nez v7, :cond_3

    #@49
    .line 489
    const-string/jumbo v9, "user.home"

    #@4c
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    .line 491
    :cond_3
    new-instance v2, Ljava/io/File;

    #@52
    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@55
    .line 492
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    #@57
    .line 493
    const-string/jumbo v8, ""

    #@5a
    goto :goto_0

    #@5b
    .line 495
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "tmpDir":Ljava/lang/String;
    :cond_4
    const/16 v9, 0x68

    #@5d
    if-ne v1, v9, :cond_5

    #@5f
    .line 496
    new-instance v2, Ljava/io/File;

    #@61
    const-string/jumbo v9, "user.home"

    #@64
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6b
    .line 504
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    #@6d
    .line 505
    const-string/jumbo v8, ""

    #@70
    goto :goto_0

    #@71
    .line 507
    .end local v2    # "file":Ljava/io/File;
    :cond_5
    const/16 v9, 0x67

    #@73
    if-ne v1, v9, :cond_6

    #@75
    .line 508
    new-instance v9, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v9

    #@7e
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v8

    #@86
    .line 509
    const/4 v5, 0x1

    #@87
    .line 510
    add-int/lit8 v4, v4, 0x1

    #@89
    .line 511
    goto :goto_0

    #@8a
    .line 512
    :cond_6
    const/16 v9, 0x75

    #@8c
    if-ne v1, v9, :cond_7

    #@8e
    .line 513
    new-instance v9, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v9

    #@97
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v9

    #@9b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v8

    #@9f
    .line 514
    const/4 v6, 0x1

    #@a0
    .line 515
    add-int/lit8 v4, v4, 0x1

    #@a2
    .line 516
    goto/16 :goto_0

    #@a4
    .line 517
    :cond_7
    if-ne v1, v11, :cond_8

    #@a6
    .line 518
    new-instance v9, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v9

    #@af
    const-string/jumbo v10, "%"

    #@b2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v9

    #@b6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v8

    #@ba
    .line 519
    add-int/lit8 v4, v4, 0x1

    #@bc
    .line 520
    goto/16 :goto_0

    #@be
    .line 523
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v9

    #@c7
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v9

    #@cb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v8

    #@cf
    goto/16 :goto_0

    #@d1
    .line 525
    .end local v0    # "ch":C
    :cond_9
    iget v9, p0, Ljava/util/logging/FileHandler;->count:I

    #@d3
    const/4 v10, 0x1

    #@d4
    if-le v9, v10, :cond_a

    #@d6
    if-eqz v5, :cond_d

    #@d8
    .line 528
    :cond_a
    :goto_2
    if-lez p3, :cond_b

    #@da
    if-eqz v6, :cond_e

    #@dc
    .line 531
    :cond_b
    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@df
    move-result v9

    #@e0
    if-lez v9, :cond_c

    #@e2
    .line 532
    if-nez v2, :cond_f

    #@e4
    .line 533
    new-instance v2, Ljava/io/File;

    #@e6
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@e9
    .line 538
    :cond_c
    :goto_4
    return-object v2

    #@ea
    .line 526
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v9

    #@f3
    const-string/jumbo v10, "."

    #@f6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v9

    #@fa
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v9

    #@fe
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v8

    #@102
    goto :goto_2

    #@103
    .line 529
    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v9

    #@10c
    const-string/jumbo v10, "."

    #@10f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v9

    #@113
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@116
    move-result-object v9

    #@117
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v8

    #@11b
    goto :goto_3

    #@11c
    .line 535
    :cond_f
    new-instance v3, Ljava/io/File;

    #@11e
    invoke-direct {v3, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@121
    .restart local v3    # "file":Ljava/io/File;
    move-object v2, v3

    #@122
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_4
.end method

.method private open(Ljava/io/File;Z)V
    .locals 6
    .param p1, "fname"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    const/4 v2, 0x0

    #@1
    .line 171
    .local v2, "len":I
    if-eqz p2, :cond_0

    #@3
    .line 172
    invoke-virtual {p1}, Ljava/io/File;->length()J

    #@6
    move-result-wide v4

    #@7
    long-to-int v2, v4

    #@8
    .line 174
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    #@a
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v1, v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    #@11
    .line 175
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@13
    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@16
    .line 176
    .local v0, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/util/logging/FileHandler$MeteredStream;

    #@18
    invoke-direct {v3, p0, v0, v2}, Ljava/util/logging/FileHandler$MeteredStream;-><init>(Ljava/util/logging/FileHandler;Ljava/io/OutputStream;I)V

    #@1b
    iput-object v3, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    #@1d
    .line 177
    iget-object v3, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    #@1f
    invoke-virtual {p0, v3}, Ljava/util/logging/FileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    #@22
    .line 169
    return-void
.end method

.method private openFiles()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v12, 0x0

    #@3
    .line 370
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@6
    move-result-object v6

    #@7
    .line 371
    .local v6, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {v6}, Ljava/util/logging/LogManager;->checkPermission()V

    #@a
    .line 372
    iget v8, p0, Ljava/util/logging/FileHandler;->count:I

    #@c
    if-ge v8, v13, :cond_0

    #@e
    .line 373
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v9, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v10, "file count = "

    #@18
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v9

    #@1c
    iget v10, p0, Ljava/util/logging/FileHandler;->count:I

    #@1e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v9

    #@22
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v9

    #@26
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v8

    #@2a
    .line 375
    :cond_0
    iget v8, p0, Ljava/util/logging/FileHandler;->limit:I

    #@2c
    if-gez v8, :cond_1

    #@2e
    .line 376
    iput v12, p0, Ljava/util/logging/FileHandler;->limit:I

    #@30
    .line 381
    :cond_1
    new-instance v1, Ljava/util/logging/FileHandler$InitializationErrorManager;

    #@32
    invoke-direct {v1, v9}, Ljava/util/logging/FileHandler$InitializationErrorManager;-><init>(Ljava/util/logging/FileHandler$InitializationErrorManager;)V

    #@35
    .line 382
    .local v1, "em":Ljava/util/logging/FileHandler$InitializationErrorManager;
    invoke-virtual {p0, v1}, Ljava/util/logging/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    #@38
    .line 386
    const/4 v7, -0x1

    #@39
    .line 388
    .local v7, "unique":I
    :goto_0
    add-int/lit8 v7, v7, 0x1

    #@3b
    .line 389
    const/16 v8, 0x64

    #@3d
    if-le v7, v8, :cond_2

    #@3f
    .line 390
    new-instance v8, Ljava/io/IOException;

    #@41
    new-instance v9, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v10, "Couldn\'t get lock for "

    #@49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@4f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v9

    #@57
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v8

    #@5b
    .line 393
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    iget-object v9, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@62
    invoke-direct {p0, v9, v12, v7}, Ljava/util/logging/FileHandler;->generate(Ljava/lang/String;II)Ljava/io/File;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v8

    #@6e
    const-string/jumbo v9, ".lck"

    #@71
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v8

    #@75
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v8

    #@79
    iput-object v8, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    #@7b
    .line 398
    sget-object v9, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    #@7d
    monitor-enter v9

    #@7e
    .line 399
    :try_start_0
    sget-object v8, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    #@80
    iget-object v10, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    #@82
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@85
    move-result-object v8

    #@86
    if-eqz v8, :cond_3

    #@88
    :goto_1
    monitor-exit v9

    #@89
    goto :goto_0

    #@8a
    .line 406
    :cond_3
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    :try_start_2
    iget-object v10, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8e
    :try_start_3
    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@91
    :try_start_4
    iput-object v8, p0, Ljava/util/logging/FileHandler;->lockStream:Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@93
    .line 407
    :try_start_5
    iget-object v8, p0, Ljava/util/logging/FileHandler;->lockStream:Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@95
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@98
    move-result-object v3

    #@99
    .line 415
    .local v3, "fc":Ljava/nio/channels/FileChannel;
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@9c
    move-result-object v8

    #@9d
    if-eqz v8, :cond_4

    #@9f
    const/4 v0, 0x1

    #@a0
    .line 424
    .local v0, "available":Z
    :goto_2
    if-eqz v0, :cond_5

    #@a2
    .line 426
    :try_start_8
    sget-object v8, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    #@a4
    iget-object v10, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    #@a6
    iget-object v11, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    #@a8
    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@ab
    monitor-exit v9

    #@ac
    .line 435
    iget v8, p0, Ljava/util/logging/FileHandler;->count:I

    #@ae
    new-array v8, v8, [Ljava/io/File;

    #@b0
    iput-object v8, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@b2
    .line 436
    const/4 v4, 0x0

    #@b3
    .local v4, "i":I
    :goto_3
    iget v8, p0, Ljava/util/logging/FileHandler;->count:I

    #@b5
    if-ge v4, v8, :cond_6

    #@b7
    .line 437
    iget-object v8, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@b9
    iget-object v9, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@bb
    invoke-direct {p0, v9, v4, v7}, Ljava/util/logging/FileHandler;->generate(Ljava/lang/String;II)Ljava/io/File;

    #@be
    move-result-object v9

    #@bf
    aput-object v9, v8, v4

    #@c1
    .line 436
    add-int/lit8 v4, v4, 0x1

    #@c3
    goto :goto_3

    #@c4
    .line 415
    .end local v0    # "available":Z
    .end local v4    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@c5
    .restart local v0    # "available":Z
    goto :goto_2

    #@c6
    .line 417
    .end local v0    # "available":Z
    :catch_0
    move-exception v5

    #@c7
    .line 422
    .local v5, "ix":Ljava/io/IOException;
    const/4 v0, 0x1

    #@c8
    .restart local v0    # "available":Z
    goto :goto_2

    #@c9
    .line 431
    .end local v5    # "ix":Ljava/io/IOException;
    :cond_5
    :try_start_9
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@cc
    goto :goto_1

    #@cd
    .line 398
    .end local v0    # "available":Z
    .end local v3    # "fc":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v8

    #@ce
    monitor-exit v9

    #@cf
    throw v8

    #@d0
    .line 441
    .restart local v0    # "available":Z
    .restart local v3    # "fc":Ljava/nio/channels/FileChannel;
    .restart local v4    # "i":I
    :cond_6
    iget-boolean v8, p0, Ljava/util/logging/FileHandler;->append:Z

    #@d2
    if-eqz v8, :cond_7

    #@d4
    .line 442
    iget-object v8, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@d6
    aget-object v8, v8, v12

    #@d8
    invoke-direct {p0, v8, v13}, Ljava/util/logging/FileHandler;->open(Ljava/io/File;Z)V

    #@db
    .line 448
    :goto_4
    iget-object v2, v1, Ljava/util/logging/FileHandler$InitializationErrorManager;->lastException:Ljava/lang/Exception;

    #@dd
    .line 449
    .local v2, "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_a

    #@df
    .line 450
    instance-of v8, v2, Ljava/io/IOException;

    #@e1
    if-eqz v8, :cond_8

    #@e3
    .line 451
    check-cast v2, Ljava/io/IOException;

    #@e5
    .end local v2    # "ex":Ljava/lang/Exception;
    throw v2

    #@e6
    .line 444
    :cond_7
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->rotate()V

    #@e9
    goto :goto_4

    #@ea
    .line 452
    .restart local v2    # "ex":Ljava/lang/Exception;
    :cond_8
    instance-of v8, v2, Ljava/lang/SecurityException;

    #@ec
    if-eqz v8, :cond_9

    #@ee
    .line 453
    check-cast v2, Ljava/lang/SecurityException;

    #@f0
    .end local v2    # "ex":Ljava/lang/Exception;
    throw v2

    #@f1
    .line 455
    .restart local v2    # "ex":Ljava/lang/Exception;
    :cond_9
    new-instance v8, Ljava/io/IOException;

    #@f3
    new-instance v9, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v10, "Exception: "

    #@fb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v9

    #@ff
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v9

    #@103
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v9

    #@107
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10a
    throw v8

    #@10b
    .line 460
    :cond_a
    new-instance v8, Ljava/util/logging/ErrorManager;

    #@10d
    invoke-direct {v8}, Ljava/util/logging/ErrorManager;-><init>()V

    #@110
    invoke-virtual {p0, v8}, Ljava/util/logging/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    #@113
    .line 369
    return-void

    #@114
    .line 408
    .end local v0    # "available":Z
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "fc":Ljava/nio/channels/FileChannel;
    .end local v4    # "i":I
    :catch_1
    move-exception v5

    #@115
    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1

    #@117
    .end local v5    # "ix":Ljava/io/IOException;
    :catch_2
    move-exception v5

    #@118
    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1

    #@11a
    .end local v5    # "ix":Ljava/io/IOException;
    :catch_3
    move-exception v5

    #@11b
    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1

    #@11d
    .end local v5    # "ix":Ljava/io/IOException;
    :catch_4
    move-exception v5

    #@11e
    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1

    #@120
    .end local v5    # "ix":Ljava/io/IOException;
    :catch_5
    move-exception v5

    #@121
    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1

    #@123
    .end local v5    # "ix":Ljava/io/IOException;
    :catch_6
    move-exception v5

    #@124
    .restart local v5    # "ix":Ljava/io/IOException;
    goto/16 :goto_1
.end method

.method private declared-synchronized rotate()V
    .locals 7

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 543
    :try_start_0
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getLevel()Ljava/util/logging/Level;

    #@4
    move-result-object v4

    #@5
    .line 544
    .local v4, "oldLevel":Ljava/util/logging/Level;
    sget-object v5, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    #@7
    invoke-virtual {p0, v5}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    #@a
    .line 546
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    #@d
    .line 547
    iget v5, p0, Ljava/util/logging/FileHandler;->count:I

    #@f
    add-int/lit8 v2, v5, -0x2

    #@11
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    #@13
    .line 548
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@15
    aget-object v0, v5, v2

    #@17
    .line 549
    .local v0, "f1":Ljava/io/File;
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@19
    add-int/lit8 v6, v2, 0x1

    #@1b
    aget-object v1, v5, v6

    #@1d
    .line 550
    .local v1, "f2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 551
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_0

    #@29
    .line 552
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@2c
    .line 554
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 547
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@31
    goto :goto_0

    #@32
    .line 558
    .end local v0    # "f1":Ljava/io/File;
    .end local v1    # "f2":Ljava/io/File;
    :cond_2
    :try_start_1
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@34
    const/4 v6, 0x0

    #@35
    aget-object v5, v5, v6

    #@37
    const/4 v6, 0x0

    #@38
    invoke-direct {p0, v5, v6}, Ljava/util/logging/FileHandler;->open(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 565
    :goto_1
    :try_start_2
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    monitor-exit p0

    #@3f
    .line 542
    return-void

    #@40
    .line 559
    :catch_0
    move-exception v3

    #@41
    .line 562
    .local v3, "ix":Ljava/io/IOException;
    const/4 v5, 0x0

    #@42
    const/4 v6, 0x4

    #@43
    :try_start_3
    invoke-virtual {p0, v5, v3, v6}, Ljava/util/logging/FileHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    goto :goto_1

    #@47
    .end local v2    # "i":I
    .end local v3    # "ix":Ljava/io/IOException;
    .end local v4    # "oldLevel":Ljava/util/logging/Level;
    :catchall_0
    move-exception v5

    #@48
    monitor-exit p0

    #@49
    throw v5
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 602
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    #@4
    .line 604
    iget-object v1, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    if-nez v1, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 605
    return-void

    #@a
    .line 610
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/logging/FileHandler;->lockStream:Ljava/io/FileOutputStream;

    #@c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@f
    .line 614
    :goto_0
    :try_start_2
    sget-object v2, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    #@11
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@12
    .line 615
    :try_start_3
    sget-object v1, Ljava/util/logging/FileHandler;->locks:Ljava/util/HashMap;

    #@14
    iget-object v3, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@19
    :try_start_4
    monitor-exit v2

    #@1a
    .line 617
    new-instance v1, Ljava/io/File;

    #@1c
    iget-object v2, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    #@1e
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@21
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@24
    .line 618
    const/4 v1, 0x0

    #@25
    iput-object v1, p0, Ljava/util/logging/FileHandler;->lockFileName:Ljava/lang/String;

    #@27
    .line 619
    const/4 v1, 0x0

    #@28
    iput-object v1, p0, Ljava/util/logging/FileHandler;->lockStream:Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@2a
    monitor-exit p0

    #@2b
    .line 601
    return-void

    #@2c
    .line 614
    :catchall_0
    move-exception v1

    #@2d
    :try_start_5
    monitor-exit v2

    #@2e
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@2f
    :catchall_1
    move-exception v1

    #@30
    monitor-exit p0

    #@31
    throw v1

    #@32
    .line 611
    :catch_0
    move-exception v0

    #@33
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 575
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/logging/FileHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 576
    return-void

    #@9
    .line 578
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    #@c
    .line 579
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->flush()V

    #@f
    .line 580
    iget v0, p0, Ljava/util/logging/FileHandler;->limit:I

    #@11
    if-lez v0, :cond_1

    #@13
    iget-object v0, p0, Ljava/util/logging/FileHandler;->meter:Ljava/util/logging/FileHandler$MeteredStream;

    #@15
    iget v0, v0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    #@17
    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    #@19
    if-lt v0, v1, :cond_1

    #@1b
    .line 586
    new-instance v0, Ljava/util/logging/FileHandler$1;

    #@1d
    invoke-direct {v0, p0}, Ljava/util/logging/FileHandler$1;-><init>(Ljava/util/logging/FileHandler;)V

    #@20
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    :cond_1
    monitor-exit p0

    #@24
    .line 574
    return-void

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method
