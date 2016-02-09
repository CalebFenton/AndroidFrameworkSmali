.class public abstract Lcom/android/internal/os/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# static fields
.field public static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field public static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public nextArg()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 123
    iget-object v1, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 124
    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    #@7
    .line 125
    .local v0, "arg":Ljava/lang/String;
    iput-object v3, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    #@9
    .line 126
    return-object v0

    #@a
    .line 127
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    #@c
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    #@e
    array-length v2, v2

    #@f
    if-ge v1, v2, :cond_1

    #@11
    .line 128
    iget-object v1, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    #@13
    iget v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    #@15
    add-int/lit8 v3, v2, 0x1

    #@17
    iput v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    #@19
    aget-object v1, v1, v2

    #@1b
    return-object v1

    #@1c
    .line 130
    :cond_1
    return-object v3
.end method

.method public nextArgRequired()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 140
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 141
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    #@8
    iget v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    #@a
    add-int/lit8 v3, v3, -0x1

    #@c
    aget-object v1, v2, v3

    #@e
    .line 142
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Argument expected after \""

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, "\""

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 144
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public nextOption()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x0

    #@3
    .line 90
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 91
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    #@9
    iget v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    #@b
    add-int/lit8 v3, v3, -0x1

    #@d
    aget-object v1, v2, v3

    #@f
    .line 92
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "No argument expected after \""

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, "\""

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 94
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    #@32
    iget-object v3, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    #@34
    array-length v3, v3

    #@35
    if-lt v2, v3, :cond_1

    #@37
    .line 95
    return-object v4

    #@38
    .line 97
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    #@3a
    iget v3, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    #@3c
    aget-object v0, v2, v3

    #@3e
    .line 98
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v2, "-"

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_2

    #@47
    .line 99
    return-object v4

    #@48
    .line 101
    :cond_2
    iget v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    #@4a
    add-int/lit8 v2, v2, 0x1

    #@4c
    iput v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    #@4e
    .line 102
    const-string/jumbo v2, "--"

    #@51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_3

    #@57
    .line 103
    return-object v4

    #@58
    .line 105
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5b
    move-result v2

    #@5c
    if-le v2, v6, :cond_5

    #@5e
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v2

    #@62
    const/16 v3, 0x2d

    #@64
    if-eq v2, v3, :cond_5

    #@66
    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@69
    move-result v2

    #@6a
    if-le v2, v5, :cond_4

    #@6c
    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    iput-object v2, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    #@72
    .line 108
    const/4 v2, 0x0

    #@73
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    return-object v2

    #@78
    .line 110
    :cond_4
    iput-object v4, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    #@7a
    .line 111
    return-object v0

    #@7b
    .line 114
    :cond_5
    iput-object v4, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    #@7d
    .line 115
    return-object v0
.end method

.method public abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onShowUsage(Ljava/io/PrintStream;)V
.end method

.method public run([Ljava/lang/String;)V
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 37
    array-length v2, p1

    #@2
    if-ge v2, v3, :cond_0

    #@4
    .line 38
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    invoke-virtual {p0, v2}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    #@9
    .line 39
    return-void

    #@a
    .line 42
    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BaseCommand;->mArgs:[Ljava/lang/String;

    #@c
    .line 43
    const/4 v2, 0x0

    #@d
    iput v2, p0, Lcom/android/internal/os/BaseCommand;->mNextArg:I

    #@f
    .line 44
    const/4 v2, 0x0

    #@10
    iput-object v2, p0, Lcom/android/internal/os/BaseCommand;->mCurArgData:Ljava/lang/String;

    #@12
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->onRun()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 36
    :goto_0
    return-void

    #@16
    .line 52
    :catch_0
    move-exception v0

    #@17
    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    #@1c
    .line 54
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    #@1f
    goto :goto_0

    #@20
    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@21
    .line 49
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@23
    invoke-virtual {p0, v2}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    #@26
    .line 50
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@28
    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    #@2b
    .line 51
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "Error: "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    goto :goto_0
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    #@5
    .line 71
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@a
    .line 72
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f
    .line 69
    return-void
.end method

.method public showUsage()V
    .locals 1

    #@0
    .prologue
    .line 62
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    #@5
    .line 61
    return-void
.end method
