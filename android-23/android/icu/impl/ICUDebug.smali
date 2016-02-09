.class public final Landroid/icu/impl/ICUDebug;
.super Ljava/lang/Object;
.source "ICUDebug.java"


# static fields
.field private static debug:Z

.field private static help:Z

.field public static final isJDK14OrHigher:Z

.field public static final javaVersion:Landroid/icu/util/VersionInfo;

.field public static final javaVersionString:Ljava/lang/String;

.field private static params:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 15
    :try_start_0
    const-string/jumbo v2, "ICUDebug"

    #@5
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    sput-object v2, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 20
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_0
    sget-object v2, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@d
    if-eqz v2, :cond_2

    #@f
    move v2, v3

    #@10
    :goto_1
    sput-boolean v2, Landroid/icu/impl/ICUDebug;->debug:Z

    #@12
    .line 21
    sget-boolean v2, Landroid/icu/impl/ICUDebug;->debug:Z

    #@14
    if-eqz v2, :cond_3

    #@16
    sget-object v2, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@18
    const-string/jumbo v5, ""

    #@1b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_0

    #@21
    sget-object v2, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@23
    const-string/jumbo v5, "help"

    #@26
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@29
    move-result v2

    #@2a
    const/4 v5, -0x1

    #@2b
    if-eq v2, v5, :cond_3

    #@2d
    :cond_0
    move v2, v3

    #@2e
    :goto_2
    sput-boolean v2, Landroid/icu/impl/ICUDebug;->help:Z

    #@30
    .line 24
    sget-boolean v2, Landroid/icu/impl/ICUDebug;->debug:Z

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 25
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@36
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v6, "\nICUDebug="

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    sget-object v6, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    .line 29
    :cond_1
    const-string/jumbo v2, "java.version"

    #@52
    const-string/jumbo v5, "0"

    #@55
    invoke-static {v2, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    sput-object v2, Landroid/icu/impl/ICUDebug;->javaVersionString:Ljava/lang/String;

    #@5b
    .line 71
    sget-object v2, Landroid/icu/impl/ICUDebug;->javaVersionString:Ljava/lang/String;

    #@5d
    invoke-static {v2}, Landroid/icu/impl/ICUDebug;->getInstanceLenient(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    #@60
    move-result-object v2

    #@61
    sput-object v2, Landroid/icu/impl/ICUDebug;->javaVersion:Landroid/icu/util/VersionInfo;

    #@63
    .line 73
    const-string/jumbo v2, "1.4.0"

    #@66
    invoke-static {v2}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    #@69
    move-result-object v1

    #@6a
    .line 75
    .end local v0    # "e":Ljava/lang/SecurityException;
    .local v1, "java14Version":Landroid/icu/util/VersionInfo;
    sget-object v2, Landroid/icu/impl/ICUDebug;->javaVersion:Landroid/icu/util/VersionInfo;

    #@6c
    invoke-virtual {v2, v1}, Landroid/icu/util/VersionInfo;->compareTo(Landroid/icu/util/VersionInfo;)I

    #@6f
    move-result v2

    #@70
    if-ltz v2, :cond_4

    #@72
    :goto_3
    sput-boolean v3, Landroid/icu/impl/ICUDebug;->isJDK14OrHigher:Z

    #@74
    .line 11
    return-void

    #@75
    .end local v1    # "java14Version":Landroid/icu/util/VersionInfo;
    .restart local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    move v2, v4

    #@76
    .line 20
    goto :goto_1

    #@77
    :cond_3
    move v2, v4

    #@78
    .line 21
    goto :goto_2

    #@79
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "java14Version":Landroid/icu/util/VersionInfo;
    :cond_4
    move v3, v4

    #@7a
    .line 75
    goto :goto_3

    #@7b
    .line 17
    .end local v1    # "java14Version":Landroid/icu/util/VersionInfo;
    :catch_0
    move-exception v0

    #@7c
    .restart local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static enabled()Z
    .locals 1

    #@0
    .prologue
    .line 79
    sget-boolean v0, Landroid/icu/impl/ICUDebug;->debug:Z

    #@2
    return v0
.end method

.method public static enabled(Ljava/lang/String;)Z
    .locals 4
    .param p0, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    sget-boolean v1, Landroid/icu/impl/ICUDebug;->debug:Z

    #@2
    if-eqz v1, :cond_2

    #@4
    .line 84
    sget-object v1, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@6
    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    const/4 v2, -0x1

    #@b
    if-eq v1, v2, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    .line 85
    .local v0, "result":Z
    :goto_0
    sget-boolean v1, Landroid/icu/impl/ICUDebug;->help:Z

    #@10
    if-eqz v1, :cond_0

    #@12
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "\nICUDebug.enabled("

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, ") = "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@36
    .line 86
    :cond_0
    return v0

    #@37
    .line 84
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    #@38
    .restart local v0    # "result":Z
    goto :goto_0

    #@39
    .line 88
    .end local v0    # "result":Z
    :cond_2
    const/4 v1, 0x0

    #@3a
    return v1
.end method

.method public static getInstanceLenient(Ljava/lang/String;)Landroid/icu/util/VersionInfo;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x0

    #@2
    .line 36
    const/4 v6, 0x4

    #@3
    new-array v4, v6, [I

    #@5
    .line 37
    .local v4, "ver":[I
    const/4 v3, 0x0

    #@6
    .line 38
    .local v3, "numeric":Z
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    const/4 v5, 0x0

    #@8
    .line 39
    .local v5, "vidx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v6

    #@c
    if-ge v1, v6, :cond_1

    #@e
    .line 40
    add-int/lit8 v2, v1, 0x1

    #@10
    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 41
    .local v0, "c":C
    const/16 v6, 0x30

    #@16
    if-lt v0, v6, :cond_0

    #@18
    const/16 v6, 0x39

    #@1a
    if-le v0, v6, :cond_4

    #@1c
    .line 42
    :cond_0
    if-eqz v3, :cond_3

    #@1e
    .line 43
    if-ne v5, v9, :cond_2

    #@20
    move v1, v2

    #@21
    .line 67
    .end local v0    # "c":C
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    :goto_1
    aget v6, v4, v8

    #@23
    const/4 v7, 0x1

    #@24
    aget v7, v4, v7

    #@26
    const/4 v8, 0x2

    #@27
    aget v8, v4, v8

    #@29
    aget v9, v4, v9

    #@2b
    invoke-static {v6, v7, v8, v9}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@2e
    move-result-object v6

    #@2f
    return-object v6

    #@30
    .line 47
    .end local v1    # "i":I
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    #@31
    .line 48
    add-int/lit8 v5, v5, 0x1

    #@33
    :cond_3
    :goto_2
    move v1, v2

    #@34
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@35
    .line 51
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_4
    if-eqz v3, :cond_5

    #@37
    .line 52
    aget v6, v4, v5

    #@39
    mul-int/lit8 v6, v6, 0xa

    #@3b
    add-int/lit8 v7, v0, -0x30

    #@3d
    add-int/2addr v6, v7

    #@3e
    aput v6, v4, v5

    #@40
    .line 53
    aget v6, v4, v5

    #@42
    const/16 v7, 0xff

    #@44
    if-le v6, v7, :cond_3

    #@46
    .line 57
    aput v8, v4, v5

    #@48
    move v1, v2

    #@49
    .line 58
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    #@4a
    .line 61
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    const/4 v3, 0x1

    #@4b
    .line 62
    add-int/lit8 v6, v0, -0x30

    #@4d
    aput v6, v4, v5

    #@4f
    goto :goto_2
.end method

.method public static value(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 92
    const-string/jumbo v2, "false"

    #@4
    .line 93
    .local v2, "result":Ljava/lang/String;
    sget-boolean v3, Landroid/icu/impl/ICUDebug;->debug:Z

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 94
    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@a
    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 95
    .local v0, "index":I
    if-eq v0, v5, :cond_1

    #@10
    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    add-int/2addr v0, v3

    #@15
    .line 97
    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@17
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1a
    move-result v3

    #@1b
    if-le v3, v0, :cond_3

    #@1d
    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@1f
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v3

    #@23
    const/16 v4, 0x3d

    #@25
    if-ne v3, v4, :cond_3

    #@27
    .line 98
    add-int/lit8 v0, v0, 0x1

    #@29
    .line 99
    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@2b
    const-string/jumbo v4, ","

    #@2e
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@31
    move-result v1

    #@32
    .line 100
    .local v1, "limit":I
    sget-object v3, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@34
    if-ne v1, v5, :cond_0

    #@36
    sget-object v4, Landroid/icu/impl/ICUDebug;->params:Ljava/lang/String;

    #@38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@3b
    move-result v1

    #@3c
    .end local v1    # "limit":I
    :cond_0
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 106
    :cond_1
    :goto_0
    sget-boolean v3, Landroid/icu/impl/ICUDebug;->help:Z

    #@42
    if-eqz v3, :cond_2

    #@44
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "\nICUDebug.value("

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    const-string/jumbo v5, ") = "

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 108
    .end local v0    # "index":I
    :cond_2
    return-object v2

    #@69
    .line 102
    .restart local v0    # "index":I
    :cond_3
    const-string/jumbo v2, "true"

    #@6c
    goto :goto_0
.end method
