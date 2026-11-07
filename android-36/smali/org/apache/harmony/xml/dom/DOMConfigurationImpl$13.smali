.class Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;
.super Ljava/lang/Object;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMStringList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->internalGetParameterNames()Lorg/w3c/dom/DOMStringList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$result:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 373
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-$$Nest$sfgetPARAMETERS()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 370
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api item(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 367
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;->val$result:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method
