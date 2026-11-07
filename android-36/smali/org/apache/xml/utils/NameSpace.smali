.class public Lorg/apache/xml/utils/NameSpace;
.super Ljava/lang/Object;
.source "NameSpace.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final whitelist serialVersionUID:J = 0x146ade9031f800afL


# instance fields
.field public greylist m_next:Lorg/apache/xml/utils/NameSpace;

.field public greylist m_prefix:Ljava/lang/String;

.field public greylist m_uri:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/apache/xml/utils/NameSpace;->m_next:Lorg/apache/xml/utils/NameSpace;

    .line 56
    iput-object p1, p0, Lorg/apache/xml/utils/NameSpace;->m_prefix:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/apache/xml/utils/NameSpace;->m_uri:Ljava/lang/String;

    return-void
.end method
