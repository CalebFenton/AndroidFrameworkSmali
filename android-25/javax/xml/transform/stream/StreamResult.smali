.class public Ljavax/xml/transform/stream/StreamResult;
.super Ljava/lang/Object;
.source "StreamResult.java"

# interfaces
.implements Ljavax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stream.StreamResult/feature"


# instance fields
.field private outputStream:Ljava/io/OutputStream;

.field private systemId:Ljava/lang/String;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamResult;->setSystemId(Ljava/io/File;)V

    #@6
    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    #@6
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    invoke-virtual {p0, p1}, Ljavax/xml/transform/stream/StreamResult;->setWriter(Ljava/io/Writer;)V

    #@6
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    #@5
    .line 79
    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->outputStream:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->writer:Ljava/io/Writer;

    #@2
    return-object v0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 101
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->outputStream:Ljava/io/OutputStream;

    #@2
    .line 100
    return-void
.end method

.method public setSystemId(Ljava/io/File;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljavax/xml/transform/stream/FilePathToURI;->filepath2URI(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    #@a
    .line 160
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 146
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->systemId:Ljava/lang/String;

    #@2
    .line 145
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 125
    iput-object p1, p0, Ljavax/xml/transform/stream/StreamResult;->writer:Ljava/io/Writer;

    #@2
    .line 124
    return-void
.end method
