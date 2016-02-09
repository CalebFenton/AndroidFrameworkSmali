.class public final Lorg/apache/harmony/xml/dom/CommentImpl;
.super Lorg/apache/harmony/xml/dom/CharacterDataImpl;
.source "CommentImpl.java"

# interfaces
.implements Lorg/w3c/dom/Comment;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@3
    .line 34
    return-void
.end method


# virtual methods
.method public containsDashDash()Z
    .locals 2

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/CommentImpl;->buffer:Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v1, "--"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    const/4 v1, -0x1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, "#comment"

    #@3
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 45
    const/16 v0, 0x8

    #@2
    return v0
.end method
