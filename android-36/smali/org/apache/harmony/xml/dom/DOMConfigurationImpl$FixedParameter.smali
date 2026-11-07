.class Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;
.super Ljava/lang/Object;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FixedParameter"
.end annotation


# instance fields
.field final blacklist onlyValue:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "onlyValue"    # Ljava/lang/Object;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;->onlyValue:Ljava/lang/Object;

    .line 309
    return-void
.end method


# virtual methods
.method public blacklist canSet(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;->onlyValue:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .registers 3
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .line 311
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;->onlyValue:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .registers 6
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;->onlyValue:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 318
    return-void

    .line 315
    :cond_9
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
