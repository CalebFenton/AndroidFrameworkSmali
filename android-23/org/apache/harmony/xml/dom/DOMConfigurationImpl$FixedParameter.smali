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
.field final onlyValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "onlyValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 308
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;->onlyValue:Ljava/lang/Object;

    #@5
    .line 307
    return-void
.end method


# virtual methods
.method public canSet(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;->onlyValue:Ljava/lang/Object;

    #@2
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;->onlyValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;->onlyValue:Ljava/lang/Object;

    #@2
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 315
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@a
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Unsupported value: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 315
    const/16 v2, 0x9

    #@20
    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 313
    :cond_0
    return-void
.end method
