.class public abstract Ljava/net/ContentHandler;
.super Ljava/lang/Object;
.source "ContentHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "uConn"    # Ljava/net/URLConnection;
    .param p2, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-virtual {p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 60
    .local v0, "content":Ljava/lang/Object;
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    array-length v2, p2

    #@6
    if-ge v1, v2, :cond_1

    #@8
    .line 61
    aget-object v2, p2, v1

    #@a
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 62
    return-object v0

    #@11
    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 65
    :cond_1
    const/4 v2, 0x0

    #@15
    return-object v2
.end method
