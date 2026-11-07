.class public Lsun/misc/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist err(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 121
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static blacklist out(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static blacklist subst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "patt"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 44
    .local v0, "args":[Ljava/lang/String;
    invoke-static {p0, v0}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist subst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "patt"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 49
    .local v0, "args":[Ljava/lang/String;
    invoke-static {p0, v0}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist subst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "patt"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 55
    .local v0, "args":[Ljava/lang/String;
    invoke-static {p0, v0}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist subst(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "patt"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 61
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_44

    if-ge v2, v1, :cond_44

    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 63
    .local v3, "ch":C
    const/16 v4, 0x25

    if-ne v3, v4, :cond_3e

    .line 64
    if-eq v2, v1, :cond_41

    .line 65
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 66
    .local v4, "index":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_33

    .line 67
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 69
    :cond_33
    array-length v5, p1

    if-ge v4, v5, :cond_3d

    .line 70
    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 73
    .end local v4    # "index":I
    :cond_3d
    :goto_3d
    goto :goto_41

    .line 75
    :cond_3e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    .end local v3    # "ch":C
    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 78
    .end local v2    # "i":I
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist substProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .line 82
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist substProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .line 86
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist substProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;

    .line 91
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lsun/misc/MessageUtils;->subst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist where()V
    .registers 6

    .line 133
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 134
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 135
    .local v1, "es":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_2e

    .line 138
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 140
    .end local v2    # "i":I
    :cond_2e
    return-void
.end method
