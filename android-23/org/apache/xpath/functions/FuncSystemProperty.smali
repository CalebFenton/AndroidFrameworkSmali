.class public Lorg/apache/xpath/functions/FuncSystemProperty;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncSystemProperty.java"


# static fields
.field static final XSLT_PROPERTIES:Ljava/lang/String; = "org/apache/xalan/res/XSLTInfo.properties"

.field static final serialVersionUID:J = 0x3346d5380b84c043L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 14
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 59
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncSystemProperty;->m_arg0:Lorg/apache/xpath/Expression;

    #@4
    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@7
    move-result-object v9

    #@8
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 60
    .local v1, "fullName":Ljava/lang/String;
    const/16 v9, 0x3a

    #@e
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    #@11
    move-result v2

    #@12
    .line 61
    .local v2, "indexOfNSSep":I
    const/4 v6, 0x0

    #@13
    .line 62
    .local v6, "result":Ljava/lang/String;
    const-string/jumbo v5, ""

    #@16
    .line 66
    .local v5, "propName":Ljava/lang/String;
    new-instance v8, Ljava/util/Properties;

    #@18
    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    #@1b
    .line 68
    .local v8, "xsltInfo":Ljava/util/Properties;
    const-string/jumbo v9, "org/apache/xalan/res/XSLTInfo.properties"

    #@1e
    invoke-virtual {p0, v9, v8}, Lorg/apache/xpath/functions/FuncSystemProperty;->loadPropertyFile(Ljava/lang/String;Ljava/util/Properties;)V

    #@21
    .line 70
    if-lez v2, :cond_5

    #@23
    .line 72
    if-ltz v2, :cond_1

    #@25
    .line 73
    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 76
    .local v4, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@2c
    move-result-object v9

    #@2d
    invoke-interface {v9, v4}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    .line 77
    .local v3, "namespace":Ljava/lang/String;
    if-gez v2, :cond_2

    #@33
    .line 78
    move-object v5, v1

    #@34
    .line 80
    :goto_1
    const-string/jumbo v9, "http://www.w3.org/XSL/Transform"

    #@37
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3a
    move-result v9

    #@3b
    if-nez v9, :cond_0

    #@3d
    .line 81
    const-string/jumbo v9, "http://www.w3.org/1999/XSL/Transform"

    #@40
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v9

    #@44
    .line 80
    if-eqz v9, :cond_3

    #@46
    .line 83
    :cond_0
    invoke-virtual {v8, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    .line 85
    .local v6, "result":Ljava/lang/String;
    if-nez v6, :cond_7

    #@4c
    .line 87
    const-string/jumbo v9, "WG_PROPERTY_NOT_SUPPORTED"

    #@4f
    .line 88
    new-array v10, v13, [Ljava/lang/Object;

    #@51
    aput-object v1, v10, v12

    #@53
    .line 87
    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    #@56
    .line 90
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@58
    return-object v9

    #@59
    .line 73
    .end local v3    # "namespace":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, ""

    #@5c
    .restart local v4    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@5d
    .line 78
    .restart local v3    # "namespace":Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v2, 0x1

    #@5f
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    goto :goto_1

    #@64
    .line 95
    :cond_3
    const-string/jumbo v9, "WG_DONT_DO_ANYTHING_WITH_NS"

    #@67
    .line 96
    const/4 v10, 0x2

    #@68
    new-array v10, v10, [Ljava/lang/Object;

    #@6a
    aput-object v3, v10, v12

    #@6c
    .line 97
    aput-object v1, v10, v13

    #@6e
    .line 95
    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    #@71
    .line 102
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->isSecureProcessing()Z

    #@74
    move-result v9

    #@75
    if-nez v9, :cond_4

    #@77
    .line 104
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    .line 111
    .end local v6    # "result":Ljava/lang/String;
    :goto_2
    if-nez v6, :cond_7

    #@7d
    .line 113
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@7f
    return-object v9

    #@80
    .line 108
    .restart local v6    # "result":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "WG_SECURITY_EXCEPTION"

    #@83
    .line 109
    const/4 v10, 0x1

    #@84
    new-array v10, v10, [Ljava/lang/Object;

    #@86
    const/4 v11, 0x0

    #@87
    aput-object v1, v10, v11

    #@89
    .line 108
    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@8c
    goto :goto_2

    #@8d
    .line 117
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@8e
    .line 118
    .local v7, "se":Ljava/lang/SecurityException;
    const-string/jumbo v9, "WG_SECURITY_EXCEPTION"

    #@91
    .line 119
    new-array v10, v13, [Ljava/lang/Object;

    #@93
    aput-object v1, v10, v12

    #@95
    .line 118
    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    #@98
    .line 121
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@9a
    return-object v9

    #@9b
    .line 130
    .end local v3    # "namespace":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v7    # "se":Ljava/lang/SecurityException;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->isSecureProcessing()Z

    #@9e
    move-result v9

    #@9f
    if-nez v9, :cond_6

    #@a1
    .line 132
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@a4
    move-result-object v6

    #@a5
    .line 139
    .end local v6    # "result":Ljava/lang/String;
    :goto_3
    if-nez v6, :cond_7

    #@a7
    .line 141
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@a9
    return-object v9

    #@aa
    .line 136
    .restart local v6    # "result":Ljava/lang/String;
    :cond_6
    const-string/jumbo v9, "WG_SECURITY_EXCEPTION"

    #@ad
    .line 137
    const/4 v10, 0x1

    #@ae
    new-array v10, v10, [Ljava/lang/Object;

    #@b0
    const/4 v11, 0x0

    #@b1
    aput-object v1, v10, v11

    #@b3
    .line 136
    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@b6
    goto :goto_3

    #@b7
    .line 145
    .end local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v7

    #@b8
    .line 146
    .restart local v7    # "se":Ljava/lang/SecurityException;
    const-string/jumbo v9, "WG_SECURITY_EXCEPTION"

    #@bb
    .line 147
    new-array v10, v13, [Ljava/lang/Object;

    #@bd
    aput-object v1, v10, v12

    #@bf
    .line 146
    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    #@c2
    .line 149
    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@c4
    return-object v9

    #@c5
    .line 153
    .end local v7    # "se":Ljava/lang/SecurityException;
    :cond_7
    const-string/jumbo v9, "version"

    #@c8
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v9

    #@cc
    if-eqz v9, :cond_8

    #@ce
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@d1
    move-result v9

    #@d2
    if-lez v9, :cond_8

    #@d4
    .line 158
    :try_start_2
    new-instance v9, Lorg/apache/xpath/objects/XString;

    #@d6
    const-string/jumbo v10, "1.0"

    #@d9
    invoke-direct {v9, v10}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@dc
    return-object v9

    #@dd
    .line 161
    :catch_2
    move-exception v0

    #@de
    .line 162
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v9, Lorg/apache/xpath/objects/XString;

    #@e0
    invoke-direct {v9, v6}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@e3
    return-object v9

    #@e4
    .line 166
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_8
    new-instance v9, Lorg/apache/xpath/objects/XString;

    #@e6
    invoke-direct {v9, v6}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@e9
    return-object v9
.end method

.method public loadPropertyFile(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 181
    :try_start_0
    invoke-static {}, Lorg/apache/xpath/functions/SecuritySupport;->getInstance()Lorg/apache/xpath/functions/SecuritySupport;

    #@3
    move-result-object v3

    #@4
    .line 183
    .local v3, "ss":Lorg/apache/xpath/functions/SecuritySupport;
    invoke-static {}, Lorg/apache/xpath/functions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v3, v4, p1}, Lorg/apache/xpath/functions/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    #@b
    move-result-object v2

    #@c
    .line 187
    .local v2, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    #@e
    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@11
    .line 189
    .local v0, "bis":Ljava/io/BufferedInputStream;
    invoke-virtual {p2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@14
    .line 190
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 176
    return-void

    #@18
    .line 193
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "ss":Lorg/apache/xpath/functions/SecuritySupport;
    :catch_0
    move-exception v1

    #@19
    .line 195
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@1b
    invoke-direct {v4, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@1e
    throw v4
.end method
