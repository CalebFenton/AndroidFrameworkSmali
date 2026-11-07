.class Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$3;
.super Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;
.source "DOMConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .registers 3
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .line 92
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fgetdatatypeNormalization(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .registers 4
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    .line 95
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 96
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fputdatatypeNormalization(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V

    .line 97
    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fputvalidate(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V

    goto :goto_15

    .line 99
    :cond_11
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fputdatatypeNormalization(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V

    .line 101
    :goto_15
    return-void
.end method
