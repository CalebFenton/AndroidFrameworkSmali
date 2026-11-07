.class public abstract Lgov/nist/javax/sip/header/SIPHeaderNamesCache;
.super Ljava/lang/Object;
.source "SIPHeaderNamesCache.java"


# static fields
.field private static final greylist lowercaseMap:Ljava/util/HashMap;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 6

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    .line 15
    const-class v0, Lgov/nist/javax/sip/header/SIPHeaderNames;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 16
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_44

    .line 17
    aget-object v2, v0, v1

    .line 18
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 20
    const/4 v3, 0x0

    :try_start_2a
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 22
    .local v4, "lowerCase":Ljava/lang/String;
    sget-object v5, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v5, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_3e} :catch_40

    .line 25
    nop

    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "lowerCase":Ljava/lang/String;
    goto :goto_41

    .line 24
    :catch_40
    move-exception v3

    .line 16
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 28
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v1    # "i":I
    :cond_44
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "headerName"    # Ljava/lang/String;

    .line 31
    sget-object v0, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->lowercaseMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "lowerCase":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 36
    :cond_f
    return-object v0
.end method
