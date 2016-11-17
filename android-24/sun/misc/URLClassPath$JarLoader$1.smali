.class Lsun/misc/URLClassPath$JarLoader$1;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lsun/misc/URLClassPath$JarLoader;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$JarLoader;)V
    .locals 0
    .param p1, "this$1"    # Lsun/misc/URLClassPath$JarLoader;

    #@0
    .prologue
    .line 665
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 666
    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 667
    invoke-static {}, Lsun/misc/URLClassPath;->-get0()Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 668
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    new-instance v6, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v7, "Opening "

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    iget-object v7, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@17
    invoke-static {v7}, Lsun/misc/URLClassPath$JarLoader;->-get0(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 669
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    #@29
    .line 672
    :cond_0
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@2b
    iget-object v6, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@2d
    iget-object v7, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@2f
    invoke-static {v7}, Lsun/misc/URLClassPath$JarLoader;->-get0(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    #@32
    move-result-object v7

    #@33
    invoke-static {v6, v7}, Lsun/misc/URLClassPath$JarLoader;->-wrap0(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;

    #@36
    move-result-object v6

    #@37
    invoke-static {v5, v6}, Lsun/misc/URLClassPath$JarLoader;->-set1(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    #@3a
    .line 673
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@3c
    iget-object v6, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@3e
    invoke-static {v6}, Lsun/misc/URLClassPath$JarLoader;->-get3(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    #@41
    move-result-object v6

    #@42
    iget-object v7, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@44
    invoke-static {v7}, Lsun/misc/URLClassPath$JarLoader;->-get5(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/MetaIndex;

    #@47
    move-result-object v7

    #@48
    invoke-static {v6, v7}, Lsun/misc/JarIndex;->getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;

    #@4b
    move-result-object v6

    #@4c
    invoke-static {v5, v6}, Lsun/misc/URLClassPath$JarLoader;->-set0(Lsun/misc/URLClassPath$JarLoader;Lsun/misc/JarIndex;)Lsun/misc/JarIndex;

    #@4f
    .line 674
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@51
    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-get2(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;

    #@54
    move-result-object v5

    #@55
    if-eqz v5, :cond_2

    #@57
    .line 675
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@59
    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-get2(Lsun/misc/URLClassPath$JarLoader;)Lsun/misc/JarIndex;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Lsun/misc/JarIndex;->getJarFiles()[Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    .line 681
    .local v3, "jarfiles":[Ljava/lang/String;
    const/4 v1, 0x0

    #@62
    .local v1, "i":I
    :goto_0
    array-length v5, v3

    #@63
    if-ge v1, v5, :cond_2

    #@65
    .line 683
    :try_start_0
    new-instance v2, Ljava/net/URL;

    #@67
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@69
    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-get0(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    #@6c
    move-result-object v5

    #@6d
    aget-object v6, v3, v1

    #@6f
    invoke-direct {v2, v5, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    #@72
    .line 685
    .local v2, "jarURL":Ljava/net/URL;
    invoke-static {v2}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    .line 686
    .local v4, "urlNoFragString":Ljava/lang/String;
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@78
    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-get4(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    #@7b
    move-result-object v5

    #@7c
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@7f
    move-result v5

    #@80
    if-nez v5, :cond_1

    #@82
    .line 687
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$1:Lsun/misc/URLClassPath$JarLoader;

    #@84
    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-get4(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    #@87
    move-result-object v5

    #@88
    const/4 v6, 0x0

    #@89
    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@8c
    .line 681
    .end local v2    # "jarURL":Ljava/net/URL;
    .end local v4    # "urlNoFragString":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 694
    .end local v1    # "i":I
    .end local v3    # "jarfiles":[Ljava/lang/String;
    :cond_2
    return-object v8

    #@90
    .line 689
    .restart local v1    # "i":I
    .restart local v3    # "jarfiles":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@91
    .local v0, "e":Ljava/net/MalformedURLException;
    goto :goto_1
.end method
