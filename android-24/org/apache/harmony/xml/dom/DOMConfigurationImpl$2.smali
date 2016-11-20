.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$2;
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
    .line 77
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
    .line 79
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get2(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

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
    .locals 1
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 82
    check-cast p2, Ljava/lang/Boolean;

    #@2
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@5
    move-result v0

    #@6
    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set1(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #@9
    .line 81
    return-void
.end method
