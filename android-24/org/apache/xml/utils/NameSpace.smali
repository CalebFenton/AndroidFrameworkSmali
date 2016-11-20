.class public Lorg/apache/xml/utils/NameSpace;
.super Ljava/lang/Object;
.source "NameSpace.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x146ade9031f800afL


# instance fields
.field public m_next:Lorg/apache/xml/utils/NameSpace;

.field public m_prefix:Ljava/lang/String;

.field public m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xml/utils/NameSpace;->m_next:Lorg/apache/xml/utils/NameSpace;

    #@6
    .line 56
    iput-object p1, p0, Lorg/apache/xml/utils/NameSpace;->m_prefix:Ljava/lang/String;

    #@8
    .line 57
    iput-object p2, p0, Lorg/apache/xml/utils/NameSpace;->m_uri:Ljava/lang/String;

    #@a
    .line 54
    return-void
.end method
