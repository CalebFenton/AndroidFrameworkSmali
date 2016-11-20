.class public Lorg/apache/http/impl/client/RedirectLocations;
.super Ljava/lang/Object;
.source "RedirectLocations.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final uris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->uris:Ljava/util/Set;

    #@a
    .line 50
    return-void
.end method


# virtual methods
.method public add(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->uris:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 65
    return-void
.end method

.method public contains(Ljava/net/URI;)Z
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->uris:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public remove(Ljava/net/URI;)Z
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->uris:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
