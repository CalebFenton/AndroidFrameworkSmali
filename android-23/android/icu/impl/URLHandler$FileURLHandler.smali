.class Landroid/icu/impl/URLHandler$FileURLHandler;
.super Landroid/icu/impl/URLHandler;
.source "URLHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/URLHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileURLHandler"
.end annotation


# instance fields
.field file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Landroid/icu/impl/URLHandler;-><init>()V

    #@3
    .line 153
    :try_start_0
    new-instance v1, Ljava/io/File;

    #@5
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    #@c
    iput-object v1, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 157
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-object v1, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    #@14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 151
    return-void

    #@1b
    .line 158
    :cond_0
    invoke-static {}, Landroid/icu/impl/URLHandler;->-get0()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "file does not exist - "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 159
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@40
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@43
    throw v1

    #@44
    .line 154
    :catch_0
    move-exception v0

    #@45
    .local v0, "use":Ljava/net/URISyntaxException;
    goto :goto_0
.end method

.method private process(Landroid/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V
    .locals 8
    .param p1, "v"    # Landroid/icu/impl/URLHandler$URLVisitor;
    .param p2, "recurse"    # Z
    .param p3, "strip"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "files"    # [Ljava/io/File;

    #@0
    .prologue
    .line 172
    const/4 v7, 0x0

    #@1
    .local v7, "i":I
    :goto_0
    array-length v0, p5

    #@2
    if-ge v7, v0, :cond_3

    #@4
    .line 173
    aget-object v6, p5, v7

    #@6
    .line 175
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 176
    if-eqz p2, :cond_0

    #@e
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const/16 v1, 0x2f

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@2c
    move-result-object v5

    #@2d
    move-object v0, p0

    #@2e
    move-object v1, p1

    #@2f
    move v2, p2

    #@30
    move v3, p3

    #@31
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/URLHandler$FileURLHandler;->process(Landroid/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V

    #@34
    .line 172
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@36
    goto :goto_0

    #@37
    .line 180
    :cond_1
    if-eqz p3, :cond_2

    #@39
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    :goto_2
    invoke-interface {p1, v0}, Landroid/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V

    #@40
    goto :goto_1

    #@41
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    goto :goto_2

    #@57
    .line 171
    .end local v6    # "f":Ljava/io/File;
    :cond_3
    return-void
.end method


# virtual methods
.method public guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V
    .locals 6
    .param p1, "v"    # Landroid/icu/impl/URLHandler$URLVisitor;
    .param p2, "recurse"    # Z
    .param p3, "strip"    # Z

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 165
    const-string/jumbo v4, "/"

    #@b
    iget-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    #@d
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@10
    move-result-object v5

    #@11
    move-object v0, p0

    #@12
    move-object v1, p1

    #@13
    move v2, p2

    #@14
    move v3, p3

    #@15
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/URLHandler$FileURLHandler;->process(Landroid/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V

    #@18
    .line 163
    :goto_0
    return-void

    #@19
    .line 167
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    #@1b
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-interface {p1, v0}, Landroid/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V

    #@22
    goto :goto_0
.end method
