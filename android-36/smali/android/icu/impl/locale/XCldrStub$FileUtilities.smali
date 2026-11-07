.class public Landroid/icu/impl/locale/XCldrStub$FileUtilities;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileUtilities"
.end annotation


# static fields
.field public static final blacklist UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 380
    const-string v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/XCldrStub$FileUtilities;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getRelativeFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 412
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_9

    .line 413
    const-class v0, Landroid/icu/impl/locale/XCldrStub$FileUtilities;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 414
    .local v0, "resource":Ljava/net/URL;
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "resourceString":Ljava/lang/String;
    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 416
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 417
    :cond_1f
    const-string v2, "jar:file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 418
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 420
    :cond_2e
    new-instance v2, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist openFile(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 3
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/BufferedReader;"
        }
    .end annotation

    .line 383
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/icu/impl/locale/XCldrStub$FileUtilities;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/locale/XCldrStub$FileUtilities;->openFile(Ljava/lang/Class;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist openFile(Ljava/lang/Class;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .registers 11
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/io/BufferedReader;"
        }
    .end annotation

    .line 390
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "; relative to class: "

    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 391
    .local v1, "resourceAsStream":Ljava/io/InputStream;
    if-nez p2, :cond_b

    .line 392
    sget-object v2, Landroid/icu/impl/locale/XCldrStub$FileUtilities;->UTF8:Ljava/nio/charset/Charset;

    move-object p2, v2

    .line 394
    :cond_b
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 395
    .local v2, "reader":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    const/high16 v4, 0x10000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    .line 396
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    return-object v3

    .line 397
    .end local v1    # "resourceAsStream":Ljava/io/InputStream;
    .end local v2    # "reader":Ljava/io/InputStreamReader;
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_18
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/Exception;
    if-nez p0, :cond_1d

    const/4 v2, 0x0

    goto :goto_21

    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "className":Ljava/lang/String;
    :goto_21
    const/4 v3, 0x0

    .line 401
    .local v3, "canonicalName":Ljava/lang/String;
    :try_start_22
    const-string v4, "../util/"

    invoke-static {p0, v4}, Landroid/icu/impl/locale/XCldrStub$FileUtilities;->getRelativeFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "relativeFileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_31} :catch_5d

    .line 406
    .end local v3    # "canonicalName":Ljava/lang/String;
    .end local v4    # "relativeFileName":Ljava/lang/String;
    .local v5, "canonicalName":Ljava/lang/String;
    nop

    .line 407
    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t open file "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; in path "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 403
    .end local v5    # "canonicalName":Ljava/lang/String;
    .restart local v3    # "canonicalName":Ljava/lang/String;
    :catch_5d
    move-exception v4

    .line 404
    .local v4, "e1":Ljava/lang/Exception;
    new-instance v5, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t open file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
