.class public Ljavax/xml/transform/stream/StreamResult;
.super Ljava/lang/Object;
.source "StreamResult.java"

# interfaces
.implements Ljavax/xml/transform/Result;


# static fields
.field public static final whitelist test-api FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stream.StreamResult/feature"


# instance fields
.field private greylist-max-o outputStream:Ljava/io/OutputStream;

.field private greylist-max-o systemId:Ljava/lang/String;

.field private greylist-max-o writer:Ljava/io/Writer;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "f"    # Ljava/io/File;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamResult;->setSystemId(Ljava/io/File;)V

    .line 90
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    .line 58
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Writer;)V
    .registers 2
    .param p1, "writer"    # Ljava/io/Writer;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamResult;->setWriter(Ljava/io/Writer;)V

    .line 72
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 111
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getWriter()Ljava/io/Writer;
    .registers 2

    .line 135
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public whitelist test-api setOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 101
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->outputStream:Ljava/io/OutputStream;

    .line 102
    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/io/File;)V
    .registers 3
    .param p1, "f"    # Ljava/io/File;

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/transform/stream/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public whitelist test-api setWriter(Ljava/io/Writer;)V
    .registers 2
    .param p1, "writer"    # Ljava/io/Writer;

    .line 125
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->writer:Ljava/io/Writer;

    .line 126
    return-void
.end method
