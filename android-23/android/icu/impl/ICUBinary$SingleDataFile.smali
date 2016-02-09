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
.field private final path:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUBinary$DataFile;-><init>(Ljava/lang/String;)V

    #@3
    .line 225
    iput-object p2, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    #@5
    .line 223
    return-void
.end method


# virtual methods
.method addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v3, 0x2f

    #@2
    .line 243
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    add-int/2addr v1, v2

    #@11
    if-le v0, v1, :cond_0

    #@13
    .line 244
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 243
    if-eqz v0, :cond_0

    #@1b
    .line 245
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@20
    move-result v0

    #@21
    .line 243
    if-eqz v0, :cond_0

    #@23
    .line 246
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    #@25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@28
    move-result v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v0

    #@2d
    if-ne v0, v3, :cond_0

    #@2f
    .line 247
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    #@31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@34
    move-result v1

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    #@3a
    move-result v0

    #@3b
    if-gez v0, :cond_0

    #@3d
    .line 248
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    #@3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@42
    move-result v1

    #@43
    add-int/lit8 v1, v1, 0x1

    #@45
    .line 249
    iget-object v2, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    #@47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4a
    move-result v2

    #@4b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@4e
    move-result v3

    #@4f
    sub-int/2addr v2, v3

    #@50
    .line 248
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@57
    .line 242
    :cond_0
    return-void
.end method

.method getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "requestedPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 235
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    #@a
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->-wrap0(Ljava/io/File;)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 237
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
