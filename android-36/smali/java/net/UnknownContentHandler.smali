.class Ljava/net/UnknownContentHandler;
.super Ljava/net/ContentHandler;
.source "URLConnection.java"


# static fields
.field static final blacklist INSTANCE:Ljava/net/ContentHandler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1815
    new-instance v0, Ljava/net/UnknownContentHandler;

    invoke-direct {v0}, Ljava/net/UnknownContentHandler;-><init>()V

    sput-object v0, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 1814
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 3
    .param p1, "uc"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1818
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
