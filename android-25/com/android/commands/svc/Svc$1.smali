.class final Lcom/android/commands/svc/Svc$1;
.super Lcom/android/commands/svc/Svc$Command;
.source "Svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/svc/Svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/commands/svc/Svc$1;->shortHelp()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 12
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    .line 67
    array-length v6, p1

    #@3
    if-ne v6, v11, :cond_0

    #@5
    .line 68
    aget-object v6, p1, v10

    #@7
    invoke-static {v6}, Lcom/android/commands/svc/Svc;->-wrap0(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    #@a
    move-result-object v1

    #@b
    .line 69
    .local v1, "c":Lcom/android/commands/svc/Svc$Command;
    if-eqz v1, :cond_0

    #@d
    .line 70
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f
    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->longHelp()Ljava/lang/String;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    .line 71
    return-void

    #@17
    .line 75
    .end local v1    # "c":Lcom/android/commands/svc/Svc$Command;
    :cond_0
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@19
    const-string/jumbo v7, "Available commands:"

    #@1c
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f
    .line 76
    sget-object v6, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    #@21
    array-length v0, v6

    #@22
    .line 77
    .local v0, "N":I
    const/4 v5, 0x0

    #@23
    .line 78
    .local v5, "maxlen":I
    const/4 v3, 0x0

    #@24
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    #@26
    .line 79
    sget-object v6, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    #@28
    aget-object v1, v6, v3

    #@2a
    .line 80
    .restart local v1    # "c":Lcom/android/commands/svc/Svc$Command;
    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@31
    move-result v4

    #@32
    .line 81
    .local v4, "len":I
    if-ge v5, v4, :cond_1

    #@34
    .line 82
    move v5, v4

    #@35
    .line 78
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_0

    #@38
    .line 85
    .end local v1    # "c":Lcom/android/commands/svc/Svc$Command;
    .end local v4    # "len":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v7, "    %-"

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    const-string/jumbo v7, "s    %s"

    #@4b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    .line 86
    .local v2, "format":Ljava/lang/String;
    const/4 v3, 0x0

    #@54
    :goto_1
    if-ge v3, v0, :cond_3

    #@56
    .line 87
    sget-object v6, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    #@58
    aget-object v1, v6, v3

    #@5a
    .line 88
    .restart local v1    # "c":Lcom/android/commands/svc/Svc$Command;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5c
    new-array v7, v11, [Ljava/lang/Object;

    #@5e
    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    const/4 v9, 0x0

    #@63
    aput-object v8, v7, v9

    #@65
    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->shortHelp()Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    aput-object v8, v7, v10

    #@6b
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@72
    .line 86
    add-int/lit8 v3, v3, 0x1

    #@74
    goto :goto_1

    #@75
    .line 66
    .end local v1    # "c":Lcom/android/commands/svc/Svc$Command;
    :cond_3
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 61
    const-string/jumbo v0, "Show information about the subcommands"

    #@3
    return-object v0
.end method
