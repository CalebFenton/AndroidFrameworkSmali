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
.field static final whitelist serialVersionUID:J = -0x730cd7a4dcdecc2eL


# instance fields
.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;->this$0:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    .line 297
    const-string p1, ""

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;SLjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;->this$0:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    .line 286
    invoke-direct {p0, p2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-void
.end method
