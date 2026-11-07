.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedPrecedingIterator"
.end annotation


# instance fields
.field private final greylist _nodeType:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
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

    .line 972
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    .line 973
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 7

    .line 983
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 984
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_nodeType:I

    const/4 v2, -0x1

    const/16 v3, 0xe

    if-lt v1, v3, :cond_27

    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 990
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    if-gez v3, :cond_11

    :goto_f
    move v0, v2

    goto :goto_52

    .line 994
    :cond_11
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    aget v4, v4, v3

    if-lt v0, v4, :cond_1e

    add-int/lit8 v3, v3, -0x1

    .line 995
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    if-gez v3, :cond_9

    goto :goto_f

    .line 1000
    :cond_1e
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    if-ne v3, v1, :cond_9

    goto :goto_52

    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 1011
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    if-gez v4, :cond_2e

    goto :goto_f

    .line 1015
    :cond_2e
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_stack:[I

    aget v5, v5, v4

    if-lt v0, v5, :cond_3b

    add-int/lit8 v4, v4, -0x1

    .line 1016
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;->_sp:I

    if-gez v4, :cond_27

    goto :goto_f

    .line 1022
    :cond_3b
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v4

    if-ge v4, v3, :cond_46

    if-ne v4, v1, :cond_27

    goto :goto_52

    .line 1029
    :cond_46
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget-object v5, v5, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v4

    if-ne v4, v1, :cond_27

    .line 1037
    :goto_52
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    if-ne v0, v2, :cond_57

    return v2

    .line 1039
    :cond_57
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0
.end method
