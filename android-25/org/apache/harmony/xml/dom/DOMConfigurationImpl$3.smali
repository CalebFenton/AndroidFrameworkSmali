.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$3;
.super Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;
.source "DOMConfigurationImpl.java"


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
    .line 90
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    #@0
    .prologue
    .line 92
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get3(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .locals 2
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 95
    check-cast p2, Ljava/lang/Boolean;

    #@3
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 96
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set2(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #@c
    .line 97
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set9(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #@f
    .line 94
    :goto_0
    return-void

    #@10
    .line 99
    :cond_0
    const/4 v0, 0x0

    #@11
    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set2(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #@14
    goto :goto_0
.end method
