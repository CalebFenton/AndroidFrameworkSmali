.class public final Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "ProcessingInstructionImpl.java"

# interfaces
.implements Lorg/w3c/dom/ProcessingInstruction;


# instance fields
.field private blacklist data:Ljava/lang/String;

.field private blacklist target:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 42
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist test-api getData()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNodeType()S
    .registers 2

    .line 57
    const/4 v0, 0x7

    return v0
.end method

.method public whitelist test-api getNodeValue()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getTarget()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api setData(Ljava/lang/String;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->data:Ljava/lang/String;

    .line 71
    return-void
.end method
