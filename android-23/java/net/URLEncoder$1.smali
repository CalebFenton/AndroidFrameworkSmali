.class final Ljava/net/URLEncoder$1;
.super Llibcore/net/UriCodec;
.source "URLEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Llibcore/net/UriCodec;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 39
    const-string/jumbo v0, " .-*_"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method
