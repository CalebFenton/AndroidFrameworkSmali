.class public abstract Ljava/net/JarURLConnection;
.super Ljava/net/URLConnection;
.source "JarURLConnection.java"


# instance fields
.field private greylist-max-o entryName:Ljava/lang/String;

.field private greylist-max-o jarFileURL:Ljava/net/URL;

.field protected whitelist test-api jarFileURLConnection:Ljava/net/URLConnection;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/net/URL;)V
    .registers 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 158
    invoke-direct {p0, p1}, Ljava/net/JarURLConnection;->parseSpecs(Ljava/net/URL;)V

    .line 159
    return-void
.end method

.method private greylist-max-o parseSpecs(Ljava/net/URL;)V
    .registers 7
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "spec":Ljava/lang/String;
    const-string v1, "!/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 171
    .local v1, "separator":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 175
    new-instance v2, Ljava/net/URL;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "separator":I
    .local v3, "separator":I
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljava/net/JarURLConnection;->jarFileURL:Ljava/net/URL;

    .line 190
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v3, v1, :cond_35

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-static {v1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    .line 194
    :cond_35
    return-void

    .line 172
    .end local v3    # "separator":I
    .restart local v1    # "separator":I
    :cond_36
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no !/ found in url spec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api getAttributes()Ljava/util/jar/Attributes;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 277
    .local v0, "e":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist test-api getCertificates()[Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 318
    .local v0, "e":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist test-api getEntryName()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getJarEntry()Ljava/util/jar/JarEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    iget-object v1, p0, Ljava/net/JarURLConnection;->entryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public abstract whitelist test-api getJarFile()Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api getJarFileURL()Ljava/net/URL;
    .registers 2

    .line 202
    iget-object v0, p0, Ljava/net/JarURLConnection;->jarFileURL:Ljava/net/URL;

    return-object v0
.end method

.method public whitelist test-api getMainAttributes()Ljava/util/jar/Attributes;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 295
    .local v0, "man":Ljava/util/jar/Manifest;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public whitelist test-api getManifest()Ljava/util/jar/Manifest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method
