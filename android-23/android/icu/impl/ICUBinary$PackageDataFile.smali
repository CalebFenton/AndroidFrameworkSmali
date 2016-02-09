.class final Landroid/icu/impl/ICUBinary$PackageDataFile;
.super Landroid/icu/impl/ICUBinary$DataFile;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageDataFile"
.end annotation


# instance fields
.field private final pkgBytes:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 263
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUBinary$DataFile;-><init>(Ljava/lang/String;)V

    #@3
    .line 264
    iput-object p2, p0, Landroid/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    #@5
    .line 262
    return-void
.end method


# virtual methods
.method addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
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
    .line 274
    .local p3, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    #@2
    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/ICUBinary$DatPackageReader;->addBaseNamesInFolder(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    #@5
    .line 273
    return-void
.end method

.method getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "requestedPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    #@2
    invoke-static {v0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getData(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
