.class public final Lcom/android/okhttp/internal/http/HttpMethod;
.super Ljava/lang/Object;
.source "HttpMethod.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static invalidatesCache(Ljava/lang/String;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 20
    const-string/jumbo v0, "POST"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 21
    const-string/jumbo v0, "PATCH"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 20
    if-nez v0, :cond_0

    #@12
    .line 22
    const-string/jumbo v0, "PUT"

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    .line 20
    if-nez v0, :cond_0

    #@1b
    .line 23
    const-string/jumbo v0, "DELETE"

    #@1e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    .line 20
    :goto_0
    return v0

    #@23
    :cond_0
    const/4 v0, 0x1

    #@24
    goto :goto_0
.end method

.method public static permitsRequestBody(Ljava/lang/String;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 34
    const-string/jumbo v0, "DELETE"

    #@9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    .line 33
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public static requiresRequestBody(Ljava/lang/String;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    const-string/jumbo v0, "POST"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 28
    const-string/jumbo v0, "PUT"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 27
    if-nez v0, :cond_0

    #@12
    .line 29
    const-string/jumbo v0, "PATCH"

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    .line 27
    :goto_0
    return v0

    #@1a
    :cond_0
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method
