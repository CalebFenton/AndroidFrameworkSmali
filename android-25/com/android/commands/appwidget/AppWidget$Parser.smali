.class Lcom/android/commands/appwidget/AppWidget$Parser;
.super Ljava/lang/Object;
.source "AppWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/appwidget/AppWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parser"
.end annotation


# static fields
.field private static final ARGUMENT_GRANT_BIND:Ljava/lang/String; = "grantbind"

.field private static final ARGUMENT_PACKAGE:Ljava/lang/String; = "--package"

.field private static final ARGUMENT_PREFIX:Ljava/lang/String; = "--"

.field private static final ARGUMENT_REVOKE_BIND:Ljava/lang/String; = "revokebind"

.field private static final ARGUMENT_USER:Ljava/lang/String; = "--user"

.field private static final VALUE_USER_CURRENT:Ljava/lang/String; = "current"


# instance fields
.field private final mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    new-instance v0, Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    #@5
    invoke-direct {v0, p1}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;-><init>([Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    #@a
    .line 64
    return-void
.end method

.method private argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "argument"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    #@2
    invoke-static {v1}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;->-wrap0(Lcom/android/commands/appwidget/AppWidget$Tokenizer;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 112
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    const-string/jumbo v1, "--"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "No value for argument: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 115
    :cond_1
    return-object v0
.end method

.method private parseSetGrantBindAppWidgetPermissionCommand(Z)Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;
    .locals 7
    .param p1, "granted"    # Z

    #@0
    .prologue
    .line 87
    const/4 v1, 0x0

    #@1
    .line 88
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    #@2
    .line 89
    .end local v1    # "packageName":Ljava/lang/String;
    .local v3, "userId":I
    :goto_0
    iget-object v4, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    #@4
    invoke-static {v4}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;->-wrap0(Lcom/android/commands/appwidget/AppWidget$Tokenizer;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@a
    .line 90
    const-string/jumbo v4, "--package"

    #@d
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 91
    invoke-direct {p0, v0}, Lcom/android/commands/appwidget/AppWidget$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .local v1, "packageName":Ljava/lang/String;
    goto :goto_0

    #@18
    .line 92
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "--user"

    #@1b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 93
    invoke-direct {p0, v0}, Lcom/android/commands/appwidget/AppWidget$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 94
    .local v2, "user":Ljava/lang/String;
    const-string/jumbo v4, "current"

    #@28
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 95
    const/4 v3, -0x2

    #@2f
    goto :goto_0

    #@30
    .line 97
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@33
    move-result v3

    #@34
    goto :goto_0

    #@35
    .line 100
    .end local v2    # "user":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@37
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "Unsupported argument: "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v4

    #@4f
    .line 103
    :cond_3
    if-nez v1, :cond_4

    #@51
    .line 104
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@53
    const-string/jumbo v5, "Package name not specified. Did you specify --package argument?"

    #@56
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v4

    #@5a
    .line 107
    :cond_4
    new-instance v4, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;

    #@5c
    invoke-direct {v4, v1, p1, v3}, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;-><init>(Ljava/lang/String;ZI)V

    #@5f
    return-object v4
.end method


# virtual methods
.method public parseCommand()Ljava/lang/Runnable;
    .locals 5

    #@0
    .prologue
    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    #@2
    invoke-static {v2}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;->-wrap0(Lcom/android/commands/appwidget/AppWidget$Tokenizer;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 71
    .local v1, "operation":Ljava/lang/String;
    const-string/jumbo v2, "grantbind"

    #@9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 72
    const/4 v2, 0x1

    #@10
    invoke-direct {p0, v2}, Lcom/android/commands/appwidget/AppWidget$Parser;->parseSetGrantBindAppWidgetPermissionCommand(Z)Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 73
    :cond_0
    const-string/jumbo v2, "revokebind"

    #@18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 74
    const/4 v2, 0x0

    #@1f
    invoke-direct {p0, v2}, Lcom/android/commands/appwidget/AppWidget$Parser;->parseSetGrantBindAppWidgetPermissionCommand(Z)Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 76
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "Unsupported operation: "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 78
    .end local v1    # "operation":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3f
    .line 79
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@41
    const-string/jumbo v3, "usage: adb shell appwidget [subcommand] [options]\n\nusage: adb shell appwidget grantbind --package <PACKAGE>  [--user <USER_ID> | current]\n  <PACKAGE> an Android package name.\n  <USER_ID> The user id under which the package is installed.\n  Example:\n  # Grant the \"foo.bar.baz\" package to bind app widgets for the current user.\n  adb shell grantbind --package foo.bar.baz --user current\n\nusage: adb shell appwidget revokebind --package <PACKAGE> [--user <USER_ID> | current]\n  <PACKAGE> an Android package name.\n  <USER_ID> The user id under which the package is installed.\n  Example:\n  # Revoke the permisison to bind app widgets from the \"foo.bar.baz\" package.\n  adb shell revokebind --package foo.bar.baz --user current\n\n"

    #@44
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@47
    .line 80
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@49
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v4, "[ERROR] "

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@64
    .line 81
    const/4 v2, 0x0

    #@65
    return-object v2
.end method
