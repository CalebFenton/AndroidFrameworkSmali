.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrecedingSiblingTraverser"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1359
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public greylist next(II)I
    .registers 3

    .line 1372
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getPreviousSibling(I)I

    move-result p0

    return p0
.end method

.method public greylist next(III)I
    .registers 4

    .line 1388
    :cond_0
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getPreviousSibling(I)I

    move-result p2

    const/4 p1, -0x1

    if-eq p1, p2, :cond_12

    .line 1390
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result p1

    if-ne p1, p3, :cond_0

    return p2

    :cond_12
    return p1
.end method
