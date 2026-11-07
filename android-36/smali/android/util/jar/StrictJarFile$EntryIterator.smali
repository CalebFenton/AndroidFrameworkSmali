.class final Landroid/util/jar/StrictJarFile$EntryIterator;
.super Ljava/lang/Object;
.source "StrictJarFile.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist iterationHandle:J

.field private blacklist nextEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor blacklist <init>(JLjava/lang/String;)V
    .registers 6
    .param p1, "nativeHandle"    # J
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-static {p1, p2, p3}, Landroid/util/jar/StrictJarFile;->-$$Nest$smnativeStartIteration(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    .line 265
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 5

    .line 278
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 279
    return v1

    .line 282
    :cond_6
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    invoke-static {v2, v3}, Landroid/util/jar/StrictJarFile;->-$$Nest$smnativeNextEntry(J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 283
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_10

    .line 284
    const/4 v1, 0x0

    return v1

    .line 287
    :cond_10
    iput-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    .line 288
    return v1
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 259
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile$EntryIterator;->next()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/zip/ZipEntry;
    .registers 3

    .line 268
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_a

    .line 269
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    .line 270
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    .line 271
    return-object v0

    .line 274
    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_a
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    invoke-static {v0, v1}, Landroid/util/jar/StrictJarFile;->-$$Nest$smnativeNextEntry(J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
