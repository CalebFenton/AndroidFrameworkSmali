.class Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
.super Ljava/lang/Object;
.source "NamespaceMappings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/NamespaceMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MappingRecord"
.end annotation


# instance fields
.field final m_declarationDepth:I

.field final m_prefix:Ljava/lang/String;

.field final m_uri:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/xml/serializer/NamespaceMappings;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/serializer/NamespaceMappings;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "depth"    # I

    #@0
    .prologue
    .line 362
    iput-object p1, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->this$0:Lorg/apache/xml/serializer/NamespaceMappings;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 363
    iput-object p2, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_prefix:Ljava/lang/String;

    #@7
    .line 364
    if-nez p3, :cond_0

    #@9
    const-string/jumbo p3, ""

    #@c
    .end local p3    # "uri":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    #@e
    .line 365
    iput p4, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    #@10
    .line 362
    return-void
.end method
