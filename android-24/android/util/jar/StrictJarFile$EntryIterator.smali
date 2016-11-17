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
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final iterationHandle:J

.field private nextEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 3
    .param p1, "nativeHandle"    # J
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 221
    invoke-static {p1, p2, p3}, Landroid/util/jar/StrictJarFile;->-wrap1(JLjava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    #@9
    .line 220
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 235
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 236
    return v4

    #@6
    .line 239
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    #@8
    invoke-static {v2, v3}, Landroid/util/jar/StrictJarFile;->-wrap0(J)Ljava/util/zip/ZipEntry;

    #@b
    move-result-object v0

    #@c
    .line 240
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_1

    #@e
    .line 241
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 244
    :cond_1
    iput-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    #@12
    .line 245
    return v4
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile$EntryIterator;->next()Ljava/util/zip/ZipEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/zip/ZipEntry;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 225
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 226
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    #@7
    .line 227
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    iput-object v2, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    #@9
    .line 228
    return-object v0

    #@a
    .line 231
    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    #@c
    invoke-static {v2, v3}, Landroid/util/jar/StrictJarFile;->-wrap0(J)Ljava/util/zip/ZipEntry;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
