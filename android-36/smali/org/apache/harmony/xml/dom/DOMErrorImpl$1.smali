.class Lorg/apache/harmony/xml/dom/DOMErrorImpl$1;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/DOMErrorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getByteOffset()I
    .registers 2

    .line 32
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 29
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 26
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getRelatedNode()Lorg/w3c/dom/Node;
    .registers 2

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getUri()Ljava/lang/String;
    .registers 2

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getUtf16Offset()I
    .registers 2

    .line 35
    const/4 v0, -0x1

    return v0
.end method
