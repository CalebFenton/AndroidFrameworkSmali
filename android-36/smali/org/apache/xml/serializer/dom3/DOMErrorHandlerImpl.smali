.class final Lorg/apache/xml/serializer/dom3/DOMErrorHandlerImpl;
.super Ljava/lang/Object;
.source "DOMErrorHandlerImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMErrorHandler;


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api handleError(Lorg/w3c/dom/DOMError;)Z
    .registers 5

    .line 50
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const/4 v0, 0x0

    .line 52
    const-string p0, "[Warning]"

    goto :goto_20

    .line 53
    :cond_b
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_15

    .line 54
    const-string p0, "[Error]"

    goto :goto_20

    .line 55
    :cond_15
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getSeverity()S

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1f

    .line 56
    const-string p0, "[Fatal Error]"

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    .line 59
    :goto_20
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tRelated Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getRelatedData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\tRelated Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-interface {p1}, Lorg/w3c/dom/DOMError;->getRelatedException()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
