.class interface abstract Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/XmlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ReaderSupplier"
.end annotation


# direct methods
.method public static blacklist forFile(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;
    .registers 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "charSet"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 264
    .local v1, "file":Ljava/nio/file/Path;
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 267
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {v1}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_37

    .line 268
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be a regular readable file."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_37
    :goto_37
    new-instance v0, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, p1}, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier$$ExternalSyntheticLambda0;-><init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 265
    :cond_3d
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forString(Ljava/lang/String;)Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;
    .registers 2
    .param p0, "xml"    # Ljava/lang/String;

    .line 274
    new-instance v0, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic blacklist lambda$forFile$0(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/Reader;
    .registers 3
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "charSet"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic blacklist lambda$forString$1(Ljava/lang/String;)Ljava/io/Reader;
    .registers 2
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist get()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
