.class Ljava/lang/ProcessEnvironment$StringKeySet;
.super Ljava/util/AbstractSet;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/lang/ProcessEnvironment$StringKeySet;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 392
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ProcessEnvironment$Variable;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    #@5
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 394
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 397
    new-instance v0, Ljava/lang/ProcessEnvironment$StringKeySet$1;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringKeySet$1;-><init>(Ljava/lang/ProcessEnvironment$StringKeySet;)V

    #@5
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
