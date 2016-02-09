.class Lorg/ksoap2/transport/HttpsServiceConnectionSEIgnoringConnectionClose;
.super Lorg/ksoap2/transport/HttpsServiceConnectionSE;
.source "HttpsServiceConnectionSEIgnoringConnectionClose.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ksoap2/transport/HttpsServiceConnectionSE;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@3
    .line 10
    return-void
.end method


# virtual methods
.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 18
    const-string/jumbo v0, "Connection"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v0, "close"

    #@c
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 19
    return-void

    #@13
    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/ksoap2/transport/HttpsServiceConnectionSE;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 15
    return-void
.end method
