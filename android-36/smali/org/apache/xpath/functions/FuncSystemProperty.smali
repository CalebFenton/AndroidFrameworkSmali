.class public Lorg/apache/xpath/functions/FuncSystemProperty;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncSystemProperty.java"


# static fields
.field static final greylist XSLT_PROPERTIES:Ljava/lang/String; = "org/apache/xalan/res/XSLTInfo.properties"

.field static final whitelist serialVersionUID:J = 0x3346d5380b84c043L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 66
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 68
    const-string v3, "org/apache/xalan/res/XSLTInfo.properties"

    invoke-virtual {p0, v3, v2}, Lorg/apache/xpath/functions/FuncSystemProperty;->loadPropertyFile(Ljava/lang/String;Ljava/util/Properties;)V

    .line 70
    const-string v3, "WG_SECURITY_EXCEPTION"

    const/4 v4, 0x0

    const-string v5, ""

    if-lez v1, :cond_89

    if-ltz v1, :cond_28

    const/4 v5, 0x0

    .line 73
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 76
    :cond_28
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-gez v1, :cond_34

    move-object v1, v0

    goto :goto_3a

    :cond_34
    add-int/lit8 v1, v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    :goto_3a
    const-string v6, "http://www.w3.org/XSL/Transform"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_75

    const-string v6, "http://www.w3.org/1999/XSL/Transform"

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    goto :goto_75

    .line 95
    :cond_4b
    const-string v2, "WG_DONT_DO_ANYTHING_WITH_NS"

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v2, v5}, Lorg/apache/xpath/Expression;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :try_start_54
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->isSecureProcessing()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 104
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_66

    .line 108
    :cond_5f
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/Expression;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_66
    if-nez v4, :cond_87

    .line 113
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;
    :try_end_6a
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_6a} :catch_6b

    return-object p0

    .line 118
    :catch_6b
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xpath/Expression;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    .line 83
    :cond_75
    :goto_75
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_87

    .line 87
    const-string v1, "WG_PROPERTY_NOT_SUPPORTED"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/xpath/Expression;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    :cond_87
    move-object v5, v1

    goto :goto_a0

    .line 130
    :cond_89
    :try_start_89
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->isSecureProcessing()Z

    move-result v1

    if-nez v1, :cond_94

    .line 132
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9b

    .line 136
    :cond_94
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v3, v1}, Lorg/apache/xpath/Expression;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9b
    if-nez v4, :cond_a0

    .line 141
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;
    :try_end_9f
    .catch Ljava/lang/SecurityException; {:try_start_89 .. :try_end_9f} :catch_c2

    return-object p0

    .line 153
    :cond_a0
    :goto_a0
    const-string p0, "version"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bc

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_bc

    .line 158
    :try_start_ae
    new-instance p0, Lorg/apache/xpath/objects/XString;

    const-string p1, "1.0"

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b5} :catch_b6

    return-object p0

    .line 162
    :catch_b6
    new-instance p0, Lorg/apache/xpath/objects/XString;

    invoke-direct {p0, v4}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 166
    :cond_bc
    new-instance p0, Lorg/apache/xpath/objects/XString;

    invoke-direct {p0, v4}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 146
    :catch_c2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xpath/Expression;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0
.end method

.method public greylist loadPropertyFile(Ljava/lang/String;Ljava/util/Properties;)V
    .registers 4

    .line 181
    :try_start_0
    invoke-static {}, Lorg/apache/xpath/functions/SecuritySupport;->getInstance()Lorg/apache/xpath/functions/SecuritySupport;

    move-result-object p0

    .line 183
    invoke-static {}, Lorg/apache/xpath/functions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/functions/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 187
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 189
    invoke-virtual {p2, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 190
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 195
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
