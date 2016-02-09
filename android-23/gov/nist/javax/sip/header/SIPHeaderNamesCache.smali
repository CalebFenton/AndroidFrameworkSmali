.class public abstract Lgov/nist/javax/sip/header/SIPHeaderNamesCache;
.super Ljava/lang/Object;
.source "SIPHeaderNamesCache.java"


# static fields
.field private static final lowercaseMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    .line 12
    new-instance v6, Ljava/util/HashMap;

    #@2
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v6, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    #@7
    .line 15
    const-class v6, Lgov/nist/javax/sip/header/SIPHeaderNames;

    #@9
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@c
    move-result-object v2

    #@d
    .line 16
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    #@e
    .local v3, "i":I
    :goto_0
    array-length v6, v2

    #@f
    if-ge v3, v6, :cond_1

    #@11
    .line 17
    aget-object v1, v2, v3

    #@13
    .line 18
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@16
    move-result-object v6

    #@17
    const-class v7, Ljava/lang/String;

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@22
    move-result v6

    #@23
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_0

    #@29
    .line 20
    const/4 v6, 0x0

    #@2a
    :try_start_0
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Ljava/lang/String;

    #@30
    .line 21
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 22
    .local v4, "lowerCase":Ljava/lang/String;
    sget-object v6, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    #@36
    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 23
    sget-object v6, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    #@3b
    invoke-virtual {v6, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 16
    .end local v4    # "lowerCase":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@40
    goto :goto_0

    #@41
    .line 10
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    return-void

    #@42
    .line 24
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    #@43
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "headerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    sget-object v1, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 32
    .local v0, "lowerCase":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 36
    :cond_0
    return-object v0
.end method
