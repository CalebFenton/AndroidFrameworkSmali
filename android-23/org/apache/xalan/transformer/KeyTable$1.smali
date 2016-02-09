.class Lorg/apache/xalan/transformer/KeyTable$1;
.super Lorg/apache/xpath/objects/XNodeSet;
.source "KeyTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xalan/transformer/KeyTable;->getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xalan/transformer/KeyTable;


# direct methods
.method constructor <init>(Lorg/apache/xalan/transformer/KeyTable;Lorg/apache/xml/dtm/DTMManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xalan/transformer/KeyTable;
    .param p2, "$anonymous0"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    .line 136
    iput-object p1, p0, Lorg/apache/xalan/transformer/KeyTable$1;->this$0:Lorg/apache/xalan/transformer/KeyTable;

    #@2
    invoke-direct {p0, p2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    #@5
    return-void
.end method


# virtual methods
.method public setRoot(ILjava/lang/Object;)V
    .locals 0
    .param p1, "nodeHandle"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 137
    return-void
.end method
