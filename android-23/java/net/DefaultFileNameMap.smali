.class Ljava/net/DefaultFileNameMap;
.super Ljava/lang/Object;
.source "DefaultFileNameMap.java"

# interfaces
.implements Ljava/net/FileNameMap;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    const-string/jumbo v3, "/"

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 29
    const-string/jumbo v3, "html"

    #@c
    invoke-static {v3}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 31
    :cond_0
    const/16 v3, 0x23

    #@13
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@16
    move-result v2

    #@17
    .line 32
    .local v2, "lastCharInExtension":I
    if-gez v2, :cond_1

    #@19
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1c
    move-result v2

    #@1d
    .line 35
    :cond_1
    const/16 v3, 0x2e

    #@1f
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@22
    move-result v3

    #@23
    add-int/lit8 v1, v3, 0x1

    #@25
    .line 36
    .local v1, "firstCharInExtension":I
    const-string/jumbo v0, ""

    #@28
    .line 37
    .local v0, "ext":Ljava/lang/String;
    const/16 v3, 0x2f

    #@2a
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@2d
    move-result v3

    #@2e
    if-le v1, v3, :cond_2

    #@30
    .line 38
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 40
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@36
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v3}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    return-object v3
.end method
