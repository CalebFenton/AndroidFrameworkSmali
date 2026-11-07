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
.field final greylist m_declarationDepth:I

.field final greylist m_prefix:Ljava/lang/String;

.field final greylist m_uri:Ljava/lang/String;


# direct methods
.method constructor greylist <init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_prefix:Ljava/lang/String;

    if-nez p3, :cond_9

    .line 364
    const-string p3, ""

    :cond_9
    iput-object p3, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    .line 365
    iput p4, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    return-void
.end method
