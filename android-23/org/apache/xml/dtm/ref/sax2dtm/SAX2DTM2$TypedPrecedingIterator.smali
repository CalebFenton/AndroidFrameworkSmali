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
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 971
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@2
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    #@5
    .line 973
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_nodeType:I

    #@7
    .line 971
    return-void
.end method


# virtual methods
.method public next()I
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xe

    #@2
    const/4 v3, -0x1

    #@3
    .line 983
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_currentNode:I

    #@5
    .line 984
    .local v1, "node":I
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_nodeType:I

    #@7
    .line 986
    .local v2, "nodeType":I
    if-lt v2, v6, :cond_3

    #@9
    .line 988
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@b
    .line 990
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    #@d
    if-gez v4, :cond_1

    #@f
    .line 991
    const/4 v1, -0x1

    #@10
    .line 1037
    :goto_0
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_currentNode:I

    #@12
    .line 1039
    if-ne v1, v3, :cond_7

    #@14
    :goto_1
    return v3

    #@15
    .line 994
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_stack:[I

    #@17
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    #@19
    aget v4, v4, v5

    #@1b
    if-lt v1, v4, :cond_2

    #@1d
    .line 995
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    #@1f
    add-int/lit8 v4, v4, -0x1

    #@21
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    #@23
    if-gez v4, :cond_0

    #@25
    .line 996
    const/4 v1, -0x1

    #@26
    .line 997
    goto :goto_0

    #@27
    .line 1000
    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@29
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@2c
    move-result v4

    #@2d
    if-ne v4, v2, :cond_0

    #@2f
    goto :goto_0

    #@30
    .line 1009
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@32
    .line 1011
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    #@34
    if-gez v4, :cond_4

    #@36
    .line 1012
    const/4 v1, -0x1

    #@37
    .line 1013
    goto :goto_0

    #@38
    .line 1015
    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_stack:[I

    #@3a
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    #@3c
    aget v4, v4, v5

    #@3e
    if-lt v1, v4, :cond_5

    #@40
    .line 1016
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    #@42
    add-int/lit8 v4, v4, -0x1

    #@44
    iput v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->_sp:I

    #@46
    if-gez v4, :cond_3

    #@48
    .line 1017
    const/4 v1, -0x1

    #@49
    .line 1018
    goto :goto_0

    #@4a
    .line 1022
    :cond_5
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@4c
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@4f
    move-result v0

    #@50
    .line 1023
    .local v0, "expType":I
    if-ge v0, v6, :cond_6

    #@52
    .line 1024
    if-ne v0, v2, :cond_3

    #@54
    goto :goto_0

    #@55
    .line 1029
    :cond_6
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@57
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@59
    aget-object v4, v4, v0

    #@5b
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@5e
    move-result v4

    #@5f
    if-ne v4, v2, :cond_3

    #@61
    goto :goto_0

    #@62
    .line 1039
    .end local v0    # "expType":I
    :cond_7
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    #@64
    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@67
    move-result v3

    #@68
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;->returnNode(I)I

    #@6b
    move-result v3

    #@6c
    goto :goto_1
.end method
