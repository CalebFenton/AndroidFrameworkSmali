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
.field private final greylist-max-o pkgBytes:Ljava/nio/ByteBuffer;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;

    .line 276
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUBinary$DataFile;-><init>(Ljava/lang/String;)V

    .line 277
    iput-object p2, p0, Landroid/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    .line 278
    return-void
.end method


# virtual methods
.method greylist-max-o addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
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

    .line 287
    .local p3, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/ICUBinary$DatPackageReader;->addBaseNamesInFolder(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 288
    return-void
.end method

.method greylist-max-o getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "requestedPath"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getData(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
