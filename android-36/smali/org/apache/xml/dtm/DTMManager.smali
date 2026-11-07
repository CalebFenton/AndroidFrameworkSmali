.class public abstract Lorg/apache/xml/dtm/DTMManager;
.super Ljava/lang/Object;
.source "DTMManager.java"


# static fields
.field public static final greylist IDENT_DTM_DEFAULT:I = -0x10000

.field public static final greylist IDENT_DTM_NODE_BITS:I = 0x10

.field public static final greylist IDENT_MAX_DTMS:I = 0x10000

.field public static final greylist IDENT_NODE_DEFAULT:I = 0xffff

.field private static greylist debug:Z = false

.field private static greylist defaultClassName:Ljava/lang/String; = "org.apache.xml.dtm.ref.DTMManagerDefault"

.field private static final greylist defaultPropName:Ljava/lang/String; = "org.apache.xml.dtm.DTMManager"


# instance fields
.field public greylist m_incremental:Z

.field public greylist m_source_location:Z

.field protected greylist m_xsf:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 359
    :try_start_0
    const-string v0, "dtm.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lorg/apache/xml/dtm/DTMManager;->debug:Z
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method protected constructor greylist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    .line 297
    iput-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    return-void
.end method

.method public static greylist newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/DTMConfigurationException;
        }
    .end annotation

    .line 134
    const-string v0, "ER_NO_DEFAULT_IMPL"

    const/4 v1, 0x0

    .line 137
    :try_start_3
    const-string v2, "org.apache.xml.dtm.DTMManager"

    sget-object v3, Lorg/apache/xml/dtm/DTMManager;->defaultClassName:Ljava/lang/String;

    .line 138
    invoke-static {v2, v3}, Lorg/apache/xml/dtm/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/dtm/DTMManager;
    :try_end_d
    .catch Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError; {:try_start_3 .. :try_end_d} :catch_1d

    if-eqz v2, :cond_13

    .line 154
    invoke-virtual {v2, p0}, Lorg/apache/xml/dtm/DTMManager;->setXMLStringFactory(Lorg/apache/xml/utils/XMLStringFactory;)V

    return-object v2

    .line 149
    :cond_13
    new-instance p0, Lorg/apache/xml/dtm/DTMConfigurationException;

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/DTMConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1d
    move-exception p0

    .line 142
    new-instance v2, Lorg/apache/xml/dtm/DTMConfigurationException;

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lorg/apache/xml/dtm/DTMConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public abstract greylist createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract greylist createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract greylist createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract greylist createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract greylist createDocumentFragment()Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract greylist getDTM(I)Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract greylist getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract greylist getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
.end method

.method public abstract greylist getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
.end method

.method public greylist getDTMIdentityMask()I
    .registers 1

    .line 0
    const/high16 p0, -0x10000

    return p0
.end method

.method public greylist getIncremental()Z
    .registers 1

    .line 306
    iget-boolean p0, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    return p0
.end method

.method public greylist getNodeIdentityMask()I
    .registers 1

    .line 0
    const p0, 0xffff

    return p0
.end method

.method public greylist getSource_location()Z
    .registers 1

    .line 331
    iget-boolean p0, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    return p0
.end method

.method public greylist getXMLStringFactory()Lorg/apache/xml/utils/XMLStringFactory;
    .registers 1

    .line 78
    iget-object p0, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    return-object p0
.end method

.method public abstract greylist release(Lorg/apache/xml/dtm/DTM;Z)Z
.end method

.method public greylist setIncremental(Z)V
    .registers 2

    .line 319
    iput-boolean p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    return-void
.end method

.method public greylist setSource_location(Z)V
    .registers 2

    .line 344
    iput-boolean p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    return-void
.end method

.method public greylist setXMLStringFactory(Lorg/apache/xml/utils/XMLStringFactory;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    return-void
.end method
