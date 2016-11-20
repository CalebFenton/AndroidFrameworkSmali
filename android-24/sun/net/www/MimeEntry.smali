.class public Lsun/net/www/MimeEntry;
.super Ljava/lang/Object;
.source "MimeEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final LAUNCH_APPLICATION:I = 0x3

.field public static final LOAD_INTO_BROWSER:I = 0x1

.field public static final SAVE_TO_FILE:I = 0x2

.field public static final UNKNOWN:I

.field static final actionKeywords:[Ljava/lang/String;


# instance fields
.field private action:I

.field private command:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fileExtensions:[Ljava/lang/String;

.field private imageFileName:Ljava/lang/String;

.field starred:Z

.field private tempFileNameTemplate:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 49
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 50
    const-string/jumbo v1, "unknown"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 51
    const-string/jumbo v1, "browser"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 52
    const-string/jumbo v1, "save"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 53
    const-string/jumbo v1, "application"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 49
    sput-object v0, Lsun/net/www/MimeEntry;->actionKeywords:[Ljava/lang/String;

    #@1d
    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 62
    const/4 v2, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v4, v3

    #@5
    move-object v5, v3

    #@6
    invoke-direct/range {v0 .. v5}, Lsun/net/www/MimeEntry;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@9
    .line 59
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "tempFileNameTemplate"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    #@a
    .line 85
    iput p2, p0, Lsun/net/www/MimeEntry;->action:I

    #@c
    .line 86
    iput-object p3, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    #@e
    .line 87
    iput-object v1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    #@10
    .line 88
    iput-object v1, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    #@12
    .line 90
    iput-object p4, p0, Lsun/net/www/MimeEntry;->tempFileNameTemplate:Ljava/lang/String;

    #@14
    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "imageFileName"    # Ljava/lang/String;
    .param p5, "fileExtensions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    #@9
    .line 98
    iput p2, p0, Lsun/net/www/MimeEntry;->action:I

    #@b
    .line 99
    iput-object p3, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    #@d
    .line 100
    iput-object p4, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    #@f
    .line 101
    iput-object p5, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    #@11
    .line 103
    invoke-direct {p0, p1}, Lsun/net/www/MimeEntry;->isStarred(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    iput-boolean v0, p0, Lsun/net/www/MimeEntry;->starred:Z

    #@17
    .line 95
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "imageFileName"    # Ljava/lang/String;
    .param p3, "extensionString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    #@9
    .line 74
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lsun/net/www/MimeEntry;->action:I

    #@c
    .line 75
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    #@f
    .line 76
    iput-object p2, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    #@11
    .line 77
    invoke-virtual {p0, p3}, Lsun/net/www/MimeEntry;->setExtensions(Ljava/lang/String;)V

    #@14
    .line 78
    iget-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    #@16
    invoke-direct {p0, v0}, Lsun/net/www/MimeEntry;->isStarred(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    iput-boolean v0, p0, Lsun/net/www/MimeEntry;->starred:Z

    #@1c
    .line 72
    return-void
.end method

.method private isStarred(Ljava/lang/String;)Z
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 203
    if-eqz p1, :cond_0

    #@3
    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    .line 205
    const-string/jumbo v0, "/*"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    .line 203
    :cond_0
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 272
    new-instance v0, Lsun/net/www/MimeEntry;

    #@2
    iget-object v1, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Lsun/net/www/MimeEntry;-><init>(Ljava/lang/String;)V

    #@7
    .line 273
    .local v0, "theClone":Lsun/net/www/MimeEntry;
    iget v1, p0, Lsun/net/www/MimeEntry;->action:I

    #@9
    iput v1, v0, Lsun/net/www/MimeEntry;->action:I

    #@b
    .line 274
    iget-object v1, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    #@d
    iput-object v1, v0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    #@f
    .line 275
    iget-object v1, p0, Lsun/net/www/MimeEntry;->description:Ljava/lang/String;

    #@11
    iput-object v1, v0, Lsun/net/www/MimeEntry;->description:Ljava/lang/String;

    #@13
    .line 276
    iget-object v1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    #@15
    iput-object v1, v0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    #@17
    .line 277
    iget-object v1, p0, Lsun/net/www/MimeEntry;->tempFileNameTemplate:Ljava/lang/String;

    #@19
    iput-object v1, v0, Lsun/net/www/MimeEntry;->tempFileNameTemplate:Ljava/lang/String;

    #@1b
    .line 278
    iget-object v1, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    #@1d
    iput-object v1, v0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    #@1f
    .line 280
    return-object v0
.end method

.method public declared-synchronized getAction()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 116
    :try_start_0
    iget v0, p0, Lsun/net/www/MimeEntry;->action:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 137
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeEntry;->description:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lsun/net/www/MimeEntry;->description:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    :goto_0
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    goto :goto_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized getExtensions()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 172
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getExtensionsAsList()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 176
    :try_start_0
    const-string/jumbo v0, ""

    #@4
    .line 177
    .local v0, "extensionsAsString":Ljava/lang/String;
    iget-object v2, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 178
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    #@b
    array-length v2, v2

    #@c
    if-ge v1, v2, :cond_1

    #@e
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget-object v3, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    #@19
    aget-object v3, v3, v1

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 180
    iget-object v2, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;

    #@25
    array-length v2, v2

    #@26
    add-int/lit8 v2, v2, -0x1

    #@28
    if-ge v1, v2, :cond_0

    #@2a
    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, ","

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result-object v0

    #@3e
    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    #@42
    .line 186
    return-object v0

    #@43
    .end local v0    # "extensionsAsString":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@44
    monitor-exit p0

    #@45
    throw v2
.end method

.method public getImageFileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public declared-synchronized getLaunchString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 129
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getTempFileTemplate()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lsun/net/www/MimeEntry;->tempFileNameTemplate:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public declared-synchronized getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 108
    :try_start_0
    iget-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public launch(Ljava/net/URLConnection;Ljava/io/InputStream;Lsun/net/www/MimeTable;)Ljava/lang/Object;
    .locals 8
    .param p1, "urlc"    # Ljava/net/URLConnection;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "mt"    # Lsun/net/www/MimeTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/www/ApplicationLaunchException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 220
    iget v0, p0, Lsun/net/www/MimeEntry;->action:I

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 258
    return-object v1

    #@8
    .line 224
    :pswitch_0
    return-object p2

    #@9
    .line 236
    :pswitch_1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 237
    :catch_0
    move-exception v6

    #@f
    .line 238
    .local v6, "e":Ljava/lang/Exception;
    return-object v1

    #@10
    .line 243
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v5, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    #@12
    .line 244
    .local v5, "threadName":Ljava/lang/String;
    const/16 v0, 0x20

    #@14
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v7

    #@18
    .line 245
    .local v7, "fst":I
    if-lez v7, :cond_0

    #@1a
    .line 246
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 249
    :cond_0
    new-instance v0, Lsun/net/www/MimeLauncher;

    #@20
    .line 250
    invoke-virtual {p3}, Lsun/net/www/MimeTable;->getTempFileTemplate()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    move-object v1, p0

    #@25
    move-object v2, p1

    #@26
    move-object v3, p2

    #@27
    .line 249
    invoke-direct/range {v0 .. v5}, Lsun/net/www/MimeLauncher;-><init>(Lsun/net/www/MimeEntry;Ljava/net/URLConnection;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    return-object v0

    #@2b
    .line 255
    .end local v5    # "threadName":Ljava/lang/String;
    .end local v7    # "fst":I
    :pswitch_3
    return-object v1

    #@2c
    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 262
    iget-boolean v0, p0, Lsun/net/www/MimeEntry;->starred:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 264
    iget-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 266
    :cond_0
    iget-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public declared-synchronized setAction(I)V
    .locals 1
    .param p1, "action"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 125
    :try_start_0
    iput p1, p0, Lsun/net/www/MimeEntry;->action:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 124
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setAction(ILjava/lang/String;)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "command"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 120
    :try_start_0
    iput p1, p0, Lsun/net/www/MimeEntry;->action:I

    #@3
    .line 121
    iput-object p2, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 119
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized setCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 133
    :try_start_0
    iput-object p1, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 132
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 141
    :try_start_0
    iput-object p1, p0, Lsun/net/www/MimeEntry;->description:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 140
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setExtensions(Ljava/lang/String;)V
    .locals 6
    .param p1, "extensionString"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 190
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    #@3
    const-string/jumbo v5, ","

    #@6
    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 191
    .local v1, "extTokens":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    #@c
    move-result v4

    #@d
    .line 192
    .local v4, "numExts":I
    new-array v2, v4, [Ljava/lang/String;

    #@f
    .line 194
    .local v2, "extensionStrings":[Ljava/lang/String;
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    #@12
    .line 195
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/lang/String;

    #@18
    .line 196
    .local v0, "ext":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    aput-object v5, v2, v3

    #@1e
    .line 194
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 199
    .end local v0    # "ext":Ljava/lang/String;
    :cond_0
    iput-object v2, p0, Lsun/net/www/MimeEntry;->fileExtensions:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 189
    return-void

    #@25
    .end local v1    # "extTokens":Ljava/util/StringTokenizer;
    .end local v2    # "extensionStrings":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "numExts":I
    :catchall_0
    move-exception v5

    #@26
    monitor-exit p0

    #@27
    throw v5
.end method

.method public declared-synchronized setImageFileName(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 153
    :try_start_0
    new-instance v0, Ljava/io/File;

    #@3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@6
    .line 154
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    if-nez v1, :cond_1

    #@c
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "java.net.ftp.imagepath."

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 155
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    #@26
    .line 162
    :goto_0
    const/16 v1, 0x2e

    #@28
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@2b
    move-result v1

    #@2c
    if-gez v1, :cond_0

    #@2e
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    iget-object v2, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    const-string/jumbo v2, ".gif"

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    iput-object v1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    :cond_0
    monitor-exit p0

    #@47
    .line 152
    return-void

    #@48
    .line 159
    :cond_1
    :try_start_1
    iput-object p1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    #@4c
    monitor-exit p0

    #@4d
    throw v1
.end method

.method public declared-synchronized setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 112
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 111
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized toProperty()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 286
    .local v1, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v6, "; "

    #@9
    .line 287
    .local v6, "separator":Ljava/lang/String;
    const/4 v5, 0x0

    #@a
    .line 289
    .local v5, "needSeparator":Z
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getAction()I

    #@d
    move-result v0

    #@e
    .line 290
    .local v0, "action":I
    if-eqz v0, :cond_0

    #@10
    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v8, "action="

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    sget-object v8, Lsun/net/www/MimeEntry;->actionKeywords:[Ljava/lang/String;

    #@1e
    aget-object v8, v8, v0

    #@20
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 292
    const/4 v5, 0x1

    #@2c
    .line 295
    :cond_0
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getLaunchString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 296
    .local v2, "command":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@35
    move-result v7

    #@36
    if-lez v7, :cond_2

    #@38
    .line 297
    if-eqz v5, :cond_1

    #@3a
    .line 298
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 300
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v8, "application="

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@54
    .line 301
    const/4 v5, 0x1

    #@55
    .line 304
    :cond_2
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getImageFileName()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    if-eqz v7, :cond_4

    #@5b
    .line 305
    if-eqz v5, :cond_3

    #@5d
    .line 306
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@60
    .line 308
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v8, "icon="

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getImageFileName()Ljava/lang/String;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7b
    .line 309
    const/4 v5, 0x1

    #@7c
    .line 312
    :cond_4
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getExtensionsAsList()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    .line 313
    .local v4, "extensions":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@83
    move-result v7

    #@84
    if-lez v7, :cond_6

    #@86
    .line 314
    if-eqz v5, :cond_5

    #@88
    .line 315
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8b
    .line 317
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v8, "file_extensions="

    #@93
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v7

    #@97
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v7

    #@9b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v7

    #@9f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a2
    .line 318
    const/4 v5, 0x1

    #@a3
    .line 321
    :cond_6
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getDescription()Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    .line 322
    .local v3, "description":Ljava/lang/String;
    if-eqz v3, :cond_7

    #@a9
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getType()Ljava/lang/String;

    #@ac
    move-result-object v7

    #@ad
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v7

    #@b1
    if-eqz v7, :cond_8

    #@b3
    .line 329
    :cond_7
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b6
    move-result-object v7

    #@b7
    monitor-exit p0

    #@b8
    return-object v7

    #@b9
    .line 323
    :cond_8
    if-eqz v5, :cond_9

    #@bb
    .line 324
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@be
    .line 326
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v8, "description="

    #@c6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v7

    #@ca
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v7

    #@ce
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v7

    #@d2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d5
    goto :goto_0

    #@d6
    .end local v0    # "action":I
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "command":Ljava/lang/String;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "extensions":Ljava/lang/String;
    .end local v5    # "needSeparator":Z
    .end local v6    # "separator":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@d7
    monitor-exit p0

    #@d8
    throw v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "MimeEntry[contentType="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/net/www/MimeEntry;->typeName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 334
    const-string/jumbo v1, ", image="

    #@15
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 334
    iget-object v1, p0, Lsun/net/www/MimeEntry;->imageFileName:Ljava/lang/String;

    #@1b
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 335
    const-string/jumbo v1, ", action="

    #@22
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 335
    iget v1, p0, Lsun/net/www/MimeEntry;->action:I

    #@28
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 336
    const-string/jumbo v1, ", command="

    #@2f
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 336
    iget-object v1, p0, Lsun/net/www/MimeEntry;->command:Ljava/lang/String;

    #@35
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 337
    const-string/jumbo v1, ", extensions="

    #@3c
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 337
    invoke-virtual {p0}, Lsun/net/www/MimeEntry;->getExtensionsAsList()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 338
    const-string/jumbo v1, "]"

    #@4b
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    return-object v0
.end method
