.class Ljava/net/DefaultFileNameMap;
.super Ljava/lang/Object;
.source "DefaultFileNameMap.java"

# interfaces
.implements Ljava/net/FileNameMap;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;

    .line 27
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 28
    .local v0, "fragmentIndex":I
    if-ltz v0, :cond_d

    .line 29
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_d
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 32
    const-string v1, "text/html"

    return-object v1

    .line 35
    :cond_18
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 36
    .local v1, "slashIndex":I
    if-ltz v1, :cond_24

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 40
    :cond_24
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v2

    .line 41
    .local v2, "mimeMap":Llibcore/content/type/MimeMap;
    const/4 v3, -0x1

    .line 43
    .local v3, "dotIndex":I
    :cond_29
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "ext":Ljava/lang/String;
    invoke-virtual {v2, v4}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "result":Ljava/lang/String;
    if-eqz v5, :cond_3a

    if-ltz v1, :cond_39

    if-ltz v3, :cond_3a

    .line 49
    :cond_39
    return-object v5

    .line 51
    :cond_3a
    const/16 v6, 0x2e

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 52
    .end local v4    # "ext":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    if-gez v3, :cond_29

    .line 53
    const/4 v4, 0x0

    return-object v4
.end method
