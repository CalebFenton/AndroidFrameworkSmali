.class final Lorg/apache/xml/serializer/dom3/DOMErrorHandlerImpl;
.super Ljava/lang/Object;
.source "DOMErrorHandlerImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMErrorHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public handleError(Lorg/w3c/dom/DOMError;)Z
    .locals 5
    .param p1, "error"    # Lorg/w3c/dom/DOMError;

    #@0
    .prologue
    .line 48
    const/4 v0, 0x1

    #@1
    .line 49
    .local v0, "fail":Z
    const/4 v1, 0x0

    #@2
    .line 50
    .local v1, "severity":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    #@5
    move-result v2

    #@6
    const/4 v3, 0x1

    #@7
    if-ne v2, v3, :cond_1

    #@9
    .line 51
    const/4 v0, 0x0

    #@a
    .line 52
    const-string/jumbo v1, "[Warning]"

    #@d
    .line 59
    .end local v1    # "severity":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, ": "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getMessage()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, "\t"

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@35
    .line 60
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@37
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "Type : "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getType()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    const-string/jumbo v4, "\t"

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    const-string/jumbo v4, "Related Data: "

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    .line 61
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getRelatedData()Ljava/lang/Object;

    #@5c
    move-result-object v4

    #@5d
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    .line 61
    const-string/jumbo v4, "\t"

    #@64
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    .line 61
    const-string/jumbo v4, "Related Exception: "

    #@6b
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    .line 62
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getRelatedException()Ljava/lang/Object;

    #@72
    move-result-object v4

    #@73
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7e
    .line 64
    return v0

    #@7f
    .line 53
    .restart local v1    # "severity":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    #@82
    move-result v2

    #@83
    const/4 v3, 0x2

    #@84
    if-ne v2, v3, :cond_2

    #@86
    .line 54
    const-string/jumbo v1, "[Error]"

    #@89
    .local v1, "severity":Ljava/lang/String;
    goto :goto_0

    #@8a
    .line 55
    .local v1, "severity":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    #@8d
    move-result v2

    #@8e
    const/4 v3, 0x3

    #@8f
    if-ne v2, v3, :cond_0

    #@91
    .line 56
    const-string/jumbo v1, "[Fatal Error]"

    #@94
    .local v1, "severity":Ljava/lang/String;
    goto/16 :goto_0
.end method
