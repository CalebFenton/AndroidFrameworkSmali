.class public abstract Ljunit/runner/ClassPathTestCollector;
.super Ljava/lang/Object;
.source "ClassPathTestCollector.java"

# interfaces
.implements Ljunit/runner/TestCollector;


# static fields
.field static final SUFFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 17
    const-string/jumbo v0, ".class"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    sput v0, Ljunit/runner/ClassPathTestCollector;->SUFFIX_LENGTH:I

    #@9
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected classNameFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "classFileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    sget v3, Ljunit/runner/ClassPathTestCollector;->SUFFIX_LENGTH:I

    #@6
    sub-int/2addr v2, v3

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 76
    .local v0, "s":Ljava/lang/String;
    sget-char v2, Ljava/io/File;->separatorChar:C

    #@e
    const/16 v3, 0x2e

    #@10
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 77
    .local v1, "s2":Ljava/lang/String;
    const-string/jumbo v2, "."

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 78
    const/4 v2, 0x1

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    return-object v2

    #@23
    .line 79
    :cond_0
    return-object v1
.end method

.method public collectFilesInPath(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 2
    .param p1, "classPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-virtual {p0, p1}, Ljunit/runner/ClassPathTestCollector;->splitClassPath(Ljava/lang/String;)Ljava/util/Vector;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0, v1}, Ljunit/runner/ClassPathTestCollector;->collectFilesInRoots(Ljava/util/Vector;)Ljava/util/Hashtable;

    #@7
    move-result-object v0

    #@8
    .line 30
    .local v0, "result":Ljava/util/Hashtable;
    return-object v0
.end method

.method collectFilesInRoots(Ljava/util/Vector;)Ljava/util/Hashtable;
    .locals 4
    .param p1, "roots"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 34
    new-instance v1, Ljava/util/Hashtable;

    #@2
    const/16 v2, 0x64

    #@4
    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    #@7
    .line 35
    .local v1, "result":Ljava/util/Hashtable;
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@a
    move-result-object v0

    #@b
    .line 36
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 37
    new-instance v3, Ljava/io/File;

    #@13
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/lang/String;

    #@19
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    const-string/jumbo v2, ""

    #@1f
    invoke-virtual {p0, v3, v2, v1}, Ljunit/runner/ClassPathTestCollector;->gatherFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V

    #@22
    goto :goto_0

    #@23
    .line 38
    :cond_0
    return-object v1
.end method

.method public collectTests()Ljava/util/Enumeration;
    .locals 3

    #@0
    .prologue
    .line 23
    const-string/jumbo v2, "java.class.path"

    #@3
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 24
    .local v0, "classPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljunit/runner/ClassPathTestCollector;->collectFilesInPath(Ljava/lang/String;)Ljava/util/Hashtable;

    #@a
    move-result-object v1

    #@b
    .line 25
    .local v1, "result":Ljava/util/Hashtable;
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@e
    move-result-object v2

    #@f
    return-object v2
.end method

.method gatherFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 6
    .param p1, "classRoot"    # Ljava/io/File;
    .param p2, "classFileName"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 42
    new-instance v3, Ljava/io/File;

    #@2
    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5
    .line 43
    .local v3, "thisRoot":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_1

    #@b
    .line 44
    invoke-virtual {p0, p2}, Ljunit/runner/ClassPathTestCollector;->isTestClass(Ljava/lang/String;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 45
    invoke-virtual {p0, p2}, Ljunit/runner/ClassPathTestCollector;->classNameFromFile(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 46
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p3, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 48
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    return-void

    #@19
    .line 50
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 51
    .local v1, "contents":[Ljava/lang/String;
    if-eqz v1, :cond_2

    #@1f
    .line 52
    const/4 v2, 0x0

    #@20
    .local v2, "i":I
    :goto_0
    array-length v4, v1

    #@21
    if-ge v2, v4, :cond_2

    #@23
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    sget-char v5, Ljava/io/File;->separatorChar:C

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    aget-object v5, v1, v2

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {p0, p1, v4, p3}, Ljunit/runner/ClassPathTestCollector;->gatherFiles(Ljava/io/File;Ljava/lang/String;Ljava/util/Hashtable;)V

    #@3f
    .line 52
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_0

    #@42
    .line 41
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method protected isTestClass(Ljava/lang/String;)Z
    .locals 2
    .param p1, "classFileName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 68
    const-string/jumbo v1, ".class"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 69
    const/16 v1, 0x24

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v1

    #@10
    if-gez v1, :cond_0

    #@12
    .line 70
    const-string/jumbo v1, "Test"

    #@15
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@18
    move-result v1

    #@19
    if-lez v1, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 67
    :cond_0
    return v0
.end method

.method splitClassPath(Ljava/lang/String;)Ljava/util/Vector;
    .locals 4
    .param p1, "classPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    new-instance v0, Ljava/util/Vector;

    #@2
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@5
    .line 59
    .local v0, "result":Ljava/util/Vector;
    const-string/jumbo v3, "path.separator"

    #@8
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 60
    .local v1, "separator":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    #@e
    invoke-direct {v2, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 61
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 62
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1e
    goto :goto_0

    #@1f
    .line 63
    :cond_0
    return-object v0
.end method
