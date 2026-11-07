.class Llibcore/content/type/MimeMap$Builder$Element;
.super Ljava/lang/Object;
.source "MimeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/content/type/MimeMap$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation


# instance fields
.field final blacklist keepExisting:Z

.field final blacklist mimeOrExt:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "isMimeSpec"    # Z

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/content/type/MimeMap$Builder$Element;->keepExisting:Z

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/content/type/MimeMap;->-$$Nest$smtoLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    goto :goto_22

    .line 325
    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Llibcore/content/type/MimeMap$Builder$Element;->keepExisting:Z

    .line 326
    invoke-static {p1}, Llibcore/content/type/MimeMap;->-$$Nest$smtoLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    .line 328
    :goto_22
    if-eqz p2, :cond_2a

    .line 329
    iget-object v0, p0, Llibcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v0}, Llibcore/content/type/MimeMap;->checkValidMimeType(Ljava/lang/String;)V

    goto :goto_2f

    .line 331
    :cond_2a
    iget-object v0, p0, Llibcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v0}, Llibcore/content/type/MimeMap;->checkValidExtension(Ljava/lang/String;)V

    .line 333
    :goto_2f
    return-void
.end method

.method public static blacklist ofExtensionSpec(Ljava/lang/String;)Llibcore/content/type/MimeMap$Builder$Element;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 336
    new-instance v0, Llibcore/content/type/MimeMap$Builder$Element;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llibcore/content/type/MimeMap$Builder$Element;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist ofMimeSpec(Ljava/lang/String;)Llibcore/content/type/MimeMap$Builder$Element;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 335
    new-instance v0, Llibcore/content/type/MimeMap$Builder$Element;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Llibcore/content/type/MimeMap$Builder$Element;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
