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
.field greylist m_Value:Ljava/lang/Object;

.field final greylist m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;


# direct methods
.method constructor greylist <init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    .line 2241
    new-array p1, p1, [Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    iput-object p1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    const/4 p1, 0x0

    .line 2242
    iput-object p1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-void
.end method
