.class public Landroid/webkit/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# static fields
.field private static final greylist-max-o sMimeTypeMap:Landroid/webkit/MimeTypeMap;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/webkit/MimeTypeMap;

    invoke-direct {v0}, Landroid/webkit/MimeTypeMap;-><init>()V

    sput-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static whitelist getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 48
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 49
    .local v0, "fragment":I
    const/4 v1, 0x0

    if-lez v0, :cond_13

    .line 50
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 53
    :cond_13
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 54
    .local v2, "query":I
    if-lez v2, :cond_1f

    .line 55
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 58
    :cond_1f
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 60
    .local v1, "filenamePos":I
    if-ltz v1, :cond_2e

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2f

    :cond_2e
    move-object v3, p0

    .line 64
    .local v3, "filename":Ljava/lang/String;
    :goto_2f
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 65
    const-string v4, "[a-zA-Z_0-9\\.\\-\\(\\)\\%]+"

    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 66
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 67
    .local v4, "dotPos":I
    if-ltz v4, :cond_4c

    .line 68
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 73
    .end local v0    # "fragment":I
    .end local v1    # "filenamePos":I
    .end local v2    # "query":I
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "dotPos":I
    :cond_4c
    const-string v0, ""

    return-object v0
.end method

.method public static whitelist getSingleton()Landroid/webkit/MimeTypeMap;
    .registers 1

    .line 170
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-object v0
.end method

.method private static greylist-max-o mimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "extension"    # Ljava/lang/String;

    .line 97
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 118
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "extension"    # Ljava/lang/String;

    .line 92
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasExtension(Ljava/lang/String;)Z
    .registers 3
    .param p1, "extension"    # Ljava/lang/String;

    .line 106
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/content/type/MimeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist hasMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 82
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/content/type/MimeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "text/plain"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 136
    const-string v0, "application/octet-stream"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2a

    .line 152
    :cond_12
    const-string/jumbo v0, "text/vnd.wap.wml"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 154
    const-string/jumbo p1, "text/plain"

    goto :goto_40

    .line 158
    :cond_1f
    const-string v0, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 159
    const-string p1, "application/xhtml+xml"

    goto :goto_40

    .line 140
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    .line 141
    .local v0, "filename":Ljava/lang/String;
    if-eqz p3, :cond_31

    .line 142
    invoke-static {p3}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_31
    if-eqz v0, :cond_34

    .line 145
    move-object p2, v0

    .line 147
    :cond_34
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "newMimeType":Ljava/lang/String;
    if-eqz v2, :cond_3f

    .line 150
    move-object p1, v2

    .line 152
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "newMimeType":Ljava/lang/String;
    :cond_3f
    nop

    .line 162
    :cond_40
    :goto_40
    return-object p1
.end method
