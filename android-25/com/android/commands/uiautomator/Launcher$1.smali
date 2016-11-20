.class final Lcom/android/commands/uiautomator/Launcher$1;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uiautomator/Launcher;
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
    .line 99
    invoke-direct {p0, p1}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 102
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3
    const-string/jumbo v5, "Usage: uiautomator <subcommand> [options]\n"

    #@6
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 103
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b
    const-string/jumbo v5, "Available subcommands:\n"

    #@e
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@11
    .line 104
    invoke-static {}, Lcom/android/commands/uiautomator/Launcher;->-get0()[Lcom/android/commands/uiautomator/Launcher$Command;

    #@14
    move-result-object v5

    #@15
    array-length v6, v5

    #@16
    move v3, v4

    #@17
    :goto_0
    if-ge v3, v6, :cond_2

    #@19
    aget-object v0, v5, v3

    #@1b
    .line 105
    .local v0, "command":Lcom/android/commands/uiautomator/Launcher$Command;
    invoke-virtual {v0}, Lcom/android/commands/uiautomator/Launcher$Command;->shortHelp()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 106
    .local v2, "shortHelp":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/commands/uiautomator/Launcher$Command;->detailedOptions()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 107
    .local v1, "detailedOptions":Ljava/lang/String;
    if-nez v2, :cond_0

    #@25
    .line 108
    const-string/jumbo v2, ""

    #@28
    .line 110
    :cond_0
    if-nez v1, :cond_1

    #@2a
    .line 111
    const-string/jumbo v1, ""

    #@2d
    .line 113
    :cond_1
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2f
    const-string/jumbo v8, "%s: %s"

    #@32
    const/4 v9, 0x2

    #@33
    new-array v9, v9, [Ljava/lang/Object;

    #@35
    invoke-virtual {v0}, Lcom/android/commands/uiautomator/Launcher$Command;->name()Ljava/lang/String;

    #@38
    move-result-object v10

    #@39
    aput-object v10, v9, v4

    #@3b
    const/4 v10, 0x1

    #@3c
    aput-object v2, v9, v10

    #@3e
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@45
    .line 114
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@47
    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4a
    .line 104
    add-int/lit8 v3, v3, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 101
    .end local v0    # "command":Lcom/android/commands/uiautomator/Launcher$Command;
    .end local v1    # "detailedOptions":Ljava/lang/String;
    .end local v2    # "shortHelp":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 125
    const-string/jumbo v0, "displays help message"

    #@3
    return-object v0
.end method
