.class public abstract Ljava/net/ContentHandler;
.super Ljava/lang/Object;
.source "ContentHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 71
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
    .param p1, "urlc"    # Ljava/net/URLConnection;
    .param p2, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    invoke-virtual {p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    .line 102
    .local v1, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    #@6
    if-ge v0, v2, :cond_1

    #@8
    .line 103
    aget-object v2, p2, v0

    #@a
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 104
    return-object v1

    #@11
    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 107
    :cond_1
    const/4 v2, 0x0

    #@15
    return-object v2
.end method
