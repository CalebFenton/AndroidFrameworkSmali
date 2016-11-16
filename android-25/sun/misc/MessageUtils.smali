.class public Lsun/misc/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static err(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5
    .line 118
    return-void
.end method

.method public static out(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5
    .line 124
    return-void
.end method

.method public static subst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "patt"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    .line 44
    .local v0, "args":[Ljava/lang/String;
    invoke-static {p0, v0}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method public static subst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "patt"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p2, v0, v1

    #@9
    .line 49
    .local v0, "args":[Ljava/lang/String;
    invoke-static {p0, v0}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public static subst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "patt"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    const/4 v1, 0x3

    #@1
    new-array v0, v1, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p2, v0, v1

    #@9
    const/4 v1, 0x2

    #@a
    aput-object p3, v0, v1

    #@c
    .line 55
    .local v0, "args":[Ljava/lang/String;
    invoke-static {p0, v0}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public static subst(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "patt"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 59
    new-instance v4, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 60
    .local v4, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    .line 61
    .local v3, "len":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@c
    if-ge v1, v3, :cond_3

    #@e
    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 63
    .local v0, "ch":C
    const/16 v5, 0x25

    #@14
    if-ne v0, v5, :cond_2

    #@16
    .line 64
    if-eq v1, v3, :cond_0

    #@18
    .line 65
    add-int/lit8 v5, v1, 0x1

    #@1a
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v5

    #@1e
    const/16 v6, 0xa

    #@20
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    #@23
    move-result v2

    #@24
    .line 66
    .local v2, "index":I
    const/4 v5, -0x1

    #@25
    if-ne v2, v5, :cond_1

    #@27
    .line 67
    add-int/lit8 v5, v1, 0x1

    #@29
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 68
    add-int/lit8 v1, v1, 0x1

    #@32
    .line 61
    .end local v2    # "index":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 69
    .restart local v2    # "index":I
    :cond_1
    array-length v5, p1

    #@36
    if-ge v2, v5, :cond_0

    #@38
    .line 70
    aget-object v5, p1, v2

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 71
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 75
    .end local v2    # "index":I
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@43
    goto :goto_1

    #@44
    .line 78
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    return-object v5
.end method

.method public static substProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static substProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static substProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2, p3}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static where()V
    .locals 6

    #@0
    .prologue
    .line 133
    new-instance v2, Ljava/lang/Throwable;

    #@2
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@5
    .line 134
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    .line 135
    .local v0, "es":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x1

    #@a
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@b
    if-ge v1, v3, :cond_0

    #@d
    .line 138
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "\t"

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    aget-object v5, v0, v1

    #@1d
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c
    .line 135
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 132
    :cond_0
    return-void
.end method
