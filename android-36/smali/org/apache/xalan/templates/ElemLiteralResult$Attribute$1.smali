.class Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;
.super Ljava/lang/Object;
.source "ElemLiteralResult.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getChildNodes()Lorg/w3c/dom/NodeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor greylist <init>(Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getLength()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
