.class public Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;
.super Lorg/w3c/dom/DOMException;
.source "DTMNamedNodeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DTMException"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x730cd7a4dcdecc2eL


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
    .param p2, "code"    # S

    #@0
    .prologue
    .line 295
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;->this$0:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    #@2
    .line 297
    const-string/jumbo v0, ""

    #@5
    invoke-direct {p0, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@8
    .line 295
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;SLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
    .param p2, "code"    # S
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 284
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;->this$0:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    #@2
    .line 286
    invoke-direct {p0, p2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@5
    .line 284
    return-void
.end method
