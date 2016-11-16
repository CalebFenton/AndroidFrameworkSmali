.class Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;
.super Ljava/lang/Object;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMStringList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->getParameterNames()Lorg/w3c/dom/DOMStringList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

.field final synthetic val$result:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
    .param p2, "val$result"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 361
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->this$0:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    #@2
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 369
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get0()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public item(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    if-ge p1, v0, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    #@7
    aget-object v0, v0, p1

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
