.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$5;
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
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public canSet(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 133
    if-eqz p2, :cond_0

    #@2
    instance-of v0, p2, Lorg/w3c/dom/DOMErrorHandler;

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x1

    #@6
    goto :goto_0
.end method

.method public get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    #@0
    .prologue
    .line 127
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get5(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Lorg/w3c/dom/DOMErrorHandler;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .locals 0
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 130
    check-cast p2, Lorg/w3c/dom/DOMErrorHandler;

    #@2
    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p1, p2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set4(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Lorg/w3c/dom/DOMErrorHandler;)Lorg/w3c/dom/DOMErrorHandler;

    #@5
    .line 129
    return-void
.end method
