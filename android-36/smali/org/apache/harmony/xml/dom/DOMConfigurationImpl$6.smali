.class Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;
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

    .line 151
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .registers 3
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .line 156
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fgetentities(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fgetdatatypeNormalization(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fgetcdataSections(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fgetwellFormed(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fgetcomments(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fgetnamespaces(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .registers 4
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    .line 164
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 168
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fputentities(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V

    .line 169
    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fputdatatypeNormalization(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V

    .line 170
    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fputcdataSections(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V

    .line 171
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fputwellFormed(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V

    .line 172
    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fputcomments(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V

    .line 173
    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fputnamespaces(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V

    .line 175
    :cond_1d
    return-void
.end method
