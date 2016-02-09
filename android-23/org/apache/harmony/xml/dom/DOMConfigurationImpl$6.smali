.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;
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
    .line 151
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
    .line 156
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get4(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 157
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get3(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 156
    :cond_0
    const/4 v0, 0x0

    #@d
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 158
    :cond_1
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get1(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    .line 159
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get11(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    #@1b
    move-result v0

    #@1c
    .line 156
    if-eqz v0, :cond_0

    #@1e
    .line 160
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get2(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    #@21
    move-result v0

    #@22
    .line 156
    if-eqz v0, :cond_0

    #@24
    .line 161
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get6(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    #@27
    move-result v0

    #@28
    goto :goto_0
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 164
    check-cast p2, Ljava/lang/Boolean;

    #@4
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 168
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set3(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #@d
    .line 169
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set2(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #@10
    .line 170
    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set0(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #@13
    .line 171
    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set10(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #@16
    .line 172
    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set1(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #@19
    .line 173
    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set5(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    #@1c
    .line 163
    :cond_0
    return-void
.end method
