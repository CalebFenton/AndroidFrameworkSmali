.class final Ljava/net/URI$1;
.super Llibcore/net/UriCodec;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URI;
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
    .line 150
    invoke-direct {p0}, Llibcore/net/UriCodec;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 152
    const/16 v0, 0x7f

    #@2
    if-gt p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
