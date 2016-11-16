.class public Lcom/android/commands/monkey/MonkeyCommandEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyCommandEvent.java"


# instance fields
.field private mCmd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 32
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 33
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    #@6
    .line 31
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 6
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    .line 38
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 41
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@7
    move-result-object v3

    #@8
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    #@a
    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    #@d
    move-result-object v1

    #@e
    .line 42
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    #@11
    move-result v2

    #@12
    .line 43
    .local v2, "status":I
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "// Shell command "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, " status was "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 49
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "status":I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    #@39
    return v3

    #@3a
    .line 44
    :catch_0
    move-exception v0

    #@3b
    .line 45
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d
    new-instance v4, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v5, "// Exception from "

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyCommandEvent;->mCmd:Ljava/lang/String;

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    const-string/jumbo v5, ":"

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    .line 46
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5f
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@66
    goto :goto_0
.end method
