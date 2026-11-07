.class public Ljavax/xml/transform/stream/StreamSource;
.super Ljava/lang/Object;
.source "StreamSource.java"

# interfaces
.implements Ljavax/xml/transform/Source;


# static fields
.field public static final whitelist test-api FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stream.StreamSource/feature"


# instance fields
.field private greylist-max-o inputStream:Ljava/io/InputStream;

.field private greylist-max-o publicId:Ljava/lang/String;

.field private greylist-max-o reader:Ljava/io/Reader;

.field private greylist-max-o systemId:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "f"    # Ljava/io/File;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/io/File;)V

    .line 139
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    .line 73
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "systemId"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setInputStream(Ljava/io/InputStream;)V

    .line 90
    invoke-virtual {p0, p2}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Reader;)V
    .registers 2
    .param p1, "reader"    # Ljava/io/Reader;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V

    .line 105
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .registers 3
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "systemId"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamSource;->setReader(Ljava/io/Reader;)V

    .line 120
    invoke-virtual {p0, p2}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    .line 130
    return-void
.end method


# virtual methods
.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 164
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getReader()Ljava/io/Reader;
    .registers 2

    .line 188
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api setInputStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 154
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->inputStream:Ljava/io/InputStream;

    .line 155
    return-void
.end method

.method public whitelist test-api setPublicId(Ljava/lang/String;)V
    .registers 2
    .param p1, "publicId"    # Ljava/lang/String;

    .line 201
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->publicId:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public whitelist test-api setReader(Ljava/io/Reader;)V
    .registers 2
    .param p1, "reader"    # Ljava/io/Reader;

    .line 178
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->reader:Ljava/io/Reader;

    .line 179
    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/io/File;)V
    .registers 3
    .param p1, "f"    # Ljava/io/File;

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/transform/stream/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .line 227
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamSource;->systemId:Ljava/lang/String;

    .line 228
    return-void
.end method
