.class Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$9;
.super Ljava/lang/Object;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;


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

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist canSet(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    .line 232
    if-eqz p2, :cond_9

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public blacklist get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .registers 3
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .line 226
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fgetschemaType(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .registers 4
    .param p1, "config"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "value"    # Ljava/lang/Object;

    .line 229
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$fputschemaType(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/String;)V

    .line 230
    return-void
.end method
