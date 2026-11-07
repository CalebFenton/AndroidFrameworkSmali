.class final Landroid/icu/impl/ICUBinary$SingleDataFile;
.super Landroid/icu/impl/ICUBinary$DataFile;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleDataFile"
.end annotation


# instance fields
.field private final blacklist bytes:Ljava/nio/ByteBuffer;

.field private final greylist-max-o path:Ljava/io/File;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;

    .line 235
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUBinary$DataFile;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-static {p2}, Landroid/icu/impl/ICUBinary;->-$$Nest$smmapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->bytes:Ljava/nio/ByteBuffer;

    .line 237
    iput-object p2, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    .line 238
    return-void
.end method


# virtual methods
.method greylist-max-o addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p3, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_57

    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 257
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 258
    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_57

    .line 261
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 262
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_57
    return-void
.end method

.method greylist-max-o getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "requestedPath"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 247
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 249
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
