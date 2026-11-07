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
.field blacklist file:Ljava/io/File;


# direct methods
.method constructor blacklist <init>(Ljava/net/URL;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;

    .line 157
    invoke-direct {p0}, Landroid/icu/impl/URLHandler;-><init>()V

    .line 159
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;
    :try_end_e
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_e} :catch_f

    .line 162
    goto :goto_10

    .line 160
    :catch_f
    move-exception v0

    .line 163
    :goto_10
    iget-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    .line 167
    :cond_1d
    return-void

    .line 164
    :cond_1e
    :goto_1e
    invoke-static {}, Landroid/icu/impl/URLHandler;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file does not exist - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private blacklist process(Landroid/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V
    .registers 15
    .param p1, "v"    # Landroid/icu/impl/URLHandler$URLVisitor;
    .param p2, "recurse"    # Z
    .param p3, "strip"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "files"    # [Ljava/io/File;

    .line 179
    if-eqz p5, :cond_67

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p5

    if-ge v0, v1, :cond_63

    .line 181
    aget-object v1, p5, v0

    .line 183
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 184
    if-eqz p2, :cond_37

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local p2    # "recurse":Z
    .end local p3    # "strip":Z
    .local v4, "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .local v5, "recurse":Z
    .local v6, "strip":Z
    invoke-direct/range {v3 .. v8}, Landroid/icu/impl/URLHandler$FileURLHandler;->process(Landroid/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V

    goto :goto_5d

    .line 184
    .end local v4    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local v5    # "recurse":Z
    .end local v6    # "strip":Z
    .restart local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .restart local p2    # "recurse":Z
    .restart local p3    # "strip":Z
    :cond_37
    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local p2    # "recurse":Z
    .end local p3    # "strip":Z
    .restart local v4    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .restart local v5    # "recurse":Z
    .restart local v6    # "strip":Z
    goto :goto_5d

    .line 188
    .end local v4    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local v5    # "recurse":Z
    .end local v6    # "strip":Z
    .restart local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .restart local p2    # "recurse":Z
    .restart local p3    # "strip":Z
    :cond_3b
    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local p2    # "recurse":Z
    .end local p3    # "strip":Z
    .restart local v4    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .restart local v5    # "recurse":Z
    .restart local v6    # "strip":Z
    if-eqz v6, :cond_45

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_5a

    :cond_45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5a
    invoke-interface {v4, p1}, Landroid/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V

    .line 180
    .end local v1    # "f":Ljava/io/File;
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    move-object p1, v4

    move p2, v5

    move p3, v6

    goto :goto_3

    .end local v4    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local v5    # "recurse":Z
    .end local v6    # "strip":Z
    .restart local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .restart local p2    # "recurse":Z
    .restart local p3    # "strip":Z
    :cond_63
    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local p2    # "recurse":Z
    .end local p3    # "strip":Z
    .restart local v4    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .restart local v5    # "recurse":Z
    .restart local v6    # "strip":Z
    goto :goto_6a

    .line 179
    .end local v0    # "i":I
    .end local v4    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local v5    # "recurse":Z
    .end local v6    # "strip":Z
    .restart local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .restart local p2    # "recurse":Z
    .restart local p3    # "strip":Z
    :cond_67
    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 192
    .end local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local p2    # "recurse":Z
    .end local p3    # "strip":Z
    .restart local v4    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .restart local v5    # "recurse":Z
    .restart local v6    # "strip":Z
    :goto_6a
    return-void
.end method


# virtual methods
.method public blacklist guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V
    .registers 11
    .param p1, "v"    # Landroid/icu/impl/URLHandler$URLVisitor;
    .param p2, "recurse"    # Z
    .param p3, "strip"    # Z

    .line 171
    iget-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 172
    iget-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    const-string v5, "/"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local p2    # "recurse":Z
    .end local p3    # "strip":Z
    .local v2, "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .local v3, "recurse":Z
    .local v4, "strip":Z
    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/URLHandler$FileURLHandler;->process(Landroid/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V

    goto :goto_25

    .line 174
    .end local v2    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local v3    # "recurse":Z
    .end local v4    # "strip":Z
    .restart local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .restart local p2    # "recurse":Z
    .restart local p3    # "strip":Z
    :cond_18
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .end local p2    # "recurse":Z
    .end local p3    # "strip":Z
    .restart local v2    # "v":Landroid/icu/impl/URLHandler$URLVisitor;
    .restart local v3    # "recurse":Z
    .restart local v4    # "strip":Z
    iget-object p1, v1, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V

    .line 176
    :goto_25
    return-void
.end method
