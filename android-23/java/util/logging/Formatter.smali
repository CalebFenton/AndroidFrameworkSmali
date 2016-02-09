.class public abstract Ljava/util/logging/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
.end method

.method public formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 6
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 65
    .local v3, "pattern":Ljava/lang/String;
    const/4 v4, 0x0

    #@5
    .line 67
    .local v4, "rb":Ljava/util/ResourceBundle;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    #@8
    move-result-object v4

    #@9
    .local v4, "rb":Ljava/util/ResourceBundle;
    if-eqz v4, :cond_0

    #@b
    .line 69
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v3

    #@f
    .line 74
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    #@11
    .line 75
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    .line 80
    .local v2, "params":[Ljava/lang/Object;
    const-string/jumbo v5, "{0"

    #@18
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1b
    move-result v5

    #@1c
    if-ltz v5, :cond_1

    #@1e
    if-eqz v2, :cond_1

    #@20
    array-length v5, v2

    #@21
    if-lez v5, :cond_1

    #@23
    .line 82
    :try_start_1
    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@26
    move-result-object v3

    #@27
    .line 88
    .end local v2    # "params":[Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v3

    #@28
    .line 70
    :catch_0
    move-exception v0

    #@29
    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    goto :goto_0

    #@2e
    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "params":[Ljava/lang/Object;
    :catch_1
    move-exception v1

    #@2f
    .line 84
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    goto :goto_1
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 101
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    #@0
    .prologue
    .line 114
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method
