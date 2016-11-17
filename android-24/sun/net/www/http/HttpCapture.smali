.class public Lsun/net/www/http/HttpCapture;
.super Ljava/lang/Object;
.source "HttpCapture.java"


# static fields
.field private static volatile capFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static volatile patterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private file:Ljava/io/File;

.field private incoming:Z

.field private out:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 60
    const/4 v0, 0x0

    #@2
    sput-boolean v0, Lsun/net/www/http/HttpCapture;->initialized:Z

    #@4
    .line 61
    sput-object v1, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    #@6
    .line 62
    sput-object v1, Lsun/net/www/http/HttpCapture;->capFiles:Ljava/util/ArrayList;

    #@8
    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/net/URL;)V
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .param p2, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 57
    iput-object v5, p0, Lsun/net/www/http/HttpCapture;->file:Ljava/io/File;

    #@7
    .line 58
    iput-boolean v1, p0, Lsun/net/www/http/HttpCapture;->incoming:Z

    #@9
    .line 59
    iput-object v5, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    #@b
    .line 113
    iput-object p1, p0, Lsun/net/www/http/HttpCapture;->file:Ljava/io/File;

    #@d
    .line 115
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    #@f
    new-instance v2, Ljava/io/FileWriter;

    #@11
    iget-object v3, p0, Lsun/net/www/http/HttpCapture;->file:Ljava/io/File;

    #@13
    const/4 v4, 0x1

    #@14
    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    #@17
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@1a
    iput-object v1, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    #@1c
    .line 116
    iget-object v1, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "URL: "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, "\n"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 112
    :goto_0
    return-void

    #@3d
    .line 117
    :catch_0
    move-exception v0

    #@3e
    .line 118
    .local v0, "ex":Ljava/io/IOException;
    const-class v1, Lsun/net/www/http/HttpCapture;

    #@40
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, v5, v0}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4b
    goto :goto_0
.end method

.method public static getCapture(Ljava/net/URL;)Lsun/net/www/http/HttpCapture;
    .locals 9
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 145
    invoke-static {}, Lsun/net/www/http/HttpCapture;->isInitialized()Z

    #@4
    move-result v7

    #@5
    if-nez v7, :cond_0

    #@7
    .line 146
    invoke-static {}, Lsun/net/www/http/HttpCapture;->init()V

    #@a
    .line 148
    :cond_0
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    #@c
    if-eqz v7, :cond_1

    #@e
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@13
    move-result v7

    #@14
    if-eqz v7, :cond_2

    #@16
    .line 149
    :cond_1
    return-object v8

    #@17
    .line 151
    :cond_2
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 152
    .local v6, "s":Ljava/lang/String;
    const/4 v3, 0x0

    #@1c
    .local v3, "i":I
    :goto_0
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v7

    #@22
    if-ge v3, v7, :cond_6

    #@24
    .line 153
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Ljava/util/regex/Pattern;

    #@2c
    .line 154
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_5

    #@36
    .line 155
    sget-object v7, Lsun/net/www/http/HttpCapture;->capFiles:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Ljava/lang/String;

    #@3e
    .line 157
    .local v0, "f":Ljava/lang/String;
    const-string/jumbo v7, "%d"

    #@41
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@44
    move-result v7

    #@45
    if-ltz v7, :cond_4

    #@47
    .line 158
    new-instance v5, Ljava/util/Random;

    #@49
    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    #@4c
    .line 160
    .local v5, "rand":Ljava/util/Random;
    :cond_3
    const-string/jumbo v7, "%d"

    #@4f
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    #@52
    move-result v8

    #@53
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    .line 161
    .local v1, "f2":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    #@5d
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@60
    .line 162
    .local v2, "fi":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@63
    move-result v7

    #@64
    if-nez v7, :cond_3

    #@66
    .line 166
    .end local v1    # "f2":Ljava/lang/String;
    .end local v5    # "rand":Ljava/util/Random;
    :goto_1
    new-instance v7, Lsun/net/www/http/HttpCapture;

    #@68
    invoke-direct {v7, v2, p0}, Lsun/net/www/http/HttpCapture;-><init>(Ljava/io/File;Ljava/net/URL;)V

    #@6b
    return-object v7

    #@6c
    .line 164
    .end local v2    # "fi":Ljava/io/File;
    :cond_4
    new-instance v2, Ljava/io/File;

    #@6e
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@71
    .restart local v2    # "fi":Ljava/io/File;
    goto :goto_1

    #@72
    .line 152
    .end local v0    # "f":Ljava/lang/String;
    .end local v2    # "fi":Ljava/io/File;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@74
    goto :goto_0

    #@75
    .line 169
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_6
    return-object v8
.end method

.method private static declared-synchronized init()V
    .locals 10

    #@0
    .prologue
    const-class v8, Lsun/net/www/http/HttpCapture;

    #@2
    monitor-enter v8

    #@3
    .line 65
    const/4 v7, 0x1

    #@4
    :try_start_0
    sput-boolean v7, Lsun/net/www/http/HttpCapture;->initialized:Z

    #@6
    .line 67
    new-instance v7, Lsun/net/www/http/HttpCapture$1;

    #@8
    invoke-direct {v7}, Lsun/net/www/http/HttpCapture$1;-><init>()V

    #@b
    .line 66
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@e
    move-result-object v5

    #@f
    check-cast v5, Ljava/lang/String;

    #@11
    .line 72
    .local v5, "rulesFile":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@13
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_1

    #@19
    :cond_0
    :goto_0
    monitor-exit v8

    #@1a
    .line 64
    return-void

    #@1b
    .line 75
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    #@1d
    new-instance v7, Ljava/io/FileReader;

    #@1f
    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@22
    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    .line 80
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 81
    .local v4, "line":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_4

    #@2b
    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 83
    const-string/jumbo v7, "#"

    #@32
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@35
    move-result v7

    #@36
    if-nez v7, :cond_3

    #@38
    .line 85
    const-string/jumbo v7, ","

    #@3b
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    .line 86
    .local v6, "s":[Ljava/lang/String;
    array-length v7, v6

    #@40
    const/4 v9, 0x2

    #@41
    if-ne v7, v9, :cond_3

    #@43
    .line 87
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    #@45
    if-nez v7, :cond_2

    #@47
    .line 88
    new-instance v7, Ljava/util/ArrayList;

    #@49
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@4c
    sput-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    #@4e
    .line 89
    new-instance v7, Ljava/util/ArrayList;

    #@50
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@53
    sput-object v7, Lsun/net/www/http/HttpCapture;->capFiles:Ljava/util/ArrayList;

    #@55
    .line 91
    :cond_2
    sget-object v7, Lsun/net/www/http/HttpCapture;->patterns:Ljava/util/ArrayList;

    #@57
    const/4 v9, 0x0

    #@58
    aget-object v9, v6, v9

    #@5a
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5d
    move-result-object v9

    #@5e
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@65
    .line 92
    sget-object v7, Lsun/net/www/http/HttpCapture;->capFiles:Ljava/util/ArrayList;

    #@67
    const/4 v9, 0x1

    #@68
    aget-object v9, v6, v9

    #@6a
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@71
    .line 95
    .end local v6    # "s":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@74
    move-result-object v4

    #@75
    goto :goto_1

    #@76
    .line 76
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@77
    .local v0, "ex":Ljava/io/FileNotFoundException;
    monitor-exit v8

    #@78
    .line 77
    return-void

    #@79
    .line 101
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@7c
    goto :goto_0

    #@7d
    .line 102
    :catch_1
    move-exception v1

    #@7e
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_0

    #@7f
    .line 97
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v3

    #@80
    .line 101
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@83
    goto :goto_0

    #@84
    .line 102
    :catch_3
    move-exception v1

    #@85
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_0

    #@86
    .line 99
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@87
    .line 101
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@8a
    .line 99
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@8b
    .end local v2    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    #@8c
    monitor-exit v8

    #@8d
    throw v7

    #@8e
    .line 102
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    #@8f
    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_2
.end method

.method private static declared-synchronized isInitialized()Z
    .locals 2

    #@0
    .prologue
    const-class v0, Lsun/net/www/http/HttpCapture;

    #@2
    monitor-enter v0

    #@3
    .line 109
    :try_start_0
    sget-boolean v1, Lsun/net/www/http/HttpCapture;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method


# virtual methods
.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 141
    :try_start_0
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    #@3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 140
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized received(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 132
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpCapture;->incoming:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 133
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    #@7
    const-string/jumbo v1, "\n<------\n"

    #@a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@d
    .line 134
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lsun/net/www/http/HttpCapture;->incoming:Z

    #@10
    .line 135
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    #@12
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    #@15
    .line 137
    :cond_0
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    #@17
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 131
    return-void

    #@1c
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method public declared-synchronized sent(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 123
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/HttpCapture;->incoming:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 124
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    #@7
    const-string/jumbo v1, "\n------>\n"

    #@a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@d
    .line 125
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lsun/net/www/http/HttpCapture;->incoming:Z

    #@10
    .line 126
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    #@12
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    #@15
    .line 128
    :cond_0
    iget-object v0, p0, Lsun/net/www/http/HttpCapture;->out:Ljava/io/BufferedWriter;

    #@17
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 122
    return-void

    #@1c
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method
