.class Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
.super Ljava/lang/Object;
.source "ToHTMLStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToHTMLStream$Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field m_Value:Ljava/lang/Object;

.field final m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

.field final synthetic this$1:Lorg/apache/xml/serializer/ToHTMLStream$Trie;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .locals 1
    .param p1, "this$1"    # Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@0
    .prologue
    .line 2239
    iput-object p1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->this$1:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2241
    const/16 v0, 0x80

    #@7
    new-array v0, v0, [Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@9
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@b
    .line 2242
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    #@e
    .line 2239
    return-void
.end method
