.class public Lorg/apache/xpath/SourceTree;
.super Ljava/lang/Object;
.source "SourceTree.java"


# instance fields
.field public m_root:I

.field public m_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "root"    # I
    .param p2, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput p1, p0, Lorg/apache/xpath/SourceTree;->m_root:I

    #@5
    .line 43
    iput-object p2, p0, Lorg/apache/xpath/SourceTree;->m_url:Ljava/lang/String;

    #@7
    .line 40
    return-void
.end method
