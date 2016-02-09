.class public Landroid/webkit/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# static fields
.field private static final sMimeTypeMap:Landroid/webkit/MimeTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    new-instance v0, Landroid/webkit/MimeTypeMap;

    #@2
    invoke-direct {v0}, Landroid/webkit/MimeTypeMap;-><init>()V

    #@5
    sput-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    #@7
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_3

    #@7
    .line 45
    const/16 v5, 0x23

    #@9
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@c
    move-result v3

    #@d
    .line 46
    .local v3, "fragment":I
    if-lez v3, :cond_0

    #@f
    .line 47
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12
    move-result-object p0

    #@13
    .line 50
    :cond_0
    const/16 v5, 0x3f

    #@15
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@18
    move-result v4

    #@19
    .line 51
    .local v4, "query":I
    if-lez v4, :cond_1

    #@1b
    .line 52
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object p0

    #@1f
    .line 55
    :cond_1
    const/16 v5, 0x2f

    #@21
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@24
    move-result v2

    #@25
    .line 57
    .local v2, "filenamePos":I
    if-ltz v2, :cond_2

    #@27
    add-int/lit8 v5, v2, 0x1

    #@29
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 61
    .local v1, "filename":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_3

    #@33
    .line 62
    const-string/jumbo v5, "[a-zA-Z_0-9\\.\\-\\(\\)\\%]+"

    #@36
    invoke-static {v5, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    #@39
    move-result v5

    #@3a
    .line 61
    if-eqz v5, :cond_3

    #@3c
    .line 63
    const/16 v5, 0x2e

    #@3e
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@41
    move-result v0

    #@42
    .line 64
    .local v0, "dotPos":I
    if-ltz v0, :cond_3

    #@44
    .line 65
    add-int/lit8 v5, v0, 0x1

    #@46
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    return-object v5

    #@4b
    .line 57
    .end local v0    # "dotPos":I
    .end local v1    # "filename":Ljava/lang/String;
    :cond_2
    move-object v1, p0

    #@4c
    .restart local v1    # "filename":Ljava/lang/String;
    goto :goto_0

    #@4d
    .line 70
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "filenamePos":I
    .end local v3    # "fragment":I
    .end local v4    # "query":I
    :cond_3
    const-string/jumbo v5, ""

    #@50
    return-object v5
.end method

.method public static getSingleton()Landroid/webkit/MimeTypeMap;
    .locals 1

    #@0
    .prologue
    .line 165
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    #@2
    return-object v0
.end method

.method private static mimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    invoke-static {p0}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-static {p1}, Llibcore/net/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    invoke-static {p1}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    invoke-static {p1}, Llibcore/net/MimeUtils;->hasExtension(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    invoke-static {p1}, Llibcore/net/MimeUtils;->hasMimeType(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    const-string/jumbo v3, "text/plain"

    #@3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 131
    const-string/jumbo v3, "application/octet-stream"

    #@c
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    .line 130
    if-eqz v3, :cond_4

    #@12
    .line 135
    :cond_0
    const/4 v1, 0x0

    #@13
    .line 136
    .local v1, "filename":Ljava/lang/String;
    if-eqz p3, :cond_1

    #@15
    .line 137
    invoke-static {p3}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 139
    .end local v1    # "filename":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    #@1b
    .line 140
    move-object p2, v1

    #@1c
    .line 142
    :cond_2
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 143
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 144
    .local v2, "newMimeType":Ljava/lang/String;
    if-eqz v2, :cond_3

    #@26
    .line 145
    move-object p1, v2

    #@27
    .line 157
    .end local v0    # "extension":Ljava/lang/String;
    .end local v2    # "newMimeType":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object p1

    #@28
    .line 147
    :cond_4
    const-string/jumbo v3, "text/vnd.wap.wml"

    #@2b
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_5

    #@31
    .line 149
    const-string/jumbo p1, "text/plain"

    #@34
    goto :goto_0

    #@35
    .line 153
    :cond_5
    const-string/jumbo v3, "application/vnd.wap.xhtml+xml"

    #@38
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_3

    #@3e
    .line 154
    const-string/jumbo p1, "application/xhtml+xml"

    #@41
    goto :goto_0
.end method
