.class public abstract Lorg/apache/xml/dtm/DTMManager;
.super Ljava/lang/Object;
.source "DTMManager.java"


# static fields
.field public static final IDENT_DTM_DEFAULT:I = -0x10000

.field public static final IDENT_DTM_NODE_BITS:I = 0x10

.field public static final IDENT_MAX_DTMS:I = 0x10000

.field public static final IDENT_NODE_DEFAULT:I = 0xffff

.field private static debug:Z = false

.field private static defaultClassName:Ljava/lang/String; = null

.field private static final defaultPropName:Ljava/lang/String; = "org.apache.xml.dtm.DTMManager"


# instance fields
.field public m_incremental:Z

.field public m_source_location:Z

.field protected m_xsf:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 57
    const-string/jumbo v1, "org.apache.xml.dtm.ref.DTMManagerDefault"

    #@3
    .line 56
    sput-object v1, Lorg/apache/xml/dtm/DTMManager;->defaultClassName:Ljava/lang/String;

    #@5
    .line 359
    :try_start_0
    const-string/jumbo v1, "dtm.debug"

    #@8
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    :goto_0
    sput-boolean v1, Lorg/apache/xml/dtm/DTMManager;->debug:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 48
    .local v0, "ex":Ljava/lang/SecurityException;
    :goto_1
    return-void

    #@12
    .line 359
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0

    #@14
    .line 361
    :catch_0
    move-exception v0

    #@15
    .restart local v0    # "ex":Ljava/lang/SecurityException;
    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    #@7
    .line 289
    iput-boolean v1, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    #@9
    .line 297
    iput-boolean v1, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    #@b
    .line 68
    return-void
.end method

.method public static newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;
    .locals 5
    .param p0, "xsf"    # Lorg/apache/xml/utils/XMLStringFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/dtm/DTMConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 134
    const/4 v1, 0x0

    #@2
    .line 138
    .local v1, "factoryImpl":Lorg/apache/xml/dtm/DTMManager;
    :try_start_0
    const-string/jumbo v2, "org.apache.xml.dtm.DTMManager"

    #@5
    sget-object v3, Lorg/apache/xml/dtm/DTMManager;->defaultClassName:Ljava/lang/String;

    #@7
    .line 137
    invoke-static {v2, v3}, Lorg/apache/xml/dtm/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    .end local v1    # "factoryImpl":Lorg/apache/xml/dtm/DTMManager;
    check-cast v1, Lorg/apache/xml/dtm/DTMManager;
    :try_end_0
    .catch Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 147
    .local v1, "factoryImpl":Lorg/apache/xml/dtm/DTMManager;
    if-nez v1, :cond_0

    #@f
    .line 149
    new-instance v2, Lorg/apache/xml/dtm/DTMConfigurationException;

    #@11
    .line 150
    const-string/jumbo v3, "ER_NO_DEFAULT_IMPL"

    #@14
    .line 149
    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Lorg/apache/xml/dtm/DTMConfigurationException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 141
    .end local v1    # "factoryImpl":Lorg/apache/xml/dtm/DTMManager;
    :catch_0
    move-exception v0

    #@1d
    .line 142
    .local v0, "e":Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
    new-instance v2, Lorg/apache/xml/dtm/DTMConfigurationException;

    #@1f
    .line 143
    const-string/jumbo v3, "ER_NO_DEFAULT_IMPL"

    #@22
    .line 142
    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 143
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;->getException()Ljava/lang/Exception;

    #@29
    move-result-object v4

    #@2a
    .line 142
    invoke-direct {v2, v3, v4}, Lorg/apache/xml/dtm/DTMConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v2

    #@2e
    .line 154
    .end local v0    # "e":Lorg/apache/xml/dtm/ObjectFactory$ConfigurationError;
    .restart local v1    # "factoryImpl":Lorg/apache/xml/dtm/DTMManager;
    :cond_0
    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/DTMManager;->setXMLStringFactory(Lorg/apache/xml/utils/XMLStringFactory;)V

    #@31
    .line 156
    return-object v1
.end method


# virtual methods
.method public abstract createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
.end method

.method public abstract createDocumentFragment()Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract getDTM(I)Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
.end method

.method public abstract getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
.end method

.method public abstract getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
.end method

.method public getDTMIdentityMask()I
    .locals 1

    #@0
    .prologue
    .line 417
    const/high16 v0, -0x10000

    #@2
    return v0
.end method

.method public getIncremental()Z
    .locals 1

    #@0
    .prologue
    .line 306
    iget-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    #@2
    return v0
.end method

.method public getNodeIdentityMask()I
    .locals 1

    #@0
    .prologue
    .line 427
    const v0, 0xffff

    #@3
    return v0
.end method

.method public getSource_location()Z
    .locals 1

    #@0
    .prologue
    .line 331
    iget-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    #@2
    return v0
.end method

.method public getXMLStringFactory()Lorg/apache/xml/utils/XMLStringFactory;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    #@2
    return-object v0
.end method

.method public abstract release(Lorg/apache/xml/dtm/DTM;Z)Z
.end method

.method public setIncremental(Z)V
    .locals 0
    .param p1, "incremental"    # Z

    #@0
    .prologue
    .line 319
    iput-boolean p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    #@2
    .line 317
    return-void
.end method

.method public setSource_location(Z)V
    .locals 0
    .param p1, "sourceLocation"    # Z

    #@0
    .prologue
    .line 344
    iput-boolean p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_source_location:Z

    #@2
    .line 343
    return-void
.end method

.method public setXMLStringFactory(Lorg/apache/xml/utils/XMLStringFactory;)V
    .locals 0
    .param p1, "xsf"    # Lorg/apache/xml/utils/XMLStringFactory;

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    #@2
    .line 87
    return-void
.end method
