.class Ljava/net/UnknownContentHandler;
.super Ljava/net/ContentHandler;
.source "URLConnection.java"


# static fields
.field static final INSTANCE:Ljava/net/ContentHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1788
    new-instance v0, Ljava/net/UnknownContentHandler;

    #@2
    invoke-direct {v0}, Ljava/net/UnknownContentHandler;-><init>()V

    #@5
    sput-object v0, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;

    #@7
    .line 1787
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1787
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 1
    .param p1, "uc"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1791
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
