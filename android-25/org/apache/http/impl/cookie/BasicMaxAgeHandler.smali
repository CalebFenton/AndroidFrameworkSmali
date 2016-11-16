.class public Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;
.super Lorg/apache/http/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicMaxAgeHandler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    #@3
    .line 46
    return-void
.end method


# virtual methods
.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 10
    .param p1, "cookie"    # Lorg/apache/http/cookie/SetCookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    if-nez p1, :cond_0

    #@2
    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Cookie may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 55
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 56
    new-instance v2, Lorg/apache/http/cookie/MalformedCookieException;

    #@f
    const-string/jumbo v3, "Missing value for max-age attribute"

    #@12
    invoke-direct {v2, v3}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 60
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result v0

    #@1a
    .line 65
    .local v0, "age":I
    if-gez v0, :cond_2

    #@1c
    .line 66
    new-instance v2, Lorg/apache/http/cookie/MalformedCookieException;

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "Negative max-age attribute: "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 61
    .end local v0    # "age":I
    :catch_0
    move-exception v1

    #@37
    .line 62
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/apache/http/cookie/MalformedCookieException;

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Invalid max-age attribute: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-direct {v2, v3}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    #@50
    throw v2

    #@51
    .line 69
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "age":I
    :cond_2
    new-instance v2, Ljava/util/Date;

    #@53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@56
    move-result-wide v4

    #@57
    int-to-long v6, v0

    #@58
    const-wide/16 v8, 0x3e8

    #@5a
    mul-long/2addr v6, v8

    #@5b
    add-long/2addr v4, v6

    #@5c
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@5f
    invoke-interface {p1, v2}, Lorg/apache/http/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V

    #@62
    .line 51
    return-void
.end method
